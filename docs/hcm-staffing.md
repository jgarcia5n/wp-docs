# HCM – Staffing

> Source: Admin Guide – Human Capital Management (May 14, 2026), pp. 524–996

---

## Overview

Staffing features enable creation of jobs, workforce management, and employment detail reporting. Covers the full worker lifecycle from hire to termination.

**Business Benefits:**
- Flexible management of onboarding, job changes, additional jobs, assignments, and termination
- Bulk staffing event processing (hire, terminate)
- Track/generate contracts and agreements for regulatory compliance
- Headcount plan reporting

---

## Setup Considerations: Staffing

### Staffing Model Decision

| Model | Description | Best For |
|-------|-------------|---------|
| Job Management | One set of hiring restrictions for all jobs in a supervisory org; no limit on jobs filled | Broad job requirements, high-volume hiring |
| Position Management | Different staffing rules/restrictions per position; detailed control over headcount | Defined job requirements, headcount control |

**Note:** Some features are model-specific (e.g., position swaps are Position Management only).

### Autocomplete Staffing Events

Configure automatic completion of staffing events when conditions are met (e.g., auto-complete hire when all steps done).

**Steps: Set Up Security to Autocomplete Staffing Events** — grant appropriate security groups the ability to trigger autocomplete.

---

## Basic Staffing Information

### Core Configuration Tasks

| Task | Purpose |
|------|---------|
| Set Up Management Level Hierarchies | Define management tiers (e.g., Individual Contributor, Manager, Director) |
| Set Up Job Level Hierarchies | Create level structures for compensation and career laddering |
| Create Job Categories | Group jobs for reporting and eligibility rules |
| Create Job Classification Groups | Regulatory and reporting job groupings |
| Set Up Employee Types | Define employee categories (e.g., Regular, Temporary) |
| Steps: Set Up Time Types and Subtypes | Configure Full-time, Part-time, Variable types and subtypes |
| Create Contingent Worker Types | Define contractor categories (Consultant, Contractor, Vendor) |
| Create Company Insider Types | Define insider trading compliance categories |
| Create Work Shifts | Define shift patterns |
| Set Up Work Hours Profiles | Standard work hour expectations by role/location |
| Steps: Set Up Defaults for Service Dates | Configure how service date defaults are calculated |
| Steps: Set Up Custom Staffing Fields | Add org-specific fields to staffing business processes |
| Create Pay Rate Types | Define pay rate type options (e.g., Salary, Hourly) |

---

## Job Catalog

### Job Architecture Hub

Centralized management of job profiles, families, and groups. The Job Architecture Hub provides a visual interface for managing the job catalog.

### Steps: Set Up Job Catalog

1. Create Job Profiles (define characteristics: management level, pay rate type, compensation, skills, qualifications)
2. Restrict Job Profiles by Country and Organization (if needed)
3. Create Job Families (group related job profiles)
4. Create Job Family Groups (group related job families)
5. (Optional) Set Up Job Profile Business Process (approval workflow for new profiles)
6. (Optional) Set Up Job Description Generation (AI-assisted)
7. (Optional) Set Up Similar Existing Job Profiles (suggest related profiles)
8. (Optional) Mass Update Job Profile Skills with Workbooks

---

## Staffing Models

**Manage Staffing Models** — assign staffing models to supervisory organizations.

**Concept: Staffing Models** — detailed comparison of Job Management vs. Position Management behaviors.

**Concept: Hiring Restrictions** — rules controlling who can be hired into a job or position (worker type, job type, time type).

**Reference: Staffing Model Comparisons** — side-by-side feature comparison table.

---

## Maintaining Jobs and Positions

### Jobs (Job Management)

| Task | Purpose |
|------|---------|
| Create Hiring Restrictions | Define restrictions for jobs in a supervisory org |
| Change Hiring Restrictions | Modify existing restrictions |
| Change a Worker's Current Job Details | Update job details post-hire |
| Manage Organization Hiring Freeze | Suspend hiring for an org |
| Correct Jobs | Retroactive correction of job details |

### Positions (Position Management)

