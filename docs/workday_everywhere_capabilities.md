# Workday Everywhere – Product Capabilities
> Workday for Microsoft Teams and Slack · Updated for 26R1

---

## Overview

Workday Everywhere integrates Workday functionality into Microsoft Teams and Slack. Two interaction modes:
- **Quick Actions:** buttons on Home tab
- **Workday Assistant conversations:** Chat/Messages tab

---

## Response Types

### Take Action / Return Information
User takes action or gets data directly within Teams/Slack.

### Navigation into Workday
User receives a deep link into Workday browser (task or report).

---

## Quick Actions: Take Action / Return Information

| Category | Actions |
|---|---|
| Expenses | Create Quick Expense* |
| Feedback | Give anytime feedback* |
| Human Resources | Lookup a coworker / Find a coworker* |
| Learning | Continue learning content; View my enrolled content; View my required content |
| Misc | COVID-19 Notice (conversation only); My Tasks*+ |
| Pay | View payslip |
| Procurement | View orders |
| Profile | View my anniversary/birthday/business unit/email/ethnicity/employee ID/hire date/last promotion date/legal name/location/manager/marital status/nationality and citizenship/phone numbers/preferred name/sexual and gender identity/time in position/title/worker information |
| Projects | Find Projects |
| Recruiting | Request Interview Feedback*; Find job requisitions |
| Time Off | Request time off; Correct time off; View time off balance (includes Requested and Approved); View holiday calendar / Company holidays |
| Time Tracking | Check In; Check Out; Enter time* (Teams only); Submit time |
| Workday Help | Search Help Articles |

`*` = Available with Workday Assistant disabled  
`+` = Not available via Workday Assistant/Chat functionality

---

## Quick Actions: Navigation into Workday

| Category | Actions |
|---|---|
| Benefits | View Dependents; View Insurance Policies |
| Career | Find Jobs |
| Expenses | View Expense Reports |
| Feedback | Get feedback on self; Get feedback on worker; View feedback received; View feedback requested |
| Goals | Add goals to employees; Manage organization goals; View my goals; View my organization goals; View my team's goals |
| Human Resources | Get reference letters |
| Learning | Continue learning content; Enroll in content; View all content; View learning home; View my learning transcript; View my team's learning status |
| Pay | View 401(k); View bonus history; View direct deposit; View total compensation; View tax forms |
| Performance Reviews | View performance review (My Reviews; Start My Performance Review; My Team's Performance Review; Start Performance Review for Employee) |
| Productivity | Open My Drive |
| Profile | Change my contact information/date of birth/emergency contacts/ethnicity/legal name/marital status/nationality and citizenship/personal information/place of birth/preferred name/profile photo/sexual and gender identity |
| Recruiting | Create job requisition; Create referral; View a candidate's status |
| Staffing Changes | Change job templates; Change job |
| Time Tracking | Approve Timesheets; Enter Time (Slack only) |
| Workday Help | Create Case |

`*` = Available with Workday Assistant disabled

---

## Dashboards

### My Tasks
- Available to all users; shows 10 most recent tasks
- Action tasks within app or deep-link to Workday
- Slack: appears in a modal; not configurable

### My Calendar
- Available to all users; shows holidays + approved time off
- Teams also shows: learning due, pending time off requests
- Not configurable

### My Team (managers only)
- Shows team birthdays, holidays, anniversaries, upcoming time off
- Teams also shows: pending time off, holidays
- Includes visual Team Calendar
- Not configurable

### Admin Dashboard
- Available to users secured to `Workday Everywhere Administrator` domain
- Configure settings (Manage Features), view diagnostics, manage ISA credentials
- Teams only: Disconnect All Users from Workday

---

## Notifications & Approvals

### Connection Message
Sent when:
- (Teams) App first installed/pinned for org, or user first navigates to app
- (Slack) User first navigates to app
- (Requires `Set Up Notifications for Workday Everywhere`) Initiator or approver triggers time off correction or learning enrollment inside Workday and isn't connected yet

### Awareness Message
Sent to unconnected users who are secured to `Workday Everywhere User` domain but haven't signed in:
- Manager receives: when employee requests time off (via any channel)
- Employee receives: when manager responds to their time off request
- Employee receives: when another user provides anytime feedback
- Employee receives: when expense report status is updated

### Approvals (via Set Up Notifications for Workday Everywhere)
- Supported for: time off requests, time off corrections, learning enrollment
- Approver receives notification with Approve/Deny buttons
- Initiator receives outcome notification
- Exception: for non-time-off approvals, both initiator and approver must be connected

### Help Case Updates
- Enabling Help Case notifications informs users of new case responses

### Feedback Notifications
- Requires Anytime Feedback Quick Action enabled
- Submitter receives confirmation on send
- Recipient and their manager may receive notification (per Advanced Feedback Settings) with button to view feedback in modal
- Awareness messages sent to unconnected users secured to `Workday Everywhere User` domain

### Expense Notifications (as of 24R2)
- Notifies submitter of expense report status (approved, denied, sent back)
- Enabled by default; admin can disable via `Set Up Notifications for Workday Everywhere` task

---

## Measuring Adoption

### Assistant Usage Report Discovery Board
- Tracks usage of Assistant-powered quick actions and conversations
- Metrics: Success Percentage, Capabilities Usage Count, Platforms, Capabilities by Job Profile/Language/Country
- **Not captured:** certain quick actions, all notifications/approvals, dashboard usage (Home, My Team)

---

## Resources
- Overview and How to Deploy Workday for Microsoft Teams
- Overview and How to Deploy Workday for Slack
- Configuration Workbook for Testing
- User Experience Roadmap
- Documentation / Administrator Guide: Workday Everywhere
- Workday Everywhere Functional and Security FAQs
