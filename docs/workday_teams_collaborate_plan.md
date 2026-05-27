# Workday for Microsoft Teams – Collaborate and Plan

## Stakeholders

**HR (Workday) Administrator**
- Controls who can sign into the app (via `Workday Everywhere User` security domain)
- Configures app functionality

**IT Administrator**
- Controls who can find the app in Microsoft Teams
- Enables the app for the organization via Microsoft Teams admin center

## Key Questions to Answer

1. **How does the app work?**
   Reference: *Workday for Slack and Microsoft Teams FAQ* (Workday Community)
   Topics covered: architecture, data rendering/storage, encryption, SSO types, OAuth token expiry, Microsoft Graph API permissions, Azure permissions

2. **Who should have access?**
   - Workday side: `Workday Everywhere User` domain — security groups `All Employees` and `Employee As Self` (View + Modify)
   - Teams side: App permission policies in Microsoft Teams admin center (Global org-wide default or scoped policies)

3. **What capabilities should we enable?**
   Reference: *Workday for Microsoft Teams and Slack Product Capabilities* PDF (Workday Community — Workday Everywhere User Group)
