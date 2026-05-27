# External Agents

## Overview
External agents are registered and defined **simultaneously** via the ASOR API (not two separate steps). Use any API client.

**API Documentation:** ASOR v1.2 on GitHub | ASOR JSON Swagger documentation

---

## Registration Endpoints (US)
| Purpose | Endpoint |
|---------|----------|
| REST API | `https://us.agent.workday.com/asor/v1/agentDefinition` |
| Token | `https://us.agent.workday.com/auth/oauth2/<Tenant_Name>/token` |
| Authorize | `https://us.agent.workday.com/auth/authorize/<Tenant_Name>?response_type=code&client_id=<client_id>&state=test3pagent1&redirect_uri=<redirect_uri>` |

For non-US regions, see [Agent Gateway Regional Availability](agent-gateway.md).

---

## Prerequisites
- UMSA (required for production and non-production)
- Flex Credits and Platform Entitlement Policy (production only)
- Set Up Agent System of Record
- Security domains in Agent System of Record functional area: Agent Management Hub, Manage Agents, Set Up: Tenant Setup - Security (System functional area; required for registration)

---

## Authentication Options

### Option 1: Manually Authenticate an API Client
1. **Register API Client** task:
   - Client Grant Type: Authorization Code Grant
   - Access Token Type: Bearer
   - Scope (Functional Areas): Agent System of Record
   - Select: Include Workday Owned Scope
2. Copy Client ID and Client Secret
3. Paste authorize URL into browser → redirects to google.com with auth code
4. Create token request (Bruno or similar):
   - URL: `https://<tenantHost>/ccx/oauth2/<tenantName>/token`
   - Body: `grant_type=authorization_code&code=<authCode>&client_id=<ID>&client_secret=<Secret>`
   - Returns access token + refresh token

### Option 2: Authenticate via Workday Extend/Orchestrate
1. developer.workday.com → user menu → Tenant > Sign In to Tenant
2. Select environment/tenant → Connect to Tenant
3. Account must have access to Setup: Agents domain

---

## Register External Agent via ASOR API

### Find SOAP/REST WIDs for Agent Tools
1. **Create Custom Report** task → Report Type: Advanced, uncheck Optimized for Performance
2. For SOAP: Data Source = *Public Web Services*; columns: Web Service, Web Service Operation Name, Web Service Operation Workday ID
3. For REST: Data Source = *All Public Service Operations*; columns: Service, Service Operation Name, Service Operation Workday ID
4. Save and run report

> Cross-reference lists: REST API WIDs | REST APIs Not Available for Ambient Agents | Graph API WIDs

### Find Agent Provider
- **View Agent Provider** task (Setup: Agents domain) → use Provider ID in registration call

### Find Agent Platform
- **View Agent Platforms** task (Setup Agents domain) → use Platform ID in registration call

### Call ASOR REST API
- Endpoint: `POST https://us.agent.workday.com/asor/v1/agentDefinition`
- Headers: `Authorization: Bearer <token>`, `wd-agent-tenant-alias: <tenant_name>`
- Body: per ASOR v1.2 API documentation

### Verify Registration
1. Access **Agent Management Hub** report
2. Click **Agent Registry** → find agent in list

---

## Configure External Agents

**Steps:**
1. Agent Management Hub → Agent Registry → click agent name
2. Click **Configure Agent**
3. Enable skills via toggle slider
4. Populate **Available To** per delegate skill
5. For delegate skills: provide **Redirect URI** (callback endpoint from agent development partner)
6. For ambient skills: provide **x509 public key** from agent development platform
7. Click Confirm → OK
8. **Copy and save Client ID and Client Secret** (displayed once only)
9. Enter OAuth client details and endpoint URLs into agent platform code:
   - Authorize Endpoint URL
   - Token Endpoint URL
   - Endpoint URL
   - OAuth 2.0 Client ID
   - OAuth 2.0 Client Secret (Delegate only)
   - Username for Agent System Account (Ambient only)
10. Activate agent: Agent Registry → agent → **Activate Agent**

**Result:** Workday auto-creates Agent System User (ASU) and Agent Security Group (ASG). View via **All AI Agent Accounts** report (Workday Accounts domain).

---

## External Agent ASU Considerations

### Delegate ASUs – OAuth 2.0 Authorization Code Flow
1. Retrieve auth code: `GET https://<authorizeEndpoint>?response_type=code&client_id=<ID>&state=<agentName>&redirect_uri=<redirectURI>` → login → Allow → redirected with code
2. Retrieve ASU token: `POST https://<tokenURL>` body: `grant_type=authorization_code&code=<code>&client_id=<ID>&client_secret=<Secret>`

**Token details:**
- Access token expiry: 3600 sec (60 min)
- Refresh token expiry: 24 hr
- `expires_in` parameter may return as Integer or String — client should handle both

**Standard OAuth client needs:**
- Client Secret + Client ID (from agent configuration)
- Authorize Endpoint: `https://us.agent.workday.com/auth/authorize/<Tenant_Alias>`
- Token Endpoint: `https://us.agent.workday.com/auth/oauth2/<Tenant_Alias>/token`
- Redirect URL (from agent developer)

**Update agent definition:** POST to AgentDefinition API with same name + version + provider → updates existing; otherwise creates new registration.

### Ambient ASUs – JWT Assertion
- Issuer = Client ID
- Subject = ASU username
- x509 keypair (provided during registration) used for JWT assertion at runtime
- Runtime flow: check cached token → if missing/expired → create JWT assertion → fetch JWT Bearer token → cache for Workday API requests
