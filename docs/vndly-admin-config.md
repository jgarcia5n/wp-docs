# Workday VNDLY – Admin Configuration, Security & Tenant Setup

> Source: Admin Guide – Workday VNDLY (May 14, 2026), pp. 11–93

---

## Overview

**Workday VNDLY** is a Vendor Management System (VMS) covering three product areas:
- **Extended Workforce Management** — source, onboard, manage, invoice, and offboard contingent labor
- **Statement of Work (SOW)** — track projects, manage change orders, build process controls
- **Worker Profile Management (WPM)** — capture headcount and worker data for programs tracking time/expenses outside VNDLY

Navigation entry point: **More > Company Settings** for all administrative configuration.

---

## Sign In and Authentication

### Password Management

**Profile Preferences: Change Your Password** — access via My Profile > Change Password. Passwords don't expire. Minimum 8 characters.

**Change Your Profile Preferences** — update preferred name, contact number, and default location from My Profile > Edit Profile.

**Set Up Sign-Up Token Expiration Period** — configure how many hours invitation sign-in links remain valid.
- Path: More > Company Settings > Organization > Security Settings > Configuration tab > Sign Up Token Expiration (Hours)

**Reference: Password Standards** — minimum length, complexity requirements, and reset policy.

---

### Multi-Factor Authentication (MFA)

**Set Up MFA in Workday VNDLY (Admin):**
1. More > Company Settings > Security > Security Settings > Configuration tab
2. Enable MFA checkbox
3. Select applicable user types

**Set Up MFA as a User:**
1. Scan QR code with authenticator app on first login
2. Enter generated token → Continue to Home Page
- Authentication type on user profile must be set to **VNDLY Login**

**Reset MFA:**
- Self-reset: My Profile > Actions > Reset MFA Token
- For contractors: My Profile > Reset MFA Token
- Admin reset for another user: edit user profile > click Reset Multi-Factor Authentication link
  - Requires `user.multi_factor_authentication.reset` permission
  - Only client users can reset others' MFA; vendors/contractors cannot

**FAQ: Multi-Factor Authentication** — troubleshooting common MFA issues.

**Reference: Recommended Authenticator Apps** — supported TOTP apps.

---

### SAML Single Sign-On

**Concept: SAML Single Sign-On** — VNDLY supports SAML 2.0 for SSO. Identity provider (IdP) initiates login; VNDLY is the service provider (SP).

**Steps: Set Up SAML Single Sign-On:**
1. Collect VNDLY Metadata Files (download SP metadata from VNDLY settings)
2. Configure IdP with VNDLY SP metadata
3. Complete SAML SSO Setup in VNDLY (upload IdP metadata)
4. Set Up Default Authentication Method for New Users
5. Update Authentication Method per user type as needed

**Authentication Method Update Tasks:**
| Task | Scope |
|------|-------|
| Update Authentication Method for a Single User | Individual user |
| Update Authentication Method for Multiple Client Users | Bulk client user update |
| Update Authentication Method for Multiple Contractors | Bulk contractor update |

**Concept: VNDLY Authentication Methods** — VNDLY Login (username/password + MFA) vs. SAML SSO vs. combined configurations.

**Concept: Email Invitations to Sign In** — new users receive time-limited invitation links; expiry configurable via token settings.

**Troubleshooting: Unable to Sign in to Workday VNDLY** — common causes: expired tokens, incorrect authentication method, IdP misconfiguration.

---

## Navigation

**Save Filter Settings** — persist filter configurations on list pages for reuse.

**Concept: Workday VNDLY Home Page** — home page displays actionable widgets: pending tasks, recent activity, open jobs, timesheet summaries.

### Concept: Company Settings

The **Company Settings** page (More > Company Settings) is the central admin configuration hub. Key sections:

| Section | Settings Pages |
|---------|----------------|
| **Foundational Data** | Custom Data Sources, Custom Fields, Lists, Miscellaneous, Reports, Sequences |
| **Organization** | Locations, Management Levels, Organization Hierarchy, Regions, Workflow Approvals |
| **Security** | Data Privacy, Delegation Settings, SAML SSO, Security Settings |
| **Localization** | Locale Configuration, Term Overrides |
| **Timekeeping** | Timekeeping Settings, Work Types, Overtime |
| **Vendors** | Vendor configuration, authorized services |
| **Jobs** | Job application settings, rate cards, compensation |
| **Invoicing** | Invoice templates, billing cycles, payment terms |
| **Checklists** | Checklist definitions and settings |
| **Candidates** | Candidate submission rules, profile settings |
| **Work Orders** | Work order defaults and rules |
| **Statement of Work** | SOW settings and templates |
| **Expenses** | Expense categories, report types, mileage |
| **Calculation Engine** | Formula components, formulas, rules |

---

## Foundational Configurations

