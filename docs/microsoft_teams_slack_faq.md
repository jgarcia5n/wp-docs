---
title: Workday for Slack and Microsoft Teams FAQ
document_type: FAQ
vendor: Workday
product: Workday Everywhere (Workday for Slack, Workday for Microsoft Teams, Workday for Microsoft 365 Copilot)
posted: 2020-05-13
updated: 2026-05-21
source_url: https://community-content.workday.com/content/workday-community/en-us/faq/products/platform-and-product-extensions/people-experience/workday-for-slack-and-microsoft-teams-faq.html
category: Platform and Product Extensions > People Experience
tags:
  - Workday Everywhere
  - Slack
  - Microsoft Teams
  - Microsoft 365 Copilot
  - Self-Service Agent
  - Workday Assistant
  - Setup
  - Security
  - Compliance
---

# Workday for Slack and Microsoft Teams — FAQ

## Overview / Important Note

This document answers frequently asked questions about Workday for Slack and Microsoft Teams (collectively, **Workday Everywhere**).

**Setup approval requirement:** A Slack or Teams administrator must approve the Workday application for the organization. IT administrators may need details on security, privacy, and data handling. Additional resources:

- Workday for Microsoft Teams Publisher Attestation
- Workday for Slack Security and Compliance page
- Workday Administrator Guide
- Workday Everywhere User Group (Community)
- Workday Community Ideation Hub (product ideas/feedback)
- Submit a support case for bugs or for more security/privacy/compliance info

---

## 1. Setup and Installation

### Does Workday Everywhere cost anything?
No. Workday Everywhere is free with the Human Capital Management (HCM) or Financial Management subscription.

### What steps are needed to set up Workday Everywhere?
Use the Workday Administrator Guide for all required and optional steps. Follow "Steps: Set Up Workday Everywhere" for additional recommendations.

### Do I need subscription service agreements like the MSA and UMSA?
Possibly — depending on the organization's subscription agreement. To use Workday Everywhere, opt-in to the **Workday Everywhere** service on the Available Service tab in the **People Experience** category. Workday also recommends opting-in to the **Workday Assistant** in the same category. References: "Streamlining Feature Adoption" and "Workday AI Home Page" announcements.

### Do I need to purchase Workday Extend to use Workday Everywhere?
No. Workday for Microsoft Teams and Slack are free with HCM/FIN. However, they use Workday Extend's APIs, which is why domain security setup for the **WQL for Workday Extend** security domain is required.

### Can I connect more than one Workday tenant to a Teams/Slack environment?
- **Microsoft Teams:** 1 Workday tenant per Teams environment. With multiple Teams environments, each can connect to 1 tenant (same or different).
- **Slack:** 1 Workday tenant per Slack workspace. With multiple workspaces, each can connect to 1 tenant.
- **Slack Enterprise Grid:** 1 Workday tenant per workspace, even across multiple workspaces.

### What is my tenant alias?
The tenant alias maps to your Workday tenant and matches your Production or Implementation tenant name (e.g., `globalcorp`, `globalcorp98`). Some Sandbox environments require `-sb` appended (e.g., `globalcorp-sb`).

### How does user authentication work?
Workday for Microsoft Teams and Slack use **OAuth 2.0** and **auth.api.workday.com** services. Access uses the same security model as direct Workday access.

### Does Workday Everywhere support SSO (single sign-on)?
Yes. SSO and MFA flows are supported. First-time users sign in using existing methods (password, SSO, MFA), then an OAuth token is generated.

### Why are users asked to authorize Workday during sign-in?
Workday Everywhere uses Workday Extend's public APIs. The authorization prompt grants access to the required Workday Extend scopes:
Contact Information, Customer Accounts, Expenses, Help, Organizations and Roles, Performance and Goals, Personal Data, Procurement, Recruiting, Staffing, System, Talent Core, Tenant Non-Configurable, Time Off and Leave, Workday-Owned, Worktags.

### Why does Slack require a channel to post?
Slack's **incoming webhook** scope requires a channel selection. The chosen channel only receives installation/removal messages and does not affect app availability for users. A restrictive channel can be used.

