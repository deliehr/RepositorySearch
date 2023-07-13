// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension GitHubAPI.Objects {
  /// Audit log entry for a repo.add_member event.
  static let RepoAddMemberAuditEntry = Object(
    typename: "RepoAddMemberAuditEntry",
    implementedInterfaces: [
      GitHubAPI.Interfaces.AuditEntry.self,
      GitHubAPI.Interfaces.Node.self,
      GitHubAPI.Interfaces.OrganizationAuditEntryData.self,
      GitHubAPI.Interfaces.RepositoryAuditEntryData.self
    ]
  )
}