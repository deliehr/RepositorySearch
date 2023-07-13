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

class Network {
	static let shared = Network()

	private var apollo: ApolloClient!

	public let gitHubRepositories = PassthroughSubject<[GitHubAPI.GetRepositoriesQuery.Data.Search.Edge.Node.AsRepository],Error>()

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

	func fetchGitHubRepositories() {
		apollo.fetch(query: GitHubAPI.GetRepositoriesQuery()) { [weak self] result in
			guard let self = self else { return }

			switch result {
				case .success(let graphQLResult):

					if let repos = graphQLResult.data?.search.edges?.compactMap({$0?.node?.asRepository}) {
						self.gitHubRepositories.send(repos)
					} else {
						self.gitHubRepositories.send([])
					}

				case .failure(let error):

					self.gitHubRepositories.send(completion: .failure(error))
			}
		}
	}
}
