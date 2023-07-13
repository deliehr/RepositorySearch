// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension GitHubAPI.Objects {
  /// A repository contains the content for a project.
  static let Repository = Object(
    typename: "Repository",
    implementedInterfaces: [
      GitHubAPI.Interfaces.Node.self,
      GitHubAPI.Interfaces.PackageOwner.self,
      GitHubAPI.Interfaces.ProjectOwner.self,
      GitHubAPI.Interfaces.ProjectV2Recent.self,
      GitHubAPI.Interfaces.RepositoryInfo.self,
      GitHubAPI.Interfaces.Starrable.self,
      GitHubAPI.Interfaces.Subscribable.self,
      GitHubAPI.Interfaces.UniformResourceLocatable.self
    ]
  )
}