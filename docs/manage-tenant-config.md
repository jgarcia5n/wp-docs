# Manage Workday – Tenant Configuration

> Source: Admin Guide – Manage Workday (May 14, 2026), pp. 12–841

---

## Tenant Setup

### Concept: Tenant Setup

A **tenant** is a unique Workday instance with logically separated data, a unique URL, and its own security. The tenant base name is set once, must be lowercase, max 32 characters, and cannot be changed.

**Edit Tenant Setup tasks** are the primary configuration interface. Access individually by name or via the **Tenant Setup report**. Key tasks:

| Task | Covers |
|------|--------|
| Edit Tenant Setup - Assistant | Workday Assistant configuration |
| Edit Tenant Setup - Business Processes | BP defaults, autocomplete, security |
| Edit Tenant Setup - Financials | Currency, fiscal year, accounting defaults |
| Edit Tenant Setup - Global | Date/time formats, number formats, regional |
| Edit Tenant Setup - HCM | Staffing, benefits, talent, absence defaults |
| Edit Tenant Setup - Help | Knowledge base and help configuration |
| Edit Tenant Setup - Integrations | Integration defaults and settings |
| Edit Tenant Setup - Notifications | Notification delivery and routing defaults |
| Edit Tenant Setup - Payroll | Payroll calculation and run defaults |
| Edit Tenant Setup - Recruiting | Recruiting workflow and pipeline defaults |
| Edit Tenant Setup - Reporting and Analytics | Reporting defaults, Prism settings |
| Edit Tenant Setup - Search | Search indexing and global search settings |
| Edit Tenant Setup - Security | Security defaults, session timeout, password rules |
| Edit Tenant Setup - Student | Student module defaults |
| Edit Tenant Setup - System | System-wide defaults, file handling, error settings |

### ID Definitions and Sequence Generators

**ID Definitions** — configure automatically generated reference IDs for Workday objects (e.g., employee IDs, purchase order numbers).

**Sequence Generators** — define numeric sequences used in ID generation. Configure prefix, suffix, padding, starting number, and increment.

### Concept: Opt-In Features

Workday delivers certain features as opt-in before making them default. Enables testing and user preparation before automatic rollout.

---

## Mobile Setup

### Setup Considerations: Mobile Applications

**Key decisions:**
- Which Workday mobile features to enable per worker population
- Push notification configuration
- Mobile device management (MDM) integration requirements
- Offline mode support

**Concept: Mobile Devices and Features** — supported platforms (iOS, Android), feature availability matrix, and device requirements.

**Concept: Best Practices for Mobile Adoption** — rollout strategy, communication, and training recommendations.

### Steps: Set Up Workday Mobile Applications

1. Configure mobile-enabled features in Edit Tenant Setup
2. Set Up Team Profile for Mobile (team visibility on mobile)
3. Set Up Mobile Push Notifications (APNs/FCM configuration)
4. Configure Faceted Search Reports for Mobile

### Mobile Security and Authentication

Configure mobile-specific authentication rules: certificate-based auth, MDM enrollment requirements, biometric authentication, and mobile-specific step-up rules. Integrates with Authentication Policies.

### Tasks in Workday Mobile

Reference of all tasks available on Workday mobile app by functional area.

---

## Workday Adoption and Usage

### Adoption Planning Hub

Centralized hub for tracking and driving Workday adoption across the organization. Includes:
- Adoption metrics by functional area
- Task completion rates
- Self-service usage tracking
- Adoption planning tools and templates

### Workday Usage Metrics

Reports and dashboards on how workers interact with Workday: page visits, task completions, search usage, and feature adoption rates.

---

## Form Completion Assistant

**Concept: Form Completion Assistant** — AI-powered assistance that suggests field values as workers fill out Workday forms and business process tasks.

**Reference: Form Completion Assistant** — configurable fields, enabling/disabling by functional area, and data privacy considerations.

---

## Notifications and Alerts

### Steps: Set Up Workday Notifications

1. Steps: Set Up Message Templates (create reusable message content)
2. Create Notification Routing Rules (route notifications to correct recipients)
3. (Optional) Configure and View Alerts

**Concept: Notifications** — types of notifications (inbox, push, email, Slack), delivery mechanisms, and the notification framework.

**Concept: Alerts** — condition-based alerts that fire when specified thresholds or conditions are met (e.g., high-risk expense report, approvals approaching deadline).

### Email Notifications

Configure email delivery for business process notifications, alert notifications, and scheduled report notifications. Includes:
- Sender address configuration
- Email template management
- Notification suppression rules
- Digest notification configuration

