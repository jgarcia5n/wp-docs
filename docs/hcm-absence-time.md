# HCM – Absence Management & Time Tracking

> Source: Admin Guide – Human Capital Management (May 14, 2026), pp. 2310–3026

---

## Absence Management

### Overview

Workday Absence Management tracks short-term time off and long-term leave of absence. Integrates with Payroll, Time Tracking, Workday Assistant, and third-party calendars.

**Workday Terminology:**
- **Time Off** — short-term absence (hours/days)
- **Leave of Absence** — long-term absence; separate request type

**Business Benefits:**
- Seamless integration with Workday Payroll and Time Tracking
- Multiple time off and leave types
- Absence Calendar merges time off and leave request tasks
- Worker self-service for requests, corrections, and balance viewing
- Team and organization absence calendar visibility
- GDPR data purge support for terminated workers
- Third-party calendar synchronization
- Industry benchmarking support

**Worker Capabilities:**
- Enter, correct, and view time off requests
- Record leaves with estimated/flexible end dates
- View team absence calendars

**Manager/Admin Capabilities:**
- Approve/deny time off and leave
- Enter time off or leave on behalf of workers
- Adjust balances
- Return workers from leave
- Track and manage time off
- Manage absence cases for workers on long-term leave

---

### Absence Calendar Experience

**Setup Considerations:** Configure unified calendar for both time off and leave requests; manage team calendar visibility.

| Task | Purpose |
|------|---------|
| Steps: Set Up the Absence Calendar Experience | Configure the combined time off and leave calendar |
| Steps: Set Up the Team Absence Calendar | Configure team-level visibility |
| Steps: Set Up Non-English Custom Labels for Absence | Localize absence terminology |
| Configure Absence Type Groups | Group absence types for display and reporting |

**Reference: Absence Calendar Experience Comparison** — comparison of legacy vs. new calendar experience.

---

### Time Off Setup

#### Set Up Time Off

Configure time off types, plans, accrual rules, eligibility, and business processes.

**Key objects:**
| Object | Description |
|--------|-------------|
| Time Off Type | Specific type (e.g., Vacation, Sick, Personal) with unit, eligibility, and accrual rules |
| Time Off Plan | Groups related time off types; defines balance tracking, eligibility, and plan rules |
| Leave Family | Set of related leave types (e.g., medical leave, parental leave) |
| Leave of Absence Rule | Worker eligibility rules for leave |
| Linked Leave | Time off type sharing an entitlement with other types (coordinated leaves) |

#### Set Up Accruals, Period Schedules, and Balances

Configure how time off balances accrue over time:
- Accrual calculation frequency and amounts
- Accrual caps (upper limits)
- Carryover rules (max balance rollover to new period)
- Waiting periods before accrual begins
- Balance display options

#### Time Off Requests

Configure the Request Time Off and Correct Time Off business processes. Includes:
- Approval routing rules
- Eligibility rules per request type
- Retroactive request configuration

#### Buy and Sell Time Off

Configure optional buy/sell programs enabling workers to purchase additional time off or sell unused balances.

#### Time Off Adjustments

Manual adjustments to worker time off balances. Configure the Adjust Time Off business process and adjustment reason codes.

#### Forfeiture Adjustments

Configure automatic forfeiture of balances at plan year end or per carryover rules.

#### Termination Adjustment

**Termination Adjustment** — automatically sets a worker's time off plan balance to zero upon termination. Configure via Time Off Plan settings.

---

### Leave of Absence

#### Set Up Leave of Absence

Configure leave types, eligibility rules, duration rules, and return-from-leave workflow.

**Key configuration:**
- Leave type categories (disability, FMLA, parental, military)
- Entitlement duration limits
- Pay continuation during leave (linking to payroll)
- Return from leave business process
- Cascading leave configuration (automatic transition between leave types)

#### Managing Leaves of Absence

- Initiate, approve, modify, and return workers from leave
- Absence case management for tracking milestones
- Leave balance deduction override capability

#### Leave Balance Deduction Override

Override standard leave balance deduction rules for specific workers or circumstances.

---

### Absence Event Tracking

**Steps: Manage Absence Cases** — create and manage absence case records for workers on long-term leave. Track milestones and accommodation steps.

**Create Absence Case Groups** — define case categories for tracking and reporting.

