# Integrations – Connectors: Benefits, Financials & HCM

> Source: Admin Guide – Integrations (May 14, 2026), pp. 544–1318

---

## Benefits Connectors

### Cloud Connect for Benefits

**Setup Considerations:** Cloud Connect for Benefits provides pre-built integration templates for benefit provider data exchange. Supports EDI 834 and custom formats.

**Concept: Cloud Connect for Benefits** — framework for connecting Workday Benefits to external carriers and administrators.

**Concept: Planning a Benefit Provider Integration** — define data sections, change detection strategy, and launch frequency before building.

**Concept: Cloud Connect for Benefits Integration Templates** — template categories and field coverage.

**Concept: Cloud Connect for Benefits Field Overrides** — customize template output using calculated fields.

### Steps: Set Up Benefit Provider Integration

1. Create Benefit Provider Integration (using Cloud Connect template)
2. Set Up Attributes and Maps in Benefits Integration (field-to-field mapping)
3. Set Up Field Overrides in Benefits Integration (calculated field customizations)
4. Set Up Test Environment for Benefits Integration
5. (Optional) Include Payroll Balances in Benefits Integration
6. Steps: Schedule, Launch, and Troubleshoot Benefit Provider Integration

**Concept: Benefits Integration Launch Parameters** — parameters controlling which workers, plans, and change types are included in each run.

**Concept: Benefit Integration Error Reporting** — types of errors, severity levels, and resolution approaches.

**Reference: Integration Status Reports** — reports for monitoring benefits integration run status.

### Open Enrollment Integration

**Concept: Open Enrollment Integration Checklist** — checklist of tasks before, during, and after open enrollment for benefit provider integrations.

**Link Benefit Plans to Integration Systems** — associate benefit plans with the integration system that exports their data.

### COBRA Integration

**Set Up Event-Based Change Files** — configure COBRA-triggering events (termination, loss of coverage) to generate change files.

**Concept: COBRA Integration** — how Workday generates COBRA qualifying event notifications for third-party COBRA administrators.

### Ended Coverage Reporting

**Steps: Report Ended Coverage Once** — generate a one-time report of all coverage terminations for a period.

**Concept: Ended Coverage Options** — configuration options for tracking and reporting benefit coverage end dates.

### Workday Benefits Connector (V2)

**Concept: Workday Benefits Connector** — standardized connector for bidirectional benefit data exchange using Workday's canonical data model.

| Task | Purpose |
|------|---------|
| Steps: Set Up the Workday Benefits Connector V2 Integration | Full V2 setup workflow |
| Set Up Benefits Connector V2 Integration Services | Configure service-level settings |
| Set Up Benefits Connector V2 Attributes and Maps | Define field mappings |

**Concept: Benefits Connector Workflow** — processing steps and change detection behavior.

**Concept: Benefits Connector V2 Change Detection** — how V2 identifies changed records for delta processing.

**Concept: Benefits Connector V2 Data Validation and Error Handling** — validation rules and error remediation.

**Reference: Benefits Connector Data Sections** — complete list of data sections available in the connector.

**Reference: Benefits Connector V2 Audit Files** — audit file format and content for reconciliation.

---

## Data Initialization Service (DIS) Integration

**Concept: Data Initialization Service (DIS)** — DIS enables loading of historical or reference data into Workday objects that don't have standard inbound web service operations. Used for initial data migration.

**Steps: Set Up DIS Integration** — configure DIS integration for a specific object type.

**Set Up Integration Data Initialization Service** — define data sections and mappings for the DIS.

**Set Up Sub-Document for DIS** — configure hierarchical document structures for complex object types.

---

## Document Transformation Connector

**Concept: Document Transformation Connector** — post-processes integration output files using XML attributes to transform Workday XML into custom formats (fixed-length, CSV, custom delimited).

**Steps: Set Up Document Transformation Connector** — configure the connector as a secondary transformation step.

### Attribute Reference Categories

| Category | Purpose |
|----------|---------|
| Arithmetic Attributes | Mathematical operations on field values |
| Comma-Separated Value (CSV) Attributes | CSV output formatting |
| Date/Time Attributes | Date parsing and formatting |
| Fixed-Length Formatting Attributes | Fixed-width column output |
| Grouped Attributes | Aggregate and group data sections |
| Integration Value Attributes | Map integration values to output values |
| Number Formatting Attributes | Numeric precision and formatting |
| Text Insertion and Removal Attributes | String manipulation |
| Truncation Attributes | Limit field lengths |
| Validation Attributes | Conditional output logic |

**Concept: Document Transformation and Validation** — how transformation rules are applied and validated before output.

---

## Financials Connectors

### Accounting Journal Connector

**Steps: Set Up Accounting Journal Connector** — import journal entries from external accounting systems into Workday Financial Management.

