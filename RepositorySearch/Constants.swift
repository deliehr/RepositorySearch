//
//  Constants.swift
//  RepositorySearch
//
//  Created by Dominik Liehr on 12.07.23.
//

import Foundation

class Constants {
	private init() {}

	class Network {
		private init() {}

		static let graphBasePath = "https://api.github.com/graphql"
		static let authorizationHeader = ["Authorization": "Bearer github_pat_?????????????_??????????????????"]
	}
}