| Task | Purpose |
|------|---------|
| Create Positions | Define individual positions with restrictions |
| View Position Restrictions Information | Review current restrictions |
| Change Position Restrictions | Modify position-level requirements |
| Change a Worker's Current Position Details | Update position details for a filled position |
| Freeze and Unfreeze Positions | Temporarily suspend a position from being filled |
| Manage Position Hiring Freeze | Org-level position freeze |
| Close Positions | Mark positions as closed (no longer fillable) |
| Correct Positions | Retroactive position corrections |

**Concept: When Position Restrictions Are Available to Fill** — rules governing when a position shows as available to hire.

---

## Job Requisitions

**Steps: Set Up Job Requisitions** — configure fields, approvals, and routing for the Create Job Requisition business process.

**Set Up Security for Job Requisitions** — define access by domain and security group.

**Steps: Manage Job Requisitions** — day-to-day management of open requisitions.

**Create Job Requisitions** — create requisitions for individual or multiple positions.

**Reference: Job Requisition Features for Recruiting and HCM** — feature availability matrix.

**Reference: Default Job Requisition Data** — how Workday populates requisition fields from position/job profile.

---

## Pre-Hire Tracking

**What It Is:** Track individuals before formal employment begins. Pre-hires can be considered for positions and converted to employees/contingent workers.

| Task | Purpose |
|------|---------|
| Steps: Set Up Pre-Hire Tracking | Configure pre-hire business process |
| Create Pre-Hires | Add pre-hire records |
| Edit Personal and Contact Information for Pre-Hires | Update pre-hire data |
| Consider Pre-Hires for Positions | Link pre-hire to an open position |
| Delete Pre-Hires | Remove pre-hire records |
| Reference: Security Groups for Pre-Hires | Applicable security domains |

---

## Employment Agreements

Used to outline conditions of employment for pre-hire contracts or fixed-term employment.

| Task | Purpose |
|------|---------|
| Setup Considerations: Employment Agreements | Configuration decisions and impacts |
| Steps: Set Up Employment Agreements | Configure agreement business process |
| Steps: Set Up Task Consolidation for Employment Agreements | Consolidate related tasks |
| Create Employment Agreements | Generate agreement for a pre-hire or worker |
| Example: Correct and Regenerate Employment Agreement Document | Fix and reissue documents |

---

## Contracts and Agreements

### Collective Agreements and Unions

Configure union membership, collective bargaining agreements, and related wage/benefit rules.

### Employee Contracts

Create fixed-term and other contracts with renewal workflows.

### Probation Periods

Define and assign probation periods by country, employee type, or hire reason.

### Notice Periods

Assign country-specific notice period requirements to employee records.

---

## Hire and Terminate

### Hire Employees

**Steps: Set Up Hire** — configure the Hire business process (fields, approvals, routing).

**Hire Employees** — initiate hire for individual workers.

**Steps: Set Up No Shows** — configure handling of workers who don't report after hire.

**Hire and Terminate Concepts** — covers hire date, reason, FTE, and termination rule behaviors.

**FAQ: How do I import worker IDs during a hire?** — use EIB for bulk hire with ID assignment.

### Terminate Employees

**Steps: Set Up Termination** — configure Termination business process.

**Terminate Employees** — individual termination with reason, pay through date, and benefit end date.

**Steps: Automate Initiation of Termination** — trigger termination automatically based on conditions.

**Steps: Set Up Mass Action Workbooks to Initiate Termination** — bulk termination via workbook upload.

---

## Contingent Worker Staffing

| Task | Purpose |
|------|---------|
| Steps: Set Up Contingent Workers | Configure contingent worker business process |
| Contract Contingent Workers | Create and manage contingent worker contracts |
| Change Contingent Worker Details | Update contract details |
| End Contingent Worker Contracts | Terminate a contingent worker engagement |
| Convert Contingent Workers to Employees | Full conversion workflow |
| Steps: Automate Initiation of Ending Contingent Worker Contracts | Auto-trigger based on end date |

**Concept: Contingent Worker Purchase Orders** — automatic PO generation from contingent worker contracts.

**Reference: Employee and Contingent Worker Differences** — feature and field availability matrix.

---

## Onboarding (Staffing)

**Onboarding Dashboard** — configure the new hire experience dashboard with tasks, content, and team introductions.