### Can I use Workday for Microsoft Teams in Microsoft Government Community Cloud (GCC)?
No. GCC is not officially supported. Installation may be possible but some functionality (like notifications) may not work as expected.

---

## 2. Sana Self-Service Agent (SSA) in Workday Everywhere

### What is the Sana Self-Service Agent?
The **Sana Self-Service Agent (SSA)** is a conversational AI agent that elevates employee self-service, streamlines HR operations, and reduces administrative burden by combining instant answers with assistive task completion.

### How is SSA different from the Workday Assistant?
SSA is a conversational AI agent accessible via Workday's side panel and select third-party channels. It incorporates and enhances Workday Assistant's skills while adding new capabilities for instant information retrieval and answer summarization, leveraging advances in LLMs and reasoning models.

### What is the current strategy for SSA and Workday Everywhere?
- SSA is being integrated into Workday Everywhere surfaces: **Slack, Microsoft Teams, Microsoft Copilot**.
- The Legacy Assistant-driven experience remains supported in Teams and Slack until **sunset in 27R2** (18-month deprecation window).
- **SSA General Availability (GA):** Scheduled for **26R1**.

### How does pricing work for SSA? Do Flex Credits and platform entitlements apply?
Yes. Prerequisites:
- Organization must be on the **Universal Main Subscription Agreement (UMSA)**.
- Organization must sign the **Workday Flex Credits and Platform Entitlement Policy** and purchase **Workday Flex Credits**.
Consult your account team for credit allotment estimates.

### Will SSA appear automatically on my Workday Everywhere surfaces?
Yes, for configured users — the connected platform's chat becomes AI-powered once SSA is enabled. Requires at least 1 agent skill and SSA activation in the Agent Management Hub. SSA handles self-service skills for both employees and managers.

### What changes should Workday Everywhere admins expect?
- **Service Agreement Activation:** SSA terms apply.
- **Workday Everywhere Activation:** Standard WE setup (security groups, domains) still required.
- **SSA Activation:** Enables transition from traditional chatbot to generative AI conversational experience in Slack/Teams.
- For Teams users, the Workday agent also appears in the Microsoft M365 Copilot Agent menu (requires additional Microsoft admin config).
- All SSA activation, deactivation, and provisioning happen in the **Agent Management Hub (ASOR)**. If SSA is enabled in ASOR, it is enabled for all provisioned users in WE.

### How do admins know if SSA is correctly connected?
Visual indicator in Workday Everywhere configuration settings:
- **Green:** SSA enabled on tenant.
- **Red:** SSA disabled. Defaults to Assistant if configured.
- **Yellow:** SSA unavailable. Defaults to Assistant if configured.

Admins should then navigate to **ASOR** for SSA configurations.

### What configurations are available in Workday Everywhere specifically?
The "Configure Workday" modal in Slack/Teams supports:
- **Employee Home/Dashboard:** Control visible employee insights.
- **Manager Home/Dashboard:** Control visible team insights.
- **Calendar Date Configuration:** Choose displayed events (birthdays, anniversaries).
- **Anniversary Date Type:** Hire Date or Continuous Service Date.

### Who can see the new SSA-powered experience?
Controlled by agent activation and security group configuration in ASOR. If SSA is enabled for a specific pilot group, only those users see the new experience.

### What happens to users not in the SSA pilot group?
They continue with the legacy Assistant-powered Workday Everywhere experience.
- **SSA On + WE On:** SSA active for provisioned, authorized users.
- **SSA Off + WE On:** Assistant-powered app displays.

### How do users initiate a conversation with the agent from the Home tab?
A new **Agent button** (sparkle icon) in the Quick Actions section redirects users to the chat interface.

### Is the agent's Welcome Message customizable?
No. The welcome message is set agent-wide and is not customizable per tenant or user.

### Are all legacy Quick Actions still available?
The menu has been simplified. Available Quick Actions:
- Take Time Off (direct link to agent chat prompt)
- My Tasks
- Look up a Co-worker
- Anytime Feedback
- Request Interview Feedback
- Company Holidays
- View Time Off Balance

**Retired:** View Payslip, Enter Expense, Enter Time, Explore All — now supported via agent chat. Users on the Assistant-powered experience continue to see legacy options.

