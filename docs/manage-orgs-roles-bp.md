# Manage Workday – Organizations, Roles, Locations, Hierarchies & Business Processes

> Source: Admin Guide – Manage Workday (May 14, 2026), pp. 842–1242

---

## Organizations

### Setup Considerations: Organizations

**Key decisions:**
- Organization types to use (supervisory, matrix, cost center, company, region, custom)
- Hierarchy depth and structure
- Staffing model alignment (supervisory org structure drives BP routing and security)
- Custom organizations and membership rules for reporting and security

**Concept: Organizations and Custom Objects** — how custom objects can extend organization data.

**Reference: Organization Types and Subtypes** — complete catalog of Workday org types (Supervisory, Company, Cost Center, Cost Center Hierarchy, Region, Fund, Grant, Program, Gift, Business Unit, etc.).

### Supervisory Organizations

**Set Up Supervisory Organizations** — create the org structure that drives staffing, BP routing, and security inheritance.

**Key behaviors:**
- BP definitions inherit from superior orgs (override at subordinate level as needed)
- Role assignments are scoped to org and inherited by subordinates
- Staffing model is set per supervisory org

| Task | Purpose |
|------|---------|
| Set Up Supervisory Organizations | Create orgs, assign managers and staffing models |
| Automatically Generate Reference IDs for Supervisory Organizations | Auto-assign reference IDs |
| Change Organization Visibility | Show/hide orgs from non-admins |

**FAQ: Supervisory Organizations and Staffing Events** — how org changes affect in-progress business processes.

### Nonsupervisory Organizations

**Set Up Nonsupervisory Organizations** — configure cost centers, companies, regions, and other reporting orgs. These don't drive staffing but are used for financial reporting, security segmentation, and worktag assignment.

**Change Organization Visibility** — control which orgs are visible to non-admin roles.

### Matrix Organizations

**Steps: Set Up Matrix Organization Business Processes** — configure dotted-line reporting relationships.

**Assign Workers to a Matrix Organization** — add workers to matrix orgs alongside their supervisory org membership.

**Concept: Manager Integrated Organizations** — orgs where a specific manager role has integrated access; useful for cross-functional team management.

### Organization Charts

**Set Up Organization Charts** — configure visual org chart display with metrics.

**Set Up Organization Chart Metrics** — define metrics shown on org chart nodes (headcount, open positions, turnover).

### Manage Organization Concepts

| Concept | Description |
|---------|-------------|
| Concept: Dividing Organizations | Split one org into two (retains history) |
| Concept: Reorganizations | Mass movement of workers between orgs |
| Concept: Moving Workers by Organization | Mechanics of org restructuring |
| Concept: Organization Search | How orgs are indexed and found in global search |
| Concept: Correct Organization Exceptions | Resolving data inconsistencies after org changes |
| Concept: Inactive Organizations | Behavior of orgs with no active workers |
| Concept: Superior and Subordinate Organizations | Inheritance of BP definitions and role assignments |

### Custom Organizations and Membership Rules

**What They Are:** Organization types you define to group workers for reporting, security, or integration purposes outside the standard org hierarchy.

| Task | Purpose |
|------|---------|
| Steps: Assign Membership Rules in Custom Organizations | Rule-based auto-membership |
| Maintain Organization Types | Create and manage custom org type definitions |
| Manage Membership Rules | Define rules governing who belongs to a custom org |

**Concept: Custom Organizations** — how custom orgs differ from supervisory orgs; use cases for matrix, retiree, and service center orgs.

**Concept: Membership Rules** — evaluated dynamically; workers are added/removed as conditions change.

### Org Studio and Mass Actions

**Setup Considerations: Org Studio and Mass Actions** — bulk org management tools for restructuring.

| Task | Purpose |
|------|---------|
| Steps: Set Up Org Studio | Configure Org Studio for drag-and-drop org management |
| Steps: Set Up Mass Actions | Enable mass staffing actions (hire, terminate, change job) across orgs |

**Concept: Org Studio Configurations** — available org manipulation modes (move, divide, inactivate).

### Committees

| Task | Purpose |
|------|---------|
| Steps: Set Up Committees | Create committee definitions |
| Maintain Committee Definition | Edit committee attributes |
| Steps: Set Up Committee Memberships | Manage committee membership rules |
| Steps: Manage and Invite Committee Members | Day-to-day member management |
| Steps: Set Up Committee Meetings | Schedule and manage committee meetings |

