# Agent System of Record (ASOR)

## What It Is
Centralized platform for managing an organization's digital agentic workforce. Provides a single control center to discover, register, configure, monitor, and manage AI agents securely at scale.

**Agent types managed via Agent Management Hub:**
- Workday-built agents (1P)
- Partner-built agents
- Self-built agents (3P)

## Agent Definition Components
Each agent in ASOR contains:
- **Agent Name / Description**
- **Skills** – tasks the agent executes
- **Execution Modes:**
  - *Ambient Mode* – agent acts as itself; security evaluated on its own permissions
  - *Delegate Mode* – agent acts on behalf of a human; security evaluated on worker's permissions
- **Tools** – Workday APIs the agent may use
- **Resources** – API type (REST, SOAP, Graph, WQL)

## Agent Lifecycle Phases
1. **Define** – view agent definition on profile page; external agents provide definition via API
2. **Register** – register in Agent Management Hub; production requires UMSA + Flex Credits + entitlements
3. **Configure** – specify skills and access (Available To security groups)
4. **Activate** – enables user interaction per configured security
5. **Deactivate** – hides from users; retains in hub for reactivation

## Requirements
- No additional SKUs required to *access* ASOR
- Production use requires: UMSA opt-in + Workday Flex Credits and Platform Entitlement Policy
- UMSA required for non-production and production for Workday-built agents
- UMSA **not** required for non-production for self-built agents

## Limitations
- Agent interactions cannot be proxied or delegated
- Sandbox refresh does not wipe agent usage analytics from previous weeks
- Only unconstrained security groups can be configured on ASOR security policies

---

## Set Up Agent System of Record

**Prerequisites:** Security Configuration domain in System functional area.

### Steps
1. **Maintain Functional Areas** → Enable *Agent System of Record* → OK → Done
2. **Activate Pending Security Policy Changes** → comment → OK → Confirm → OK
3. **Domain Security Policies for Functional Area** report → select *Agent System of Record* → Enable these domains:
   - Agent Compliance
   - Agent Management Hub
   - Manage: Agents
   - Reports: Agent Reporting
   - Setup: Agents
   - *(System functional area)* Reports: AI Agent Security
4. **Maintain Permissions for Security Group** → Maintain operation → select target security group → grant **View and Modify** on all above domains
5. **Activate Pending Security Policy Changes**

---

## Register and Configure Workday-Built Agents

**Additional Prerequisites:**
- Verify subscription: Community profile → org name → *Subscription Service Agreement* field
  - UMSA: automatically available
  - MSA: must opt-in to UMSA
- Opt-in to Workday Flex Credits and Platform Entitlement Policy (production only)
- Set Up Agent System of Record

### Steps
1. Access **Agent Management Hub** report
2. Select **Unregistered Workday Agent** tab → click **Register** for target agent
3. Confirm check box → OK
4. Select **Agent Registry** tab → click agent name → **Configure Agent**
5. Enable skills via toggle slider in Status column
6. Populate **Available To** prompt per skill (sets Agent Interaction Policy)
7. Click **Activate**

**Result:** Agent System User (ASU) activates automatically with the agent.

---

## ASOR Security Domains

| Domain | Access Granted |
|--------|---------------|
| Agent Compliance | Reports/data for agent compliance |
| Agent Management Hub | Central hub for viewing/managing all agents |
| Manage: Agents | Config, activation, deactivation tasks |
| Reports: Agent Reporting | Agent analytics, data sources, filters |
| Reports: AI Agent Security | View AI Agent User Audit Trail |
| Setup: Agents | Setup tasks and activities |

---

## Agent Security (Runtime)

**Two-layer evaluation at runtime:**
1. User must be in a security group listed in the agent skill's **Available To** (interaction check)
2. User must have domain/BP security access to the APIs the agent calls as tools (authorization check)

| Agent Available To | Domain Security Group | Successful Execution |
|---|---|---|
| Employee as Self | Employee as Self | Yes |
| Employee as Self | Managers | No |

**Ambient mode** skills don't require interaction access (no human interaction trigger).

---

## Agent System User (ASU)
- Auto-generated after **Configure Agent** task completes
- View via **All AI Agent Accounts** task (Workday Accounts domain, System functional area)
- Also visible via **All Workday Accounts** task
- Agent developers use ASUs to interact with Workday data through Agent Gateway

---

## Reporting

### Overview Hub Reports (Reports: Agent Reporting domain)
- Active Agents
- Total Agent Sessions Over Time (Workday-built only)
- Total Agent Sessions (Workday-built only)
- Total Unique Users (Workday-built only)

### Agent Profile Analytics (Workday-built only)
- Agent Sessions
- Skill Interactions
- Total Skill Interactions Over Time
- Total Unique Users for the Agent/Skills

### Security, Compliance, Auditing
- Agent Input and Output Request Details (Agent Compliance domain; Workday-built only)
- All AI Agent Accounts (Workday Accounts domain)
- Generate Agent Input and Output Report (Agent Compliance domain; Workday-built only)
- Input and Output Report For Registered Agents (Agent Compliance domain; Workday-built only)
- View AI Agent User Audit Trail (Reports: AI Agent Security domain)
- View Security for Agent Skill (Security Administration + Manage: Agents domains)

### Data Sources (30-day window, Reports: Agent Reporting domain)
- All Agent Definitions
- All Agent Registrations
- Agent Input and Output Details (Agent Compliance domain)
- Agent Sessions by Day
- Agent Skill Interactions
- Agent Skill Interactions by Day
- Agent Unique Users by Skills

---

## Sample ASOR API Agent Definition

```json
{
  "name": "Change Business Title Agent",
  "description": "A Workday agent for changing a business title with Agent Gateway",
  "provider": { "id": "Provider=SELF-BUILT" },
  "url": "https://changetitleagent.com",
  "platform": { "id": "Platform=GOOGLE_AGENTSPACE" },
  "skills": [{
    "id": "changeTitle_1",
    "name": "Change Title",
    "description": "Gets worker information and changes a business title.",
    "inputModes": [{"type": "application/json"}],
    "outputModes": [{"type": "application/json"}]
  }],
  "workdayConfig": [{
    "skillId": "changeTitle_1",
    "executionMode": { "id": "Mode=Delegate" },
    "workdayResources": [
      { "tool_name": "changeBusinessTitle", "agent_resource": { "id": "c2ffb30053964fbfa7a46dcfa577adb1" } },
      { "tool_name": "getWorkers", "agent_resource": { "id": "94a39e71541b468fa895955508287acd" } },
      { "tool_name": "internalAuthCheck", "agent_resource": { "id": "6bbfa713d3851000081920672a0f0009" } }
    ]
  }],
  "capabilities": { "stateTransitionHistory": false, "streaming": false, "pushNotifications": false },
  "version": "v1"
}
```

Each skill can have multiple tools; each tool references a Workday resource by WID.