**Concept: Accounting Journal Connector** — supported journal types, validation rules, and error handling.

**Reference: Accounting Journal Connector CSV File Format** — required CSV structure and field definitions.

**Reference: Accounting Journal Connector XML Schema** — XML schema for journal entry import.

### Ad Hoc Bank Transaction Connector

**Steps: Set Up Ad Hoc Bank Transaction Connector** — import ad hoc bank transactions (miscellaneous cash receipts/payments).

### Bank Fee Analysis Connectors

**Steps: Set Up Bank Fee Statement Connectors** — import bank fee statements for analysis and allocation.

### Bank Statement Import Integrations

**Steps: Set Up Bank Statement Load Integration** — configure import of bank statements (BAI2, SWIFT MT940, camt.053) for bank reconciliation.

**Concept: Bank Statement Load Integrations** — supported formats and reconciliation behavior.

### Contract Management Integration

**Set Up Contract Management Document Transfer for Financial Business Documents** — configure document transfer for contract management integration with external systems.

### Credit Card Integrations

**Steps: Set Up Integration for Credit Cards and Transactions** — import credit card transaction data for expense management.

**Supported formats:**
- MasterCard CDF3 15.01
- Visa Commercial Format 4.4 (VCF 4)

**Reference: Credit Card Formats Supported for Expense Integrations** — complete format compatibility list.

### Currency Exchange Rate Connector

**Steps: Set Up Integration to Import Currency Exchange Rates into Workday** — configure daily/periodic rate imports.

**Reference: Currency Exchange Rate Connector File Schema** — required file format.

### Customer Lockbox Integration

**Steps: Set Up Customer Payment Lockbox Integration** — import lockbox payment files for accounts receivable matching.

### DAS2 Integration (France)

**Steps: Set Up DAS2 Integration** — French regulatory reporting for fees paid to external persons and entities.

### EBICS Integrations

**Steps: Set Up EBICS** — Electronic Banking Internet Communication Standard for bank connectivity (common in Germany/Europe).

### EDI Supplier Integrations

| Direction | Standard | Purpose |
|-----------|---------|---------|
| Inbound | EDI 810 | Supplier invoice import |
| Outbound | EDI 850 | Purchase order export |
| Inbound | EDI 855 | Purchase order acknowledgment import |
| Inbound | EDI 856 | Advance ship notice import |

**Steps: Configure the Procure-to-Pay Integrations Work Area** — centralized configuration for EDI and procurement integrations.

**Concept: EDI Connector Pre and Postprocessor Common Use Cases** — preprocessing and postprocessing patterns.

### Electronic Invoice Connector

**Steps: Set Up Electronic Invoice Connector** — electronic invoicing for customer billing.

**Supported formats:** UBL 2.1, cXML

### Electronic Payment Integrations

| Task | Purpose |
|------|---------|
| Steps: Set Up Bank Integrations for Settlement Processing | Configure bank connectivity for payment settlements |
| Steps: Set Up Electronic Filing 1099 Integration | US 1099 electronic filing |
| Steps: Set Up 1099 Electronic Filing Run Event Business Process | Business process for 1099 filing |

### ELSTER Integrations (Germany)

**Steps: Generate ELSTER Tax Declaration XML** — German periodic VAT return (Umsatzsteuervoranmeldung) electronic filing.

### FEC Integration (France)

**Steps: Set Up FEC Integration** — French Fichier des Écritures Comptables (FEC) accounting journal export for tax audit.

### Financial Journal Lines Outbound Connector

**Steps: Set Up Financial Journal Lines Outbound Connector** — export detailed journal line data to external accounting/reporting systems.

### Financial Management Connector for Salesforce

**Steps: Set Up Financial Management Connector for Salesforce** — bidirectional data exchange between Workday Financial Management and Salesforce CRM.

### GoBD Integration (Germany)

**Steps: Set Up GoBD Integration** — German GoBD-compliant data export for tax authority audits.

### Payment Connector

**Steps: Set Up Payment Connector Integration** — configurable outbound connector for payment file generation (ACH, wire, check).

**Reference: Payment Connector Integration Data Sections** — available data sections and mapping options.

### Payments Inbound Integrations

| Task | Purpose |
|------|---------|
| Steps: Set Up Integration to Import Payment Status Reports | Import payment status updates from banks |
| Steps: Set Up Credit Card Payment Integrations | Credit card payment processing integration |

### Payroll Journal Line Export Connector

**Steps: Set Up Payroll Journal Outbound Connector** — export payroll journal lines to general ledger systems.

### PSA Inbound Connector

**Steps: Set Up PSA Inbound Connector Integration** — import data from Professional Services Automation (PSA) systems into Workday Financials.

### Punchout Integrations

