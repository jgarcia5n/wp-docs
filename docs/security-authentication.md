# Authentication and Security – Authentication

> Source: Admin Guide – Authentication and Security (May 14, 2026), pp. 7–101

---

## Overview

Authentication configuration controls how users access Workday tenants. An **Authentication Policy** is the primary configuration object: it defines blocked networks, authentication rules per security group, and access restrictions post-sign-in.

**Processing order:** Workday evaluates authentication policies → blocked networks first → then authentication rules in order → applies the first matching rule based on security group membership.

**Security:** Set Up: Tenant Setup - Security domain in the System functional area.

---

## Authentication Policies

### Steps: Set Up Authentication Policies

1. Access **Manage Authentication Policies** report
2. Set **Restricted to Environment** (Production, Sandbox, Implementation, etc.)
3. Enable the policy (only 1 policy active per environment)
4. (Optional) Set **Network Denylist** — block specific IP ranges globally
5. (Optional) Add Authentication Rules (allowlist rules per security group)
6. (Optional) Configure Step Up Authentication
7. **Activate Pending Authentication Policy Changes**

**Note:** Workday extends IP restrictions throughout sessions. If a user's IP changes mid-session to a denied address, Workday terminates the session and logs an authentication failure.

### Add Authentication Rules

Rules define sign-in conditions per security group. Each rule can have multiple conditions.

**Condition options:**
- **Specific** — restrict to defined IP networks/ranges
- **Any** — allow from any network
- **Any except other conditions** — fallback condition

**Additional condition flags:**
- **Device is Managed** — require MDM-managed device
- **Require MFA** — require multifactor authentication
- **Authentication Type** — Password, SAML, OAuth, etc.

### Maintain IP Ranges

Define named IP ranges for use in authentication rules and denylists. Access via **Manage IP Ranges** task.

### Create Access Restrictions

Limit what users can do after sign-in. Restrictions can block specific Workday functionality (e.g., prevent certain actions for users on non-corporate networks).

### Activate Pending Authentication Policy Changes

Authentication policy changes are staged and must be explicitly activated. Access via **Activate Pending Authentication Policy Changes** task.

**Concept: Authentication Policy Best Practices:**
- Always test in Sandbox before activating in Production
- Ensure an emergency access path exists (see Example: Emergency Sign-In for Administrators)
- Use denylist sparingly; prefer allowlist rules
- Avoid locking out system accounts used by integrations

**Concept: Authentication Policies:**
- Workday evaluates policies per environment
- Rules are evaluated in order; first match wins
- Unconstrained security groups are evaluated; constrained groups are not

---

## Multifactor Authentication (MFA)

### Setup Considerations: Multifactor Authentication

**MFA methods supported:**
| Method | Notes |
|--------|-------|
| Authenticator App (TOTP) | Google Authenticator, Microsoft Authenticator, etc. |
| Duo Security | Duo push, passcode, phone call |
| Emailed One-Time Passcode | OTP delivered via email |
| SMS One-Time Passcode (OTP) | OTP delivered via SMS (requires Twilio or similar) |

**Key decisions:** Which method(s) to enable; which security groups require MFA; whether MFA is required for all access or only sensitive actions (Step Up Authentication).

### Setup Tasks

| Task | Purpose |
|------|---------|
| Steps: Set Up MFA Using Authenticator App | TOTP-based authenticator setup |
| Steps: Set Up MFA Using Duo Security | Duo integration configuration |
| Steps: Set Up MFA Using Emailed One-Time Passcode | Email OTP delivery setup |
| Steps: Set Up MFA Using SMS One-Time Passcode | SMS OTP via Twilio |

**Reference: Twilio-Based SMS OTP MFA Support** — Twilio account requirements and configuration.

---

## Step Up Authentication

Require additional authentication for specific sensitive tasks, regardless of initial sign-in method.

**Steps: Configure Step Up Authentication:**
1. Create Step Up Authentication definitions (linked to specific tasks or domains)
2. Associate with authentication policy rules

**Concept: Step Up Authentication** — triggers secondary authentication prompt when a user attempts a sensitive action (e.g., view SSN, make a payment).

