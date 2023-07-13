// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension GitHubAPI.Objects {
  /// Audit log entry for a oauth_application.create event.
  static let OauthApplicationCreateAuditEntry = Object(
    typename: "OauthApplicationCreateAuditEntry",
    implementedInterfaces: [
      GitHubAPI.Interfaces.AuditEntry.self,
      GitHubAPI.Interfaces.Node.self,
      GitHubAPI.Interfaces.OauthApplicationAuditEntryData.self,
      GitHubAPI.Interfaces.OrganizationAuditEntryData.self
    ]
  )
}