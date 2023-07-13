//
//  ContentViewModel.swift
//  RepositorySearch
//
//  Created by Dominik Liehr on 12.07.23.
//

import Foundation
import Combine

class ContentViewModel: ObservableObject {
	@Published var isLoading = true
	@Published var errorMessage: String? = nil
	@Published var repositories = [GitHubAPI.GetRepositoriesQuery.Data.Search.Edge.Node.AsRepository]()

	private var subscriptions = Set<AnyCancellable>()

	init() {
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

	func refreshRepositories() {
		errorMessage = nil
		isLoading = true

		Network.shared.fetchGitHubRepositories()
	}
}
