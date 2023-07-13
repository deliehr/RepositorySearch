// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension GitHubAPI.Objects {
  /// A comment on a discussion.
  static let DiscussionComment = Object(
    typename: "DiscussionComment",
    implementedInterfaces: [
      GitHubAPI.Interfaces.Comment.self,
      GitHubAPI.Interfaces.Deletable.self,
      GitHubAPI.Interfaces.Minimizable.self,
      GitHubAPI.Interfaces.Node.self,
      GitHubAPI.Interfaces.Reactable.self,
      GitHubAPI.Interfaces.Updatable.self,
      GitHubAPI.Interfaces.UpdatableComment.self,
      GitHubAPI.Interfaces.Votable.self
    ]
  )
}