// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension GitHubAPI {
  class GetRepositoriesQuery: GraphQLQuery {
    static let operationName: String = "GetRepositories"
    static let document: ApolloAPI.DocumentType = .notPersisted(
      definition: .init(
        #"""
        query GetRepositories {
          search(query: "topic:ios", type: REPOSITORY, first: 50) {
            __typename
            edges {
              __typename
              node {
                __typename
                ... on Repository {
                  id
                  name
                  stargazerCount
                  url
                }
              }
            }
          }
        }
        """#
      ))

    public init() {}

    struct Data: GitHubAPI.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { GitHubAPI.Objects.Query }
      static var __selections: [ApolloAPI.Selection] { [
        .field("search", Search.self, arguments: [
          "query": "topic:ios",
          "type": "REPOSITORY",
          "first": 50
        ]),
      ] }

      /// Perform a search across resources, returning a maximum of 1,000 results.
      var search: Search { __data["search"] }

      /// Search
      ///
      /// Parent Type: `SearchResultItemConnection`
      struct Search: GitHubAPI.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { GitHubAPI.Objects.SearchResultItemConnection }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("edges", [Edge?]?.self),
        ] }

        /// A list of edges.
        var edges: [Edge?]? { __data["edges"] }

        /// Search.Edge
        ///
        /// Parent Type: `SearchResultItemEdge`
        struct Edge: GitHubAPI.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: ApolloAPI.ParentType { GitHubAPI.Objects.SearchResultItemEdge }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("node", Node?.self),
          ] }

          /// The item at the end of the edge.
          var node: Node? { __data["node"] }

          /// Search.Edge.Node
          ///
          /// Parent Type: `SearchResultItem`
          struct Node: GitHubAPI.SelectionSet {
            let __data: DataDict
            init(_dataDict: DataDict) { __data = _dataDict }

            static var __parentType: ApolloAPI.ParentType { GitHubAPI.Unions.SearchResultItem }
            static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .inlineFragment(AsRepository.self),
            ] }

            var asRepository: AsRepository? { _asInlineFragment() }

            /// Search.Edge.Node.AsRepository
            ///
            /// Parent Type: `Repository`
            struct AsRepository: GitHubAPI.InlineFragment {
              let __data: DataDict
              init(_dataDict: DataDict) { __data = _dataDict }

              typealias RootEntityType = GetRepositoriesQuery.Data.Search.Edge.Node
              static var __parentType: ApolloAPI.ParentType { GitHubAPI.Objects.Repository }
              static var __selections: [ApolloAPI.Selection] { [
                .field("id", GitHubAPI.ID.self),
                .field("name", String.self),
                .field("stargazerCount", Int.self),
                .field("url", GitHubAPI.URI.self),
              ] }

              var id: GitHubAPI.ID { __data["id"] }
              /// The name of the repository.
              var name: String { __data["name"] }
              /// Returns a count of how many stargazers there are on this object
              var stargazerCount: Int { __data["stargazerCount"] }
              /// The HTTP URL for this repository
				var url: GitHubAPI.URI { __data["url"] }
            }
          }
        }
      }
    }
  }

}