### Workday Messaging

Configure in-app messaging between workers and managers. Manage message templates, routing, and retention.

### My Conversations

Worker-facing conversation thread feature for structured HR communications.

### Message Builder

Admin tool for creating rich-text notification and message templates with dynamic field substitution.

---

## Navigation

### Steps: Set Up Dashboards and Landing Pages

1. Create or customize dashboards
2. Add Dashboard Menus (categorized navigation within dashboards)
3. Add Home and Dashboard Announcements
4. Create Configurable Cards (custom content cards)
5. Configure Quick Actions Section
6. Set Up Worklets (custom worklets linked to reports or tasks)
7. (Optional) Set Up Guided Tours (interactive in-app walkthroughs)

### Hubs

**Steps: Create Hubs** — configure role-specific hubs (centralized landing pages for specific worker roles).

**Set Up Hubs** — configure hub content, layout, and security.

**Customize Hub Navigation** — add/remove/reorder hub navigation items.

**Configure Extend Cards in Hubs** — embed Workday Extend app components as cards in hubs.

**Concept: Hubs** — hubs aggregate relevant tasks, data, and worklets for a specific role (e.g., HR Partner Hub, Manager Hub). Content is role-filtered.

### Custom ConnectRs

**Set Up Considerations: Custom ConnectRs** — custom navigation items that appear in global navigation categories. Allow deep links to external systems or internal Workday tasks.

### Profile Cards and Profiles

**Steps: Set Up Profile Cards** — configure what data appears on worker profile cards.

**Steps: Set Up Profiles and Profile Groups** — define profile layouts for different worker populations.

### Key Concepts

| Concept | Description |
|---------|-------------|
| Concept: Dashboards | Configurable landing pages with worklets; can be functional-area-specific |
| Concept: Landing Pages | Pages that display worklet collections; Home landing page for common self-service |
| Concept: Session Timeout | Configure idle session timeout duration |
| Concept: Save In Context | Save report filter and prompt values within context of a page |

### References

**Reference: Core Navigation** — complete documentation of global navigation structure.

**Reference: Search Workday** — global search behavior, search prefixes, and search index coverage.

**Reference: Set Up Help for Self-Service Users** — configure contextual help links.

---

## Globalization

### Currencies

Configure currencies available in the tenant. Includes:
- Enable/disable currencies
- Set default display currency
- Configure currency conversion rates
- Currency rounding rules

### Time Zones

Configure time zone support across the tenant:
- Default tenant time zone
- Worker-level time zone preferences
- Time zone display in business processes and reports
- **Concept: Day Breakers** — the time of day at which a work day starts; affects time tracking calculations

### Global Tenant Setup

Configure region-specific settings:
- Date and number formats by locale
- Address formats by country
- National ID types and validation rules
- Country-specific field display

### Languages and Translations

- Enable languages for the tenant
- Configure translation of Workday-delivered strings
- Manage custom label translations
- Translation workflow for custom report names and fields

---

## Content Management

### Document Management

Manage Workday-stored documents:
- Document categories and types
- Document retention rules
- Access and security configuration
- Integration with Drive

### Docs for Business Processes

Configure dynamically generated documents within business processes:
- Workday Docs templates (rich text, merge fields)
- Document generation triggers
- E-signature integration (Adobe Sign, DocuSign)
- Document routing and storage

### Docs for Layouts

Configure form layouts for business process documents:
- Layout templates by business process type
- Field visibility and ordering in layouts
- Conditional sections

### Drive

Workday's internal file storage and collaboration platform:
- Configure Drive access and sharing
- Set storage quotas and file type restrictions
- Drive security configuration
- Integration with Workday Docs

### Workday Media Cloud

Manage media assets (images, videos) stored in Workday:
- Configure media upload and management
- Media permissions and sharing
- Integration with learning content and branding

---

## Links

**Create External Links to Third Party Systems** — create named links to external applications surfaced as worklets or menu items.

**Create Direct Links to Initiate Business Processes** — deep links that pre-populate business process parameters.

**Concept: Worklets that Support External Links** — list of worklets that support embedded external link display.

---

## Calendars and Schedules

### Steps: Create Calendars

Core calendar creation workflow covering all calendar types.

### Calendar Types and Tasks

