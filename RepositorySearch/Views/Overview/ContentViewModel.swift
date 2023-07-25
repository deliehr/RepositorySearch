//
//  ContentViewModel.swift
//  RepositorySearch
//
//  Created by Dominik Liehr on 12.07.23.
//

import Foundation
import Combine

class BaseContentViewModel: ObservableObject {
	@Published var isLoading = false
	@Published var errorMessage: String? = nil
	@Published var repositories = [GitHubAPI.GetRepositoriesQuery.Data.Search.Edge.Node.AsRepository]()

	func refreshRepositories() { }
}

class ContentViewModel: BaseContentViewModel {
	private var subscriptions = Set<AnyCancellable>()

	override init() {
		super.init()

		Network.shared.gitHubRepositories
			.debounce(for: .milliseconds(300), scheduler: DispatchQueue.main)
			.receive(on: DispatchQueue.main)
			.sink(receiveCompletion: { [weak self] completion in
				guard let self = self else { return }

				self.isLoading = false

				switch completion {
					case .failure(let err):
						self.errorMessage = err.localizedDescription
					default:
						break
				}
			}, receiveValue: { [weak self] newRepositories in
				guard let self = self else { return }

				self.isLoading = false
				self.repositories = newRepositories
			})
			.store(in: &subscriptions)

		refreshRepositories()
	}

	override func refreshRepositories() {
		errorMessage = nil
		isLoading = true

		Network.shared.fetchGitHubRepositories()
	}
}

class DummyViewModel: BaseContentViewModel {
	init(isLoading: Bool = true, errorMessage: String? = nil) {
		super.init()

		self.isLoading = isLoading
		self.errorMessage = errorMessage

		repositories = [
			GitHubAPI.GetRepositoriesQuery.Data.Search.Edge.Node.AsRepository(_dataDict: .init(data: ["name": "flutter", "stargazerCount": 155271], fulfilledFragments: .init())),
			GitHubAPI.GetRepositoriesQuery.Data.Search.Edge.Node.AsRepository(_dataDict: .init(data: ["name": "react-native", "stargazerCount": 110885], fulfilledFragments: .init())),
			GitHubAPI.GetRepositoriesQuery.Data.Search.Edge.Node.AsRepository(_dataDict: .init(data: ["name": "ionic-framework", "stargazerCount": 49175], fulfilledFragments: .init())),
			GitHubAPI.GetRepositoriesQuery.Data.Search.Edge.Node.AsRepository(_dataDict: .init(data: ["name": "fastlane", "stargazerCount": 37364], fulfilledFragments: .init())),
			GitHubAPI.GetRepositoriesQuery.Data.Search.Edge.Node.AsRepository(_dataDict: .init(data: ["name": "sheetjs", "stargazerCount": 33215], fulfilledFragments: .init()))
		]
	}
}