Configure catalog punchout (OCI/cXML) for procurement from supplier catalog systems.

### Third-Party Payments Integration

**Steps: Set Up Third-Party Payments Integration** — route payments through a third-party payment provider.

### Travel Booking Inbound Connector

**Steps: Set Up Travel Booking Inbound Connector** — import travel booking data from corporate travel management systems for expense reconciliation.

### Workday Bank Connectivity

**Concept: Workday Bank Connectivity Integration** — Workday-managed bank connectivity hub for payments initiation, status reporting, bank statements, and positive pay.

| Task | Purpose |
|------|---------|
| Steps: Manage Workday Bank Connectivity | Configure bank connections |
| Steps: Set Up Bank Connectivity - Payments Initiation Integration | Outbound payment files |
| Steps: Set Up Bank Connectivity - Import Payment Status Integration | Inbound payment status |
| Steps: Set Up Bank Connectivity - Import Bank Statements Integration | Inbound bank statements |
| Steps: Set Up Bank Connectivity - Positive Pay Integration | Positive pay file export |

---

## HCM Connectors

### Absence Third-Party Calendar Integration

**Steps: Set Up Absence Third-Party Calendar Integration** — sync approved time off from Workday to Google Calendar or Microsoft Outlook corporate calendars.

**Supported calendars:** Google Calendar, Microsoft Outlook

**Reference: Absence Third-Party Calendar Integration Output Files** — file format for calendar events.

### Account Provisioning

| Connector | Purpose |
|-----------|---------|
| Account Provisioning Integration | Export worker hire/termination/change events to Active Directory or other directory services |
| Account Provisioning Connector | Enhanced connector version with additional configuration options |

**Concept: Account Provisioning Integration** — event-based export of provisioning events to external identity management systems.

### Affordable Care Act (ACA) Connectors

| Task | Purpose |
|------|---------|
| Steps: Set Up ACA Information Returns Connector | Configure 1094-C/1095-C electronic filing |
| Steps: Set Up ACA Mailing Connector | Configure 1095-C mailing service integration |

**Concept: ACA Connectors** — ACA reporting connector architecture and data flow.

### Assign Organizations Inbound Connector

**Steps: Set Up Assign Organizations Inbound Connector** — bulk-assign workers to organizations (cost centers, companies, regions) via inbound file.

### Core Connector: Background Check Order

**Steps: Set Up Core Connector: Background Check Order Integrations** — configure outbound background check order and inbound results for third-party providers.

**Add Integration Steps to Background Check Business Process** — trigger background check connector from recruiting stages.

**Reference: File Schema for Core Connector: Background Check Order Outbound** — outbound file structure.

**Reference: File Schema for Core Connector: Background Check Inbound** — inbound results file structure.

### Core Connector: Candidate Outbound

**Steps: Set Up Core Connector: Candidate Outbound Integration** — export candidate data to external recruiting or assessment platforms.

### Core Connector: Competency Model

**Steps: Set Up Core Connector: Competency Model Integration** — export competency framework data to external learning or talent systems.

### Core Connector: Global Worker

**Steps: Set Up Core Connector: Global Worker** — comprehensive worker data export for global HR systems and analytics platforms.

**Concept: Core Connector: Global Worker** — data sections, change detection, and integration architecture.

### Core Connector: Job Postings

**Steps: Set Up Core Connector: Job Postings** — export job postings to external job boards and career platforms.

**Reference: Core Connector: Job Postings XML Schema** — XML output schema.

### Core Connector: Job Profile and Job Family

**Steps: Set Up Core Connector: Job Profile and Job Family Integration** — export job catalog (profiles, families, groups) to external systems.

### Core Connector: Job Requisitions

**Steps: Set Up Core Connector: Job Requisitions Integration** — export job requisition data to external ATS or analytics platforms.

### Core Connector: LMS Outbound (Worker for LMS)

**Steps: Set Up Core Connector: Worker for LMS Outbound Integration** — export worker data and enrollment information to external Learning Management Systems (LMS).

**Reference: Core Connector: Worker for LMS Outbound Integration Data Sections** — available data sections.

### Core Connector: Location

**Steps: Set Up Core Connector: Location Integration** — export location data to external systems (HRIS, directory services).

### Core Connector: Organization

**Steps: Set Up Core Connector: Organization Integration** — export organizational hierarchy data to external systems.

### Core Connector: Positions

**Steps: Set Up Core Connector: Positions Integration** — export position data (position management only) to external systems.

### Core Connector: Worker

**What It Is:** The most comprehensive outbound worker data connector. Supports change detection for incremental exports.

**Setup Considerations: Core Connector: Worker** — configuration decisions for data sections, worker selection criteria, launch parameters, and change detection.

