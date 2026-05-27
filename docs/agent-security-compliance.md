# Agent Security and Compliance

## What It Is
Framework governing identity, authentication, and authorization of AI agents. Ensures agents operate under **principle of least privilege** with robust controls for autonomous and user-driven interactions.

---

## Execution Modes

| Feature | Delegate Mode | Ambient Mode |
|---------|--------------|--------------|
| Primary Use | Interactive tasks (e.g., request time off) | Background tasks (e.g., data aggregation) |
| Identity Used | Combination of user + agent ASU | Agent ASU only |
| Authentication | OAuth 2.0 On-Behalf-Of flow | JWT assertion; no user involvement |
| Authorization | Intersection of user permissions + agent allowed skills | Agent's permissions only |
| Configuration | Agent Interaction Policy (Available To) | Domain Security Policy |
| Security Groups | User must be in allowed groups for the skill | Unique Ambient Agent Security Group generated; must be assigned to relevant domain/BP policies |
| Audit Log | Transaction = By User (agent) + On Behalf Of User | By User = agent ASU |

---

## Agent System User (ASU)
Similar to Integration System User (ISU). Each agent has a unique identity.

- Each agent can have up to **2 ASUs**: 1 for delegate, 1 for ambient
- Each ASU has a specific OAuth 2.0 client
- Auto-generated when administrator enables skills in ASOR
- Created in **disabled** state; activates when agent activates
- Proxy accounts not supported with ASUs

### ASU Creation Process
1. Admin enables skills in ASOR → ASOR creates Delegated ASU or Ambient ASU (disabled)
2. Agent activated → ASUs automatically enabled
3. OAuth client generated + attached to ASU; private key pair created; public key registered with Workday auth server
4. ASOR stores client credentials (private key) in Credential Store → unique reference ID stored in ASOR

---

## Configure Security Policies for Agents

**Prerequisites:** Unique Ambient Agent Security Group generated (ambient agents); Security Configuration domain in System functional area.

**Context:**
- **Delegate agents:** Uses invoking user's security. Only update if invoking user needs additional access.
- **Ambient agents:** Security evaluated solely against agent permissions. Must assign Ambient Agent Security Group (ASG) to relevant domain/BP security policies.

### Steps
1. **View Security for Agent Skill** report (from related actions of agent skill) → identify securing domains
2. Search for domain security policy for target REST API endpoint
3. Related actions → Security Policy > **Edit Domain Security Policy**
4. From Security Groups prompt:
   - Delegate: select security groups of invoking users
   - Ambient: select the Ambient Agent Security Group
5. Select View or Modify check boxes
6. If tool requires Get/Put access: select Get or Put check boxes for integration access
7. **Activate Pending Security Policy Changes**

---

## Agent Interaction Policy (Delegate Mode Only)

Explicitly defines which users can invoke specific agent skills.

### Two-Step Runtime Evaluation
1. **Interaction Check** – user must be in a security group in the Available To list for the skill
2. **Domain & Business Process Check** – user must have standard domain/BP permissions for the tools; also checked at field level

### Rules
- Delegate mode: **requires** Agent Interaction Policy; must opt-in security groups
- Ambient mode: **no** Agent Interaction Policy (agents act autonomously, no user interaction)

**Example:** Recruiting agent with Job Requisition Creation skill — add Recruiters security group to Available To. Employee As Self users cannot use this skill even with domain access.

---

## Security Domains

| Domain | Access Granted |
|--------|---------------|
| Manage: Agents | Setup tasks for ASOR |
| Setup: Agents | Config, activation, deactivation tasks |
| Agent Management Hub | Central hub for managing all agents |
| Reports: AI Agent Security | View AI Agent User Audit Trail |

**Security group permissions needed:** View + Modify on Report/Task permissions; Put on Integration permissions.

---

## Reporting
- **View Security for Agent Skill** – shows domain and BP security policy config for agent skills; access from related actions of agent skill
- **View AI Agent User Audit Trail** – shows user activity distinguishing By User and On Behalf Of User; access from agent related actions or standalone task

---

## Connections and Touchpoints

| Feature | Notes |
|---------|-------|
| Workday Configurable Security | Agent permissions rely on domain and BP security policies and security groups |
| ASOR | Manages agent definitions/configurations; system of record for agent security policies and credential reference IDs |
| OAuth 2.0 | On-Behalf-Of token exchange in delegate mode |
| Workday REST APIs | Agent data access via REST endpoints secured to domain/BP security policies |