---

## Authentication Selectors

**Set Up Authentication Selectors** — configure rules to select which authentication method applies to a user at sign-in time. Used when multiple authentication methods are available and selection should be automatic.

---

## Trusted Devices

**Steps: Set Up Trusted Devices** — allow users to mark a device as trusted so MFA is not required on subsequent sign-ins from that device.

**Concept: Trusted Devices** — how trust is established, token duration, and revocation.

---

## SAML (SSO)

### Setup Considerations: SAML SSO

**Key decisions:**
- Identity Provider (IdP) vs. Service Provider (SP) initiation
- Single Logout (SLO) support
- Certificate management and rotation
- Attribute mapping (NameID format, user identifier)
- Multiple IdP support

### Steps: Set Up SAML Authentication

1. Generate SAML Metadata from Workday (provides SP metadata to IdP)
2. Configure IdP with Workday SP metadata
3. Configure SAML settings in Workday (IdP metadata URL or upload)
4. Configure Identity Provider-Initiated and/or SP-Initiated authentication
5. (Optional) Configure SAML Single Logout
6. (Optional) Hide Password Management Tasks (for SSO-only tenants)
7. Create or Edit SAML SSO Links (deep links to specific Workday pages via SSO)
8. Test with Steps: Decode and Validate a SAML Message

**Concept: Configuring Your SAML Provider** — attribute mapping, NameID formats, and IdP-specific configuration notes.

**Concept: SAML Authentication** — how Workday processes SAML assertions and maps them to Workday accounts.

---

## OpenID Connect

**Enable OpenID Connect Authentication** — configure Workday as a relying party to an OpenID Connect identity provider.

**Concept: OpenID Connect** — how OIDC flows map to Workday authentication.

---

## OAuth

**Register API Clients** — register external applications that access Workday APIs via OAuth 2.0.

**Register API Clients for Integrations** — register integration systems (Studio, EIB, connectors) for OAuth authentication.

**Manage API Client Access to Workday** — view, revoke, and manage active OAuth client authorizations.

**OAuth 2.0 grant types supported:** Authorization Code, Client Credentials, Refresh Token.

---

## Risk-Based Authentication

**Concept: Risk-Based Authentication** — Workday evaluates sign-in risk signals (new device, unusual location, velocity) and can require step-up authentication or block access.

**Configure Risk-Based Authentication** — enable and configure risk signals and response actions.

---

## Authentication Examples

| Example | Scenario |
|---------|---------|
| Administrator Access on Corporate Network Only | Restrict admin security groups to corporate IP ranges |
| All Access from Corporate Network Only | Force all users to be on VPN or corporate network |
| All Access from Managed Devices Only | Require MDM-enrolled devices for all users |
| Emergency Sign-In for Administrators | Fallback authentication path for lockout recovery |
| Non-SSO Access for Pre-Hires | Allow pre-hires to sign in with password before SSO is provisioned |
| Passwordless Sign-In for Employees and Contingent Workers | SAML-only, no password authentication |
| Virtual Clean Room (VCR) Restricted Implementer Access for IP-Restricted Tenants | Isolated implementer access during implementation |

---

## Monitoring Sign-Ins

**Enable Users to View Their Sign-In History** — allow workers to see their own recent sign-in activity.

**Reference: Signons and Attempted Signons Report** — admin report covering all sign-in attempts: user, timestamp, IP address, authentication method, success/failure reason.

**Reference: Account Access Reports** — reports for monitoring account access patterns and anomalies.

---

## Proxy Access to Non-Production Tenants

**Manage Proxy Access** — grant Workday support or implementation partners proxy access to non-production tenants.

**Concept: Proxy Sessions** — how proxy sessions work, logging, and restrictions.

**Example: Create a Proxy Access Policy** — sample policy for controlled implementer access.

---

## Authentication References

**Reference: Workday Sign In URLs** — URL formats for Production, Sandbox, Implementation, and Preview tenants.

**FAQ: Authentication** — common questions on policy conflicts, MFA troubleshooting, SSO issues.
