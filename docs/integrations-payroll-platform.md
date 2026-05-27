# Integrations – Global Payroll Connect, Payroll Connectors & Platform APIs

> Source: Admin Guide – Integrations (May 14, 2026), pp. 1409–2422

---

## Global Payroll Connect

### Concept: Global Payroll Connect

Framework for integrating Workday with third-party global payroll providers. Covers data setup, change detection, and payroll result import.

---

### Third-Party Payroll Setup

#### Third-Party Payroll Organizations

Configure payroll organizations in Workday that map to external payroll provider groupings. Define which workers belong to each payroll group.

#### Third-Party Payroll Pay Groups

Create pay groups aligned to external payroll provider pay cycles and reporting structures.

#### Third-Party Payroll Earnings and Deductions

Map Workday earnings and deductions to external payroll provider codes. Includes:
- Earnings code mapping
- Deduction code mapping
- Employer contribution mapping

#### External Vendor Mapping and Associations

Define vendor-specific codes and associations used in payroll interface extracts.

---

### Additional Payroll Data

**Steps: Set Up Additional Payroll Data** — configure supplemental data sent alongside standard payroll extracts (e.g., custom fields, local payroll requirements).

**Concept: Attachments for Additional Payroll Data** — how file attachments are included in payroll data packages.

---

### Data Changes on Demand (DCoD)

**What It Is:** Event-driven integration that sends changes to third-party payroll providers in real time as worker data changes in Workday.

**Setup Considerations: Data Changes on Demand**

**Key decisions:**
- Which data sections to include
- Change detection configuration
- Frequency of delivery (real-time vs. batch)
- Request criteria parameters

| Task | Purpose |
|------|---------|
| Steps: Set Up Data Changes on Demand | Configure DCoD integration |
| Create Integration System User for DCoD | ISU account for DCoD |
| Set Up Field Overrides for DCoD Integrations | Customize output fields |

**Concept: Data Changes On Demand** — architecture, event triggers, and delivery model.

**Concept: PECI and DCoD Comparison** — when to use Payroll Effective Change Interface vs. DCoD.

**Concept: Data Changes on Demand Change Detection** — how Workday detects relevant changes for inclusion.

**Reference: Data Sections for Data Changes on Demand** — complete data section catalog.

**Reference: Data Changes on Demand Request Criteria Parameters** — filtering and scoping parameters.

---

### Event Outbound Notifications

**Steps: Set Up Event Outbound Notifications** — configure real-time event-driven notifications to external endpoints when Workday business events occur (hire, terminate, job change, etc.).

**Create Integration System User for Event Outbound Notifications** — ISU configuration for event notifications.

---

### Global Payroll Hub

**Setup Considerations: Global Payroll Hub** — centralized hub for managing third-party payroll integrations, run status, and error resolution.

**Steps: Set Up Global Payroll Hub** — configure hub access and content.

**Concept: Global Payroll Hub Checklist** — pre-launch checklist for global payroll integrations.

---

### Inbound Notifications

**Steps: Set Up Inbound Notifications** — configure Workday to receive event notifications from external systems and trigger actions.

**Reference: Inbound Notifications Request Samples** — sample XML payloads for inbound notification requests.

---

### Payroll Interfaces

**Concept: Workday Payroll Interfaces** — overview of available payroll interface patterns: PECI, DCoD, WECI, and Payroll Interface Connector.

**Setup Considerations: Payroll Interfaces** — decision guide for selecting the correct interface for your payroll provider.

**Reference: Find Your Third-Party Payroll Interface Integration** — lookup table by payroll provider and country.

#### Payroll Effective Change Interface (PECI) Connector

Change-based payroll interface that exports all effective-dated worker changes (staffing, compensation, benefits) since the last run.

**Key concepts:** Change detection, effective date segmentation, PECI data sections.

#### Payroll Interface Integration Command Center

Centralized monitoring and management for all payroll interface runs.

#### Event-Driven Integration

Real-time event-based payroll data delivery triggered by Workday business events.

#### Payroll Interface Configurable Output

Configure which fields and data sections are included in payroll interface extracts.

#### Third-Party Payroll Errors Collaboration

Workflow for reviewing and resolving payroll interface errors between HR and payroll teams.

#### Global Payroll Reconciliation

Reconciliation reports comparing Workday data with external payroll provider results.

#### Payroll Interface Connector

Pre-built connector templates for specific third-party payroll providers.

---

### Worker Effective Change Interface (WECI)

**What It Is:** An alternative to PECI for integrations requiring all worker effective-dated changes in chronological order.

