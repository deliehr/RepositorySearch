// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension GitHubAPI.Objects {
  /// Audit log entry for a repo.config.disable_collaborators_only event.
  static let RepoConfigDisableCollaboratorsOnlyAuditEntry = Object(
    typename: "RepoConfigDisableCollaboratorsOnlyAuditEntry",
    implementedInterfaces: [
      GitHubAPI.Interfaces.AuditEntry.self,
      GitHubAPI.Interfaces.Node.self,
      GitHubAPI.Interfaces.OrganizationAuditEntryData.self,
      GitHubAPI.Interfaces.RepositoryAuditEntryData.self
    ]
  )
}