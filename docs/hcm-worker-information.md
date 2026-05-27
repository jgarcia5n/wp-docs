# HCM – Worker Information

> Source: Admin Guide – Human Capital Management (May 14, 2026), pp. 28–175

---

## Overview

Worker Information covers configuration and management of personal data, documents, worker experience records, and country-specific reporting requirements.

---

## Contact and Personal Information

### Active Consent Preferences for Personal Information

**What It Is:** Enables collection of worker consent preferences for how personal information is processed.

**Business Benefits:**
- GDPR and global regulatory compliance
- Explicit consent by country for personal data use
- Worker self-service consent management
- Supports data purge for workers who don't consent

**Key Configuration:**
- Configure via Change Personal Information business process
- Workers can manage consent via Manage Active Consent Preferences task

**Security Domains (Active Consent functional area):**
| Domain | Purpose |
|--------|---------|
| Active Consent | View worker consent preferences and report fields |
| Self-Service: Active Consent | Workers manage consent via Change My Personal Information or Onboarding tasks |
| Set Up: Active Consent | Configure processing purposes and consent preferences by country |

**Key Considerations:**
- Active consents are country-specific; a single active consent applies to all selected personal information fields
- Creating a new configuration replaces the previous one; workers must re-consent
- For data purge: ALL consent preferences for a purpose must be "Do Not Consent" in all countries
- Acknowledgement ≠ Consent: acknowledgement is a checkbox and is not considered in a purge
- Test data purging in Sandbox before Production; purge cannot be reversed

**Limitations:** Workday doesn't transfer consent preferences when a candidate becomes a worker.

---

### Personal Information by Country

**What It Is:** Concurrent maintenance, viewing, and reporting of multiple country-specific personal information sets for a worker.

**Applicable Scenarios:**
- International transfer (active position moves to another country)
- International assignment (2 active positions: home + host country)
- Additional jobs in multiple countries
- Pre-hire tracked in a country outside their position

**Security Model:**
- Role-based users: access personal info associated with the country of positions they can access
- Unconstrained users: access personal info for any country (use country-segment security groups to restrict)
- Self-service users: see only personal info for current and future position countries (configurable policy to expand)

---

### Configurable Fields for Personal Information

Admin task: **Maintain Configurable Fields** — add organization-specific fields to worker personal information screens.

---

### Public Profile Preferences

Controls which worker data appears on public-facing Workday profiles. Configure via **Manage Public Profile Preferences** task.

---

### Names

- **Maintain Name Components by Country** — define country-specific name component requirements
- Supports multiple name formats (legal, preferred, local) per country

---

### IDs

Manage worker ID types and assignment. Configure via **Maintain ID Types** task. Supports government-issued and organization-defined IDs.

---

### Contact Information

Addresses, phone numbers, and email addresses. Role-based and segmented security controls visibility.

---

### Vaccination and Workplace Test Tracking

Track worker vaccination status and workplace test results. Configure fields and business processes for data collection and reporting.

---

## Worker Photos

**Load Worker Photos Individually** — admins or workers upload photos via profile.

**Steps: Set Up Integration to Load Worker Photos in Bulk** — use an EIB or integration to bulk-load photos.

**Security for Worker Photos:** Controlled by security policy on Worker Photo domain.

---

## Worker Documents

**Maintain Worker Documents** — upload, manage, and categorize documents attached to worker records. Configure document categories and security.

---

## Personal Notes

**Set Up Personal Notes** — configure the Personal Notes feature so HR and managers can add private notes to worker records.

---

## Reference Letters

**Steps: Manage Reference Letters** — create and track reference letters for workers.

**Steps: Set Up Segmented Security for Reference Letters** — restrict reference letter access by segment.

---

## Find and Compare Workers

**Compare Workers** — side-by-side comparison of worker attributes.

**Concept: Finding Workers** — search workers using global search, reports, and worklets.

**Concept: Worker Tags** — assign descriptive tags to workers for filtering and grouping.

**Concept: Employee Timeline** — visual timeline of worker's employment history and key events.

**Concept: Previous System History** — import and display historical employment data from legacy systems.

**Reference: Worker Attributes** — complete list of reportable worker attributes.

---

## Former Workers

**Steps: Manage Former Worker Data** — retain and manage data for terminated workers.

**Concept: Rehire Former Workers** — process and considerations for rehiring; previous data is retained.

**Troubleshooting: Can't Reuse Employee ID for a Rehired Contingent Worker** — known limitation and resolution steps.

---

## Worker Experience

### Skills and Experience

**Steps: Set Up Skills and Experience** — configure skill categories, proficiency levels, and experience types.

**Manage Skills and Experience** — workers and managers maintain skill records.

**Concept: Crowdsourced Skills and Experience Management** — peer-sourced skill endorsements and updates.

**Concept: Work Experience and Training Types** — define valid types for work history and training records.

---

### Competencies

Define competency models used in performance reviews, job profiles, and talent assessments. Configure via **Maintain Competencies** task.

---

### Certifications

Track professional certifications per worker. Configure certification types and expiration rules. Supports notification on expiration.

---

### Job History

Import and display historical job data (pre-Workday or prior organizations).

---

## Talent Statements

**Steps: Set Up Talent Statements** — enable workers to write and maintain talent statements (career interests, skills summary).

**Set Up Segmented Security by Talent Statement Type** — control visibility of statement types by security group.

**Concept: Talent Statements** — statements are used in talent reviews, succession, and profile visibility.

---

## Country-Specific Information and Reporting

### Locally Required Information

**Maintain Localization Settings** — enable country-specific fields and behaviors.

**Maintain Name Components by Country** — define required name components per country.

**Concept: Custom Label for Country** — override field labels by country.

**Concept: Locally Required Reporting** — Workday-delivered reports for country compliance.

**Reference: Locally Required Personal Information** — per-country list of required personal data fields.

---

### China Employment Requirements

**Maintain China Subregions** / **Maintain Location Subregions** — configure subregion data required for China employment reporting.

**Concept: China Employment Requirements** — required fields and process for China-based workers.

---

### France Reporting Requirements

| Task | Purpose |
|------|---------|
| Steps: Set Up for MMO Preparation (France) | Monthly workforce declaration |
| Steps: Set Up for RUP Reporting | Unique personnel register |
| Steps: Set Up for DPAE Preparation (France) | Pre-hire declaration |
| Steps: Set Up Establishments for DPAE Reporting | Establishment-level configuration |
| Steps: Set Up Companies for DPAE Reporting | Company-level configuration |
| Reference: Worker Data Requirements for DPAE | Required worker data fields for DPAE |

---

### United States Reporting Requirements

| Topic | Coverage |
|-------|---------|
| Concept: US Regulatory Reporting | Overview of EEO, VETS, ACA, and other US requirements |
| Veteran Status | Configure veteran status fields and collection |
| EEO | Configure EEO job categories, establishment assignments, and reporting |
| Self-Identification of Disability | Configure ADA self-identification workflow |
| Self-Identification of Ethnicity and Race (SF-181) | Federal form workflow for race/ethnicity |

---

### Establishments

**Steps: Set Up Establishments** — define reporting establishments for regulatory filings. Establishments group workers for EEO and other reports.

---

### Global Library

**Reference: Global Library** — Workday-managed library of country-specific data (e.g., national ID types, address formats, phone formats).

**Reference: Default Establishment Assignments** — how Workday assigns workers to establishments by default.