**Concept: External Committee Members** — adding non-Workday users to committees.

### Workteams

**Steps: Set Up Workteams** — configure lightweight cross-functional teams without full org structure overhead.

**Reference: Workteam Domains** — security domains required for workteam management.

---

## Roles

### Setup Considerations: Roles

**What Roles Do:** Roles are responsibilities assigned to workers within organizations. Role assignments drive:
- Security group membership (role-based security groups)
- Business process routing (who receives tasks at each step)
- Reporting scope (what data a role holder can see)

**Types of assignable roles:**
- Organization roles (HR Partner, Benefits Administrator, Recruiter, etc.)
- Position roles (assigned to a position; transferred with the position)
- Worker roles (assigned to a specific worker)

### Key Role Configuration Tasks

| Task | Purpose |
|------|---------|
| Set Up Assignable Roles | Create and configure custom organization roles |
| Roles and Time Zones | Configure how role assignments handle time zones |
| Set Up Role-Based Security Reporting | Reports showing role assignments across orgs |
| Edit Role Assignment Permissions | Control who can assign/remove each role |

### Key Concepts

| Concept | Description |
|---------|-------------|
| Concept: Roles Assignments, Positions and Role Inheritance | How roles flow down org hierarchy; position vs. worker roles |
| Concept: Role Assignments and the Snapshot Date Model | How role assignments are evaluated at specific effective dates |

**Role-Related Reports** — standard reports for auditing role assignments: role holders by org, orgs without role coverage, role assignment history.

---

## Locations

### Setup Considerations: Locations and Location Hierarchies

**Key decisions:**
- Location types (office, remote, warehouse, etc.)
- Location hierarchy structure for rollup reporting
- Location-based security and business process routing
- Integration with work schedule calendars

### Configuration Tasks

| Task | Purpose |
|------|---------|
| Create Locations | Define physical and virtual work locations |
| Create Location Hierarchies | Group locations for reporting and org assignment |

**Concept: Locations and Location Hierarchies** — how Workday uses locations in staffing, time tracking, tax, and reporting.

**Reference: Location Usages** — all places in Workday where location data drives behavior (payroll tax jurisdiction, schedule assignment, org eligibility rules).

---

## Hierarchies

### Setup Considerations: Hierarchies

**What Hierarchies Are:** Groupings of organizations into parent-child or reporting structures for roll-up reporting, planning, and financial consolidation. Separate from supervisory org hierarchy.

**Common hierarchy types:** Cost Center Hierarchy, Company Hierarchy, Location Hierarchy, Region Hierarchy.

### Configuration Tasks

| Task | Purpose |
|------|---------|
| Create Organization Hierarchies | Define hierarchy definition and type |
| Maintain Sort Order | Control display order of orgs within a hierarchy |
| Add Organizations to Hierarchies | Place orgs into the hierarchy structure |
| Move Organizations in Hierarchies | Restructure hierarchy placement |
| Correct Hierarchy Structure Exceptions | Resolve data inconsistencies in hierarchy |

**Concept: Hierarchy Structures** — rules for valid hierarchy configurations; single vs. multiple parent membership; effective dating.

**Reference: Hierarchies** — complete list of hierarchy types and their supported operations.

---

## Business Processes

### Setup Considerations: Business Processes

**What They Are:** The cornerstone of Workday automation. Business processes route tasks to authorized users based on security groups and org hierarchy. Over 550 pre-configured definitions are delivered.

**Key capabilities:**
- Configurable without IT/coding resources
- Copy and modify delivered definitions
- Conditional logic via condition rules
- Step-level security via business process security policies
- Audit trail on completion
- Business process notifications at each step or status change
- Integration with third-party systems via Integration steps
- Rule-based definitions for conditional routing structures

**Key recommendations:**
- Limit consecutive non-manual steps to under 72
- Copy delivered BPs to supervisory orgs before customizing
- Subordinate orgs inherit BP definitions from superior orgs unless overridden

### Business Process Framework Concepts

