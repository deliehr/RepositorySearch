// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension GitHubAPI.Objects {
  /// Represents a Git commit.
  static let Commit = Object(
    typename: "Commit",
    implementedInterfaces: [
      GitHubAPI.Interfaces.GitObject.self,
      GitHubAPI.Interfaces.Node.self,
      GitHubAPI.Interfaces.Subscribable.self,
      GitHubAPI.Interfaces.UniformResourceLocatable.self
    ]
  )
}