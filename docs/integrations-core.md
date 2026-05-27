# Integrations – Core Framework (Setup, EIB, Launch & Manage)

> Source: Admin Guide – Integrations (May 14, 2026), pp. 19–533

---

## Setup Considerations: Integrations

**What It Is:** Workday integrations exchange data between Workday and external endpoints. Supports scheduled, ad-hoc, and event-driven execution.

**Use Cases:**
- Account provisioning (Active Directory sync, SCIM)
- Payroll, tax, and benefits data exports to third-party providers
- Bulk import of hire, organization, and compensation data
- Recruiting data exchange (job postings, candidates)

### Integration Technology Selection Guide

| Technology | Direction | Best For | Limitations |
|-----------|----------|---------|-------------|
| **Inbound EIB** | Inbound | One-time or periodic bulk data loads into Workday; spreadsheet-based entry | 1 data source per EIB; simpler use cases only |
| **Outbound EIB** | Outbound | Simple exports from a single custom report or web service | 1 data source per EIB |
| **Template-Based Connector** | In/Out | Vendor-specific integrations (benefits, payroll, HCM); standardized format | Single vendor per template; additional data via report fields only |
| **Orchestrate for Integrations** | In/Out | Complex multi-step workflows; event-driven; low-code/no-code; real-time | Separate from Workday tenant; Orchestrate-specific training required |
| **Workday Studio** | In/Out | Complex custom integrations; multi-source; custom transformations | Separate from tenant; Eclipse-based; developer training required; longer build time |
| **Workday Web Services (WWS / SOAP)** | In/Out | Programmatic access to most Workday operations; developer-built integrations | XML/SOAP expertise required; high volume can be slow |
| **Workday REST API** | In/Out | Smaller, targeted transactions from external apps | Limited operation set vs. WWS |

---

## Launch and Manage Integrations

### Core Tasks

| Task | Purpose |
|------|---------|
| Launch an Integration | Execute an integration manually on demand |
| Cancel an In-Progress Integration | Abort a running integration |
| Relaunch an Integration | Re-execute a previous integration event |
| Rerun Integration Document Delivery | Resend output files from a completed event |
| View Integration Events | Review history, status, and output for an integration |
| Audit Integration Events | Detailed audit trail for an integration execution |
| Retrieve Technical Files for Integration Events | Download raw input/output/log files |
| Create Integration Notifications | Configure email/inbox notifications on integration status |
| Delete Integrations and EIBs | Remove integration definitions |

### Scheduling

**Concept: Integration Schedules and Weekly Service Updates** — integrations can be scheduled via cron-style expressions. Workday performs weekly service updates that may interrupt scheduled integrations; schedule around the update window.

**Reference: Integration Event Statuses** — all possible statuses (Initiated, Processing, Completed, Completed with Errors, Failed, Canceled).

**Reference: Integration Message Components and Error Handling** — structure of integration error messages and retry behavior.

**Concept: Mass Actions on Integration Events** — bulk operations on multiple integration events (cancel, relaunch, delete).

---

## Enterprise Interface Builder (EIB)

**Concept: Enterprise Interface Builder** — EIB is the primary tool for building simple integrations within the Workday tenant. No coding required. An EIB consists of:
1. **Integration System** — the integration definition
2. **Integration Data Source** — what data to import/export
3. **Integration Transformation** — how to transform the data
4. **Integration Transport Protocol** — how to deliver/receive the data

### Setup Considerations: Enterprise Interface Builder

**Key decisions:**
- Inbound (load data into Workday) vs. Outbound (export from Workday)
- Data source: web service operation or custom report
- Transport: SFTP, HTTP/S, email, or manual upload
- Transformation: CSV, XML, XSLT

---

### Inbound EIBs

Used to load data into Workday via web service operations.

#### Steps: Set Up EIBs Using Templates from Web Service Operations

1. Identify the Workday web service operation to use
2. Set Up Inbound EIB (create integration system, configure data source)
3. Generate EIB Spreadsheet Template (creates Excel template matching WS fields)
4. (Optional) Customize EIB Spreadsheet Template
5. Set Up EIB Spreadsheet (define column mappings)
6. Set Up Business Process Security for EIB Upload
7. Launch EIB Spreadsheet Upload (test with sample data)

#### Set Up Inbound EIB

Configure the integration system, select the web service operation (data source), and set the transformation type (spreadsheet or XML).

**Key fields:**
- Integration System name and description
- Web Service Operation (e.g., Hire_Employee, Create_Position)
- Data Source type (Web Service)
- Spreadsheet Template configuration

