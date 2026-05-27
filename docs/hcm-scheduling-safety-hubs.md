# HCM – Workday Scheduling, Safety, Self-Service, Hubs & Innovation

> Source: Admin Guide – Human Capital Management (May 14, 2026), pp. 2204–3094+

---

## Workday Scheduling

### Overview

Workday Scheduling manages worker shift schedules, labor optimization, shift swapping/bidding, and labor demand forecasting. Integrates with Time Tracking and Absence.

---

### Centralized Scheduling

**Mass Generate Schedules for Organizations** — automated schedule generation for entire organizations.

**Mass Publish Schedules for Organizations** — bulk publication of generated schedules to workers.

**Mass Clear Schedules for Organizations** — remove all schedules for an org in a given period.

**Concept: Mass Generate/Publish/Clear** — processing behavior and prerequisites for mass scheduling operations.

---

### Scheduling Basics and Tenant Setup

#### Steps: Set Up Workday Scheduling and Labor Optimization

1. Steps: Set Up Scheduling Organizations (define scheduling scope)
2. Steps: Set Up High-Level Scheduling Organizations (parent-level org for scheduling rollup)
3. Define Working Hours (available hours per day/week by location)
4. Configure Static Scheduling (fixed shift patterns)
5. Set Up Schedule View for Managers
6. Configure Validations (scheduling conflict rules)
7. Configure Rules (scheduling assignment rules)
8. (Optional) Configure Labor Optimization

#### Scheduling Organizations

**Concept: Scheduling Organizations** — separate organizational hierarchy for scheduling purposes; can differ from supervisory org hierarchy.

#### Schedule Generation Settings

Configure automated schedule generation parameters including shift rotation patterns, coverage requirements, and constraint priorities.

**Reference: Scheduling Settings Details Web Service** — API reference for scheduling configuration management.

---

### Schedule Management, Communications, and Productivity

| Task | Purpose |
|------|---------|
| Steps: Set Up the Time and Scheduling Hub | Combined hub for time and schedule management |
| Steps: Set Up Predictive Scheduling | Configure predictive scheduling compliance features |
| Steps: Set Up Shift Change Notifications | Alerts when schedules change |
| Steps: Automatically Assign Scheduling Settings to Workers | Rule-based settings assignment |
| Steps: Mass Assign Scheduling Settings Overrides | Bulk override of scheduling settings |
| Change a Worker's Availability | Update worker availability constraints |
| Display Absence Details on Schedules | Show approved absence on schedule view |
| Set Up Daily Notes | Enable notes on daily schedule view |

**Concept: Mass Edit Shifts / Mass Add Shifts / Bulk Edit Shifts** — efficiency tools for schedule managers.

**Reference: Scheduling Keyboard Shortcuts** — productivity shortcuts for schedule management UI.

**Reference: Shift Statuses** — available shift status values and transitions.

---

### Schedule Tags

Configure tags to categorize and filter shifts for reporting, compliance, and assignment purposes.

---

### Shift Swapping and Bidding

| Task | Purpose |
|------|---------|
| Steps: Set Up Open Shift Bidding | Workers bid on available open shifts |
| Concept: Open Shift Board | How workers view and claim open shifts |
| Concept: Swap Shifts | Peer-to-peer shift exchange workflow |

---

### Labor Demand Forecasting

Configure labor demand forecasts based on historical data and business drivers. Use forecasts to optimize schedule generation.

**Forecast Metrics and Labor Demand** — define demand metrics (transactions, volume) that drive labor requirements.

**Labor Demand Forecasting Concepts** — methodology for demand-to-staffing conversion.

---

### Scheduling Reporting

**Concept: Audit Schedules and Shifts** — compliance and audit trail reporting.

**Concept: Good Faith Estimate Reporting** — predictive scheduling law compliance reporting.

**Reference: Scheduling Reports** — available standard reports.

---

## Safety Incident Tracking

### Overview

Track workplace safety incidents, injuries, and OSHA-reportable events.

### Steps: Set Up Safety Incident Tracking

Configure incident types, severity levels, security access, and reporting workflows.

**Concept: Safety Incident Reports** — how Workday structures and surfaces safety incident data.

**Concept: Safety Incident Security** — domain requirements for safety incident access.

---

## Employee and Manager Self-Service

### Employee Self-Service (ESS)

