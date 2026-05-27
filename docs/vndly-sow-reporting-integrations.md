# Workday VNDLY – Statement of Work, Worker Profile Management, Reporting, RFP & Integrations

> Source: Admin Guide – Workday VNDLY (May 14, 2026), pp. 289–414

---

## Statement of Work (SOW)

### What It Is

Statement of Work (SOW) in VNDLY supports project-based engagements where a vendor delivers defined deliverables under a contract. Key differentiators from contingent staffing:
- Payment by milestone, fixed price, or units (not hourly timesheets)
- Budget tracked against agreed SOW value
- Change order workflow for scope/budget changes
- Participant roles beyond a single contractor (SOW managers, client approvers)
- Spend authority based on management level

---

### SOW Configuration

#### Set Up Statement of Work Settings

Configure global SOW behavior:
- Enable SOW module
- Default currency and payment terms
- Approval routing rules
- Budget tracking settings (charge code allocation method)
- Change order approval thresholds

#### Create Statement of Work Templates

Reusable SOW structures with pre-populated fields (payment type, milestones, role definitions, approval routing).

#### Rate Card Configuration for SOW

**Configure Rate Cards for Statement of Work in Settings** — enable rate cards for use in SOW engagements.

**Edit Rate Cards to Include Statement of Work in Settings** — add SOW-specific rate rows to existing rate cards.

#### Allocate Statement of Work Budgets Using Charge Codes

Configure how SOW budgets map to charge codes. Supports percentage-based allocation across multiple charge codes.

---

### SOW Workflows

#### Create Statement of Work Drafts

Initiate a new SOW from scratch or from a template. Key fields:
- Vendor and project details
- Statement of work description and scope
- Start/end dates
- Payment type (Fixed Price, Milestone, Units)
- Budget and charge code allocation
- Participant assignments

#### SOW Lifecycle Tasks

| Task | Purpose |
|------|---------|
| Duplicate Roles and Payments on Statements of Work | Copy existing role/payment configurations within a SOW |
| Duplicate Statements of Work | Clone a complete SOW as a starting point for a new engagement |
| Add Participants to Statement Of Work | Assign internal client users and vendor contacts to the SOW |
| Add Roles to Statement of Work | Define contractor roles within the SOW (role title, rate, estimated hours) |
| Schedule Fixed Price Payments | Set up one-time or recurring fixed payment amounts with due dates |
| Add Milestone Payments | Define deliverable-based payment triggers |
| Add Units | Configure unit-based payments (e.g., per deliverable, per report) |
| Manage Checklist Actions for SOW Contractors | Assign and track checklist items for SOW contractors |
| Schedule Statement of Work Closures | Set an automatic close date for the SOW |
| End Work Orders for SOW Contractors | Terminate individual contractor work orders within the SOW |
| Change Contractor Details in Statement of Work | Update contractor role or rate within an active SOW |
| Review Statements of Work | Review SOW details before approval |
| Reject Statement of Work | Decline a submitted SOW with rejection reason |
| Onboard Statement of Work Contractor | Complete contractor onboarding within the SOW context |
| Reject Statement of Work Contractors | Decline specific contractors within a SOW |
| Reopen a Work Order | Re-activate a closed work order within the SOW |
| Cancel Statement of Work | Terminate the entire SOW; triggers contractor offboarding |
| Adjust Approved Statement of Work Payments | Modify payment amounts on already-approved payments |
| Update the Budget Allocation on Statements of Work | Change charge code allocation percentages |

#### Change Orders

**Create Change Order in Statement of Work** — initiate a change request for scope, budget, or timeline modifications.

**Approve Change Order in Statement of Work** — authorize the change; modifications take effect upon approval.

**Reject Change Order in Statement of Work** — decline the change request; SOW remains unchanged.

#### Payment Approvals

| Action | Description |
|--------|-------------|
| Approve Milestone for Statement of Work | Confirm milestone deliverable completion; triggers payment |
| Approve Unit Payment Request for Statement of Work | Authorize payment for completed units |

#### Key SOW Concepts

| Concept | Description |
|---------|-------------|
| Concept: Statement of Work Participant Role Types | Client Owner, Vendor Owner, Client Approver, SOW Manager, and their access rights |
| Concept: Spend Approval Authority on Statements of Work | Management level-based budget approval thresholds |
| Concept: Editing Organization Units in Statement of Work | Rules for changing org assignments on active SOWs |

---

## Worker Profile Management (WPM)

### What It Is