| Concept | Description |
|---------|-------------|
| Concept: Business Processes and Organizations | How BP definitions are scoped to orgs and inherit down hierarchy |
| Concept: Find Events | How to search for in-progress and completed BP instances |
| Concept: View Business Process Details | Reading a BP audit trail |
| Concept: Business Processes | Core framework overview |
| Concept: Effective Dates | How effective dating interacts with BPs |
| Concept: Time Zone and Due Date | Due date calculation using org time zone |
| Concept: Order of Execution | How parallel and sequential steps execute |
| Concept: Step Conditions | Condition rules that determine if a step runs |
| Concept: Completion Steps | Steps that finalize the BP |
| Concept: Approval Chain Routing | How approval chains resolve through the org hierarchy |

**Reference: Actions Available on Business Processes** — complete list of process-wide actions (view, rescind, cancel, correct) and where they apply.

### Business Process Step Types

| Step Type | Description |
|-----------|-------------|
| Action Step | Primary data-entry step; initiates or continues the transaction |
| Add Documents Step | Collect file attachments during the BP |
| Approval Chain Step | Route through manager hierarchy for approvals |
| Approval Step | Single approver; configured security group |
| Batch/Job Step | Trigger a batch process as part of the workflow |
| Checklist Step | Display a checklist of non-enforced items |
| Complete Questionnaire Step | Require questionnaire completion from a participant |
| Consolidated Approval Chain Step | Combine multiple approval levels into one step |
| Edit Additional Data Step | Collect custom object field data |
| Initiation Step | The first step; always present |
| Integration Step | Call an external integration as part of the workflow |
| Report Step | Present a report output to a BP participant |
| Report Group Step | Present multiple reports to a participant |
| Review Documents Step | Route documents for review and e-signature |
| Service Step | Automated step with no user interaction |
| Shared Participation Step | Multiple participants complete the same task |
| Tasks Step | Bundle multiple tasks as one step |
| To Do Step | Non-blocking reminder task |

### Customize Business Processes

| Task | Purpose |
|------|---------|
| Steps: Configure Business Process Definitions | Add, remove, and configure steps in a BP definition |
| Steps: Set Up Rule-Based Business Process Definitions | Define multiple routing structures triggered by conditions |
| Steps: Set Up Task Consolidation | Combine related tasks into a single user interaction |
| Configure Redirect on Business Process Steps | Redirect step to a different BP participant |
| Create Custom Business Processes | Build a new BP definition from scratch |
| Edit Business Processes | Modify existing BP definitions |
| Create Business Process Condition Rules | Define condition rules for conditional step execution |
| Maintain Organization Type Precedence | Set priority for org type resolution in routing |
| Configure Rule-Based Business Processes | Assign routing structures to conditions |
| Maintain Step Delay | Configure delays before a step becomes available |
| Embed Related Worklets in Business Processes | Embed contextual worklets on BP pages |
| Create Integration (Step) | Configure an Integration step within a BP |
| Configure Consolidated Template Override | Override consolidated approval templates |
| Configure Optional Fields | Make BP fields optional or required |
| Launch Orchestrations on Business Process Status Changes | Trigger Orchestrate workflows on BP events |

**Concept: Business Process Templates** — how templates define the structure and defaults for a BP definition.

**Concept: Calculated Dates** — date fields calculated dynamically based on other BP data.

**Concept: Rule-Based Business Process Definitions** — routing structures that select based on conditions at initiation.

**Concept: Business Process Segmented Security** — how segment-based security restricts who can initiate, approve, or view a BP.

### Manage Business Processes

| Task | Purpose |
|------|---------|
| Setup Considerations: Auto-Manage BPs for Worker | Auto-complete or reassign tasks when a worker is unavailable |
| Setup Considerations: Mass Operations on Business Processes | Bulk approve/deny/reassign BPs across many workers |
| Create a Segment-Based Security Group for Mass Operations | Security setup for mass BP operations |
| Set Up Mass Operations | Configure which BPs support mass actions |
| Maintain Advanced Routing | Complex routing rules beyond org hierarchy |
| Maintain Specific Group Routing | Route to a named security group override |
| Set Up Multiple Position Routing | Handle routing for workers with multiple positions |
| Maintain Line Level Routing | Line-by-line approval for multi-line documents |
| Define Order of Parallel Steps in My Tasks | Control display order of parallel tasks |
| Steps: Set Up Auto-Manage BPs Service Step | Configure service step for automated BP management |
| Steps: Enable Attachments on an Individual Business Process | Allow file attachments on a specific BP |
| Reassign Tasks | Move BP tasks from one user to another |

