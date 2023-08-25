//
//  ContentViewModel.swift
//  RepositorySearch
//
//  Created by Dominik Liehr on 12.07.23.
//

import Foundation
import Combine
import UIKit

@MainActor
class BaseContentViewModel: ObservableObject {
	@Published var isLoading = false
	@Published var errorMessage: String? = nil
	@Published var repositories = [GitHubRepository]()

	func refreshRepositories() { }

	func repositoryTapped(_ repository: GitHubRepository) {
		guard let url = URL(string: repository.url), UIApplication.shared.canOpenURL(url) else { return }

		UIApplication.shared.open(url)
	}
}

class ContentViewModel: BaseContentViewModel {
	override init() {
		super.init()
	}

	override func refreshRepositories() {
		errorMessage = nil
		isLoading = true

		Task {
			repositories = try await Network.shared.fetchGitHubRepositories()

			isLoading = false
		}
	}
}

class DummyViewModel: BaseContentViewModel {
	init(isLoading: Bool = true, errorMessage: String? = nil) {
		super.init()

		self.isLoading = isLoading
		self.errorMessage = errorMessage

		repositories = [
			GitHubRepository(_dataDict: .init(data: ["id": "a", "name": "flutter", "stargazerCount": 155271, "url": "https://www.github.com/flutter/flutter"], fulfilledFragments: .init())),
			GitHubRepository(_dataDict: .init(data: ["id": "b", "name": "react-native", "stargazerCount": 110885, "url": "https://www.github.com/facebook/react-native"], fulfilledFragments: .init())),
			GitHubRepository(_dataDict: .init(data: ["id": "c", "name": "ionic-framework", "stargazerCount": 49175, "url": "https://www.github.com/justjavac/free-programming-books-zh_CN"], fulfilledFragments: .init())),
			GitHubRepository(_dataDict: .init(data: ["id": "d", "name": "fastlane", "stargazerCount": 37364, "url": "https://www.github.com/ionic-team/ionic-framework"], fulfilledFragments: .init())),
			GitHubRepository(_dataDict: .init(data: ["id": "e", "name": "sheetjs", "stargazerCount": 33215, "url": "https://www.github.com/google/material-design-icons"], fulfilledFragments: .init()))
		]
	}
}
