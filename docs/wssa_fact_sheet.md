---
title: Self-Service Agent
document_type: AI Fact Sheet
vendor: Workday
product_family: Workday AI
posted: 2026-02-03
updated: 2026-04-24
source_url: https://community-content.workday.com/content/workday-community/en-us/reference/learn/resources/workday-ai-fact-sheets/self-service-agent.html
program_type: AI Fact Sheets
product_category: Platform and Product Extensions
---

# Self-Service Agent — AI Fact Sheet

## Summary

Workday's Self-Service Agent is an AI-powered conversational assistant that uses large language models (LLMs) to deliver intuitive, context-aware, multi-turn self-service experiences for employees and managers within Workday. It is part of the Sana Platform and Self-Service Agent offering.

**Availability surfaces:** Workday desktop, Workday mobile, Microsoft Teams (when available), Slack (when available), Sana Core, Sana Enterprise.

---

## Skills Catalog

### Employee Self-Service Skills

| Skill | Tier | Capabilities |
|---|---|---|
| Workforce & Frontline Management | Base | Retrieve time tracking, scheduling, and absence information. |
| Workforce & Frontline Management | Advanced | Submit time off requests, check in/out of shifts, enter time blocks, submit time. |
| Human Capital Management | Base | Retrieve worker profile and benefits information. |
| Human Capital Management | Advanced | Update personal data, request reference letters. |
| Talent Management | Base | Retrieve performance goals and feedback history. |
| Talent Management | Advanced | Submit performance reviews, create referrals, create goals. |
| Payroll | Base | Retrieve payslips, tax forms, payment details. |
| Help | Advanced | Submit support requests. |
| Guide | — | Navigation assistant directing users to specific Workday reports or tasks. |
| Policy Intelligence | — | Answer policy questions using customer Knowledge Base articles. |

### Manager Self-Service Skills

| Skill | Tier | Capabilities |
|---|---|---|
| Human Capital Management | Base | Retrieve team structures and work history. |
| Talent Management | Base | Retrieve goal progress and team feedback. |
| Talent Management | Advanced | Conduct reviews, execute development transactions. |
| Workforce & Frontline Management | Base | Retrieve absence info, submitted time, time blocks. |
| Workforce & Frontline Management | Advanced | Manage absence requests, submitted time, and time blocks. |
| Payroll | Advanced | Request payroll inputs. |

### Setup Reference
See "Set Up Self-Service Agent" in the Workday Administrator Guide.

---

## Model Description (Inputs and Outputs)

### Employee Self-Service

- **Workforce & Frontline Management**
  - Input: Natural language queries about shift actions, absence management, schedules, timesheet submission/review (e.g., "How much PTO do I have?").
  - Output: Retrieved information (Base) / ability to start or complete a task (Advanced).
- **Human Capital Management**
  - Input: Queries about total compensation, profile maintenance, organizational directory, benefits elections, employment verification letters.
  - Output: Retrieved information (Base) / task initiation or completion (Advanced).
- **Talent Management**
  - Input: Queries about performance goals, feedback history, completed reviews, self-evaluations, talent profile, candidate referrals, internal job searches, requisition lookups.
  - Output: Retrieved information (Base) / task initiation or completion (Advanced).
- **Payroll (Base)**
  - Input: Queries about paychecks, banking and payment elections, payslip details, tax documents.
  - Output: Retrieved information.
- **Help (Advanced)**
  - Input: Queries to file a net-new support case.
  - Output: Task initiation or completion.
- **Guide**
  - Input: Queries about specific tasks/reports or queries the Agent cannot directly answer.
  - Output: A link to a task or report within Workday.
- **Policy Intelligence**
  - Input: Queries about company policy documents and procedural information.
  - Output: Answers grounded in customer Knowledge Base Articles and the Workday Administrator Guide.

### Manager Self-Service

- **Human Capital Management (Base)**
  - Input: Manager queries about team data or employment history.
  - Output: Retrieved information.
- **Talent Management**
  - Input: Manager queries about team learning/performance status, organizational/collective goal management, direct report evaluations, candidate recruitment/application tracking.
  - Output: Retrieved information (Base) / task initiation or completion (Advanced).
- **Workforce & Frontline Management**
  - Input: Manager queries about team schedules, time-off requests, balances.
  - Output: Retrieved information.
- **Payroll (Advanced)**
  - Input: Manager-initiated payroll request queries.
  - Output: Task initiation or completion.

---

## How It Works

- **Most skills:** Use LLMs for reasoning to select and execute tools associated with each skill. Tools are visible to customers in the **Agent System of Record**.
- **Employee Self-Service – Guide:** Powered by **Enhanced Tasks and Reports Discovery** to route the user to the correct target page.
- **Employee Self-Service – Policy Intelligence:** Uses a **Retrieval Augmented Generation (RAG)** pipeline:
  1. A text embedding model converts document chunks into numerical representations, building an index for semantic search.
  2. On user query, the system retrieves the most relevant documents by comparing the query's embedding to the indexed representations.
  3. Retrieved sources are passed to a **Google Gemini LLM**, which generates a response grounded in the retrieved content.

