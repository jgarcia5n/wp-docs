# Sana for Workday

## Sana Core vs. Sana Enterprise

| Capability | Sana Core | Sana Enterprise |
|-----------|-----------|-----------------|
| Sana Workspace access (file upload, LLM chat — web only) | Yes | Yes |
| Read/write actions in Workday via Workday Self-Service Agent (WSAA) | Yes | Yes |
| Agentic chat with user history and citations | Yes | Yes |
| Single sign-on shared with Workday tenant | Yes | Yes |
| Role and permission mirroring (respects Workday security) | Yes | Yes |
| Admin-configurable third-party connectors | No | Yes |
| Actions in connected third-party systems from chat | No | Yes |
| Human-in-the-loop approval for cross-system actions; all actions logged/auditable | No | Yes |

**Requirements for Sana Enterprise:** Purchase Sana Enterprise SKU + UMSA + Workday Flex Credits and Platform Entitlement Policy.

---

## Accessing Sana Workspace
- Click **Sana card** on Workday Home page
- Click **Explore Sana** button on Workday search results page
- Click **Sana** in Global Navigation Bar

> Enable Sana card: Home Cards Workspace → Work Tools section → enable Sana card.

---

## Steps: Set Up Sana for Workday

**Prerequisites:**
- UMSA + Workday Flex Credits and Platform Entitlement Policy + Sana Enterprise SKU (Enterprise only)
- Security domains in System functional area: Sana Agent User Provisioning, Sana Enterprise, Security Activation, Security Configuration

**Workday sends notifications to administrators to complete setup tasks.**

### Steps

**1. Set Up AI Administrator Security Permissions** *(see below)*

**2. Set Up Agent System of Record**

**3. Edit Domain Security Policies**
- Configure Sana Enterprise domain in System functional area *(required if Sana Enterprise SKU purchased)*

**4. (Optional) Set Up Security Groups for User Provisioning**
- If specific security groups needed for Sana provisioning: Add rows and select groups
- Security: Set Up: User Provisioning domain (System and User Provisioning functional areas)

**5. Provision Users to Sana Workspace**
1. Open **Action Required: Provision Users to Sana Workspace** notification (bell icon)
2. Click link → User Provisioning Workspace → Products page → Configure in Sana tile
3. Provision Users section → Edit Provisioning Group
4. Using Workday Security Groups prompt → select **All** or individual security groups
5. Update Provisioning Group → Preview and Enable Sync
6. Review users → select confirmation check box → Enable Sync

**6. Enable Sana Workspace Access from Workday**
1. Home Cards Workspace → Home → Cards → Edit Work Tools
2. Add row → Name field: enter **Sana** → OK

**7. (Optional) Configure Sana Workspace**
1. Sana Workspace → click arrow next to workspace name → Workspace Settings
2. Available optional configs:
   - Disable web search
   - Disable intercom support chat
   - Disable specific third-party connectors (Enterprise only)
   - Restrict agentic actions to approved email domains (Enterprise only)

---

## Set Up AI Administrator Security Permissions

### Overview
One-time task per tenant that bundles all necessary security configuration. Initiates backend processing to enable Workday AI features.

**Configures access for:**
- Agent System of Record
- User Provisioning Workspace for Sana
- Platform Consumption Console
- Sana (Sana administrators)

**Prerequisites:** Security Activation + Security Configuration domains in System functional area; UMSA + Flex Credits (+ Sana Enterprise SKU for Enterprise).

### Steps
1. Open **Action Required: Review and Configure the Security for Sana and Workday Agents** notification (bell icon) → **Start Configuration**

2. **Configure Security Policies** (Configuration tab) — configure each grid with *Incomplete* status:

| Section | Permission Level | Notes |
|---------|-----------------|-------|
| Agent System of Record | View and Modify | Select or create security group; Workday adds members to ASOR domain policies |
| Platform Consumption Console | View Only | Only add security group if no existing groups with View Only or View and Modify on domain |
| User Provisioning Workspace | View and Modify | Select or create security group for Sana provisioning access |
| Set Up Sana Administrators | — | Select/create group; users auto-provisioned into Sana upon activation |

**Column behaviors:**
- *Completed* status: domain policies already configured (Security Group and View/Add columns hidden)
- *Completed with Exceptions*: at least 1 domain policy not active or has pending changes
- Can add members only when creating new group or selecting group not used in other policies
- Cannot add/remove members from groups with existing policies or members

3. Select **Activate Pending Security Policy Changes** tab
4. Review security changes in grids → select Confirm check box → OK → Done

**Result:** Workday activates pending security policy changes; applicable tasks made available.

> If multiple admins configure this task, only the first submitted configuration is processed.
> Once submitted, the task cannot be edited — use standard Workday security settings for updates.