### How do I communicate with the agent?
Use conversational prompts (not specific commands):
- Plain text prompts (e.g., "What is my PTO balance?").
- Multi-turn conversations where the agent maintains context.

### What happens if I ask for something the agent can't do?
- **In-Scope:** Agent provides info or summary.
- **Out-of-Scope:** Agent responds with an error message or explanation of capabilities.

### Does the agent understand context of notification cards in chat?
Not currently. Notification cards display but the agent is not aware of them.

### How does the agent handle conversation history and context resets?
- **Slack:** Native threading maintains topic context.
- **Microsoft Teams:** No threading support — conversations reset after **60 minutes**.
- **Microsoft M365 Copilot:** Native threading maintains context per thread.

### Can users provide feedback on the agent's performance?
Yes. Thumbs up/down icons on agent responses in Teams/Slack open a feedback modal. **Note:** M365 Copilot feedback is not currently available to Workday.

### What language support is available?
Level 1 languages are supported for Slack/Teams interface (Home, Notifications, Messages). See Workday Community for supported languages.

### Why don't my WE chats with SSA show up in chat history on Web or Mobile?
Chat history is not persisted across interaction channels. Slack history stays in Slack; Teams stays in Teams. Cross-channel history persistence is not supported in the current release.

### How is sensitive data (payslip, payment elections) stored in connected surfaces?
Previously: modals (not persisted). **Now:** with the agentic experience, sensitive data is returned as plaintext in the chat transcript and stored like any other message per the surface's retention policies (e.g., Teams data stays in the customer's M365 tenant per their retention/eDiscovery policies).

### What is the purpose of the Workday Everywhere User domain when SSA is configured in ASOR?
Two access layers:
- **ASOR:** Controls the agent (registration, skills, security groups).
- **WE User Domain:** Controls Slack/Teams channel access.

If assigned to the agent in ASOR but not in WE User Domain, the user can use the agent in other channels but not in Slack/Teams.

### Do Slack or Microsoft Teams use this sensitive content to train their AI models?
No. Slack and Microsoft Teams do not use users' message or chat content to train their LLMs.

### How long does provisioning take once the app is installed?
The app is available immediately after installation.

### Can we roll out to a pilot group before deploying org-wide?
Yes. Use ASOR security group configuration to enable SSA for a pilot group.

### How can a customer ensure Zero Persistence for sensitive data?
Workday Everywhere does not persist conversational data. Data persistence settings depend on the connected surface.

---

## 3. Workday Everywhere for Microsoft M365 Copilot

### Is Workday Everywhere available for Microsoft 365 Copilot?
Yes. **GA on April 17, 2026.** A single Workday app for Microsoft works across both M365 Copilot and Teams. Setup requires:
- **Microsoft 365 admin:** Provisions app permissions for each surface.
- **Workday admin:** Configures tenant authentication for each surface.

Once configured, a single auth token applies across both M365 Copilot and Teams.

### I am an existing Workday Everywhere user on Microsoft Teams. Do I need to install anything new for M365 Copilot?
No. A single app install activates the Workday agent in both Teams and M365 Copilot.

### How is Workday Everywhere integrated with M365 Copilot?
SSA is integrated across supported surfaces (M365 Copilot, Teams). Chat in both is powered by SSA. Activation in the Workday tenant requires uMSA and Flex Credits.

### What can Workday Everywhere for M365 Copilot help me with?
The full SSA skillset: time off requests, payslip lookups, personal data updates, policy questions, team management, and more.

### Will using the Workday agent in M365 Copilot consume double LLM credits?
No. SSA operates on Workday-specific context only and doesn't call Microsoft's LLM layer. Only **Workday Flex Credits** are consumed for successful Workday tool calls.

### Can the Workday agent access Microsoft Graph data (emails, chats, calendar)?
Not currently — SSA works within a Workday-specific context only. Expansion to broader enterprise context (Microsoft Graph) is on the roadmap. Safe harbor applies.

### Can I use M365 Copilot to review emails/Teams messages about an employee then pull in Workday performance data?
Not in a single seamless experience today. **Workaround:** Use M365 Copilot's native chat to look up Microsoft Graph data, then **@mention the Workday agent** in the same thread — thread context carries over. A more integrated experience is on the roadmap.