---

### Absence Occurrences

**What They Are:** Track frequency and pattern of absence events. Used for Bradford Factor calculations and attendance policy enforcement.

**Setup Considerations:** Decide which absence types to track, occurrence counting rules, and reset periods.

| Task | Purpose |
|------|---------|
| Steps: Set Up Absence Occurrences | Configure occurrence tracking rules |
| Configure Absence Occurrences | Define counting logic and reset periods |
| Recalculate Absence Occurrences | Refresh calculations after data changes |

**Concept: Absence Occurrences** — how occurrence records are created and counted.

---

### Absence Calculations

**Evaluate Absence Calculations** — test and validate absence calculation rules without affecting live data.

**Evaluate Absence Eligibility** — test eligibility rules for specific workers.

**Concept: Absence Calculations** — how Workday calculates hours/days for each absence type considering work schedules, holidays, and accrual rules.

---

## Time Tracking

### Overview

Workday Time Tracking enables worker time entry, automated pay policy application, and payroll integration.

**Core flow:** Worker enters time → Time calculations apply → Approved calculated time blocks → Payroll retrieves and pays time.

### Steps: Set Up Time Tracking

1. Set up time entry rules (see Time Entry Setup)
2. Set Up Payroll and Time Tracking Period Schedules
3. Create Worker Eligibility Rules for Time Tracking
4. Create Time Calculations (optional if not calculating overtime/premiums)
5. Create Time Entry Validations
6. Create Work Schedules and Holiday Schedules
7. Configure Payroll to Pay Time (Workday Payroll or Cloud Connect for Third-Party Payroll)
8. (Optional) Specify how to manage time off integration
9. (Optional) Enable Time Tracking for Mobile
10. (Optional) Create Custom Labels for check-in/check-out terminology

**Post-setup:** Run the **Time Configuration Analyzer Tool** and review results for configuration recommendations.

---

### Time Entry Setup

#### Time Entry Methods

| Method | Description |
|--------|-------------|
| Calendar-Based Time Entry | Workers use a time entry calendar to enter, edit, and submit time |
| High-Volume Time Entry | Simplified entry for high-volume workers; view/submit from calendar |
| Enter Time by Type | Workers enter totals by time entry code without calendar context |
| Time Clock (web or external) | Check-in/check-out events matched to form time blocks |

#### Time Entry Codes

**Time Entry Code** — describes the type of time (worked time, meal allowance, overtime). Must be attached to Time Code Groups (except default code on templates).

**Time Code Group** — primary control for which time entry codes a worker can access. Assigned via eligibility rules to worker or position.

#### Time Entry Templates

**Time Entry Template** — defines time entry calendar configuration for a worker population. Controls available entry methods, auto-fill options, and display settings. Assigned via eligibility rules.

**Auto-fill** — option to copy time blocks from schedule or prior week.

**Quick Add** — option to create a time block and copy it to multiple days.

**Micro-edit** — direct editing of time blocks on the calendar by clicking.

#### Worktags for Time Entry

Configure which worktags (cost center, project, grant) workers can tag on time entries.

#### Time Requests

Configure requests for specific time-off types that flow through the time entry calendar.

#### Time Kiosk

Configure shared kiosk devices for badge-in/badge-out time entry for worker populations without individual devices.

---

### Time Calculations

**What They Are:** Rules applied to reported time to produce calculated time blocks for payroll. Example: convert regular hours to overtime when worker exceeds 40 hours/week.

#### Steps: Set Up Calculations for Time Tracking

1. Create Time Calculation Tags (map to payroll earnings)
2. Create required calculation types (see below)
3. Assign Time Calculation Priorities
4. Create Time Calculation Groups (assign multiple calculations to worker populations)
5. (Optional) Steps: Set Up Calculated Time Offs

#### Time Calculation Types

