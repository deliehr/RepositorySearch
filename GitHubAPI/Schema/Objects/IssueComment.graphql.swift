// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension GitHubAPI.Objects {
  /// Represents a comment on an Issue.
  static let IssueComment = Object(
    typename: "IssueComment",
    implementedInterfaces: [
      GitHubAPI.Interfaces.Comment.self,
      GitHubAPI.Interfaces.Deletable.self,
      GitHubAPI.Interfaces.Minimizable.self,
      GitHubAPI.Interfaces.Node.self,
      GitHubAPI.Interfaces.Reactable.self,
      GitHubAPI.Interfaces.RepositoryNode.self,
      GitHubAPI.Interfaces.Updatable.self,
      GitHubAPI.Interfaces.UpdatableComment.self
    ]
  )
}