// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension GitHubAPI.Objects {
  /// An account on GitHub, with one or more owners, that has repositories, members and teams.
  static let Organization = Object(
    typename: "Organization",
    implementedInterfaces: [
      GitHubAPI.Interfaces.Actor.self,
      GitHubAPI.Interfaces.AnnouncementBanner.self,
      GitHubAPI.Interfaces.MemberStatusable.self,
      GitHubAPI.Interfaces.Node.self,
      GitHubAPI.Interfaces.PackageOwner.self,
      GitHubAPI.Interfaces.ProfileOwner.self,
      GitHubAPI.Interfaces.ProjectOwner.self,
      GitHubAPI.Interfaces.ProjectV2Owner.self,
      GitHubAPI.Interfaces.ProjectV2Recent.self,
      GitHubAPI.Interfaces.RepositoryDiscussionAuthor.self,
      GitHubAPI.Interfaces.RepositoryDiscussionCommentAuthor.self,
      GitHubAPI.Interfaces.RepositoryOwner.self,
      GitHubAPI.Interfaces.Sponsorable.self,
      GitHubAPI.Interfaces.UniformResourceLocatable.self
    ]
  )
}