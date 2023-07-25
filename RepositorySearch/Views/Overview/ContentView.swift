//
//  ContentView.swift
//  RepositorySearch
//
//  Created by Dominik Liehr on 12.07.23.
//

import SwiftUI

struct ContentView: View {
	@ObservedObject public var viewModel: BaseContentViewModel

	init(viewModel: BaseContentViewModel) {
		self.viewModel = viewModel
	}

	var body: some View {
		NavigationView {
			VStack {
				if viewModel.isLoading {
					ProgressView()
						.controlSize(.large)
						.padding(.bottom, 8)
					Text("Data is loading...")
				} else {
					if let errorMessage = viewModel.errorMessage {
						Text("Error: \(errorMessage)")
							.padding()
					} else if viewModel.repositories.count == 0 {
						Text("No data found for searchphrase 'topic:ios'")
							.padding()
					} else {
						List(viewModel.repositories, id: \.id) { repository in
							HStack {
								Text(repository.name)
								Spacer()
								Text(String(repository.stargazerCount))
								Image(systemName: "star.fill")
							}
						}
						.refreshable {
							viewModel.refreshRepositories()
						}
					}
				}
			}
			.navigationTitle("Repository Search")
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView(viewModel: DummyViewModel(isLoading: true))
			.previewDisplayName("Loading")

		ContentView(viewModel: DummyViewModel(isLoading: false, errorMessage: "Error Message"))
			.previewDisplayName("Error")

		ContentView(viewModel: ContentViewModel())
			.previewDisplayName("Default")
    }
}
