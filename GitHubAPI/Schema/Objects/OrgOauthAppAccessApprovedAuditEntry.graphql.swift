// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension GitHubAPI.Objects {
  /// Audit log entry for a org.oauth_app_access_approved event.
  static let OrgOauthAppAccessApprovedAuditEntry = Object(
    typename: "OrgOauthAppAccessApprovedAuditEntry",
    implementedInterfaces: [
      GitHubAPI.Interfaces.AuditEntry.self,
      GitHubAPI.Interfaces.Node.self,
      GitHubAPI.Interfaces.OauthApplicationAuditEntryData.self,
      GitHubAPI.Interfaces.OrganizationAuditEntryData.self
    ]
  )
}