Worker Profile Management (WPM) captures workforce data for headcount and individual workers in programs that track time or expenses **outside of Workday VNDLY**. Used for tracking non-contingent external workforce populations (e.g., independent contractors managed in other systems, workers in programs without vendor management needs).

**Two versions:**
- **WPM v1** — basic profile creation and rehire eligibility tracking
- **WPM v2 (Unified)** — full work order-based tracking with custom fields and Workday HCM integration

---

### Worker Profile Management v1

**Create New Worker Profile** — manually create a profile for a worker not managed through a standard VNDLY work order.

**Change Rehire Eligibility** — set whether a worker is eligible for rehire (Eligible, Ineligible, Not Specified) for compliance and program management.

---

### Worker Profile Management v2

**Concept: Unified Worker Profile Management** — v2 introduces a work order-based model for WPM, enabling:
- Structured work orders for WPM workers
- Timesheet and expense tracking
- Checklist association
- Custom field capture
- Workday HCM integration via Workforce Connector

**Steps: Set Up Worker Profile Management:**
1. Enable WPM v2 in Company Settings
2. Configure WPM-specific work order settings
3. Set up custom fields for WPM work orders (optional)
4. Configure approval workflows for WPM work orders
5. Configure Workforce Connector for WPM (if Workday-integrated)

**Create Worker Profile Management Work Orders** — create work orders specifically for WPM workers, separate from contingent staffing work orders.

**Example: Create Custom Fields for WPM Work Orders** — sample configuration for adding organization-specific data fields to WPM work order forms.

---

## Reporting

### Report Management

**Manage Reports** — view, edit, and manage all reports in the VNDLY Report Builder.

**Manage Report Settings** — configure global reporting settings including default date formats, report sharing options, and export formats.

### Building Reports

| Task | Purpose |
|------|---------|
| Add Calculated Fields | Create computed fields using arithmetic and string expressions |
| Add Fields to Your Reports | Select available fields from the report dataset |
| Add Filters to Your Reports | Apply static or prompt-based filters to limit report output |
| Set Up Sort Criteria for Your Reports | Define primary and secondary sort order |
| Copy Existing Reports | Clone a report as a starting point |
| Create Custom Reports | Build a new report from a dataset using Report Builder |
| Create Reports from Templates | Use a Workday-delivered or saved report template |
| Change Report Types | Switch between table, chart, and summary report types |

### Report Administration

| Task | Purpose |
|------|---------|
| Sync Reports Across Tenants | Replicate report definitions from one tenant to another (e.g., implementation to production) |
| Manage Report Versions | Track and restore prior versions of a report |
| Download Report Builder Schema | Export the full field schema for report datasets |
| Configure Reports | Set access permissions and sharing settings |

### Scheduling Reports

**Steps: Scheduled Reports** — full workflow for configuring a recurring report delivery.

**Schedule Reports** — configure report schedule (frequency, time, format), recipients (email, SFTP), and output format (CSV, Excel, PDF).

**Concept: Activity Log for Reports** — audit trail of report runs, including user, timestamp, and output details.

### Reporting Concepts and References

**Concept: Reporting Permissions** — role-based access to report building, running, and sharing.

**Reference: Calculated Fields in Reports** — supported functions for calculated fields (arithmetic, string concatenation, date math, conditional expressions).

**Reference: Reports Page** — UI layout of the Reports page including filters, sorting, and action menu.

**Reference: Filter Conditions** — complete list of supported filter operators and condition types (equals, contains, between, in list, is null, etc.).

**Troubleshooting: Custom Reports Via APIs** — common errors when accessing VNDLY reports via API including authentication, field availability, and pagination issues.

---

## Request for Proposal (RFP)

**What It Is:** The RFP feature allows clients to solicit competitive proposals from vendors before committing to an SOW or staffing engagement.

| Task | Purpose |
|------|---------|
| Add a Request for Proposal | Create a new RFP with scope, requirements, and timeline |
| Add Vendors to an Active Request for Proposal | Include additional vendors in an open RFP |
| Creating Vendor Groups for Request for Proposal | Pre-define vendor groups for RFP distribution |
| Duplicate a Request for Proposal | Clone an existing RFP for a similar need |

**Concept: Responding to Requests for Proposal** — the vendor experience for viewing, responding to, and submitting proposals to an RFP.

---

## Integrations

### Procure-to-Pay (P2P) Integration

#### Concept: Procure-to-Pay Integration

The P2P integration connects VNDLY to external procurement systems (e.g., SAP Ariba, Coupa, Oracle) via REST APIs for budget and spend visibility.

**Integration components:**