---

## How It Was Trained

- The **Google Gemini LLM** is a pre-trained foundation model. **Workday does not train or fine-tune** it.
- Workday focuses on application-layer techniques: **prompt engineering, context engineering, and evaluation**.
- The **text embedding model** and **Google Gemini LLM** used in Policy Intelligence are pretrained; no additional Workday training or fine-tuning.
- For the **Guide** skill, see the **Enhanced Tasks and Reports Discovery** fact sheet.

---

## Model QA and Testing

Model behavior is validated through:
- Qualitative review.
- Quantitative evaluation against **structured synthetic datasets** and **predefined analytical scenarios**.
- Assessment focuses on **accuracy, consistency, and reliability** across varied situations.

---

## Monitoring

Workday continuously reviews:
- Model performance.
- System metrics.
- User feedback.

This monitoring is used to detect behavior changes and signs of **concept drift**.

---

## User Feedback

- Collected signals: **thumbs up, thumbs down, category selections, user interaction signals**.
- Purpose: Monitor performance and guide manual improvements to product experience and answer quality.
- **User feedback is NOT used to retrain or fine-tune any models** powering the Self-Service Agent.

---

## Frequency of Data Extraction

| Skill | Extraction Cadence |
|---|---|
| Policy Intelligence (Help Article data) | Daily, except Saturdays. |
| Guide (task and report data) | Weekly, every Sunday. |
| Contributed agent traces | De-identified, then reviewed **biweekly**. Used to improve product experience and reliability. **Not used for model training or fine-tuning.** |

---

## Limitations

### Assistant 1.0 Coexistence
- The **Assistant 1.0 bubble** is removed from Workday desktop/mobile only if the Self-Service Agent is active **and** the user has access via at least one enabled skill.
- If another agent (e.g., Payroll Agent) is active but the Self-Service Agent is not enabled for users, the Assistant 1.0 bubble remains accessible.
- Removal does **not** affect Assistant 1.0 within the Workday search bar or Workday for Slack/Teams at this time.

### Language Support
- **Optimized and validated:** English, French, French-Canadian, German, Japanese.
- The underlying Google Gemini LLM supports 30+ additional languages, but Workday does **not guarantee** verified accuracy or stylistic consistency outside the five supported languages.

### SKU Dependencies
- Most skills require additional SKUs.
- Example: **Policy Intelligence** and **Employee Self-Service – Help** require an active subscription to the **Help SKU**.

### Session Context
- Context is preserved within a **single continuous chat thread for up to 30 days**.
- Users can resume prior conversations from history; context **does not carry across separate chat threads**.

---

## Responsible AI

### Principles
AI is designed to **amplify, not replace** human decision making by providing recommendations and predictions. Workday aligns to four key principles guiding responsible AI development. Responsible AI governance emphasizes a standardized approach to identifying and mitigating risks.

References: "Workday's Continued Diligence to Ethical AI and ML Trust" and "Responsible AI Governance at Workday."

### Lifecycle Approach
- Workday uses a **lifecycle review process** evaluating products by development phase, maturity, and susceptibility to ethical risks.
- An **initial risk evaluation** assesses potential impact (e.g., material inequities affecting economic opportunities like employment or finance).
- Risky tools proceed through mitigation steps before and after production release.
- Focus areas: **human oversight, bias and fairness, transparency, explainability, validity and reliability, maintenance and monitoring, record keeping, and decision making**.
- Customers are responsible for understanding and complying with their legal obligations (assessment, testing, documentation) arising from their use of the Self-Service Agent.

### Bias Evaluation
- The Self-Service Agent supports users with questions and guidance; it does **not evaluate or quantitatively assess individuals** for financial, employment, or economic opportunities.
- Workday has assessed this feature as **low risk for susceptibility to bias**.

---

## Data Privacy

- Delivered via Workday's **AI feature delivery framework**, providing customers with transparency and control over their data.
- GDPR compliance information is available via the General Data Protection Regulation (GDPR) FAQs.
- For privacy reviews, customers can contact Workday Support.

### Privacy Considerations
- Information to assist customer privacy reviews is provided in the **"Supporting Privacy in Workday AI Features"** page.
- Additional questions should be directed to Workday Support.

---

## Quick Reference for AI Agents

- **Product:** Self-Service Agent (Workday)
- **Type:** Conversational AI assistant (multi-turn, context-aware)
- **Core technology:** LLM-based reasoning + tool calling; RAG for Policy Intelligence
- **Underlying LLM:** Google Gemini (pre-trained, not fine-tuned by Workday)
- **User roles:** Employees, Managers
- **Skill tiers:** Base (retrieval), Advanced (action/task execution)
- **Supported languages (validated):** English, French, French-Canadian, German, Japanese
- **Session retention:** Up to 30 days per thread
- **Training data sources:** None added by Workday; user feedback NOT used for training
- **Bias risk classification:** Low
- **Surfaces:** Workday desktop/mobile, Microsoft Teams, Slack, Sana Core, Sana Enterprise