| Task | Purpose |
|------|---------|
| Create Work Schedule Calendars | Define scheduled work days/hours for worker populations |
| Create Work Schedule Calendar Groups | Group calendars for bulk assignment |
| Create Holiday Calendars | Define company or country holiday schedules |
| Add Calendar Events | Add individual events (holidays, shutdowns) to calendars |
| Copy Calendars | Clone a calendar as a starting point |
| Create Rules for Assigning Calendars | Rules-based calendar assignment by org/location/role |
| Automatically Assign Work Schedule Calendars | Auto-assign based on rules |
| Manually Assign Work Schedule Calendars | Individual assignment |
| Manage Ad Hoc Work Schedule Changes | One-time schedule overrides |
| Steps: Enable Managers to Create and Assign Custom Work Schedules | Manager self-service schedule creation |
| Mass Add End Dates to Self-Service Work Schedule Calendar Changes | Bulk end-dating of custom schedules |
| Inactivate Work Schedule Calendars | Retire unused calendars |

### Key Concepts

| Concept | Description |
|---------|-------------|
| Concept: Day Breakers | When a work day begins (affects time tracking daily calculations) |
| Concept: Schedule Patterns | Repeating patterns (daily, weekly, rotating shifts) for calendar generation |
| Concept: Self-Service Changes to Work Schedules | How workers and managers modify schedules; approval routing |
| Concept: Importing Work Schedules | EIB import of work schedule data |

**Reference: Work Schedule Calendar Assignment Precedence** — priority order when multiple calendars are assigned.

---

## Tenant Branding

**Steps: Set Up Tenant Branding** — configure organization logo, colors, and sign-in page appearance.

**Reference: Recommended Image Sizes for Tenant Branding** — pixel dimensions for logo, background, and icon images.

---

## Custom Objects and Labels

### What They Are

Custom objects are organization-defined business objects that extend Workday's data model. Used to capture data for which no Workday-delivered field exists.

**Limits:** Up to 200 active custom fields per custom object.

**Security:** Custom Object Management domain in the System functional area.

### Steps: Set Up Custom Objects

1. Create and Edit Custom Object Definitions (define the object, its extended business object, and effective dating)
2. Create Custom Field Types (field type, web service alias — immutable once in use)
3. (Optional) Create Custom Lists (picklists for custom fields)
4. (Optional) Create Custom Labels (override display names)
5. Create Custom Object Validations (condition rules for field validation)
6. (Optional) Configure UI Visibility Rules

### Management Tasks

| Task | Purpose |
|------|---------|
| Create Custom Instance References | Create lookup relationships between custom objects |
| Delete Custom Data, Fields, or Objects | Remove custom data and definitions |
| Create a Custom Report on a Supplier Object | Extend reporting to supplier custom objects |
| Display Additional Data in Profiles | Surface custom object data on worker profiles |

### Key Concepts

| Concept | Description |
|---------|-------------|
| Concept: Custom Fields in Custom Reports and Calculated Fields | How custom fields appear in reporting |
| Concept: Updating Effective-Dated Custom Object Data | Behavior of effective-dated custom objects |
| Concept: Security for Custom Objects | Domain-based security for custom object access |
| Concept: Custom Objects in Integrations | How custom object data is exposed via EIB, connectors, and WWS |

**Reference: Custom Object and Field Limits** — maximum counts for objects, fields, instances, and values.

---

## Calculated Fields

### Setup Considerations: Calculated Fields

**What They Are:** Configurable field definitions associated with a business object. Use Workday data to compute values at runtime.

**Use Cases:**
- Business process condition rules and metrics
- Custom pay result reporting
- Time tracking validation expressions
- Integration field override values (EIB, DIS, connectors)
- Notification content

**Two scopes:**
- **Report-Specific Calculated Fields** — available only within a single report
- **Tenant-Wide Calculated Fields** — reusable across reports, BPs, and integrations

### Create Calculated Fields

Access: **Create Calculated Field** task. Key parameters: business object, function type, data type, and input fields.

**Concept: Calculated Fields** — how Workday resolves calculated fields at runtime; evaluation order.

**Concept: Calculated Fields Security** — access to calculated fields is controlled by the security on the underlying business objects and fields.

### Calculated Field Functions

Extensive function library covering:

| Category | Examples |
|----------|---------|
| Arithmetic | Add, Subtract, Multiply, Divide, Round, Abs |
| Comparison | Equal, Not Equal, Greater Than, Less Than |
| Conditional | If/Then/Else, Is Empty, Is Not Empty |
| Date/Time | Date Difference, Add Days, Format Date |
| String | Concatenate, Substring, Upper, Lower, Trim |
| Lookup | Single-Attribute Lookup, Multi-Attribute Lookup |
| Aggregate | Count, Sum, Average, Min, Max |
| Type Conversion | To Number, To Text, To Boolean, To Date |

