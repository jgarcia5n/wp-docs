# Workday VNDLY – Vendors, Jobs, Workflow Approvals, Candidates & Work Orders

> Source: Admin Guide – Workday VNDLY (May 14, 2026), pp. 86–202

---

## Vendors

### Vendor Management Tasks

| Task | Purpose |
|------|---------|
| Add a Vendor | Create a new vendor/supplier record in VNDLY |
| Suspend a Vendor | Temporarily prevent a vendor from submitting candidates |
| Set Up Authorized Services For Vendors | Define which service types a vendor can provide (Contingent Staffing, EOR/AOR, SOW, etc.) |
| Bulk Upload Vendors | Import multiple vendors via CSV |
| Onboard Vendors | Complete vendor setup including contacts, contracts, and terms |
| Communicate with Vendors | Send messages to vendor contacts from within VNDLY |
| Edit the User Role for a Vendor | Change the VNDLY role assigned to vendor contacts |
| Vendor Resend Credentials | Resend login invitation to a vendor contact |
| Create Vendor Groups | Group vendors for targeted job distribution and RFP management |
| Create Distribution Scenarios and Rules | Define rule-based routing of jobs to vendor groups |
| Set Up Job Distributions | Configure how job notifications are distributed to vendors |

### Concept: Vendor Types

| Vendor Type | Description |
|-------------|-------------|
| Staffing Agency | Sources and places contingent workers for client roles |
| Employer of Record (EOR) / Agent of Record (AOR) | Employs/manages contractors on behalf of the client |
| SOW Vendor | Delivers project-based work under a Statement of Work |
| Managed Service Provider (MSP) | Manages the contingent workforce program on behalf of the client |

### Steps: Apply and Hire Contractors to Jobs

High-level workflow for moving a contractor from candidate to hired:
1. Vendor submits candidate application to a published job
2. Client reviews and interviews candidate
3. Offer released to candidate
4. Candidate accepts offer
5. Work order created; onboarding begins

---

## Job Workflow and Settings

### Job Workflow

#### Create Job Templates

Job templates define reusable job configurations. Key fields:
- Job title, description, and categories
- Location and remote work options
- Duration (start/end date or ongoing)
- Compensation type and rate card association
- Shift configuration
- Checklist assignments
- Workflow approval routing
- Vendor distribution rules
- Required and optional custom fields

#### Create Job Categories

Organize jobs by business function or role type for reporting and routing.

#### Set Up Direct Hire

**Concept: Direct Hire** — Direct Hire allows clients to bypass vendor sourcing and place a pre-identified contractor directly onto a work order. Used for known contractors or referrals.

**Reference: Direct Hire Payment Terms** — supported payment structures (hourly, daily, fixed fee) for direct hire arrangements.

**FAQ: Direct Hire** — common questions on eligibility, fee handling, and work order source type.

#### Publish a Job

Publish a job to make it available to vendors for candidate submission. Configuration at publish time includes:
- Vendor group selection
- Application deadline
- Pre-identified candidate designation
- Approval routing

#### Add Job Approvals

Configure multi-step approval workflows for job requisitions before they are published to vendors.

#### Apply Candidates to Jobs

Manually apply a pre-identified or existing candidate to a job on behalf of a vendor or directly.

#### Schedule Interviews with Candidates

Schedule interviews from within VNDLY; supports calendar integration.

**Reschedule Interviews** — modify existing interview times.

#### Release an Offer to a Candidate

Issue an offer to the selected candidate with rate, start date, and work order details.

### Key Job Workflow Concepts

| Concept | Description |
|---------|-------------|
| Concept: Approvals Widget | Visual indicator showing approval status at each step |
| Concept: Published Jobs | Behavior of jobs after publication; visibility to vendors |
| Concept: Job Candidate Applications and Actions | Actions available on candidate applications (advance, reject, hold, interview, offer) |
| Concept: Interview Management | Interview scheduling, feedback, and status tracking |

---

### Job Workflow Configuration

#### Create a Rate Card in Settings

Rate cards define allowable bill rates by role, level, or location. Configuration includes:
- Rate card name and effective dates
- Role/level combinations
- Minimum, target, and maximum bill rates
- Currency

