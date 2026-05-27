# Authentication and Security – Configurable Security, Accounts, Data Privacy & Data Security

> Source: Admin Guide – Authentication and Security (May 14, 2026), pp. 102–358

---

## Configurable Security

### Setup Considerations: Configurable Security

Workday security is policy-based and role-based. All access is controlled through security policies applied to security groups.

**Core model:**
- **Domain Security Policy** — controls access to actions, reports, report fields, data sources
- **Business Process Security Policy** — controls access to business process steps and process-wide actions
- **Functional Area** — logical grouping of related security policies (e.g., Benefits, Compensation)
- **Security Group** — container of users; policies grant access to security group members

**Key decisions:**
- Determine which Workday-delivered security groups to use vs. creating custom groups
- Define intersection vs. aggregation security group strategies
- Determine role assignment methodology (manual vs. org-based automatic)
- Plan security activation workflow (pending changes → activate)

### Steps: Enable Functional Areas and Security Policies

Enable functional areas and the security policies within them for your tenant. Required before setting up security for any module.

### Steps: Set Up Security Permissions

Assign security groups to domain and business process security policies.

### Concept: Configurable Security

**Key behaviors:**
- Security changes are staged in a **pending state** and must be activated (atomic activation)
- Workday evaluates security at runtime; changes take effect immediately after activation
- Role-based security groups are constrained by organization scope; unconstrained groups are not
- Domain security has **separate access levels**: View, Modify, Get (for web services)

**Reference: Security-Related Reports** — reports for auditing security configuration: domain access by security group, security group membership, role assignments.

---

## Security Admin Hub

**Steps: Set Up Security Admin Hub** — configure the Security Admin Hub as a centralized landing page for security administration tasks.

**Concept: Security Admin Hub** — hub displays security group management, policy activation, and audit worklets.

---

## Security Group Basics

### Setup Considerations: Security Groups

**Key decisions:**
- Security group type selection (see Reference: Security Group Types)
- Role assignment strategy for role-based groups
- Use of segment-based security for data-level restrictions
- Intersection vs. aggregation for composite access needs

**Best practices:**
- Minimize the number of security groups; prefer broader groups
- Use Workday-delivered security groups where possible before creating custom ones
- Document all custom security groups and their intended access

### Management Tasks

| Task | Purpose |
|------|---------|
| Copy Security Group Permissions | Clone permissions from one policy to another |
| Delete Security Groups | Remove unused groups (must have no members or policy assignments) |
| Maintain Security Group Permissions | Edit security group policy assignments |

**Reference: Security Group Limitations** — known constraints on group membership, nesting, and policy counts.

**Reference: Workday-Delivered Security Groups** — catalog of all Workday-delivered groups (e.g., HR Partner, Benefits Administrator, Payroll Administrator).

---

## Security Group Types

### Aggregation Security Group
Grants access to members of included security groups. Revokes access from excluded groups. Used to combine multiple groups into a superset with exceptions.

### Conditional Role-Based Security Group
Role-based group with additional condition rules controlling when the role applies. Example: HR Partner role applies only when the worker's location matches a configured condition.

### Integration Security Group
Security group designed for integration system users. Grants access for web service calls and integration operations.

### Intersection Security Group
Members must belong to ALL included security groups. Grants access only at the intersection of multiple group memberships. Used for highly restricted access (e.g., only Benefits Admins who are also HR Partners).

### Job-Based Security Group
Members are workers matching specific job attributes: job profile, job family, job category, management level, exempt/non-exempt status. Dynamic membership based on job data.

