# Agent Gateway

## What It Is
Secure, intelligent reverse proxy providing a single unified regional endpoint for third-party agents to interface with Workday. Connects external AI agents to Workday's ASOR.

**Supported APIs:**
- All Public REST operations
- All Public SOAP operations
- Workday Graph API
- Workday Query Language (WQL)
- Workday RaaS
- Agent Definition Registry API

**Benefits:** Observability, future-proofing, rate limiting/performance guardrails, security/trust, streamlined API access, transparent usage tracking.

---

## Regional Endpoints

| Region | Endpoint |
|--------|----------|
| US | https://us.agent.workday.com |
| EU | https://eu.agent.workday.com |
| UK | https://uk.agent.workday.com |
| CAN | https://ca.agent.workday.com |
| AU | https://au.agent.workday.com |
| SIN | https://sg.agent.workday.com |
| IND | https://in.agent.workday.com |
| JPN | https://jp.agent.workday.com |

> **Note:** Changing regions resets agent analytics data in Agent Management Hub.

---

## Authenticating to Agent Gateway

**Prerequisites:**
- Agent registered in ASOR via Agent Registration API
- Client ID and Client Secret (from ASOR configuration step)
- Authorization endpoint: `https://us.agent.workday.com/auth/authorize/<Tenant_Alias>`
- Token endpoint: `https://us.agent.workday.com/auth/oauth2/<Tenant_Alias>/token`
- Redirect URI (agent developer provides)
- Agent active in ASOR

**Tenant Alias:** Found in Workday instance URL. Example: `https://wd8.myworkday.com/stark-industries/d/home.html` → alias = `stark-industries`

### OAuth 2.0 Authorization Code Grant Flow

**Step 1: Request Authorization Code**
```
GET https://us.agent.workday.com/auth/authorize/<Tenant_Alias>?
client_id=<OAuth_Client_ID>&response_type=code
```
- Agent Gateway routes to Auth Gateway in tenant's data center
- Auth Gateway redirects to Workday login → authenticate → consent → authorization code returned

**Step 2: Copy authorization code from response**

**Step 3: Request Access Token**
```
POST https://us.agent.workday.com/auth/oauth2/<Tenant_Alias>/token

grant_type=authorization_code
code=<authorization_code>
client_id=<OAuth_Client_ID>
client_secret=<OAuth_Client_Secret>
```
- Agent Gateway routes to Auth Gateway → validates credentials → requests access token from OMS → access token returned to agent

> Standard OAuth clients typically don't need to implement this manually — configure the values from Prerequisites.

---

## API Requests through Agent Gateway

All agent API calls include the Tenant Alias as an HTTP Header for routing.

**Sample REST request (US):**
```
GET https://us.agent.workday.com/api/common/v1/workers
```

**Sample HTTP Header:**
```
wd-agent-tenant-alias: stark-industries
```

**Required elements for all agent API calls:**
- Gateway Endpoint: `us.agent.workday.com` (substitute per region)
- HTTP Header: `wd-agent-tenant-alias: <tenant_alias>` (must be unique)

**SOAP endpoint format:**
```
https://us.agent.workday.com/soap/{version}/{serviceName}
```

---

## Requirements for Partner/External Agents
All third-party agents interacting with Workday APIs **must** route traffic through Agent Gateway using ASU security. Steps:
1. Register external agent in Workday via ASOR
2. Configure authentication (see [External Agents](external-agents.md))