**Setup Considerations: WECI** — when to use WECI vs. PECI; configuration differences.

| Task | Purpose |
|------|---------|
| Steps: Set Up WECI | Full WECI setup workflow |
| Steps: Set Up Frequent Integration Runs for WECI | Configure high-frequency execution |
| Configure WECI Integration Attributes and Maps | Field-level configuration |
| Test WECI Field Overrides | Validate override configurations |

**Concept: Worker Effective Change Interface** — WECI change detection model and data extraction behavior.

**Reference: Staffing Events in WECI Extracts** — which staffing events trigger WECI output.

**Reference: Data Sections for WECI** — complete data section catalog.

---

### External Payroll Documents and Results

| Topic | Description |
|-------|-------------|
| Callback for External Payroll | Configure Workday to receive payroll processing callbacks |
| External Payroll Documents | Manage payroll documents from external systems |
| External Payroll Results Inbound Integration | Import calculated payroll results into Workday |
| Global Payroll Results | View and manage imported global payroll results |
| Import External Payslips Integration | Import payslips from external payroll systems |
| External Payslips REST API | REST endpoint for payslip import |
| External Tax Documents REST API | REST endpoint for tax document import |

---

## Workday Payroll Connectors

Pre-built connectors for Workday Payroll-specific integrations (check printing, tax filing, statutory reporting).

### ADP Check Print Integration

**Steps: Set Up ADP Check Print Integration** — configure paycheck printing through ADP's check print service.

### Australian Superannuation (SuperStream) Integration

**Steps: Set Up SuperStream Integration** — ATO SuperStream-compliant superannuation contribution file generation.

### Australian Taxation Office STP Integration

**Steps: Set Up ATO STP Integration** — Single Touch Payroll (STP) Phase 2 reporting to the ATO.

### Canada Annual Tax Filing Integrations

| Integration | Purpose |
|-------------|---------|
| Canadian Revenue Agency T4 | T4 slip generation and filing |
| Canadian Revenue Agency T4A | T4A slip generation and filing |
| Canadian Revenue Agency NR4 | NR4 non-resident withholding reporting |
| Revenue Agency Quebec RL-1 | Quebec RL-1 slip filing |
| Revenue Agency Quebec RL-2 | Quebec RL-2 slip filing |

### Ceridian Print Service Integration

**Steps: Set Up Ceridian Print Service Integration** — paycheck printing through Ceridian.

### Check Printing Connector

**Steps: Set Up Check Printing Connector Integration** — configurable check printing connector for custom print service providers.

### Electronic Income Withholding Order Integration

| Direction | Purpose |
|-----------|---------|
| Inbound | Import electronic income withholding orders (child support, garnishments) |
| Outbound | Export income withholding order data to state agencies |

### HM Revenue & Customs (HMRC) Integrations (UK)

| Integration | Purpose |
|-------------|---------|
| HMRC Incoming Notifications | Receive tax code and student loan notices from HMRC |
| HMRC RTI Employer Payment Summary | Submit employer payment summaries |
| HMRC RTI (Full Payment Submission) | Real Time Information payroll submission |

### Irish Payroll Integrations

| Integration | Purpose |
|-------------|---------|
| Irish Incoming Notifications | Revenue notifications (tax credits, USC bands) |
| Irish Payroll Submission | PAYE Modernisation submission to Revenue |
| Irish Revenue Check Payroll Submission | Pre-submission validation |

### Service Canada ROE Integration

**Steps: Set Up Service Canada ROE Integration** — Record of Employment (ROE) generation and electronic submission to Service Canada.

### Tax Filing Integration

**Maintain Tax Filing Categories** — define categories for tax filing integrations.

**Concept: Tax Filing Integration** — architecture and launch options for US federal and state tax filing.

**Reference: Tax Filing Reports** — available reports for tax filing status and reconciliation.

### Time Off Inbound and Payroll Input Connectors

| Task | Purpose |
|------|---------|
| Steps: Set Up Time Off Inbound and Payroll Input Connectors | Import time-off and payroll input data from external systems |
| Steps: Set Up Integration to Import Worker Time Card Data | Import time card data for payroll processing |
| Steps: Set Up Integration for Worker Payroll Data Import | Import earnings/deductions from external systems |

**Reference: Worker Payroll Input File Schema** — file format for payroll input import.

**Reference: Worker Time Off Inbound File Schema** — file format for time-off data import.

### UK Civil Service Pension Files Integration

**Steps: Set Up UK Civil Service Pension Files Integration** — generate pension contribution files for UK civil service schemes.

### Worksite Reporting Integration