### Level-Based Security Group
Members are workers at or above a specified management level. Used for hierarchical visibility (managers see subordinates' data).

### Membership Security Groups (Location, Organization)
- **Location Membership Security Group** — members are workers assigned to specified locations
- **Organization Security Group** — members are workers assigned to specified organizations

### Prism Access Security Group
Controls access to Prism Analytics datasets and workbooks.

### Role-Based Security Group
Most common type. Workers are members by virtue of holding an assignable role (e.g., HR Partner for Organization X). Constrained by organization scope. Key examples:
- HR Partner
- Benefits Administrator
- Recruiter
- Payroll Administrator
- Manager (self-service)
- Employee (self-service)

**Steps: Set Up Role-Based Security Groups** — create groups, assign roles, configure organization constraints.

### Rule-Based Security Group
Membership determined dynamically by condition rules (report fields, calculated fields). Evaluated at runtime. Used for complex membership logic not achievable with role-based groups.

### Segment-Based Security Group
Data-level security restricting access to a subset of data within a domain. Example: restrict HR Partner access to workers in a specific company or region. Used for segmented security patterns.

### Service Center Security Group
Grants service center representatives delegated access to perform tasks on behalf of workers. Managed via the Service Centers configuration.

### User-Based Security Group
Explicit membership list; individual users are directly added. Typically used for small, stable groups (e.g., system administrators, special roles). Not recommended for large populations.

---

## Security Policies

### Setup Considerations: Security Policies

**Domain security policy access levels:**
| Level | Description |
|-------|-------------|
| View | Read access to data and reports |
| Modify | Create, edit, delete access |
| Get (Web Service) | API read access |
| Put (Web Service) | API write access |

**Business process security policy actions:**
| Action | Description |
|--------|-------------|
| Initiate | Start a business process |
| Approve | Approve a step |
| Deny | Deny a step |
| Cancel | Cancel an in-progress process |
| Rescind | Reverse a completed process |
| Correct | Correct a step while in progress |
| View | View process details |

### Edit Domain Security Policies

Access via **Edit Domain Security Policies** task or from the domain itself. Add or remove security groups from each access level.

### Edit Business Process Security Policies

Access via **Edit Business Process Security Policies** task. Assign security groups to each step action and process-wide action.

---

## Security Change Control

**Activate Pending Security Policy Changes** — review and activate all staged security changes atomically. All changes take effect simultaneously.

**Activate Previous Security Timestamp** — roll back to a previous security configuration state. Used for emergency recovery.

**Concept: Security Policy Change Control** — how pending changes work; isolation of changes in staging; activation behavior.

---

## Service Centers

Service centers provide delegated access for HR shared service representatives to perform tasks on behalf of workers.

| Task | Purpose |
|------|---------|
| Steps: Set Up Service Centers | Create service center and configure access |
| Assign Roles to Service Centers | Define which roles service center reps can assume |
| Create Workday Accounts for Service Center Representatives | Provision accounts |
| Manage Passwords for Workday Accounts | Password management for service center users |
| Inactivate Service Center Representatives | Remove access |

---

## Constrained Proxy

Allows one worker to act on behalf of another within defined limits. Differs from service centers: the proxy relationship is worker-to-worker rather than admin-to-worker.

| Task | Purpose |
|------|---------|
| Steps: Set Up Constrained Proxy Access | Configure proxy types and restrictions |
| Set Up the My Proxy Worklet | Worker self-service proxy management |
| Set Up the Security Policy for the Proxy Approval Process | Approval workflow for proxy requests |
| Set Up the Proxy Approval Process | Business process for proxy authorization |
| Create Proxy Access Restriction Sets | Define what a proxy can and cannot do |

**Concept: Constrained Proxy** — use cases, security boundaries, and proxy scope limitations.

---

## Security for Integrations

### Integration Security Model

**Concept: Integration Security in Workday** — integrations run under **Integration System User (ISU)** accounts, which are not associated with real persons. ISUs must be granted specific domain access to read or write Workday data.

### Access to Systems and Output

| Task | Purpose |
|------|---------|
| Steps: Secure Integrations by Segment | Apply segment-based security to integration output |
| Steps: Secure Message Queues by Segment | Restrict message queue access by segment |

### Access to Workday Data

| Task | Purpose |
|------|---------|
| Steps: Grant Integration or External Endpoint Access to Workday | Assign domains to ISU security groups |
| Verify EIB Security Configuration | Validate EIB has correct domain access |
| Verify Authorization Security for Workday Web Services | Validate WWS security setup |

### Access to External Endpoints (Certificates and Keys)

**X.509 Certificates** — used for HTTPS/SSL authentication and digital signing.

| Task | Purpose |
|------|---------|
| Create an X.509 Public Key | Import a third-party public key into Workday |
| Create an X.509 Private Key Pair | Generate a key pair in Workday |
| Create a Third-Party X.509 Key Pair | Register an externally generated X.509 pair |
| Regenerate an Expired X.509 Private Key Pair | Renew an expiring certificate |
| Load Externally Generated Private Key into Workday | Import a private key from outside Workday |

**PGP Certificates** — used for file encryption in FTP/SFTP-based integrations.

| Task | Purpose |
|------|---------|
| Create a PGP Public Key | Import a third-party PGP public key |
| Create a PGP Private Key Pair | Generate PGP key pair in Workday |
| Regenerate an Expired PGP Private Key Pair | Renew expiring PGP keys |

**Reference: X.509 Authentication Supported Algorithms** — supported key sizes and signing algorithms.

**Concept: X.509 Certificates in Workday** — certificate lifecycle, storage, and use in integration transports.

**Concept: PGP Certificates in Workday** — PGP encryption for SFTP file delivery and receipt.

**FAQ: Encryption, Certificates, and Ciphers for Integrations** — common questions on cipher suites, TLS versions, key rotation.

---

## Accounts

### Workday Accounts

| Task | Purpose |
|------|---------|
| Steps: Manage Passwords | Configure password lifecycle management |
| Define Username Requirements | Set username format rules |
| Edit Workday Accounts | Modify existing account settings |
| Create Workday Accounts Automatically | Auto-create accounts via business process trigger |
| Reset Workday Accounts for Terminated or Rehired Workers | Handle account state on employment changes |
| Define Password Rules | Set complexity, length, history, and expiry requirements |
| Configure Password Reset | Set up self-service password reset workflow |
| Terminate User Accounts Automatically | Auto-terminate on worker termination event |
| Terminate User Account Manually | Admin-initiated account termination |
| Lock and Unlock Workday Accounts | Temporary access suspension and restoration |
| End Active Sessions for Multiple Workday Accounts | Force sign-out for a group of users |

### External Accounts

**Manage External Accounts** — accounts for external sites (e.g., career site candidate accounts, extended enterprise learning users).

**Concept: User Accounts for External Sites** — how external accounts differ from internal Workday accounts.

**Reference: Track Sign-In Activity for External Sites** — monitoring sign-ins for external user accounts.

---

## User Provisioning Workspace

Centralized framework for managing account creation, modification, and deprovisioning across Workday and connected systems.

| Task | Purpose |
|------|---------|
| Steps: Set Up User Provisioning Workspace | Configure the provisioning workspace |
| Steps: Set Up Unified User Provisioning and Authentication | Combine provisioning with authentication setup |
| Set Up Access to User Provisioning | Grant admin access |
| Create User Provisioning Groups | Define populations for provisioning rules |
| Manage Reports for User Provisioning | Provisioning status and audit reports |
| Migrate Planning User Data to the User Provisioning Workspace (UPW) | Move Adaptive Planning users to UPW |

**Concept: User Provisioning** — how Workday manages the full provisioning lifecycle including SCIM integration with external directories.

**Example Steps: Deprovision Terminated Workers** — automated offboarding account deactivation.

**Example Steps: Provision Workers Returning from Leave** — re-enable access on return from leave.

---

## Unified Access Management (UAM)

Manages access for Workday Adaptive Planning users with a consistent model.

| Task | Purpose |
|------|---------|
| Steps: Set Up Unified Access Management (UAM) | Configure UAM for Adaptive Planning |
| Migrate Permission Sets and User Assignments from Adaptive Planning | Move legacy permissions to UAM |
| Create Action Groups | Define sets of allowed actions |
| Create Authorization Policies | Policy-based access rules for Adaptive Planning |
| Set Up UAM User Integration | Sync users between Workday and Adaptive Planning |
| Sync User Groups with Adaptive Planning | Keep groups in sync |

**Concept: Unified Access Management (UAM)** — architecture and model for Adaptive Planning access management.

---

## Data Privacy

### Data Masking

**Concept: Masking Sensitive Data** — Workday can mask specific fields (SSN, bank account, salary) so they display as asterisks to users without view permission.

**Enable or Disable Data Masking** — toggle masking per field and security group.

---

### Data Purging

Permanently remove personal data from Workday to comply with GDPR and other privacy regulations.

**Setup Considerations: Data Purging**

**Key decisions:**
- Which data types to include in purge (see Reference: Purgeable Data Types — extensive list)
- Purge timing (immediate vs. scheduled)
- Retention rules before purge eligibility
- Audit requirements for purged data

**Warning:** Purge cannot be reversed. Always test in Sandbox first.

| Task | Purpose |
|------|---------|
| Steps: Purge Person Privacy Data | Initiate a purge for specific persons |
| Steps: Schedule Privacy Purge Operations | Set up recurring scheduled purges |
| Create a Privacy Purge Custom Report | Build a report to identify purge candidates |
| Manage Purge Plan | Define and maintain purge plans |
| Reference: Auditing Purged Data | How to verify what was purged |
| Reference: Purgeable Data Types | Complete list of data types eligible for purge |

**Concept: Purging Person Privacy Data** — purge mechanics, scope, what's purged vs. retained, impact on related data.

---

### Data Scrambling

Replace real data with randomized values in non-production tenants. Used to protect sensitive data in Sandbox/Implementation tenants.

**Setup Considerations: Data Scrambling**
- Determines which fields are scrambled
- Configures scramble patterns (format-preserving randomization for IDs, names, SSNs)
- Cannot be undone for the scrambled tenant

**Steps: Scramble Tenant Data** — initiate the scramble process.

**Concept: Data Scrambling** — what gets scrambled, formats, and impact on integrations and configurations.

---

## Data Security

### Workday Key Management Service (KMS)

**Concept: Key Management Service** — Workday manages encryption keys for data at rest. Keys are rotated automatically; tenant data is encrypted using AES-256.

### Workday Bring Your Own Key (BYOK)

Allows customers to control their own encryption keys using their cloud provider's key management service (AWS KMS or Google Cloud KMS).

| Task | Purpose |
|------|---------|
| Set Up BYOK For Amazon Web Services (AWS) | Configure AWS KMS integration for Workday BYOK |
| Set Up BYOK For Google Cloud Platform (GCP) | Configure GCP KMS integration for Workday BYOK |

**Key considerations:**
- BYOK requires tenant-level enablement and cloud provider setup
- Key rotation must be managed by the customer
- Losing access to the customer-managed key makes tenant data inaccessible