### How are Flex Credits consumed — is every message charged?
No. **Credits are only consumed on successful tool calls.** Clarifying questions, dialogue, and Guide skill responses consume **zero credits**.

### Can customers test SSA before signing the Flex Credits policy?
Yes. uMSA alone unlocks SSA in non-Production environments (Sandbox, Implementation, Preview). Flex Credits are only required for Production. **Recommended sequence:** Configure/validate in Sandbox, then execute Flex Credits policy for go-live.

---

## 4. Capabilities

### How do Workday Everywhere and Workday Assistant interact?
Workday Everywhere uses Workday Assistant through Quick Actions and Chat. Most Assistant capabilities are accessible, with exceptions:
- Manager lookup of employee birthdays/anniversaries — not supported.
- Custom Help Contact — not supported.

Some WE functionality is built natively in Slack/Teams (not via Assistant):
- Personal/team calendars, My Tasks, Anytime Feedback, Co-worker Lookup, Enter Expenses, Enter Time (Teams), Request Interview Feedback.

Configure these via the WE Administrator panel. **Workday Assistant will retire in 2027R2** — Workday recommends switching to SSA.

### What languages does Workday for Teams and Slack support?
- English
- Spanish
- German
- French
- Canadian French
- Japanese
- Korean

**Note:** Locale preference drives WE language; language preference drives Assistant language. Both should be aligned for consistency.

---

## 5. Feature Configuration

### Does Workday require configuring Workday Assistant when using Workday for Teams and Slack?
Not required, but highly recommended. Assistant enables interactions like: changing job details, requesting time off, viewing/updating personal info, viewing learning content, viewing job requisition events, and more. See "Steps: Set Up Workday Assistant."

### Can I turn off Workday Assistant inside Workday but keep functionality in Teams/Slack?
Yes. Two relevant domains:
- **Bots** — both domains required for Assistant inside Workday.
- **Assistant** — only this needs to be active for Assistant tech inside Teams/Slack.

Disabling/not activating **Bots** turns off Assistant in Workday Desktop (chatbot bubble) and the Workday mobile app.

### How do I disable or manage quick actions?
Most quick actions follow settings in **Edit Tenant Setup - Assistant**. Changes may take up to **24 hours** to reflect in Slack/Teams. Other actions are configurable via the Admin panel inside Teams/Slack (requires Workday Everywhere Administrator domain).

### What types of notifications are available?
Two frameworks:
1. **Workday Everywhere framework** (via `Set Up Notifications for Workday Everywhere`):
   - Anytime feedback (notifies recipient and manager unless confidential/private)
   - Case Management (Help case replies)
   - Expenses (expense report status)
   - Learning (managers approve enrollments)
   - Time off (managers approve new/corrected requests)
2. **Workday Tenant framework** (newer, for **Approvals** notification type) — configured via routing rules in `Tenant Setup - Notifications`. **For 2026R1, limited to Job Requisition business process.**

### How does domain or BP security access affect quick action visibility?
Lack of access does **not** hide most quick actions; users get a "can't help" message when attempting them. Exception: **Enter Time** is hidden when access is lacking. Plans exist to extend this behavior.

### What additional BP security is needed for time off requests/corrections?
Add users to **REST Service initiation actions** in the BP Security Policies:
- Request Time Off BP — Request Time Off (REST Service)
- Correct Time Off BP — Correct Time Off Entry (REST Service)

### What additional security is needed for approvers to receive correct time off notifications?
Approvers need access to the **Person Data: Work Email** security domain (in addition to standard WE notification setup).

### How do I enable anytime feedback?
Match workspace visibility settings to the HCM Production tenant. Type `admin` in the Workday channel and ensure **Anytime Feedback** is enabled.

### How do I enable interview feedback?
Configure the Interview business process with steps:
**Schedule Interview → Manage Interview Feedback → Make Interview Decision**.

### Which features can't be disabled?
- Look up a co-worker (Quick Action)
- My Tasks (Quick Action)
- My Calendar (Dashboard)
- My Team (Dashboard)
- Admin (Dashboard)

### How do I enable or disable translation support in Workday Everywhere?
Workers must configure their preferred language and locale. Translation support **cannot currently be disabled**.