| Calculation Type | Purpose |
|-----------------|---------|
| Consecutive Day Calculations | Overtime for consecutive days worked |
| Flextime Calculations | Track time against flexible schedules |
| Minimum Daily Hours Calculations | Guarantee minimum daily pay |
| Minimum Rest Calculations | Enforce rest period compliance |
| Minimum Weekly Hours Calculations | Guarantee minimum weekly pay |
| Override Rate Calculations | Apply premium rates to specific blocks |
| Predictive Scheduling Calculations | Penalties for last-minute schedule changes |
| Schedule Deviation Calculations | Track deviations from scheduled time |
| Shift Differential Calculations | Premium rates for specific shifts |
| Standard Overtime Calculations | Daily or weekly overtime thresholds |
| Time Block Conditional Calculations | Tag blocks meeting specific conditions |
| Statutory Holiday Calculations (CAN) | Canadian statutory holiday pay calculations |

---

### Time Attestations

**Setup Considerations:** Configure worker attestation of time accuracy at end of period or shift.

| Task | Purpose |
|------|---------|
| Steps: Set Up End of Shift Time Attestations | Require workers to attest time at shift end |
| Steps: Set Up Meal and Break Validations | Enforce meal and rest break compliance |
| Create Rules for Meals and Breaks | Define break duration and frequency rules |

---

### Time Entry Validations

**Create Time Entry Validations** — define rules that prevent invalid time submission.

**Validation Types:**
- **Critical** — block submission if violated
- **Warning** — display warning but allow submission

**Concept: Incomplete Time Blocks** — how Workday handles partially entered time blocks.

---

### Period Schedules

**Setup Considerations: Period Schedules** — define which dates are available for time entry and how entry periods align with pay periods.

**Set Up Period Schedules for Time Tracking** — create period schedule definitions.

**Concept: Period Schedules for Time Tracking** — how period schedules interact with pay periods; lag pay configuration.

---

### Worker Eligibility for Time Tracking

**Create Worker Eligibility Rules for Time Tracking** — define which workers are subject to which time tracking configurations.

**Concept: Worker Eligibility for Time Tracking** — how Workday evaluates eligibility for time entry templates, calculations, and validations.

**Reference: Worker Eligibility for Time Entry Methods** — eligibility requirements by entry method type.

---

### Time Tracking, Payroll, and Absence Integration

| Task | Purpose |
|------|---------|
| Steps: Set Up Payroll to Pay Time | Configure Workday Payroll to retrieve calculated time |
| Configure Earnings to Retrieve Calculated Time | Map time calculation tags to payroll earnings |
| Concept: How Payroll Processes Calculated Time | Processing flow from time to payroll |
| Concept: Time Tracking and Absence Management | Interaction between time off balances and time tracking |

---

### Time Management Hub

**Steps: Set Up Employee Self-Service (ESS) Time Management Hub** — configure the hub for worker time management.

**Reference: ESS Time Management Hub** — available hub worklets and data.

---

### Entering and Correcting Time

| Task | Purpose |
|------|---------|
| Enter Time for Worker Using Calendar-Based Time Entry | Admin-entered time on behalf of worker |
| Enter Time for Worker Using High-Volume Time Entry | Simplified batch entry |
| Enter Time for Worker Using Enter Time by Type | Type-based entry |
| Mass Enter Time | Bulk time entry for worker populations |
| Mass Auto-Fill from Schedule | Bulk schedule-based time population |
| Auto Submit Time | Automatic submission for workers on regular schedules |
| Mass Submit Time | Bulk submission by admin |
| Manage Time Clock Events | Review and manage check-in/check-out events |
| Manually Schedule Time Clock Event Matching | Match unmatched clock events to workers |
| Adjust Calculated Time | Admin modification of calculated time blocks |

---

### Reviewing and Approving Time

| Task | Purpose |
|------|---------|
| Setup Considerations: Review Time and Project Time | Configuration for time review reports |
| Set Up the Review Time Report | Configure the primary time review report |
| Set Up the Review Project Time Report | Configure project-specific time review |
| Steps: Set Up Machine Learning for Time Anomalies | AI-based anomaly detection in time entries |
| Set Up Scheduled vs. Actuals Reporting | Track actual vs. scheduled hours |
| Steps: Set Up Attendance Management | Configure attendance tracking and violations |
| Mass Approve Time | Bulk time approval |
| Set Up the Edit and Approve Time Report | Configure inline edit-and-approve workflow |

**Concept: Time Anomalies** — how Workday identifies unusual time patterns using ML.

**Concept: Time Block Approval Moments** — the approval checkpoints for time blocks.

**Reference: Time Tracking Background Jobs and Processes** — scheduled processes for time calculations and notifications.
