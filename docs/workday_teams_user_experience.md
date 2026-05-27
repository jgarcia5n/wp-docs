# Workday for Microsoft Teams – User Experience & Notifications

## First Time Connection Flow (End Users)
1. User clicks **Connect to Workday** / **Sign In** button in the Teams app
2. New browser/popup window opens → user signs into Workday tenant (MFA/SSO supported)
3. User is prompted to **Authorize Workday** (Allow / Deny)
4. User is connected and returned to the app (prompted to pin app to sidebar)

## Connection Message
Sent automatically to prompt users to connect.

**Triggers:**
- App is first installed or pinned for the organization
- User first navigates to the Workday app in Teams
- (Requires **Set Up Notifications for Workday Everywhere**) Initiator or approver corrects time off or enrolls in learning inside Workday and is not yet connected

**Scope note:** Can reach users outside `Workday Everywhere User` domain — they receive the message but **cannot connect**. Use scoped app permission policy during testing to limit reach.

## Awareness Message
Sent to users who are secured to `Workday Everywhere User` domain but have not yet signed in.

**Triggers:**
- Unconnected **manager** receives message when an employee requests time off (via Workday browser, Workday Mobile, or Workday for Microsoft Teams)
- Unconnected **employee** receives message when a manager responds to their time off request (via any channel)
- Unconnected **employee** receives message when they are a recipient of anytime feedback (via any channel)
- Unconnected **user** receives message when their expense report is approved

## New Feature Notifications (Admins)
- Workday sends Workday Everywhere administrators an in-app notification within the Workday for Teams/Slack app whenever new functionality is released
- Notification includes a link to the Workday Community feature details page
