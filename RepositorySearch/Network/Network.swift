//
//  Network.swift
//  RepositorySearch
//
//  Created by Dominik Liehr on 12.07.23.
//

import Foundation
import Apollo
import ApolloAPI
import Combine

typealias GitHubRepository = GitHubAPI.GetRepositoriesQuery.Data.Search.Edge.Node.AsRepository

class Network {
	static let shared = Network()

	private var apollo: ApolloClient!

	private init() {
		guard let url = URL(string: Constants.Network.graphBasePath) else { return }

		let urlSessionConfiguration = URLSessionConfiguration.default
		urlSessionConfiguration.httpAdditionalHeaders = Constants.Network.authorizationHeader

		let client = URLSessionClient(sessionConfiguration: urlSessionConfiguration)
		let store = ApolloStore()
		let provider = DefaultInterceptorProvider(client: client, store: store)
		let transport = RequestChainNetworkTransport(interceptorProvider: provider, endpointURL: url)

		apollo = ApolloClient(networkTransport: transport, store: store)
	}

	func fetchGitHubRepositories() async throws -> [GitHubRepository] {
		try await withCheckedThrowingContinuation { continuation in
			_fetch { repositories, error in
				if let error = error {
					continuation.resume(throwing: error)
					return
				}

				if let repositories = repositories {
					continuation.resume(returning: repositories)
				} else {
					continuation.resume(returning: [])
				}
			}
		}
	}

	private func _fetch(completion: @escaping ([GitHubRepository]?,Error?)->Void) {
		apollo.fetch(query: GitHubAPI.GetRepositoriesQuery()) { result in
			switch result {
			case .success(let graphQLResult):
				if let repos = graphQLResult.data?.search.edges?.compactMap({$0?.node?.asRepository}) {
					completion(repos,nil)
					return
				}

			case .failure(let error):
				completion(nil,error)
				return
			}

			completion(nil,nil)
		}
	}
}
