// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

protocol GitHubAPI_SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == GitHubAPI.SchemaMetadata {}

protocol GitHubAPI_InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == GitHubAPI.SchemaMetadata {}

protocol GitHubAPI_MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == GitHubAPI.SchemaMetadata {}

protocol GitHubAPI_MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == GitHubAPI.SchemaMetadata {}

extension GitHubAPI {
  typealias ID = String

  typealias SelectionSet = GitHubAPI_SelectionSet

  typealias InlineFragment = GitHubAPI_InlineFragment

  typealias MutableSelectionSet = GitHubAPI_MutableSelectionSet

  typealias MutableInlineFragment = GitHubAPI_MutableInlineFragment

  enum SchemaMetadata: ApolloAPI.SchemaMetadata {
    static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

    static func objectType(forTypename typename: String) -> Object? {
      switch typename {
      case "Query": return GitHubAPI.Objects.Query
      case "SearchResultItemConnection": return GitHubAPI.Objects.SearchResultItemConnection
      case "SearchResultItemEdge": return GitHubAPI.Objects.SearchResultItemEdge
      case "App": return GitHubAPI.Objects.App
      case "AddedToMergeQueueEvent": return GitHubAPI.Objects.AddedToMergeQueueEvent
      case "AddedToProjectEvent": return GitHubAPI.Objects.AddedToProjectEvent
      case "AssignedEvent": return GitHubAPI.Objects.AssignedEvent
      case "AutoMergeDisabledEvent": return GitHubAPI.Objects.AutoMergeDisabledEvent
      case "AutoMergeEnabledEvent": return GitHubAPI.Objects.AutoMergeEnabledEvent
      case "AutoRebaseEnabledEvent": return GitHubAPI.Objects.AutoRebaseEnabledEvent
      case "AutoSquashEnabledEvent": return GitHubAPI.Objects.AutoSquashEnabledEvent
      case "AutomaticBaseChangeFailedEvent": return GitHubAPI.Objects.AutomaticBaseChangeFailedEvent
      case "AutomaticBaseChangeSucceededEvent": return GitHubAPI.Objects.AutomaticBaseChangeSucceededEvent
      case "BaseRefChangedEvent": return GitHubAPI.Objects.BaseRefChangedEvent
      case "BaseRefDeletedEvent": return GitHubAPI.Objects.BaseRefDeletedEvent
      case "BaseRefForcePushedEvent": return GitHubAPI.Objects.BaseRefForcePushedEvent
      case "Blob": return GitHubAPI.Objects.Blob
      case "Commit": return GitHubAPI.Objects.Commit
      case "Discussion": return GitHubAPI.Objects.Discussion
      case "Issue": return GitHubAPI.Objects.Issue
      case "PullRequest": return GitHubAPI.Objects.PullRequest
      case "CommitComment": return GitHubAPI.Objects.CommitComment
      case "DiscussionComment": return GitHubAPI.Objects.DiscussionComment
      case "GistComment": return GitHubAPI.Objects.GistComment
      case "IssueComment": return GitHubAPI.Objects.IssueComment
      case "PullRequestReview": return GitHubAPI.Objects.PullRequestReview
      case "CommitCommentThread": return GitHubAPI.Objects.CommitCommentThread
      case "DependabotUpdate": return GitHubAPI.Objects.DependabotUpdate
      case "DiscussionCategory": return GitHubAPI.Objects.DiscussionCategory
      case "PinnedDiscussion": return GitHubAPI.Objects.PinnedDiscussion
      case "PullRequestCommitCommentThread": return GitHubAPI.Objects.PullRequestCommitCommentThread
      case "PullRequestReviewComment": return GitHubAPI.Objects.PullRequestReviewComment
      case "TeamDiscussion": return GitHubAPI.Objects.TeamDiscussion
      case "Bot": return GitHubAPI.Objects.Bot
      case "EnterpriseUserAccount": return GitHubAPI.Objects.EnterpriseUserAccount
      case "Mannequin": return GitHubAPI.Objects.Mannequin
      case "Organization": return GitHubAPI.Objects.Organization
      case "Enterprise": return GitHubAPI.Objects.Enterprise
      case "Team": return GitHubAPI.Objects.Team
      case "Repository": return GitHubAPI.Objects.Repository
      case "User": return GitHubAPI.Objects.User
      case "Gist": return GitHubAPI.Objects.Gist
      case "Topic": return GitHubAPI.Objects.Topic
      case "CheckRun": return GitHubAPI.Objects.CheckRun
      case "StatusContext": return GitHubAPI.Objects.StatusContext
      case "ClosedEvent": return GitHubAPI.Objects.ClosedEvent
      case "ConvertToDraftEvent": return GitHubAPI.Objects.ConvertToDraftEvent
      case "CrossReferencedEvent": return GitHubAPI.Objects.CrossReferencedEvent
      case "MergedEvent": return GitHubAPI.Objects.MergedEvent
      case "Milestone": return GitHubAPI.Objects.Milestone
      case "PullRequestCommit": return GitHubAPI.Objects.PullRequestCommit
      case "ReadyForReviewEvent": return GitHubAPI.Objects.ReadyForReviewEvent
      case "Release": return GitHubAPI.Objects.Release
      case "RepositoryTopic": return GitHubAPI.Objects.RepositoryTopic
      case "ReviewDismissedEvent": return GitHubAPI.Objects.ReviewDismissedEvent
      case "TeamDiscussionComment": return GitHubAPI.Objects.TeamDiscussionComment
      case "Workflow": return GitHubAPI.Objects.Workflow
      case "WorkflowRun": return GitHubAPI.Objects.WorkflowRun
      case "WorkflowRunFile": return GitHubAPI.Objects.WorkflowRunFile
      case "RepositoryVulnerabilityAlert": return GitHubAPI.Objects.RepositoryVulnerabilityAlert
      case "Project": return GitHubAPI.Objects.Project
      case "ProjectV2": return GitHubAPI.Objects.ProjectV2
      case "Tag": return GitHubAPI.Objects.Tag
      case "Tree": return GitHubAPI.Objects.Tree
      case "BranchProtectionRule": return GitHubAPI.Objects.BranchProtectionRule
      case "BypassForcePushAllowance": return GitHubAPI.Objects.BypassForcePushAllowance
      case "BypassPullRequestAllowance": return GitHubAPI.Objects.BypassPullRequestAllowance
      case "CWE": return GitHubAPI.Objects.CWE
      case "CheckSuite": return GitHubAPI.Objects.CheckSuite
      case "CodeOfConduct": return GitHubAPI.Objects.CodeOfConduct
      case "CommentDeletedEvent": return GitHubAPI.Objects.CommentDeletedEvent
      case "Comparison": return GitHubAPI.Objects.Comparison
      case "ConnectedEvent": return GitHubAPI.Objects.ConnectedEvent
      case "ConvertedNoteToIssueEvent": return GitHubAPI.Objects.ConvertedNoteToIssueEvent
      case "ConvertedToDiscussionEvent": return GitHubAPI.Objects.ConvertedToDiscussionEvent
      case "DemilestonedEvent": return GitHubAPI.Objects.DemilestonedEvent
      case "DependencyGraphManifest": return GitHubAPI.Objects.DependencyGraphManifest
      case "DeployKey": return GitHubAPI.Objects.DeployKey
      case "DeployedEvent": return GitHubAPI.Objects.DeployedEvent
      case "Deployment": return GitHubAPI.Objects.Deployment
      case "DeploymentEnvironmentChangedEvent": return GitHubAPI.Objects.DeploymentEnvironmentChangedEvent
      case "DeploymentReview": return GitHubAPI.Objects.DeploymentReview
      case "DeploymentStatus": return GitHubAPI.Objects.DeploymentStatus
      case "DisconnectedEvent": return GitHubAPI.Objects.DisconnectedEvent
      case "DiscussionPoll": return GitHubAPI.Objects.DiscussionPoll
      case "DiscussionPollOption": return GitHubAPI.Objects.DiscussionPollOption
      case "DraftIssue": return GitHubAPI.Objects.DraftIssue
      case "EnterpriseAdministratorInvitation": return GitHubAPI.Objects.EnterpriseAdministratorInvitation
      case "EnterpriseIdentityProvider": return GitHubAPI.Objects.EnterpriseIdentityProvider
      case "EnterpriseRepositoryInfo": return GitHubAPI.Objects.EnterpriseRepositoryInfo
      case "EnterpriseServerInstallation": return GitHubAPI.Objects.EnterpriseServerInstallation
      case "EnterpriseServerUserAccount": return GitHubAPI.Objects.EnterpriseServerUserAccount
      case "EnterpriseServerUserAccountEmail": return GitHubAPI.Objects.EnterpriseServerUserAccountEmail
      case "EnterpriseServerUserAccountsUpload": return GitHubAPI.Objects.EnterpriseServerUserAccountsUpload
      case "Environment": return GitHubAPI.Objects.Environment
      case "ExternalIdentity": return GitHubAPI.Objects.ExternalIdentity
      case "HeadRefDeletedEvent": return GitHubAPI.Objects.HeadRefDeletedEvent
      case "HeadRefForcePushedEvent": return GitHubAPI.Objects.HeadRefForcePushedEvent
      case "HeadRefRestoredEvent": return GitHubAPI.Objects.HeadRefRestoredEvent
      case "IpAllowListEntry": return GitHubAPI.Objects.IpAllowListEntry
      case "Label": return GitHubAPI.Objects.Label
      case "LabeledEvent": return GitHubAPI.Objects.LabeledEvent
      case "Language": return GitHubAPI.Objects.Language
      case "License": return GitHubAPI.Objects.License
      case "LinkedBranch": return GitHubAPI.Objects.LinkedBranch
      case "LockedEvent": return GitHubAPI.Objects.LockedEvent
      case "MarkedAsDuplicateEvent": return GitHubAPI.Objects.MarkedAsDuplicateEvent
      case "MarketplaceCategory": return GitHubAPI.Objects.MarketplaceCategory
      case "MarketplaceListing": return GitHubAPI.Objects.MarketplaceListing
      case "MembersCanDeleteReposClearAuditEntry": return GitHubAPI.Objects.MembersCanDeleteReposClearAuditEntry
      case "MembersCanDeleteReposDisableAuditEntry": return GitHubAPI.Objects.MembersCanDeleteReposDisableAuditEntry
      case "MembersCanDeleteReposEnableAuditEntry": return GitHubAPI.Objects.MembersCanDeleteReposEnableAuditEntry
      case "OauthApplicationCreateAuditEntry": return GitHubAPI.Objects.OauthApplicationCreateAuditEntry
      case "OrgOauthAppAccessApprovedAuditEntry": return GitHubAPI.Objects.OrgOauthAppAccessApprovedAuditEntry
      case "OrgOauthAppAccessBlockedAuditEntry": return GitHubAPI.Objects.OrgOauthAppAccessBlockedAuditEntry
      case "OrgOauthAppAccessDeniedAuditEntry": return GitHubAPI.Objects.OrgOauthAppAccessDeniedAuditEntry
      case "OrgOauthAppAccessRequestedAuditEntry": return GitHubAPI.Objects.OrgOauthAppAccessRequestedAuditEntry
      case "OrgOauthAppAccessUnblockedAuditEntry": return GitHubAPI.Objects.OrgOauthAppAccessUnblockedAuditEntry
      case "OrgAddBillingManagerAuditEntry": return GitHubAPI.Objects.OrgAddBillingManagerAuditEntry
      case "OrgAddMemberAuditEntry": return GitHubAPI.Objects.OrgAddMemberAuditEntry
      case "OrgBlockUserAuditEntry": return GitHubAPI.Objects.OrgBlockUserAuditEntry
      case "OrgConfigDisableCollaboratorsOnlyAuditEntry": return GitHubAPI.Objects.OrgConfigDisableCollaboratorsOnlyAuditEntry
      case "OrgConfigEnableCollaboratorsOnlyAuditEntry": return GitHubAPI.Objects.OrgConfigEnableCollaboratorsOnlyAuditEntry
      case "OrgCreateAuditEntry": return GitHubAPI.Objects.OrgCreateAuditEntry
      case "OrgDisableOauthAppRestrictionsAuditEntry": return GitHubAPI.Objects.OrgDisableOauthAppRestrictionsAuditEntry
      case "OrgDisableSamlAuditEntry": return GitHubAPI.Objects.OrgDisableSamlAuditEntry
      case "OrgDisableTwoFactorRequirementAuditEntry": return GitHubAPI.Objects.OrgDisableTwoFactorRequirementAuditEntry
      case "OrgEnableOauthAppRestrictionsAuditEntry": return GitHubAPI.Objects.OrgEnableOauthAppRestrictionsAuditEntry
      case "OrgEnableSamlAuditEntry": return GitHubAPI.Objects.OrgEnableSamlAuditEntry
      case "OrgEnableTwoFactorRequirementAuditEntry": return GitHubAPI.Objects.OrgEnableTwoFactorRequirementAuditEntry
      case "OrgInviteMemberAuditEntry": return GitHubAPI.Objects.OrgInviteMemberAuditEntry
      case "OrgInviteToBusinessAuditEntry": return GitHubAPI.Objects.OrgInviteToBusinessAuditEntry
      case "OrgRemoveBillingManagerAuditEntry": return GitHubAPI.Objects.OrgRemoveBillingManagerAuditEntry
      case "OrgRemoveMemberAuditEntry": return GitHubAPI.Objects.OrgRemoveMemberAuditEntry
      case "OrgRemoveOutsideCollaboratorAuditEntry": return GitHubAPI.Objects.OrgRemoveOutsideCollaboratorAuditEntry
      case "OrgRestoreMemberAuditEntry": return GitHubAPI.Objects.OrgRestoreMemberAuditEntry
      case "OrgRestoreMemberMembershipOrganizationAuditEntryData": return GitHubAPI.Objects.OrgRestoreMemberMembershipOrganizationAuditEntryData
      case "OrgUnblockUserAuditEntry": return GitHubAPI.Objects.OrgUnblockUserAuditEntry
      case "OrgUpdateDefaultRepositoryPermissionAuditEntry": return GitHubAPI.Objects.OrgUpdateDefaultRepositoryPermissionAuditEntry
      case "OrgUpdateMemberAuditEntry": return GitHubAPI.Objects.OrgUpdateMemberAuditEntry
      case "OrgUpdateMemberRepositoryCreationPermissionAuditEntry": return GitHubAPI.Objects.OrgUpdateMemberRepositoryCreationPermissionAuditEntry
      case "OrgUpdateMemberRepositoryInvitationPermissionAuditEntry": return GitHubAPI.Objects.OrgUpdateMemberRepositoryInvitationPermissionAuditEntry
      case "PrivateRepositoryForkingDisableAuditEntry": return GitHubAPI.Objects.PrivateRepositoryForkingDisableAuditEntry
      case "OrgRestoreMemberMembershipRepositoryAuditEntryData": return GitHubAPI.Objects.OrgRestoreMemberMembershipRepositoryAuditEntryData
      case "PrivateRepositoryForkingEnableAuditEntry": return GitHubAPI.Objects.PrivateRepositoryForkingEnableAuditEntry
      case "RepoAccessAuditEntry": return GitHubAPI.Objects.RepoAccessAuditEntry
      case "RepoAddMemberAuditEntry": return GitHubAPI.Objects.RepoAddMemberAuditEntry
      case "RepoAddTopicAuditEntry": return GitHubAPI.Objects.RepoAddTopicAuditEntry
      case "RepoRemoveTopicAuditEntry": return GitHubAPI.Objects.RepoRemoveTopicAuditEntry
      case "RepoArchivedAuditEntry": return GitHubAPI.Objects.RepoArchivedAuditEntry
      case "RepoChangeMergeSettingAuditEntry": return GitHubAPI.Objects.RepoChangeMergeSettingAuditEntry
      case "RepoConfigDisableAnonymousGitAccessAuditEntry": return GitHubAPI.Objects.RepoConfigDisableAnonymousGitAccessAuditEntry
      case "RepoConfigDisableCollaboratorsOnlyAuditEntry": return GitHubAPI.Objects.RepoConfigDisableCollaboratorsOnlyAuditEntry
      case "RepoConfigDisableContributorsOnlyAuditEntry": return GitHubAPI.Objects.RepoConfigDisableContributorsOnlyAuditEntry
      case "RepoConfigDisableSockpuppetDisallowedAuditEntry": return GitHubAPI.Objects.RepoConfigDisableSockpuppetDisallowedAuditEntry
      case "RepoConfigEnableAnonymousGitAccessAuditEntry": return GitHubAPI.Objects.RepoConfigEnableAnonymousGitAccessAuditEntry
      case "RepoConfigEnableCollaboratorsOnlyAuditEntry": return GitHubAPI.Objects.RepoConfigEnableCollaboratorsOnlyAuditEntry
      case "RepoConfigEnableContributorsOnlyAuditEntry": return GitHubAPI.Objects.RepoConfigEnableContributorsOnlyAuditEntry
      case "RepoConfigEnableSockpuppetDisallowedAuditEntry": return GitHubAPI.Objects.RepoConfigEnableSockpuppetDisallowedAuditEntry
      case "RepoConfigLockAnonymousGitAccessAuditEntry": return GitHubAPI.Objects.RepoConfigLockAnonymousGitAccessAuditEntry
      case "RepoConfigUnlockAnonymousGitAccessAuditEntry": return GitHubAPI.Objects.RepoConfigUnlockAnonymousGitAccessAuditEntry
      case "RepoCreateAuditEntry": return GitHubAPI.Objects.RepoCreateAuditEntry
      case "RepoDestroyAuditEntry": return GitHubAPI.Objects.RepoDestroyAuditEntry
      case "RepoRemoveMemberAuditEntry": return GitHubAPI.Objects.RepoRemoveMemberAuditEntry
      case "TeamAddRepositoryAuditEntry": return GitHubAPI.Objects.TeamAddRepositoryAuditEntry
      case "OrgRestoreMemberMembershipTeamAuditEntryData": return GitHubAPI.Objects.OrgRestoreMemberMembershipTeamAuditEntryData
      case "TeamAddMemberAuditEntry": return GitHubAPI.Objects.TeamAddMemberAuditEntry
      case "TeamChangeParentTeamAuditEntry": return GitHubAPI.Objects.TeamChangeParentTeamAuditEntry
      case "TeamRemoveMemberAuditEntry": return GitHubAPI.Objects.TeamRemoveMemberAuditEntry
      case "TeamRemoveRepositoryAuditEntry": return GitHubAPI.Objects.TeamRemoveRepositoryAuditEntry
      case "RepositoryVisibilityChangeDisableAuditEntry": return GitHubAPI.Objects.RepositoryVisibilityChangeDisableAuditEntry
      case "RepositoryVisibilityChangeEnableAuditEntry": return GitHubAPI.Objects.RepositoryVisibilityChangeEnableAuditEntry
      case "MentionedEvent": return GitHubAPI.Objects.MentionedEvent
      case "MergeQueue": return GitHubAPI.Objects.MergeQueue
      case "MergeQueueEntry": return GitHubAPI.Objects.MergeQueueEntry
      case "MigrationSource": return GitHubAPI.Objects.MigrationSource
      case "MilestonedEvent": return GitHubAPI.Objects.MilestonedEvent
      case "MovedColumnsInProjectEvent": return GitHubAPI.Objects.MovedColumnsInProjectEvent
      case "OIDCProvider": return GitHubAPI.Objects.OIDCProvider
      case "OrganizationIdentityProvider": return GitHubAPI.Objects.OrganizationIdentityProvider
      case "OrganizationInvitation": return GitHubAPI.Objects.OrganizationInvitation
      case "OrganizationMigration": return GitHubAPI.Objects.OrganizationMigration
      case "Package": return GitHubAPI.Objects.Package
      case "PackageFile": return GitHubAPI.Objects.PackageFile
      case "PackageTag": return GitHubAPI.Objects.PackageTag
      case "PackageVersion": return GitHubAPI.Objects.PackageVersion
      case "PinnedEvent": return GitHubAPI.Objects.PinnedEvent
      case "PinnedIssue": return GitHubAPI.Objects.PinnedIssue
      case "ProjectCard": return GitHubAPI.Objects.ProjectCard
      case "ProjectColumn": return GitHubAPI.Objects.ProjectColumn
      case "ProjectV2Field": return GitHubAPI.Objects.ProjectV2Field
      case "ProjectV2IterationField": return GitHubAPI.Objects.ProjectV2IterationField
      case "ProjectV2SingleSelectField": return GitHubAPI.Objects.ProjectV2SingleSelectField
      case "ProjectV2Item": return GitHubAPI.Objects.ProjectV2Item
      case "ProjectV2ItemFieldDateValue": return GitHubAPI.Objects.ProjectV2ItemFieldDateValue
      case "ProjectV2ItemFieldIterationValue": return GitHubAPI.Objects.ProjectV2ItemFieldIterationValue
      case "ProjectV2ItemFieldNumberValue": return GitHubAPI.Objects.ProjectV2ItemFieldNumberValue
      case "ProjectV2ItemFieldSingleSelectValue": return GitHubAPI.Objects.ProjectV2ItemFieldSingleSelectValue
      case "ProjectV2ItemFieldTextValue": return GitHubAPI.Objects.ProjectV2ItemFieldTextValue
      case "ProjectV2View": return GitHubAPI.Objects.ProjectV2View
      case "ProjectV2Workflow": return GitHubAPI.Objects.ProjectV2Workflow
      case "PublicKey": return GitHubAPI.Objects.PublicKey
      case "PullRequestReviewThread": return GitHubAPI.Objects.PullRequestReviewThread
      case "PullRequestThread": return GitHubAPI.Objects.PullRequestThread
      case "Push": return GitHubAPI.Objects.Push
      case "PushAllowance": return GitHubAPI.Objects.PushAllowance
      case "Reaction": return GitHubAPI.Objects.Reaction
      case "Ref": return GitHubAPI.Objects.Ref
      case "ReferencedEvent": return GitHubAPI.Objects.ReferencedEvent
      case "ReleaseAsset": return GitHubAPI.Objects.ReleaseAsset
      case "RemovedFromMergeQueueEvent": return GitHubAPI.Objects.RemovedFromMergeQueueEvent
      case "RemovedFromProjectEvent": return GitHubAPI.Objects.RemovedFromProjectEvent
      case "RenamedTitleEvent": return GitHubAPI.Objects.RenamedTitleEvent
      case "ReopenedEvent": return GitHubAPI.Objects.ReopenedEvent
      case "RepositoryInvitation": return GitHubAPI.Objects.RepositoryInvitation
      case "RepositoryMigration": return GitHubAPI.Objects.RepositoryMigration
      case "RepositoryRule": return GitHubAPI.Objects.RepositoryRule
      case "RepositoryRuleset": return GitHubAPI.Objects.RepositoryRuleset
      case "RepositoryRulesetBypassActor": return GitHubAPI.Objects.RepositoryRulesetBypassActor
      case "ReviewDismissalAllowance": return GitHubAPI.Objects.ReviewDismissalAllowance
      case "ReviewRequest": return GitHubAPI.Objects.ReviewRequest
      case "ReviewRequestRemovedEvent": return GitHubAPI.Objects.ReviewRequestRemovedEvent
      case "ReviewRequestedEvent": return GitHubAPI.Objects.ReviewRequestedEvent
      case "SavedReply": return GitHubAPI.Objects.SavedReply
      case "SecurityAdvisory": return GitHubAPI.Objects.SecurityAdvisory
      case "SponsorsActivity": return GitHubAPI.Objects.SponsorsActivity
      case "SponsorsListing": return GitHubAPI.Objects.SponsorsListing
      case "SponsorsListingFeaturedItem": return GitHubAPI.Objects.SponsorsListingFeaturedItem
      case "SponsorsTier": return GitHubAPI.Objects.SponsorsTier
      case "Sponsorship": return GitHubAPI.Objects.Sponsorship
      case "SponsorshipNewsletter": return GitHubAPI.Objects.SponsorshipNewsletter
      case "Status": return GitHubAPI.Objects.Status
      case "StatusCheckRollup": return GitHubAPI.Objects.StatusCheckRollup
      case "SubscribedEvent": return GitHubAPI.Objects.SubscribedEvent
      case "TransferredEvent": return GitHubAPI.Objects.TransferredEvent
      case "UnassignedEvent": return GitHubAPI.Objects.UnassignedEvent
      case "UnlabeledEvent": return GitHubAPI.Objects.UnlabeledEvent
      case "UnlockedEvent": return GitHubAPI.Objects.UnlockedEvent
      case "UnmarkedAsDuplicateEvent": return GitHubAPI.Objects.UnmarkedAsDuplicateEvent
      case "UnpinnedEvent": return GitHubAPI.Objects.UnpinnedEvent
      case "UnsubscribedEvent": return GitHubAPI.Objects.UnsubscribedEvent
      case "UserBlockedEvent": return GitHubAPI.Objects.UserBlockedEvent
      case "UserContentEdit": return GitHubAPI.Objects.UserContentEdit
      case "UserStatus": return GitHubAPI.Objects.UserStatus
      case "VerifiableDomain": return GitHubAPI.Objects.VerifiableDomain
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}