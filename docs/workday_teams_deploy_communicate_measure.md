# Workday for Microsoft Teams – Communicate, Deploy, and Measure

## Step 4 – Communicate

### Both: Determine Announcement Channels
Recommended channels:
- Teams Announcement
- Workday Announcement
- Email or newsletter
- Support article
- Intranet post
- Short demo video

### HR: Prepare Messaging
- Use **Message Templates to Announce Workday for Microsoft Teams** (Workday Community)
- Templates available: Short Message Template, Long Message Template
- Customize: remove features not enabled, add internal knowledge links, add support contacts

## Step 5 – Deploy

### HR: Configure and Connect Production Tenant
- Repeat Steps 1–2 (Configure + Connect) against the Production Workday tenant
- Admin tab path: Workday app in Teams → **Admin** → **Configure** / **Set Up**
- Sign in using production tenant alias

### Both: Enable App for Organization
- IT: In Microsoft Teams admin center → **Teams apps > Permission policies** → set Global (Org-wide default) or targeted policy to allow Workday app

### IT: Preinstall and/or Pin the App
- Navigate to **Teams apps > Setup policies > Global (Org-wide default)**
- Under **Installed apps**: Add Workday (App ID: `aa4981ef-635f-4066-b260-97445a4b2819`)
- Under **Pinned apps**: Add Workday to pin to the app bar for all users
- Enable **User pinning** if desired

## Step 6 – Measure

### HR: Use Workday Assistant Usage Report
1. Access **Delivered Discovery Boards** in Workday Drive
2. Locate **Assistant Usage Reports** discovery board → click **Make a Copy** → **Copy to Drive**
3. Required security domains:
   - `Discovery Boards: Administration`
   - `Discovery Boards: Create`
   - `Discovery Boards: Manage Delivered Discovery Boards`
   - `Assistant Usage Reports`
4. Metrics available: Unique Requests, Unique Users, Return Users, Success Percentage, Capabilities Usage Count, Platforms, Capabilities by Language, Capabilities by Country, Disabled Capabilities Requested
