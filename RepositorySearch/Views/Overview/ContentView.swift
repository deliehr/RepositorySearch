//
//  ContentView.swift
//  RepositorySearch
//
//  Created by Dominik Liehr on 12.07.23.
//

import SwiftUI

struct ContentView: View {
	@ObservedObject public var viewModel: BaseContentViewModel

	init(viewModel: ContentViewModel) {
		self.viewModel = viewModel
	}

	init(dummyViewModel: DummyViewModel) {
		viewModel = dummyViewModel
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
							Button {
								viewModel.repositoryTapped(repository)
							} label: {
								HStack {
									VStack(alignment: .leading) {
										Text(repository.name)

										Text(repository.url)
											.font(.system(size: 12))
											.foregroundColor(.gray)
									}

									Spacer()
									Text(String(repository.stargazerCount))
									Image(systemName: "star.fill")
								}
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
		.onAppear {
			viewModel.refreshRepositories()
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView(dummyViewModel: DummyViewModel(isLoading: false, errorMessage: nil))
			.previewDisplayName("Mock data")

		ContentView(dummyViewModel: DummyViewModel(isLoading: true))
			.previewDisplayName("Loading")

		ContentView(dummyViewModel: DummyViewModel(isLoading: false, errorMessage: "Error Message"))
			.previewDisplayName("Error")
    }
}