#### Manage Rate Card Configurations

Edit, copy, and manage rate card versions. Associate rate cards with job templates or individual jobs.

#### Set Up Job Application Settings

Configure the candidate submission form:
- Required fields (resume, cover letter, portfolio)
- Custom field visibility
- Submission rules and limits per vendor

#### Set Default Fields for Job Views

Control which fields are displayed by default on the job list view for hiring managers and program admins.

**Reference: Job Compensation Settings** — configuration options for pay types (hourly, daily, monthly, fixed fee), currency handling, and rate display.

---

## Workflow Approvals

### Steps: Set Up Workflow Approvals

Workflow approvals gate actions (job publish, work order changes, timesheet approval, invoice release, SOW approval) until authorized approvers sign off.

### Create Workflow Approvals

**Create Workflow Approvals** — define approval rules for each workflow type:
- Jobs
- Work Orders
- Timesheets
- Expenses
- Invoicing
- Statement of Work

Each approval workflow specifies: triggering criteria, approver type, approval sequence (sequential or parallel), and fallback/escalation rules.

### Create Approver Types

**Approver types** define who receives approval tasks. Types include:
- Specific user
- Role holder (e.g., Hiring Manager, Program Admin)
- Management level (spend authority-based routing)
- Org hierarchy level

### Configure Workflow Approvals

Apply approval workflows to specific org units, job categories, rate thresholds, or other criteria.

**Reference: Workflow Approval Criteria** — complete reference of all criteria available for approval routing rules, including field comparisons, org-based criteria, and value thresholds.

---

## Checklists

Checklists are structured lists of required action items or document collection tasks associated with the contractor lifecycle.

### Configuration Tasks

| Task | Purpose |
|------|---------|
| Add a New Checklist | Create a checklist definition with items, owners, and due date rules |
| Add Custom Fields to Checklist Actions | Extend checklist action forms with additional data fields |
| Add New Checklist Items to Work Orders | Associate checklist items with active work orders |
| Assign Checklist Items to Jobs | Pre-assign checklists to job templates |
| Edit Assigned Checklists on a Published Job | Modify checklists on an already-published job |
| Manage Checklist Actions | Review, complete, and manage individual checklist action items |
| Set Up Multiple Checklist Expiration Notifications | Configure reminder notifications for expiring checklist items |
| Set Up Checklist Settings | Global checklist behavior settings (required vs. optional, expiry behavior) |

**Checklist use cases:** Background check tracking, drug screening, equipment provisioning, policy acknowledgments, I-9 verification, badge assignment.

---

## Candidates

### Core Concepts

**Concept: Candidate List and Candidate Profile** — the candidate profile stores personal info, work history, skills, documents, and a record of all job applications and work orders.

**Concept: Masking Candidate Data** — configure fields that are masked from specific user types during review (e.g., name, contact info for blind screening).

**Concept: Consolidated Candidate Records** — a consolidated record links multiple candidate profiles for the same person across different vendor submissions into a unified view.

### Candidate Management Tasks

| Task | Purpose |
|------|---------|
| Create Candidates | Manually create a new candidate record |
| Bulk Upload Candidates | Import multiple candidates via CSV template |
| Create Candidate Submission Rules in Settings | Rules controlling how many candidates vendors can submit per job and submission requirements |
| Create Candidate Notifications | Configure automated notifications to candidates (interview scheduled, offer received, etc.) |

**Reference: Candidate Permissions** — what each user type can view and do on candidate profiles.

**Reference: Candidate Profile in Settings** — configuration options for candidate profile fields and display.

### Consolidated Candidate Records

| Task | Purpose |
|------|---------|
| Move a Consolidated Candidate Record | Move a candidate's record from one consolidated profile to another |
| Merge Two Consolidated Candidate Records | Combine two consolidated profiles into one |
| Split a Consolidated Candidate Record | Separate records within a consolidated profile |
| Bulk Upload Consolidated Candidate Records | Bulk import consolidated records via CSV |

---

## Work Orders

### What They Are