### Can I configure messages displayed when submitting Anytime Feedback?
Not currently configurable.

### Can administrators edit company holidays displayed on My Calendar?
Yes — edits to the worker's holiday calendar in Workday reflect in the WE calendar.

---

## 6. Testing

### How can I reduce who has access to Workday for Teams/Slack before broad rollout?
Use security groups for the **Workday Everywhere User domain**. Recommended: include managers and direct reports.
- **Teams:** Admin can also limit access via permission/setup policies.
- **Slack:** Admin can enable the app in a separate workspace for pilots.

**Note:** Connection messages for time off corrections or learning enrollments may be sent to users not secured to the WE User domain (known limitation).

### How do I disconnect and reconnect tenants in my Teams/Slack environment?
Recommended: Use a dedicated test instance against a Preview/Implementation tenant.
- **Teams:** Type `administration`, click **Disconnect from Workday**, then say `Hi` and enter the Production tenant name when prompted.
- **Slack:** Slack admin uninstalls/reinstalls the app, enters Production tenant on install; WE admin says `Hi` to bring up the Connect button.

### How can we test newly released features after going live in Production?
Workday releases updates to Production and Preview simultaneously. WE Admins receive in-app notifications linking to Community pages for testing/config details. **Do not disconnect Production** — it disconnects all users.

---

## 7. Rollout

### Can I auto-install the app so employees don't need to find it?
- **Teams:** Yes — admin can pin the app via app setup policies (recommended; increases engagement 2–3x).
- **Slack:** No auto-install. The same Workday tenant can connect to multiple workspaces, but install must occur per workspace. Recommend announcing availability.

### What will the experience be like for first-time users?
The app shows a **Sign In** button → user goes through SSO/MFA flow → ready to use.

### Is it possible to track usage?
Yes — see "How to set up Assistant Usage Report." Includes Assistant-backed functionality and surface origin (Slack/Teams vs. Workday Desktop/Mobile). Expansion of WE-specific metrics is on the roadmap.

---

## 8. Feature Troubleshooting

### Can users request backdated PTO in Workday Everywhere?
Yes — use specific language including the year (e.g., "Jan 1, 2022").

### Does Request Time Off in Workday for Slack/Teams allow attachment uploads?
No — the Workday Assistant-powered flow does not allow attachments.

### Does Workday Everywhere support BP Delegation?
No. Only events initiated by the user as self flow into Teams/Slack; approvals go to the assigned approver only.

### Why is the Lookup Co-worker feature not working?
Requires correct configuration of the **WQL for Workday Extend** domain. Enable the domain and ensure all employees have **View** permissions.

### What if I see "Unable to reach app. Please try again." in Workday for Teams?
Ensure the permission policy for the Workday app is enabled in the Teams Admin Center. Policy changes can take up to **24 hours** and may require reinstall.

### How do I restore Workday for Teams/Slack after it stops working? How do I change administrators?
If the admin whose credentials enabled WE leaves, you receive a 48-hour notice: *"Workday for Teams isn't available right now because the innovation services agreement has been disabled."*

A WE Administrator can restore service by navigating to the **admin tab** and selecting **Use my credentials**. Must be in the **Workday Everywhere Administrator** security domain.

### Why are approval notifications not being sent?
Verify:
- WE app is opted-in for **Initiator and Approver** in `Set Up Notifications for Workday Everywhere`.
- All required security configurations in the Workday Administrator Guide are complete.
- Both initiator and approver have the WE app installed and are signed in **before** BP initiation.
- BP step is an **approval** step (not action > review). Only approval steps are supported.

If unresolved, open a case: Production Support > People Experience > Workday for Microsoft Teams or Slack.

### What if users are being asked to reconnect to Workday in Microsoft Teams?
Causes:
- Admin disconnected the Workday Teams app from the tenant.
- End user (or Teams admin) uninstalled the app.

### Why are my employees receiving a message to connect to the app?
Triggers:
- **Teams:** When admin first installs (pinning also installs).
- **Slack:** When the user first finds the app.
- **Time Off Approvals:**
  - Unconnected manager whose worker requests time off → notified to connect.
  - Unconnected worker whose connected manager approves/denies → notified to connect.