**Steps: Set Up Worksite Reporting Integration** — employer worksite reporting for state unemployment insurance.

---

## Integration Business Processes

**Concept: Integration Business Processes** — integrations can be embedded as steps in Workday business processes, enabling event-driven execution.

**Create Integration Business Process** — define an integration as a business process step.

**Set Up Integration Delivery** — configure how integration output is delivered (SFTP, email, HTTP endpoint).

**Set Up Integration Retrieval** — configure how integration input is retrieved from external sources.

**Test Transport Configuration for an Integration** — validate transport (SFTP/HTTP) connectivity before production.

---

## Integration Services

### Template-Based Integration Management

| Task | Purpose |
|------|---------|
| Steps: Set Up Template-Based Integration | Full setup for a connector-based integration |
| Create Integration System | Create the integration system definition |
| Set Up Integration Subscriptions | Subscribe an integration to Workday events (change detection) |
| Set Up Integration Sequence Generators | Generate sequential numbers for integration output |
| Set Up Integration Field Overrides for a Connector | Customize connector output fields using calculated fields |
| Set Up Integration Field Overrides for DIS | Override fields in DIS integrations |
| Select Workers to Include in Connector Output | Configure worker selection criteria |
| Select and Set Up Connector Output Fields | Choose and configure output fields |
| Add Custom Fields to Connector Output | Include custom object fields in connector output |

### General Integration Management

| Task | Purpose |
|------|---------|
| Mass Update Integration Tags | Apply tags to multiple integration systems |
| Set Up Integration Attachment Service | Enable file attachment delivery with integration output |
| Set Up Integration Custom Objects | Include custom object data in integration output |
| Attach Supporting Documentation to Integrations | Link documentation to integration configurations |
| Change Transport Protocols | Modify integration delivery transport |

**Concept: Disable Integration Subscriptions** — pause change detection without deleting the integration.

**Concept: Enumerations** — how enumerated values are mapped between Workday and external system codes.

**Reference: Preferred SFTP, FTP, and FTPS Endpoint Vendor Software** — recommended server software for Workday SFTP compatibility.

### Integration APIs

| Topic | Description |
|-------|-------------|
| Set Up Web Service Operations for Studio Integrations | Enable WWS operations for Studio use |
| Concept: My Reports API | Run Workday reports programmatically via API |
| Concept: Integration Launch API | Trigger integrations via REST API call |
| Concept: Listener Service API | Real-time event subscription API |
| Concept: Message Queue API | Asynchronous message queue for event-driven integrations |
| Launch Integrations Using OAuth 2.0 Bearer Tokens | OAuth-secured integration launch |

---

## Orchestration for Integrations

**Access Orchestrate for Integrations** — available at developer.workday.com.

**Concept: Orchestrate for Integrations** — web-based, low-code drag-and-drop development environment. Enables complex multi-step integration workflows (orchestrations) without code. Supports conditional logic, loops, parallel execution, and external API calls.

**Concept: Integration Events and Integration Process Events** — how orchestration events map to Workday integration event records.

---

## Workday Extend

**What It Is:** Platform for building custom apps and extending Workday with custom UI components, custom objects, and orchestration processes. Apps are deployed to Workday tenants.

**Setup Considerations: Workday Extend** — architectural decisions, app component types, authentication model, and tenant management.

### Core Concepts

| Concept | Description |
|---------|-------------|
| Concept: Workday Extend | Platform overview and capabilities |
| Concept: Extend App Components | UI components, model components, orchestration |
| Concept: App Authentication | OAuth-based authentication for Extend apps |
| Concept: Custom Objects | Extend Workday data model with custom objects |
| Concept: Custom Tasks | Custom task UI components within Workday |
| Concept: Orchestration Processes | Workflow processes within Extend apps |

### Setup Tasks

| Task | Purpose |
|------|---------|
| Install Extend Apps on Tenants | Deploy Extend apps to Production or Sandbox |
| Create Custom Tasks | Build custom task UI components |
| Enable Non-Development Tenants for Workday Extend | Enable Extend on non-WCP tenants |
| Enable Proxy Access on WCP Development Tenants | Configure proxy access for development |

### Reference

| Reference | Description |
|-----------|-------------|
| Reference: Use Model Tasks to Access Extend Apps in Workday | How to surface Extend apps via worklets |
| Reference: Workday Developer Site Glossary | Extend-specific terminology |
| Reference: Limits on Model Components | Technical limits for model objects |
| Reference: Orchestration Runtime Limits | Execution limits for orchestration processes |
| Reference: Limits on Graph API | Graph API usage limits |