| Task | Purpose |
|------|---------|
| Steps: Set Up Core Connector: Worker Integration | Full setup workflow |
| Configure Core Connector: Worker Integration Attributes | Set attributes controlling data sections |
| Select Workers to Include in a Core Connector: Worker Integration | Worker selection criteria |
| Map Core Connector: Worker Integration Data | Field-level mapping configuration |
| View Core Connector: Worker Integration Audits | Review integration audit files |

**Concept: Core Connector: Worker Integration Data Mapping** — how Workday maps worker data to the connector's data model.

**Concept: Core Connector: Worker Integration Launch Parameters** — parameters controlling incremental vs. full extract, effective date, and scope.

**Reference: Core Connector: Worker Integration Data Sections** — complete list of available data sections.

### Directory Service

**Steps: Set Up Directory Service Integration** — export worker data to Microsoft Active Directory or LDAP directories.

**Concept: Directory Service Integration Data Mapping** — field mapping from Workday worker attributes to directory attributes.

### E-Verify Integration

**Setup Considerations: E-Verify Integration** — I-9 and E-Verify configuration decisions.

**Steps: Set Up E-Verify Integration** — configure E-Verify API connection and business process trigger.

**Concept: E-Verify Integration** — how Workday submits I-9 data to E-Verify and processes responses.

### Image Upload (Worker Photos)

**Steps: Set Up Integration to Load Worker Photos in Bulk** — EIB or integration to bulk-load worker profile photos.

### Inline Assessments

**Steps: Set Up Inline Assessments Integration** — configure third-party assessment integration embedded in the recruiting workflow.

**Reference: Inline Assessments Integration XML Schema** — data exchange schema.

### Kenexa Connectors

| Task | Purpose |
|------|---------|
| Steps: Set Up Kenexa Foundation Data Integration | Sync foundation data (orgs, jobs) to Kenexa |
| Steps: Set Up Kenexa User Provisioning Connector | Provision users in Kenexa |
| Steps: Set Up Kenexa Hire Inbound Integration | Import hire data from Kenexa ATS |

### Kronos Workforce Timekeeper Outbound

**Steps: Set Up Integration for Kronos Employee Extract** — export worker data to Kronos (UKG) time management system.

### LinkedIn Recruiter System Connect

**Steps: Set Up LinkedIn Recruiter System Connect** — bidirectional integration between Workday Recruiting and LinkedIn Recruiter.

| Task | Purpose |
|------|---------|
| Steps: Set Up LinkedIn One-Click Export | Export Workday candidates to LinkedIn |
| Steps: Set Up Inbound LinkedIn Recruiter System Connect | Import candidate data from LinkedIn |
| Steps: Set Up Outbound LinkedIn Recruiter System Connect | Export job requisitions to LinkedIn |
| Set Up Scheduled LinkedIn Recruiter System Connect Integrations | Schedule recurring syncs |

### Medicare Integrations

**Steps: Set Up Medicare Integrations** — configure Medicare Secondary Payer (MSP) data submission.

### Okta Integration

**Steps: Set Up Okta Integration** — provision and deprovision Workday workers in Okta. Supports SCIM-based provisioning.

**Reference: Okta Integration Output Fields** — fields included in Okta provisioning payload.

### Organization Inbound Connector

**Steps: Set Up Organization Inbound Connector** — import organization structure changes from external systems.

### Salesforce.com Connectors

| Connector | Purpose |
|-----------|---------|
| Salesforce.com Chatter Integration | Post Workday events to Salesforce Chatter |
| Salesforce.com Worker Sync Integration | Sync worker data from Workday to Salesforce |

### Skillsoft Integration

**Steps: Set Up Skillsoft Integration** — connect Workday Learning to Skillsoft content library.

### Social Security Number Verification Service

**Steps: Set Up SSN Verification Service Integration** — integrate with SSA for SSN verification (SSNVS).

### Talent Profile Inbound Connector

**Steps: Set Up Talent Profile Inbound Connector** — import talent data (skills, education, experience) from external systems.

### Unistaff Connectors

| Task | Purpose |
|------|---------|
| Steps: Set Up Unistaff Foundation Connector | Sync foundation data to Unistaff |
| Steps: Set Up Unistaff Hire Inbound Connector | Import hire data from Unistaff |

### Workday Connector for Equifax Verification

**Concept: Workday Connector for Equifax Verification** — Workday-integrated employment and income verification via Equifax Work Number.

**Steps: Enable Workday Connector for Equifax Verification** — activate the connector for the tenant.

### Worker Time Block Inbound Connector

**Steps: Set Up Worker Time Block Inbound Connector** — import time block data from external time systems (e.g., physical time clocks, external scheduling systems).

**Reference: Worker Time Block Inbound Connector File Schema** — required file format.