---

## Calculations

### Setup Considerations: Calculations

Calculations are distinct from Calculated Fields — they use **Advanced Lookup Tables (ALT)** for table-driven value lookups.

**Use Cases:**
- Compensation step progression rules
- Payroll calculation tables (tax rates, allowances by grade/location)
- Time tracking pay premium lookups
- Benefits contribution schedules

### Calculation Types

| Task | Purpose |
|------|---------|
| Create Calculations | Basic formula-based calculations |
| Create Lookup Calculations Using Advanced Lookup Tables | Table-driven lookups by 1 attribute |
| Create Multicriteria Advanced Lookup Table | Table-driven lookups by 2+ attributes |
| Create Lookup Calculations for Multicriteria Advanced Lookup Tables | Multi-attribute lookup calculations |
| Copy Advanced Lookup Tables with New Effective Dates | Roll forward ALT to a new effective date |
| Create a Step-Based Calculation | Tiered calculations (e.g., progressive tax brackets) |

**Concept: Step-Based Calculation** — tiered calculation logic where the output depends on which step/bracket the input falls into.

**Concept: Calculated Fields and Calculations** — when to use each: calculations for table lookups; calculated fields for formula expressions.

### References

**Reference: Date Calculations** — date arithmetic functions and period calculations.

**Reference: Numeric Calculations** — numeric function catalog.

**Reference: Boolean Calculations** — boolean logic functions.

**Reference: Calculations and Calculated Fields Comparison** — decision guide.

---

## Duplicate Management Framework

**Setup Considerations: Duplicate Management** — configuration decisions for match rules, match thresholds, and automatic vs. manual merging.

| Task | Purpose |
|------|---------|
| Steps: Set Up Duplicate Management | Enable and configure duplicate detection |
| Create Match Rules | Define matching criteria (name, SSN, email, date of birth) |
| Find Duplicate Records for an Individual | Check one person against the tenant |
| Find Duplicate Records in the Tenant | Batch scan for all duplicates |
| Merge Duplicate Records | Combine two person records; source into target |

**Concept: Duplicate Management** — match rule evaluation, merge logic, and data resolution precedence.

**Reference: Supported Person Type Combinations for Merge** — which person type combinations (Worker + Candidate, Pre-hire + Worker, etc.) can be merged.

**Reference: Merge Rules** — per-field-category rules for how data from source and target is handled (personal data, names, IDs, contact information).

**Reference: Unmerge Operations** — conditions under which a merge can be reversed and rules for unmerge behavior.

---

## Auditing

**Setup Considerations: Audit Trails** — what to audit, audit tag configuration, segment-based audit access.

| Task | Purpose |
|------|---------|
| Steps: Set Up Auditing | Enable auditing and configure audit domains |
| Configure Security for Audit Tag Segments | Restrict audit log access by segment |
| Set Up Audit Tags | Define tags for categorizing audit events |
| Set Up Audit Tag Assignments | Assign tags to business objects and events |

**Concept: Auditing** — how Workday generates audit entries for data changes, business process events, and security changes.

**Concept: Exception Audit Reports** — pre-built exception reports that highlight unusual changes or access patterns.

**Reference: Auditing-Related Reports** — complete list of audit reports.

### User Activity Logging

**Concept: User Activity Logging** — detailed tracking of user actions including page views, report runs, and data access. Available via REST API and reports for security investigations.

---

## IT Administrator Resources

| Resource | Description |
|---------|-------------|
| Steps: Set Up Account Provisioning Groups | Configure groups for automated account provisioning |
| Concept: Virus Scanning | How Workday scans uploaded files for malware |
| Reference: Workday Acronyms | Glossary of Workday-specific abbreviations |
| Network Connectivity | IP ranges, DNS requirements, and firewall rules for Workday |
| Limitations and Availability | Platform-level limits (file sizes, API call limits, storage) |
| Performance Best Practices for Large-Scale Events | Configuration guidance for high-volume periods (open enrollment, annual reviews) |
| Background Processes | Scheduled system processes, their frequency, and impact |
| System Health Dashboard | Real-time monitoring of Workday service health |

### Implementation Tools

| Tool | Purpose |
|------|---------|
| Concept: Reference ID Management for Object Migration | How to manage reference IDs when migrating objects between tenants |
| Reference: Migration Implementation Tools | Tools for configuration migration between implementation and production |
| Customer Central | Workday's implementation hub for partner and customer resources |
| Deployment Agent | Tool for automating tenant configuration deployments |