**Key Concepts:**

| Concept | Description |
|---------|-------------|
| Concept: Business Process Management | Overall BP management philosophy |
| Concept: Business Process Step Attachments | How attachments flow through BP steps |
| Concept: Autocomplete Business Processes | Conditions under which BPs auto-complete without user action |
| Concept: Bulk Approve Business Processes | Approving many BPs simultaneously |
| Concept: Auto-Manage BPs for a Worker | System manages tasks when worker is on leave or terminated |
| Concept: Manage a Worker's My Tasks Items | Admin visibility into a worker's task queue |

### Create Checklists

Configure standalone checklists for use in BP checklist steps or as onboarding/offboarding action lists.

---

### Delegate Business Processes

Delegation allows one worker to act on behalf of another for specified BP tasks.

**Setup Considerations: Delegation** — configure delegation scope, restrictions, and approval requirements.

| Task | Purpose |
|------|---------|
| Single Task Delegation | Delegate a specific task instance |
| Business Process Task Delegation | Delegate all tasks of a specific BP type |
| Business Process Initiation Delegation | Delegate BP initiation rights |

**Key Concepts:**

| Concept | Description |
|---------|-------------|
| Concept: Act On Behalf Of Another User | How delegated users experience the acting-on-behalf-of context |
| Concept: Delegation Routing Restrictions | Limits on what can be delegated |
| Concept: Delegation Rules | Org-level rules controlling delegation eligibility |
| Concept: Delegation Notifications | Notifications sent to delegator and delegate |

**Reference: Delegation Reports** — reports for auditing active and historical delegations.

---

### Business Process Notifications

**Create Custom Notifications** — create notifications triggered by BP status or step events.

**Configure Business Process System Notifications** — configure delivery of Workday-delivered BP notifications (worker-level and org-level).

**Schedule Alert Notifications** — configure time-based alert notifications (e.g., BP approaching due date).

**Concept: Custom Notifications** — notification types, timing options, recipient selection, and template configuration.

---

### Questionnaires (within Business Processes)

**Steps: Create and Manage Questionnaires** — define questionnaires used in Complete Questionnaire BP steps.

**Configure Questionnaires and Questions** — build question banks with multiple question types (single-select, multi-select, text, rating scale, date).

**View Questionnaire Responses in Approval Steps** — approvers see questionnaire answers in context of their approval step.

**Steps: Purge Questionnaire and Survey Responses** — GDPR-compliant response deletion.

**Steps: Configure Questionnaire Security Segments** — restrict questionnaire response access by segment.

---

### Requests

**Setup Considerations: Requests** — configure general-purpose request types (e.g., IT request, facilities request, HR inquiry).

**Set Up Request Types** — define request categories, fields, and routing.

**Steps: Maintain Access to Request Types** — control which workers can submit which request types.

**Concept: Requests** — how requests integrate with BPs; request tracking and reporting.

---

### Dynamically Generated Documents

Configure documents that are generated at runtime during a BP, populated with data from the BP context.

| Task | Purpose |
|------|---------|
| Steps: Generate Dynamic Documents | Configure the document generation step |
| Create Text Blocks | Define reusable rich-text content blocks |
| Associate Custom Layouts with Generated Documents | Apply Report Designer layouts to generated documents |
| Configure Generated Documents | Set up document templates with merge fields |

**Concept: Dynamic Document Generation** — how merge fields are resolved at generation time.

**Concept: Text Blocks** — reusable content fragments in document templates.

---

### Business Process Guidelines

Detailed setup and configuration guidance for specific high-complexity BPs:

| BP Type | Coverage |
|---------|---------|
| Expense Report Event BP | AP approval routing, receipt attachment rules, audit triggers |
| Hire BP | Pre-hire to hire flow, I-9, background check, onboarding triggers |
| Integration BP | How to embed integration steps; error handling |
| Offer BP | Offer letter generation, approval chain, e-signature |
| Onboarding BP | Task sequencing, Workday Docs, plan assignment |

**Reference: Security Domains for the Expense Report Event BP** — all domains required for expense report BPs.

**FAQ: Business Processes** — answers to common BP configuration questions.