**Onboarding Landing Page** — configure the welcome landing page for new workers.

**Form I-9** — US employment eligibility verification; configure workflow and E-Verify integration.

**Background Checks** — integrate with background check providers; configure stage triggers and actions.

---

## Change Job

**Legacy Change Job** — original Change Job business process.

**New Change Job** — redesigned experience with streamlined consolidation of job change events (transfer, promotion, demotion, lateral).

---

## Multiple Jobs

**Setup Considerations: Multiple Positions** — configuration decisions for enabling additional jobs.

| Task | Purpose |
|------|---------|
| Steps: Add Additional Jobs | Configure Additional Job business process |
| Add Additional Jobs | Place a worker in a second job/position |
| Ending Jobs | End a specific job while worker retains others |
| Switch Primary Job | Change which job is designated primary |

**Reference: Impacts of Enabling Multiple Jobs** — downstream effects on payroll, benefits, and reporting.

---

## International and Domestic Assignments

**Setup Considerations** — configuration for home/host tracking, cost sharing, and position/job behavior.

| Task | Purpose |
|------|---------|
| Steps: Set Up International and Domestic Assignments | Configure assignment business processes |
| Add International and Domestic Assignments | Place a worker on assignment |
| End International and Domestic Assignments | Complete assignment and return to home position |

**Reference: International Assignments Comparison** — comparison of assignment types and feature support.

---

## Job Overlap

Enables temporary overlap of outgoing and incoming workers in the same position. Useful for knowledge transfer.

**Steps: Set Up Job Overlap** — configure overlap window and triggering conditions.

---

## Organization Assignments

| Task | Purpose |
|------|---------|
| Steps: Change Organization Assignments for Worker | Reassign worker to different cost center, company, region, etc. |
| Mass Change Organization Assignments | Bulk reassignment via workbook |
| Move Workers in Supervisory Organizations | Move workers between supervisory orgs |
| Move Workers to New Managers | Org restructure; reassign manager |
| Assign Multiple Managers to Supervisory Organizations | Matrix reporting support |

**Reference: Default Organization Assignments** — how Workday derives default org assignments from position or hire data.

---

## Flexible Work Arrangements

**Setup Considerations** — configuration for tracking remote work, compressed schedules, and hybrid arrangements.

**Steps: Set Up Flexible Work Arrangements** — configure the Flexible Work Arrangement business process and eligible options.

---

## Staffing History and Corrections

| Concept | Description |
|---------|-------------|
| Job History | View complete history of job changes for a worker |
| Corrections to Staffing History | Retroactive corrections to past staffing events |
| Worker Start Date Corrections | Correct original hire/start dates |
| Out of Order Correction | Correct an event that occurred before other events in the timeline |
| Out of Order Insertion | Insert a historical event that was missed |

**Correct Staffing Events** — retroactively fix approved staffing events.

**Correct Hire Date and Reason for Multiple Employees** — bulk correction capability.

---

## Headcount Plans

**Steps: Set Up Security for HCM Headcount Plans** — grant access to headcount plan management.

**Steps: Create Headcount Plans for HCM** — define plan period, org scope, and targets.

**Create Headcount Plan Structures** — define the structure for plan breakdowns.

**Create Templates for HCM Headcount Plans** — reusable templates for plan creation.

**Maintain Headcount Plans** — ongoing updates to plans.

**Concept: Headcount Plan Reports for HCM** — available reports for headcount tracking.

---

## HR Partner Hub

Centralized hub for HR Partners to manage employee relations tasks, communications, and staffing oversight.

**Steps: Set Up HR Partner Hub** — configure hub access and content.

**Reference: HR Partner Hub Security and Data Sources** — domains and data sources used.

---

## Ad Hoc Worker Communications

**Setup Considerations** — configuration for ad hoc email and notifications to workers.

**Steps: Set Up Ad Hoc Worker Communications** — configure templates, security, and approval routing.

**Concept: Ad Hoc Worker Communications with AI Text Editor** — AI-assisted drafting of worker communications.

---

## Retirees

**Retire an Employee** — initiate retirement business process (differs from termination in benefits/pension treatment).

**Rehire a Retiree** — bring back a retiree with appropriate tracking.