A **work order** is the primary record for each contractor assignment. Automatically created when a candidate is applied to a job. Follows the contractor through the full lifecycle: application → onboarding → active assignment → completion/termination.

**Key behaviors:**
- Multiple work orders can exist for one candidate (one per assignment)
- Job edits after work order creation do NOT sync to the work order — update the work order directly
- Source type is set at work order creation and generally cannot be changed (except Directed, Payrolled, Supplier Sourced)
- Checklists, charge codes, timesheets, and expenses are all associated at the work order level

### Steps: Configure Work Order Settings

| Task | Purpose |
|------|---------|
| Configure Work Order Defaults | Set default values for new work orders (pay type, currency, work week start, etc.) |
| Create Work Order Rules | Conditional logic that applies defaults or validations based on org, location, or job category |
| Configure Vendor Actions | Define what vendors can see and do on work orders |
| Create Approval Fields | Add approval-required fields to work order edit forms |

### Work Order Lifecycle Tasks

| Task | Purpose |
|------|---------|
| Update Work Orders | Edit work order fields (rate, dates, org, charge codes) |
| Change Organizations on Work Orders (Workday-Integrated) | Update org assignment with Workday HCM sync |
| Change Organizations on Work Orders (Non-Workday Integrated) | Update org without Workday sync |
| End Work Orders Early | Terminate an assignment before the scheduled end date |
| Backdate Work Orders with Previously Approved Timesheets | Adjust work order start dates retroactively |
| Transfer an Employee | Move a contractor from one work order/org to another |
| Adjust Work Week Start Time | Change when the contractor's work week begins |
| Terminate a Contractor | End contractor engagement; triggers offboarding workflow |
| Reopen a Work Order | Reactivate a closed work order |
| Print Work Orders | Generate a printable work order document |

### Concept: Source Types

The **Source Type** on a work order determines how the contractor was engaged:

| Source Type | Description | Editable? |
|-------------|-------------|----------|
| Directed | Pre-identified; placed directly with a vendor | Yes |
| Payrolled | EOR/AOR engagement | Yes |
| Supplier Sourced | Sourced through standard vendor submission | Yes |
| Direct Hire | Bypasses vendor sourcing | No |
| Statement of Work | SOW-based engagement | No |
| Worker Profile | Worker Profile Management program | No |

**Troubleshooting: Source Types** — resolution for source type mismatches and incorrect configurations.

**Concept: Gaps and Overlaps When Adjusting Work Week Start Times** — behavior when work week start changes create gaps or overlaps in timesheet periods.

**Reference: Work Order Permissions** — complete permission matrix for work order actions by user type.

---

## Pre-Identified Workflows

Pre-identification places a specific candidate on a job before it is distributed to vendors.

**Pre-Identify Candidates During Job Publish** — designate a candidate as pre-identified at the time of publishing the job.

**Pre-Identify Candidates After Job Publish** — add a pre-identified candidate to a job that has already been published.

**Use cases:** Known contractors being re-engaged, referrals, contractors transferring from one role to another.

---

## Bulk Updates and Uploads

### Bulk Updates

**Create Bulk Updates** — make mass changes to work orders, candidates, or other records using filter-based selection.

**Create Bulk Updates Using File Uploads** — submit a CSV file to drive mass updates.

**Concept: Bulk Updates** — how bulk update jobs are processed, validated, and applied; audit trail behavior.

**Reference: Bulk Updates Permissions** — which user types can run bulk updates.

**Reference: Work Order Statuses for Bulk Updates** — which work order statuses are eligible for each bulk update action.

### Bulk Uploads

**Concept: Bulk Uploads** — template-based CSV uploads for creating or updating specific data types.

**Reference: Bulk Uploads** — complete list of supported upload types with template format and field requirements.

**Reference: Bulk Update and Bulk Upload Comparison** — when to use each approach.

---

## Tenure

**Create Tenure Policies** — define policies that trigger alerts or actions when a contractor has been engaged for a specified cumulative duration. Used for compliance with co-employment regulations.

**Create Tenure Rules** — configure rules that apply specific tenure policies to work orders based on org, location, or job category.

**Update Contractor Tenure Policies** — modify tenure policy assignments for existing contractors.
