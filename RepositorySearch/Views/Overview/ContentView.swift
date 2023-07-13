//
//  ContentView.swift
//  RepositorySearch
//
//  Created by Dominik Liehr on 12.07.23.
//

import SwiftUI

struct ContentView: View {
	@StateObject private var viewModel = ContentViewModel()

	var body: some View {
		NavigationView {
			VStack {
				if viewModel.isLoading {
					ProgressView()
						.scaleEffect(x: 2, y: 2)
						.padding(.bottom, 16)
					Text("Data is loading...")
				} else {
					if let errorMessage = viewModel.errorMessage {
						Text("Error: \(errorMessage)")
							.padding()
					} else if viewModel.repositories.count == 0 {
						Text("No data found for searchphrase 'topic:ios'")
							.padding()
					} else {
						List(viewModel.repositories, id: \.name) { repository in
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
        ContentView()
    }
}
