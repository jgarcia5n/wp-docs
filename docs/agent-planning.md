# Planning Agent

## Overview
Intelligent conversational AI assistant integrating directly into **Adaptive Planning** via Ask Workday for Adaptive Planning (Ask Workday). Enables FP&A professionals, CFOs, and operational managers to interact with complex multi-dimensional planning models using natural language.

**Role:** Analyst
**Skill:** Data Exploration

---

## Prerequisites
- UMSA (opt-in if on MSA)
- Workday Flex Credits and Platform Entitlement Policy (production only)
- Must register and activate in **production** before using in production sandbox (allow up to 24 hours)
- Configure SSO with user sync and map user profiles between Workday and Adaptive Planning (see Steps: Configure Adaptive Planning for HCM and Financials)
  - *Exception:* If Adaptive Planning instance is not Workday-enabled, SSO and user sync not required — only correct permissions needed
- Set Up Agent System of Record

---

## Setup Steps
1. **Register and Configure Workday-Built Agents** — register Planning Agent, enable Data Exploration skill, select security groups for invoking users
2. Configure security policies for agents (see [Agent Security and Compliance](agent-security-compliance.md))
3. (Optional) Write effective prompts — see Reference: Data Exploration: Prompt Examples
4. (Optional) Use specifications for clear results — see Reference: Data Exploration: Suggested Questions
5. (Optional) Apply best practices for data look-ups and complex variance breakdowns — see Reference: Data Exploration: Best Practices for AI Prompts