**Steps: Set Up Employee Self-Service** — configure worker-facing self-service worklets and tasks.

Core ESS capabilities:
- Personal information management
- Benefits enrollment and changes
- Time off requests
- Time entry (if Time Tracking enabled)
- Pay slips and tax forms
- Goal and performance management
- Learning enrollment

### Manager Self-Service (MSS)

**Steps: Set Up Manager Self-Service** — configure manager-facing worklets and capabilities.

Core MSS capabilities:
- Team time and absence oversight
- Staffing actions (hire, transfer, change job, terminate)
- Compensation proposals
- Performance review management
- Team talent visibility

---

## HCM Hubs

### HCM Admin Hub

**Reference: HCM Admin Hub** — centralized admin landing page for HCM configuration tasks. Provides quick access to setup tasks across all HCM modules.

---

### Manager Insights Hub

**Setup Considerations:** Decide which insights to surface (retention risk, absence patterns, performance distribution, skills gaps).

**Steps: Set Up Manager Insights Hub** — configure hub content and access.

**Concept: Manager Insights Hub** — AI-powered insights surfaced to managers about their teams.

**Reference: Manager Insights Hub** — complete list of available insights and data sources.

---

### Personal Information Hub

**Reference: Personal Information Hub** — worker-facing hub for managing all personal information in one place.

---

### Reference: HCM Hubs

Complete overview of all HCM hubs, their purpose, access requirements, and key content.

---

## Worklets and Reports for Human Capital Management

**Add Worklets to Business Processes** — add custom report-based worklets to business process views.

**Concept: Key HCM Reports by Functional Area** — catalog of Workday-delivered reports organized by HCM module.

**Reference: Embedded Analytics for HCM** — analytics widgets embedded in HCM pages.

**Reference: FTE Report** — full-time equivalent calculation and reporting reference.

---

## HCM Innovation Services

### Workday Assistant

**What It Is:** Conversational AI assistant accessible via search bar. Handles common worker and manager self-service tasks via natural language.

**Setup Considerations:**
- Which tasks to enable (time off, time entry, benefits, staffing)
- Language support
- Mobile configuration

| Task | Purpose |
|------|---------|
| Steps: Set Up Workday Assistant | Enable and configure assistant capabilities |
| Steps: Set Up Workday Assistant for Staffing | Staffing-specific assistant configuration |

**Concept: Time Off in Workday Assistant** — how the assistant handles time off requests and balance inquiries.

**Concept: Time Tracking in Workday Assistant** — time entry via assistant interface.

**Reference: Workday Assistant and Workday Everywhere Capabilities** — full capability matrix.

---

### Workday Everywhere

**What It Is:** Workday functionality embedded in external platforms (Microsoft Teams, Slack, Microsoft 365 Copilot) via the Sana Self-Service Agent.

#### Deployment Options

| Option | Description |
|--------|-------------|
| Native Workday Everywhere | Workday Assistant embedded in Teams/Slack |
| Sana Self-Service Agent (Microsoft Teams + M365 Copilot) | Agent-based integration |
| Sana Self-Service Agent (Slack) | Slack-based agent integration |

| Task | Purpose |
|------|---------|
| Steps: Set Up Workday Everywhere | Native deployment setup |
| Steps: Set Up Security for Workday Everywhere Using Sana Self-Service Agent | Security configuration for Sana |
| Steps: Set Up Workday Everywhere Using Sana Self-Service Agent for Microsoft Teams and Microsoft 365 Copilot | Teams/Copilot deployment |
| Steps: Set Up Workday Everywhere Using Sana Self-Service Agent for Slack | Slack deployment |
| Steps: Set Up Time Off Notifications for Workday Everywhere | Configure absence notifications in external platforms |

**Concept: Workday Everywhere Using Sana Self-Service Agent** — architecture and capability overview.

**Reference: Workday Everywhere Notifications** — available notification types in embedded experiences.

---

### Workday Help

**Concept: Workday Help** — in-application contextual help framework. Connects workers to Knowledge Articles and case management.

#### Case Management

Configure employee relations case management within Workday:
- Case types (HR inquiry, policy question, accommodation request)
- Case routing to HR Business Partners
- SLA tracking
- Case reporting

#### Knowledge Management

Configure the knowledge base for worker self-service:
- Knowledge Articles by audience
- Article lifecycle (draft, publish, retire)
- Integration with Workday Help search
