# Workday for Microsoft Teams – Configure, Connect, and Test

## Step 1 – Configure

### HR: Set Up Workday Everywhere in Tenant
- Follow: **Steps: Set Up Security for Workday Everywhere** (Workday Docs → HCM Innovation Services → Workday Everywhere)
- Prerequisites: Check Subscription Service Agreement (UMSA vs MSA determines whether to enable **Innovation Services Features and Machine Learning Data Contributions**)
- Context: Enables workers to perform Workday self-service tasks in Microsoft Teams and Slack

### HR: (Optional but Highly Recommended) Set Up Workday Assistant
- Follow: **Setup Considerations: Workday Assistant** (Workday Docs → HCM Innovation Services → Workday Assistant)
- **Workday Assistant powers most Workday Everywhere Quick Actions and Chat responses**
- Capabilities enabled: chatbot window, machine learning-enhanced Enterprise Search
- Supported languages: English, French (Canada), French (continental), German, Japanese, Korean, Spanish

### IT: Add Workday App in Microsoft Teams Admin Center
1. Navigate to **Teams apps > Manage apps > Workday**
2. Grant admin consent for required permissions:
   - `TeamsAppInstallation.ReadWriteSelfForUser.All` (allow app to manage itself for all users)
   - `User.Read.All` (read all users' full profiles)
3. Set an **App permission policy** (Teams apps > Permission policies)
   - Global (Org-wide default): allows all Microsoft apps and third-party apps

## Step 2 – Connect

### HR: Connect Tenant to Workday App
- Open Workday app in Teams → **Admin** tab → **Configure the Workday app**
- Click **Configure** under Manage Features to enable/disable:
  - Birthdays / Anniversaries (Hire Date or Continuous Service Date)
  - Anytime Feedback (include "View in Workday" link option)
  - Assistant
- Click **Set Up** under **Set Up Approvals and Notifications** → launches **Set Up Notifications for Workday Everywhere** task in Workday

**Tenant pairing rules:**
- Non-Production (sbox or preview) → can connect to Non-Production **or** Production Teams
- Production → can **only** connect to Production Teams (NOT Non-Production)

### Connection Flow (Admin)
1. Open Workday app in Teams → click **Sign In**
2. Enter **Tenant Alias** in Workday sign-in screen
3. Complete MFA/SSO if configured
4. Tenant is connected; Admin tab becomes available

## Step 3 – Test

### Both: Provide Pilot Team Access
- Workday: Add pilot users to `Workday Everywhere User` security domain
- Teams: Create a scoped **app permission policy** in Microsoft Teams admin center so only pilot users see the app (prevents premature connection/awareness messages to non-pilot users)

### HR: Test Scenarios
Reference: **Workday Everywhere Configuration Workbook** (available on Workday Community)

### Connection Message Behavior (Testing Consideration)
Connection messages are sent to users when:
- App is first installed or pinned for the org
- User first navigates to the app
- (Requires **Set Up Notifications for Workday Everywhere** enabled) Initiator or approver corrects time off or enrolls in learning inside Workday and isn't already connected

> **Warning:** Connection messages can reach users outside the `Workday Everywhere User` security domain — they receive the message but cannot connect. Mitigate by scoping the app permission policy to pilot users only during testing.