| P2P Component | VNDLY → Procurement | Procurement → VNDLY |
|---------------|--------------------|--------------------|
| Purchase Requisition (PR) Request | Submits PR when a vendor offer is accepted | — |
| Purchase Order Lookup | — | Returns PO number once PR is approved; onboarding blocked until PO received |
| Purchase Order Change | Submits PO change when work order budget changes | — |
| Goods Receipt (GR) | Sends timesheet/expense transactions as GR for reconciliation | — |
| Cost Objects (Charge Codes) | — | Imports valid charge codes from procurement system into VNDLY |

**Middleware:** Lightweight, procurement system-agnostic middleware handles data formatting and compatibility.

**Work order creation doesn't complete until a PO is issued by the procurement system.**

#### SOW P2P Flow

1. Client creates SOW in VNDLY → charge code and budget allocation set
2. SOW locked → PR submitted to procurement system
3. Procurement system processes PR → returns PO number
4. PO acknowledged in VNDLY → SOW unlocked
5. Change orders in VNDLY → PO change requests submitted automatically

#### Configuration

**Steps: Configure Company Settings for the Procure-to-Pay Integration** — enable P2P, configure API credentials, and map VNDLY fields to procurement system fields.

**Example: Create Custom Invoice Report for Procurement System** — sample custom report configured to output invoice data in the format required by the procurement system.

**Concept: Testing the Procure-to-Pay Integration** — test environment setup and validation procedures.

---

### Workday VNDLY Workforce Connector

#### Concept: Workday VNDLY Workforce Connector

The Workforce Connector enables bidirectional data flow between **Workday VNDLY** and **Workday HCM**. It supports total talent management by bringing contingent workforce data into Workday alongside FTE data.

**Supported by:** VNDLY Extended Workforce Management, SOW, and Worker Profile Management.

**Data flow types:**

| Type | Direction | Behavior |
|------|-----------|---------|
| **Foundational** | Workday → VNDLY | Scheduled import of org hierarchy, locations, cost centers, job profiles, management levels, workers |
| **Transactional** | VNDLY → Workday | Event-driven; triggered by data changes in VNDLY (hire, onboard, terminate, extend, change org) |
| **Transactional** | Workday → VNDLY | Selected events from Workday back to VNDLY (position updates, org changes) |

**Example flow:** A job approved in VNDLY with Position Management enabled → triggers Create Position API in Workday → Position ID returned to VNDLY → logged on job record with Activity Log entry.

#### Steps: Set Up Workday VNDLY Workforce Connector

1. Steps: Set Up the VNDLY Contingent Worker Team (define the Workday team responsible for VNDLY contingent workers)
2. Create Integration System User Account for Workday VNDLY (ISU in Workday HCM for VNDLY API calls)
3. Set Up the Connector Configuration Tab in VNDLY Settings (API credentials, Workday tenant URL)
4. Set Up the Scheduling Configuration Tab in VNDLY Settings (foundational data refresh schedule)
5. Set Up the General Configuration Tab in VNDLY Settings (behavior flags, field mappings, WPM settings)
6. (Optional) Bulk Update Work Orders with Workday Position Management (backfill position IDs)
7. (Optional) Steps: Send VNDLY Custom Fields to Workday (SFTP-based custom field export)
8. Configure Custom Objects Settings (map VNDLY data to Workday custom objects)
9. Configure the Contingent Worker Team Section (team visibility and access settings)

**Concept: Override Workforce Connector Errors** — how to resolve and override specific integration error conditions without full reprocessing.

#### Connector Security References

| Reference | Content |
|-----------|---------|
| Reference: Workday VNDLY Workforce Connector Business Process Security | All BP security policies required in Workday HCM for the connector |
| Reference: Workday VNDLY Workforce Connector Domain Security | All domain security policies required in Workday HCM for the connector |
| Reference: Workday VNDLY Workforce Connector Integration | Complete list of foundational and transactional integrations with trigger conditions |

#### Field Mapping References

| Reference | Content |
|-----------|---------|
| Reference: General Settings in the General Configuration Tab | All configurable settings in the General Configuration tab with descriptions |
| Reference: Contingent and Worker Profile Management Settings in the General Configurations Tab | Settings specific to WPM configuration |
| Reference: Workday to VNDLY Foundational Field Mapping | How Workday foundational data fields map to VNDLY fields (orgs, locations, workers) |
| Reference: Workday to VNDLY Transactional Field Mapping | How Workday-initiated transactional events map to VNDLY fields |
| Reference: VNDLY to Workday Transactional Field Mapping | How VNDLY-initiated events and fields map to Workday business process data |
