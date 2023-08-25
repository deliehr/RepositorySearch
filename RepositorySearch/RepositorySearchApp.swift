//
//  RepositorySearchApp.swift
//  RepositorySearch
//
//  Created by Dominik Liehr on 12.07.23.
//

import SwiftUI

@main
struct RepositorySearchApp: App {
	@StateObject private var viewModel = ContentViewModel()

	var body: some Scene {
		WindowGroup {
            ContentView(viewModel: viewModel)
        }
    }
}