| Task | Purpose |
|------|---------|
| Add an Organization Level to Organization Hierarchy | Define org structure levels (e.g., Business Unit, Department, Cost Center) |
| Change Company Profile Preferences | Set company name, logo, default settings |
| Add Currency to VNDLY in Settings | Enable currencies for use in transactions |
| Enable Multiple Currencies in Settings | Allow multi-currency work orders and invoices |
| Add Locations in Settings | Create work site locations with address, code, name, region |
| Add Locations in Bulk in Settings | Bulk upload locations via CSV |
| Create Term Overrides | Replace VNDLY default terminology with company-specific labels |
| Set Up Help Text | Add contextual help text to forms and fields |
| Configure Emails and Tags | Configure email domains and tags for system emails |
| Configure Management Levels | Define management levels and associated spend authority |

**Concept: Sequences** — system-generated ID sequences for work orders, invoices, and other records. Configure prefix, format, and starting number.

**Reference: Miscellaneous Tenant Settings** — settings that don't fit into other categories, covering various system behaviors.

---

## Documents

**Configure Document Types** — define categories of documents collected during onboarding, work order lifecycle, or SOW processes (e.g., NDA, background check consent, I-9).

**Upload and Send Documents** — manually upload and deliver documents to contractors or vendors.

---

## Custom Fields and Custom Data Sources

### Custom Fields

**Create Custom Fields in Settings** — add organization-specific fields to VNDLY forms.

**Field placement options:** Jobs, Work Orders, Candidates, Contractors, Statement of Work, Invoices, Timesheets, Expenses.

**Field types:** Text, Number, Date, Dropdown (from Custom Data Source), Checkbox, Multi-select.

**Note:** Fields can be sent to Workday HCM via the Workforce Connector if configured.

### Custom Data Sources

**Create Custom Data Source Tables** — define lookup tables of predefined values used as dropdown options in custom fields.

**Update Display Rules for Custom Data Source Table** — configure conditional display rules that show/hide table values based on other field values.

---

## Tasks

**Change Available Tasks** — configure which tasks appear in the Tasks module for each user type.

**Concept: Tasks in Workday VNDLY** — tasks are action items assigned to users during the contingent worker lifecycle (onboarding, offboarding, renewals). Can be associated with checklists.

**Concept: Bulk Actioning Tasks** — process multiple tasks simultaneously across workers.

**Reference: Tasks Available with Tasks V2** — complete list of configurable task types and their triggers.

---

## Notifications

**Create Notification Groups in Settings** — define groups of users who receive specific notification types.

**Set Up Email Notifications** — configure event-triggered email notifications (offer accepted, timesheet submitted, work order ending, etc.).

**Set Up Reminder Notifications** — configure time-based reminders (e.g., work order expiring in 30 days, checklist item due).

**Edit Notifications** — modify existing notification content and recipients.

**Concept: Notification Recipients in Settings** — how recipients are determined: role-based, org-based, user group, or individual.

---

## Users and Security Settings

### User Management

**Create New Users** — provision client users (hiring managers, program admins, finance teams) in VNDLY.

**User types:** Administrator, Program Manager, Hiring Manager, Finance, Report User, Read-Only.

### Security Roles and Permissions

**Create Security Roles** — define custom roles with specific permission sets.

**Create Child Security Roles** — inherit permissions from a parent role with additional restrictions or additions.

**Add Permissions to a User Role in Settings** — assign granular permission codes to a role.

**Set Up Security Policies** — configure session management, login policies, password rules, and IP allowlisting.

**Concept: User Type Permissions in Settings** — matrix of what each user type can access and do by default.

**Concept: VNDLY Allowlisting Protocols** — IP allowlisting configuration for restricting access to specific IP ranges; covers both client and contractor user types.

### Contractor as Manager

**Set Up Contractors as Managers** — configure contractors to have manager-level visibility over other contractors.

**Configure Contractor as Manager** — define scope and permissions for contractor-manager access.

---

## Delegation

Delegation allows users to grant another user access to their VNDLY account for a defined period.

| Task | Purpose |
|------|---------|
| Set Up Delegation Settings | Configure who can delegate, maximum duration, and approval rules |
| Request Access to Other Users' VNDLY Accounts | Submit a delegation request |
| Accept or Reject a Delegation Request | Review incoming delegation requests |
| Grant Access to Your Account in VNDLY | Self-service delegation grant |
| Grant Access to Other Users' Accounts on Their Behalf | Admin-initiated delegation |
| Switch Accounts in VNDLY | Toggle between your account and a delegated account |

---

## Data Privacy

**Bulk Export Users Before Purging** — export user data before erasure for record retention.

**Erase User Data** — permanently delete personal data for inactive users (GDPR compliance).

**Concept: Data Privacy** — VNDLY's approach to data privacy; erasure eligibility criteria; impact on related records.

**Reference: Types of Erasable Data** — complete list of personal data fields that can be erased, organized by data category.