- Corrections to time off or Learning enrollments → connection message to unconnected initiator or approver (only if notifications are enabled).

**Note:** Connection notifications may reach users outside the WE User domain (planned fix). Mitigations:
- **Teams:** App permission policy limiting Workday for Teams to users in **Workday Everywhere User** + **Workday Everywhere Administrator** groups.
- **Slack:** Test in a workspace not available to broader users.

### Why do quick actions and dashboards not immediately disappear/reappear after changing user access?
Changes can take up to **24 hours** due to caching. Users can disconnect/reconnect for immediate refresh. **Security changes take effect immediately** — users may still see actions but receive errors when invoking them.

---

## 9. Privacy, Security, and Compliance

### What is Workday Everywhere's architecture?
A diagram of the architecture is available on the source page.

### How is Workday data rendered and stored in Slack or Microsoft Teams?
Two rendering paths:
- **Modals:** Rendered in real-time, visible only to the requestor. **Not stored** in Slack/Teams after closing (e.g., Co-worker Lookup).
- **Message threads:** Stored per the Slack/Teams retention policies (e.g., Take Time Off flow).

Workday Everywhere does **not** store Microsoft/Slack data other than OAuth2.0 tokens, Microsoft Graph API tokens, or Slack Bot tokens. Request processing data goes to the USA. References: **Universal Data Processing Exhibit (UDPE)** — covers Binding Corporate Rules, Standard Contractual Clauses (SCCs), Data Privacy Framework (DPF), and AWS as a third-party subprocessor. See also: **Workday Everywhere Service Description**.

### How is data encryption managed in-transit between data centers?
The WE Service uses **Workday Extend (api.workday.com)** to route traffic via **HTTPS TLS 1.2**. Data in AWS is encrypted via **Key Management Service (KMS)**. Workday Extend subscription is **not** required.

### How is Workday's access to AWS resources managed?
- Follows **least privilege** principle.
- Uses **AWS IAM** to control access; services are provisioned with IAM roles limited to function.
- Access is logged, monitored, and audited.
- Audits include **SOC1** and **SOC2** certifications. See Workday's Privacy and Compliance Program page.

### Which types of SSO are supported?
All existing SSO/MFA flows. First-time sign-in generates an OAuth 2.0 token used for subsequent access.

### When do OAuth tokens expire for app users?
Tokens are stored after first sign-in and **automatically refreshed every 60 minutes**. Deactivated users in Workday lose access.

### How is the integration with Workday for Slack/Teams operated?
- API calls are processed in a **Workday-managed AWS public cloud** environment (Workday Everywhere Service).
- Uses **REST APIs** with **TLS/HTTPS**, similar to browser → Workday.
- MSA/UMSA Service Data is protected by the **Universal Security Exhibit**.

### How does Workday Everywhere handle Workday Authentication Policies (VPN)?
- Users not on VPN cannot follow **deep links** into Workday.
- They **can** still use Quick Actions, Dashboards, and Chat returning information or enabling actions.
- Data does not leave Workday SOC compliance systems; encrypted channels between Slack/Teams and Workday.
- Recommendation: Make Slack/Teams VPN-only if VPN policy is a concern.

### What Microsoft Graph API Permissions are requested and why?
Application Graph API permissions:

| Permission | Endpoint | Attributes | Reason |
|---|---|---|---|
| User.Read.All | GET `/v1.0/users/{id}/licenseDetails` | servicePlanName, provisioningStatus | Validate user has a Teams license |
| User.Read.All | GET `/v1.0/users` | displayName, mail, preferredLanguage, ID | Search for user by email |
| TeamsAppInstallation.ReadWriteSelfForUser.All | GET `/v1.0/users/{id}/teamwork/installedApps?$expand=teamsAppDefinition` | ID, teamsAppDefinition.teamsAppId | Identify WE app install for user (drives engagement; sends connection invites if unconnected) |
| TeamsAppInstallation.ReadWriteSelfForUser.All | POST `/v1.0/users/{targetUserAadId}/teamwork/installedApps` | — | Install Workday for Teams App for user (drives engagement) |

**OpenID Connect scopes:** Email, Offline_access, OpenID, Profile — minimum required to generate