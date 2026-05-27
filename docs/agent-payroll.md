# Payroll Agent

## Overview
AI-powered conversational assistant for payroll practitioners. Provides task assistance, information retrieval, and data summarization through conversational AI.

**Supported Payroll Countries:** Australia, Canada, France, Ireland, UK, U.S.

---

## Setup Prerequisites
- UMSA (opt-in if on MSA)
- Workday Flex Credits and Platform Entitlement Policy (production only)
- Set Up Agent System of Record
- Security: Agent Compliance, Agent Management Hub, Manage: Agents, Reports: Agent Reporting, Setup: Agents (ASOR functional area); Reports: AI Agent Security (System functional area)

## Setup Steps
1. Agent Management Hub → Unregistered Workday Agent tab → Register Payroll Agent → Confirm → OK
2. Agent Registry → click Payroll Agent → **Configure Agent**
3. Enable skills via toggle slider
4. Populate **Available To** per skill (sets interaction policy)
5. Click **Activate** (ASU activates automatically)

**Result:** Access Workday Chat to use the Payroll agent.

**Deactivation:** Deactivate/reactivate anytime in Agent Management Hub; ASU deactivates automatically with agent.

---

## Skills

### Core Payroll Data Retrieval *(required for other skills)*
Retrieves basic information about workers, pay groups, companies.

### Payroll Data Insights
Provides payroll knowledge and performs actions; involves human intervention when necessary. Reduces manual report generation via conversational data queries.

**Supported question types:**

| Type | Example |
|------|---------|
| Averages | "What was the average gross pay for workers in [pay group] over the last 3 periods?" |
| Basic Worker Pay | "What was [worker name] gross/net pay last period?" |
| Basic Pay Group Pay | "Show workers in [pay group] that made more than [amount] in [month]?" |
| Basic Pay Group Info | "Which pay groups are paid on a monthly schedule?" |
| Earning/Deduction Inclusion | "List all earnings and deductions with current values." |
| Earning/Deduction Exclusion | "Which workers in [pay group] did not have [earning/deduction] last period?" |
| Period Comparison | "Compare gross pay of [pay group] Q1 2025 vs Q1 2026." |

**Current scope:** Payroll results, result lines, basic worker info, pay group info. Does not answer questions about compensation plans, cost centers, or specific payroll calculations like overtime.

### Identify Missing Data and Configuration
Monitors system for missing or outdated critical payroll data.

**Functionality:**
- Find and notify workers missing payment elections (all Workday Payroll countries)
- Find and update FLSA work period calendars expiring within 90 days (U.S. only)

**Required security:**
- Worker Data: Payroll (Payment Elections) domain → find/notify missing payment elections
- Set Up: Payroll (FLSA) - USA domain → find/update expiring FLSA calendars

**Example queries:**
- "Identify and update expiring FLSA work calendars."
- "Find and notify workers missing payment elections."

**Notifications sent to practitioner (bell icon) when job completes:**
- Payment elections: related pay group, workers missing elections, whether workers were notified
- FLSA calendars: name of updated calendar, number of work periods added

### Minimum Wage Analysis
Analyzes impact of minimum wage rate changes for U.S. states and Canadian provinces (changes within past 6 months or up to 6 months in future).

**Scope:** U.S. and Canada only.

**Setup required before use:**
1. Enable Set Up: Minimum Wage Agent domain (CAN Payroll + USA Payroll functional areas)
2. Enable Minimum Wage Background Scheduler via Edit Tenant Setup - Payroll → Tax Elections/Taxes section
   - Estimated employer costs available after 01:00 PST next day
   - Only includes workers with hourly plan assignments that enforce minimum wage

**Example queries:**
- "What is the minimum wage for this state/province?"
- "How many workers are affected by the minimum wage change?"
- "Show me how this minimum wage rate will affect my overall employer costs."

---

## Set Up Notifications for Missing Payment Elections

**Prerequisite:** Worker Data: Payroll (Payment Elections) domain (Core Payroll functional area)

**Configure delivery override for email notifications:**
1. Edit Tenant Setup - Notifications → Payroll tab → Missing Payment Elections row
2. Select Override Parent Notification Type Settings
3. Rule prompt → Create Notification Routing Rule → set Channel: Email, Default Frequency: Immediately

**Customize email template:**
1. Email Template Behaviors report → filter for Missing Payment Elections Email
2. Create Email Template task → select Missing Payment Elections Email behavior
3. Add rows: static content (header), static content (body), dynamic content (Actionable Link)
4. Maintain Email Templates task → verify custom template Active check box is selected

---

## Limitations
- Only supports U.S. English
- Remembers only 20 interactions per sequence
- Proxy sessions exclude Payroll agent functionality
- Some skill functionalities are country-specific (e.g., FLSA calendar updates: U.S. only)
- May misinterpret questions or produce unexpected results — always verify output against source of truth

---

## FAQ

| Question | Answer |
|----------|--------|
| Does the Payroll agent respect security? | Yes, respects existing Workday payroll security |
| Why can't I see Agent Management Hub? | Verify ASOR functional area is enabled and users have correct security domain access |
| Agent seems hung up on earlier chat | Ask question differently or start a new thread |
| Why won't agent answer compensation plan/cost center questions? | Scope limited to payroll results, result lines, basic worker info, pay group info |