#### Key Inbound Concepts

**Concept: EIB Template Models and Spreadsheet Templates** — EIBs use generated Excel spreadsheet templates. Each row in the spreadsheet maps to one web service call. Template format matches the selected operation's schema.

**Concept: EIB Spreadsheet Data Entry Guidelines:**
- Date format: MM/DD/YYYY or YYYY-MM-DD
- Reference IDs: use the Reference ID type prefix format (e.g., `Employee_ID~12345`)
- Multi-value fields: use separate rows or pipe-delimited values
- Boolean fields: `1` = true, `0` = false

**Concept: Guidelines for Spreadsheets That Launch a Business Process** — special considerations for operations that initiate business processes (e.g., Hire, Terminate).

**Reference: Inbound Transport Protocol Types for EIBs** — SFTP, FTP, HTTP/S, Email, manual upload.

**Reference: Inbound Integration Transformations for EIBs** — supported transformation types.

**Reference: EIB Upload Reports** — reports to monitor upload status and errors.

#### Inbound EIB Templates by Functional Area

| Functional Area | Available EIB Templates |
|----------------|------------------------|
| Absence Management | Time off adjustments, leave requests, accrual overrides |
| Benefits Administration | Enrollment updates, rate changes, coverage changes |
| Cash Management | Bank transactions, reconciliation data |
| Compensation | Grade assignments, plan assignments, one-time payments |
| Compensation Review | Review process data, awards |
| Custom Objects | Custom object instance creation/updates |
| Financial Management | Journal entries, budgets, accounting data |
| Human Resources | Worker data, personal information, org assignments |
| Integrations | Integration configuration data |
| Learning | Course completions, enrollment data |
| Payroll | Payroll input, earnings/deductions |
| Performance Management | Review data, ratings |
| Recruiting | Candidate data, job requisitions |
| Resource Management | Project data |
| Staffing | Hire, terminate, job change, position data |
| Talent | Goal assignments, succession data |
| Time Tracking | Time entry, time block data |

---

### Outbound EIBs

Used to export data from Workday to an external endpoint.

#### Steps: Set Up Outbound EIB

1. Set Up Outbound EIB (create integration system with data source)
2. Create Web Service Data Source (or use Custom Report)
3. (Optional) Create Security Proxy to Grant Report Access
4. Set Up Launch Parameters for Web Service Data Source
5. Create HTTPS Transport Protocol (or configure SFTP/FTP)
6. Create Integration Transformation (XSLT or format conversion)
7. (Optional) Manage Outbound EIBs with Custom XSLTs
8. (Optional) Set Up Custom Report Transformation
9. (Optional) Set Up Dynamic Filename Definition

#### Set Up Outbound EIB

| Component | Options |
|-----------|---------|
| Data Source | Custom Report or Web Service Operation |
| Transformation | No transformation (XML), XSLT, CSV, Fixed-Length |
| Transport | SFTP, FTP, FTPS, HTTP/S, Email, Workday Attachments |

**Reference: Outbound Transport Protocol Types for EIBs** — detailed configuration for each transport type.

**Reference: Outbound Integration Transformations** — supported transformation types and configuration.

**Reference: Outbound Integration Data Sources** — available outbound data sources.

---

### EIB Error Handling

**View Error Messages for an EIB** — access detailed error messages from the integration event.

**Troubleshooting: Enterprise Interface Builder** — common errors:
- Reference ID not found → verify ID type and value format
- Business process validation failure → check required fields and eligibility
- Security errors → verify ISU domain access
- Spreadsheet format errors → check column headers match template exactly

---

## Getting Started with Workday Connectors

**Concept: Workday Connectors** — pre-built integration templates for specific vendors and use cases. Connectors use a template-based model with configurable attributes, maps, and field overrides.

**Browse Connector Templates** — view available connector templates in Workday by category.

### Connector Catalogs

| Catalog | Coverage |
|---------|---------|
| Reference: Benefits Connectors Catalog | Benefit provider integrations |
| Reference: Financials Connectors Catalog | Banking, payments, accounting integrations |
| Reference: HCM Connectors Catalog | Worker, recruiting, payroll interface connectors |
| Reference: Student Connectors Catalog | Student records, admissions, financial aid |
| Reference: Third-Party Payroll Connectors Catalog | Third-party payroll provider connectors |
| Reference: Workday Payroll Connectors Catalog | Workday Payroll-specific connector templates |
