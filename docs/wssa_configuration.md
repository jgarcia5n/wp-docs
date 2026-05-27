# Workday Self-Service Agent – Configuration

---

## Prerequisites

1. **Impl / Sandbox / Preview:** Unified Main Subscription Agreement (uMSA) required
2. **Production:** Workday Flex Credits & Platform Entitlement Policy required *(only Production usage draws down credits)*
3. **Feature availability** depends on SKUs owned: Help, Pay, Workforce Management, Talent, etc.

---

## Enablement Steps (At a Glance)

| Step | Action |
|---|---|
| 1 | Enable the Graph API Application Domain |
| 2 | Set Up the Agent System of Record (ASOR) |
| 3 | Configure the Self-Service Agent |

### Quick Start (Flex Credit Policy Signers)
When the Flex Credit Policy is signed, Workday sends the Security Administrator a task in Workday to enable both the Self-Service Agent and Sana in a single flow. See: *Sana Core for Workday Release Note* on Community.

---

## Agent System of Record (ASOR)

Central management hub for all Workday agents.

### Product Capabilities

| Capability | Description |
|---|---|
| **Lifecycle Management** | Register, configure, activate, and deactivate agents |
| **Security & Governance** | Source of truth for agent identity, authentication, authorization, and auditing |
| **Analytics & Observability** | Observability, compliance, usage and value metrics |
| **Interoperability & Ecosystem** | Multi-system and agent interactions |

### Lifecycle Management Steps

1. **Register** – Register Workday-built agents and external agents in ASOR via Agent Registry
2. **Secure** – Skill-level enablement and security configuration per agent
3. **Activate** – Activation makes the agent available to the workforce

### Configuration Options in ASOR
- Enable/disable individual skills per agent (toggle per skill)
- Set "Available To" security groups per skill (e.g., HR Administrator)
- Deactivate Agent option available from agent detail view

### Custom Error Messaging (Future – Q1 2026+)
Admins can define custom help messages via ASOR to replace generic fallback responses with specific guidance.

---

## Agent Gateway (Future)

Secure "front door" connecting all AI agents (Workday-built, partner, or customer) directly into Workday data.

- **Input sources:** REST APIs, SOAP APIs, Workday Graph API
- **Functions:** Traffic Monitoring, Authentication, Fingerprinting, Telemetry
- **Protocols being established:** MCP and A2A