---

## Workday REST API

### REST API Fundamentals

**Concept: Workday REST APIs** — REST APIs provide access to a targeted set of Workday operations. Use OAuth 2.0 for authentication. Smaller payload scope than WWS/SOAP.

**Concept: REST API Date, Time, and Time Zone Handling** — ISO 8601 format; time zones must be explicitly specified.

**Concept: REST API Pagination** — cursor-based pagination; `limit` and `offset` parameters.

**Concept: REST API File Attachments** — multipart/form-data for file upload; binary response for file download.

**Reference: REST API Error Messages** — error code catalog and resolution guidance.

### REST API Security and Authentication

| Topic | Description |
|-------|-------------|
| Concept: Workday REST API Security | OAuth 2.0 bearer token model |
| Concept: OAuth Authentication for Tenant-Based REST APIs | Tenant-specific OAuth flow |
| Concept: Cross Origin Resource Sharing (CORS) | CORS configuration for browser-based clients |
| Steps: Configuring OAuth 2.0 for Your REST API Client | Client registration and token flow |
| Steps: Authenticate REST API with SAML | SAML-based REST API authentication |

### Batch Protocol

Configure batch operations for bulk REST API requests.

### REST API Headers

Standard and custom HTTP headers for Workday REST API requests.

### Prism Analytics REST APIs

| Task | Purpose |
|------|---------|
| Steps: Load Data into a Table Using Data Change with REST API | Incremental data load |
| Steps: Load Data into a Table Using the REST API | Full table load |
| Steps: Load Data into a Dataset Using the REST API | Dataset-level data load |

**Concept: Prism Analytics REST API** — architecture for loading external data into Prism datasets.

**Concept: wBuckets, Buckets, and File Containers** — Prism file staging objects for REST API uploads.

### Available REST API Resources

| Resource | Operations |
|----------|-----------|
| Budget Check | Validate budget before transactions |
| Currencies | List and manage currencies |
| Custom Object Definitions | CRUD on custom object definitions |
| Custom Objects (Single-Instance / Multi-Instance) | Manage custom object instances |
| Datasets | Prism dataset management |
| Inbox Tasks | View and action worker inbox tasks |
| Job Change Reasons | List job change reasons |
| Organizations | Organization data |
| Supervisory Organizations | Supervisory org hierarchy and workers |
| System Health Dashboard | Monitor system health |
| Validate Worktags | Validate worktag combinations |
| Workers | Worker data including history, pay slips, org assignments, time off |
| Workers/Job Changes | Initiate and retrieve job changes |

### REST API Guides

| Guide | Description |
|-------|-------------|
| Concept: Change Jobs REST APIs | REST API model for job change transactions |
| Concept: Validate Worktags REST API | Worktag validation API model |
| Custom Objects REST APIs | CRUD operations for custom objects |
| User Activity Logging REST API | Access user activity audit data |
| Global Payroll REST APIs | Payroll data exchange via REST |
| Learning REST APIs | Learning enrollment and completion data |

---

## Workday Web Services (WWS / SOAP API)

### Fundamentals

**Concept: Workday Web Services** — SOAP-based API providing programmatic access to most Workday operations. Uses WSDL-defined schemas. Versioned API with backward compatibility within a version.

**Concept: WWS Best Practices** — batch size limits, error handling patterns, version pinning, ISU authentication.

**Concept: Workday Web Services Versioning** — how API versions work; how to use the API Change Log.

**Concept: Workday SOAP API Headers** — required and optional HTTP/SOAP headers for Workday API requests.

**Steps: Authenticate RaaS with OAuth 2.0** — configure OAuth authentication for Report as a Service (RaaS) API calls.

**View Web Service Version Changes Using the API Change Log** — track changes between API versions.

### Custom Objects in WWS

**Concept: Custom Objects in Workday Web Services** — how custom object data is exposed in the WWS API.

**Retrieve Custom Object WSDL** — download the WSDL for custom objects.

**Retrieve Custom Object WSDL Remotely** — programmatic WSDL retrieval.

### Integration IDs

**Concept: Integration IDs** — unique identifiers used to look up Workday objects in API calls and integrations. Each object has one or more integration IDs of different types.

**Concept: Integration IDs Best Practices** — use External ID types for external system references; avoid using Workday-generated IDs as primary keys in external systems.

**Concept: Reference ID Maintenance** — lifecycle management for integration IDs.

**Set Up Reference IDs** — configure Reference ID types and assignment rules.

**FAQ: Integration IDs** — common questions on ID formats, uniqueness, and cross-tenant behavior.
