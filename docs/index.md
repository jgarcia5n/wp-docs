# Workday Documentation Index

> **Description:** Each section is namespace-isolated by Workday functional area/module to support clean merging across documentation sets.


## Workday HCM – Admin Guide (May 2026)

| Filename | Purpose | Doc Type | Key Workday Objects / Features | Dependencies |
|----------|---------|----------|-------------------------------|--------------|
| `glossary.md` | Complete A–Z definitions of Workday platform terms across all functional areas | Admin Guide | Business Process, Security Groups, Worktags, Integration, Compensation, Absence, Time Tracking, Staffing, Benefits, Awards, Recruiting, Academic, Scheduling | Referenced by all other files; authoritative term source |
| `hcm-worker-information.md` | Configuration and management of worker personal data, consent, documents, and country-specific reporting | Admin Guide | Active Consent Preferences, Personal Information by Country, Worker Photos, Worker Documents, Worker Tags, Employee Timeline, Talent Statements, Establishments, EEO, DPAE, ACA | Depends on `glossary.md`; feeds `hcm-staffing.md` |
| `hcm-recruiting.md` | Full configuration of Workday Recruiting: requisitions, candidates, career sites, interviews, offers, and onboarding | Admin Guide | Job Requisitions, Evergreen Requisitions, Candidate Pools, Career Sites, Recruiting Campaigns, Job Postings, Recruiting Agencies, Referrals, Questionnaires, Assessments, Interviews, Offers, Onboarding Plans | Depends on `hcm-staffing.md` (job profiles, staffing models); feeds `hcm-staffing.md` (hire flow) |
| `hcm-staffing.md` | Configuration of the full worker lifecycle: hire, job changes, positions, termination, organization assignments, and headcount | Admin Guide | Staffing Models (Job Management, Position Management), Job Catalog, Job Profiles, Job Families, Pre-Hire, Employment Agreements, Hire, Terminate, Contingent Workers, Multiple Jobs, International Assignments, Headcount Plans, HR Partner Hub | Depends on `hcm-worker-information.md`; depends on `hcm-compensation.md` for defaulting |
| `hcm-compensation.md` | Configuration of compensation structures, plan types, eligibility rules, review cycles, and severance | Admin Guide | Compensation Packages, Grades, Grade Steps, Salary Plans, Hourly Plans, Bonus Plans, Stock Plans, Merit Plans, One-Time Payments, Compensation Reviews, Pay Equity, Severance Plans, Compensation Elements | Depends on `hcm-staffing.md` (job profiles, eligibility); integrates with Payroll |
| `hcm-benefits.md` | Configuration of health, insurance, retirement, and wellness benefit plans, enrollment events, COBRA, ACA, and dependents | Admin Guide | Benefit Groups, Enrollment Events, Benefit Plans (Health Care, Insurance, Retirement Savings, HSA, FSA), Passive Events, Evidence of Insurability, COBRA, ACA Reporting, Open Enrollment, Benefit Credits, Wellness | Depends on `hcm-staffing.md` (hire/termination triggers); integrates with Payroll |
| `hcm-talent-skills.md` | Configuration of goals, career development, talent reviews, employee reviews, succession, feedback, Skills Cloud, and workforce metrics | Admin Guide | Goals, Development Items, Career Hub, Talent Marketplace, Flex Teams, Talent Reviews, Employee Reviews, Performance Reviews, Calibration, Feedback, Succession Plans, Talent Pools, Skills Cloud, Opportunity Graph | Depends on `hcm-worker-information.md` (worker profiles); depends on `hcm-learning.md` for development |
| `hcm-learning.md` | Configuration of learning content, enrollments, campaigns, certifications, and extended enterprise learning | Admin Guide | Learning Courses, Course Offerings, Learning Programs, Learning Certifications, Learning Campaigns, Extended Enterprise Learning, Virtual Classroom (Teams/Zoom), Cloud Connect for Learning, Learning Enrollments | Depends on `hcm-talent-skills.md` (Skills Cloud integration); feeds development plans |
| `hcm-absence-time.md` | Configuration of Absence Management (time off, leave of absence, accruals) and Time Tracking (entry, calculations, payroll integration) | Admin Guide | Time Off Types, Time Off Plans, Leave of Absence, Accruals, Absence Calendar, Time Entry Templates, Time Code Groups, Time Calculations, Period Schedules, Time Attestations, Time Entry Validations, Absence Occurrences | Depends on `hcm-staffing.md` (work schedules); integrates with Payroll; cross-references `hcm-scheduling-safety-hubs.md` |
| `hcm-scheduling-safety-hubs.md` | Configuration of Workday Scheduling, Safety Incident Tracking, ESS/MSS, HCM Hubs, Workday Assistant, Workday Everywhere, and Workday Help | Admin Guide | Workday Scheduling, Labor Optimization, Shift Swapping, Safety Incidents, Employee Self-Service, Manager Self-Service, HCM Admin Hub, Manager Insights Hub, Workday Assistant, Workday Everywhere (Sana Agent), Case Management, Knowledge Management | Depends on `hcm-absence-time.md` (absence-schedule integration); depends on `hcm-talent-skills.md` (Manager Insights Hub data) |

---

## Workday Authentication and Security – Admin Guide (May 2026)

| Filename | Purpose | Doc Type | Key Workday Objects / Features | Dependencies |
|----------|---------|----------|-------------------------------|--------------|
| `security-authentication.md` | Configuration of authentication policies, MFA, SAML SSO, OAuth, OpenID Connect, step-up authentication, and sign-in monitoring | Admin Guide | Authentication Policies, Authentication Rules, MFA (Authenticator App, Duo, SMS, Email OTP), SAML, OpenID Connect, OAuth 2.0, Step Up Authentication, Trusted Devices, Risk-Based Authentication, Proxy Access | Cross-references `security-configurable.md` (security groups used in auth rules); depends on `integrations-core.md` (OAuth for integrations) |
| `security-configurable.md` | Configuration of domain and business process security policies, all security group types, service centers, constrained proxy, accounts, user provisioning, data privacy, and data security | Admin Guide | Domain Security Policies, Business Process Security Policies, Functional Areas, Security Group Types (Role-Based, Rule-Based, Segment-Based, Intersection, Aggregation, Job-Based, User-Based, etc.), Service Centers, Constrained Proxy, Workday Accounts, User Provisioning Workspace, UAM, Data Masking, Data Purging, Data Scrambling, BYOK, KMS, X.509 Certificates, PGP Certificates | Core dependency for all HCM and Integration files; security groups must exist before policies can be assigned |

---

## Workday Integrations – Admin Guide (May 2026)

| Filename | Purpose | Doc Type | Key Workday Objects / Features | Dependencies |
|----------|---------|----------|-------------------------------|--------------|
| `integrations-core.md` | Integration technology selection guide, launch and management of integration events, EIB setup (inbound and outbound), and connector catalog overview | Admin Guide | Integration Technologies (EIB, Connectors, Studio, Orchestrate, WWS, REST API), Integration Events, Integration Schedules, Inbound EIB, Outbound EIB, EIB Spreadsheet Templates, Transport Protocols, Integration Transformations, Connector Templates Catalog | Depends on `security-configurable.md` (Integration Security Groups, ISU accounts); feeds all other integration files |
| `integrations-connectors.md` | Configuration of Benefits, Financials, and HCM connector integrations including Cloud Connect for Benefits, bank connectors, EDI, and all Core Connectors | Admin Guide | Cloud Connect for Benefits, Benefits Connector V2, COBRA Integration, DIS Integration, Document Transformation Connector, Accounting Journal Connector, Bank Statement Import, EDI 810/850/855/856, Electronic Payments, Payment Connector, Workday Bank Connectivity, Account Provisioning, Background Check Connector, Core Connector: Worker, Core Connector: Global Worker, LinkedIn RSC, E-Verify, Directory Service, Okta Integration, Worker Time Block Inbound | Depends on `integrations-core.md`; depends on `security-configurable.md` (ISU security); cross-references `hcm-benefits.md`, `hcm-staffing.md`, `hcm-recruiting.md` |
| `integrations-payroll-platform.md` | Configuration of Global Payroll Connect (PECI, DCoD, WECI), Workday Payroll Connectors (country-specific tax filing, check printing), Integration Services, Workday Extend, REST API, and WWS/SOAP API | Admin Guide | Global Payroll Connect, Payroll Effective Change Interface (PECI), Data Changes on Demand (DCoD), Worker Effective Change Interface (WECI), Global Payroll Hub, Event Outbound Notifications, Payroll Interface Connector, ATO STP, HMRC RTI, Canada T4/T4A/RL-1, SuperStream, Integration Business Processes, Integration Services, Orchestrate for Integrations, Workday Extend, REST API, WWS SOAP API, Integration IDs | Depends on `integrations-core.md`; depends on `security-configurable.md` (ISU accounts, certificates); cross-references `hcm-benefits.md`, `hcm-compensation.md`, `hcm-absence-time.md` |

---

## Workday Manage Workday – Admin Guide (May 2026)

| Filename | Purpose | Doc Type | Key Workday Objects / Features | Dependencies |
|----------|---------|----------|-------------------------------|--------------|
| `manage-tenant-config.md` | Tenant setup tasks, mobile configuration, notifications, navigation, globalization, content management, calendars, branding, custom objects, calculated fields, calculations, duplicate management, and auditing | Admin Guide | Edit Tenant Setup (all tabs), ID Definitions, Sequence Generators, Opt-In Features, Mobile Setup, Notifications, Hubs, Dashboards, Landing Pages, Worklets, Globalization, Document Management, Drive, Workday Docs, Calendars, Work Schedule Calendars, Custom Objects, Calculated Fields, Advanced Lookup Tables, Calculations, Duplicate Management Framework, Audit Trails, User Activity Logging, System Health Dashboard | Core dependency for all other modules; custom objects and calculated fields used across HCM, Financials, and Reporting |
| `manage-orgs-roles-bp.md` | Configuration of organization types, supervisory and custom orgs, roles, locations, hierarchies, and the full business process framework including step types, routing, delegation, notifications, and BP-specific guidelines | Admin Guide | Supervisory Organizations, Custom Organizations, Matrix Organizations, Org Studio, Committees, Workteams, Assignable Roles, Role Assignments, Locations, Location Hierarchies, Organization Hierarchies, Business Process Framework, BP Step Types, Rule-Based BPs, Task Consolidation, Delegation, Mass Operations, BP Notifications, Questionnaires (BP), Requests, Dynamic Documents | Depends on `manage-tenant-config.md`; security for BPs depends on `security-configurable.md`; referenced by all HCM files for routing configuration |
| `manage-ux-collaboration.md` | User experience configuration including My Tasks, Journeys, QuickTips, electronic signatures, worktags, and collaboration tools (Activity Stream, Campaigns, Engagement Builder, Surveys) | Admin Guide | My Tasks, People Experience, Home Page, Journeys, Guidance Workspace, QuickTips, Electronic Signatures (Adobe Sign, DocuSign), Worktags, Worktag Defaulting, Activity Stream, Campaigns, Scheduled Distributions, Engagement Builder, Surveys | Depends on `manage-tenant-config.md`; Journeys reference `hcm-staffing.md`; worktags are used across Financials and HCM |

---

## Workday Reporting and Analytics – Admin Guide (May 2026)

| Filename | Purpose | Doc Type | Key Workday Objects / Features | Dependencies |
|----------|---------|----------|-------------------------------|--------------|
| `reporting-core.md` | Core reporting framework: data sources, all custom report types (Simple, Advanced, Matrix, Composite, Trending, Transposed, Search, nBox), scheduling, report administration, RaaS, WQL, and Workday Report Designer | Admin Guide | Business Objects, Data Sources, Custom Reports, Report Writer, Simple/Advanced/Matrix/Composite/Trending/Transposed/Search/nBox Reports, Charts, Calculated Fields in Reports, Report Schedules, Burst Reports, Report Groups, Custom Dashboards, Worklets, Scorecards, Business View Data Sources, RaaS, Workday Query Language (WQL), Workday Report Designer | Depends on `manage-tenant-config.md` (calculated fields, custom objects); security depends on `security-configurable.md`; feeds all dashboard/hub configurations |
| `reporting-advanced.md` | Advanced analytics tools: Discovery Boards, Prism Analytics (tables, datasets, pipelines, PEL, connections, publishing), People Analytics, Worksheets, Slides, and OfficeConnect financial reporting | Admin Guide | Discovery Boards, Vizzes, Prism Analytics, Prism Tables, Prism Datasets, Dataset Pipelines, Dataset Stages, Prism Expression Language (PEL), Cloud Connections (S3, Snowflake, BigQuery, Salesforce, SFTP, Azure, Redshift, GCS), Data Change Tasks, Analytic Dimensions, Analytic Data Sources, People Analytics, VIBE Index, Worksheets, Workbook Templates, Slides, OfficeConnect, Financial Reporting Data Model | Depends on `reporting-core.md` (custom reports as data sources for Prism); Prism requires provisioning via Workday Support; People Analytics requires Prism; security via `security-configurable.md` (Prism Access Security Groups) |

---

## Workday VNDLY – Admin Guide (May 2026)

| Filename | Purpose | Doc Type | Key Workday Objects / Features | Dependencies |
|----------|---------|----------|-------------------------------|--------------|
| `vndly-admin-config.md` | VNDLY tenant setup, authentication (MFA, SAML SSO), navigation, foundational configurations, documents, custom fields, tasks, notifications, users and security roles, delegation, and data privacy | Admin Guide | VNDLY Login, SAML SSO, MFA, Company Settings, Organization Hierarchy, Locations, Management Levels, Term Overrides, Custom Fields, Custom Data Sources, Sequences, Tasks V2, Notification Groups, Security Roles, Child Security Roles, Security Policies, Delegation, Data Privacy (GDPR Erasure) | Prerequisite for all other VNDLY files; security roles reference `security-configurable.md` concepts; SAML setup cross-references `security-authentication.md` |
| `vndly-vendors-jobs.md` | Vendor management, job workflow (templates, publish, interviews, offers), workflow approvals, checklists, candidate management, work orders (lifecycle, source types, termination), pre-identified workflows, bulk updates, and tenure | Admin Guide | Vendors, Vendor Groups, Job Distributions, Authorized Services, Job Templates, Rate Cards, Job Categories, Direct Hire, Workflow Approvals, Approver Types, Checklists, Candidates, Consolidated Candidate Records, Work Orders, Source Types (Directed, Payrolled, Supplier Sourced, Direct Hire, SOW), Pre-Identified Workflows, Bulk Updates, Bulk Uploads, Tenure Policies | Depends on `vndly-admin-config.md`; work orders feed `vndly-financial-ops.md` (timesheets, invoices); workforce connector in `vndly-sow-reporting-integrations.md` syncs work order data to Workday HCM |
| `vndly-financial-ops.md` | Charge codes, timesheet types and configuration (Summary, Time In/Out, Clock & Assign), work types, overtime, expenses (setup, event-based), invoicing (templates, billing cycles, payments), shifts, Calculation Engine, and tax management | Admin Guide | Charge Codes, Charge Code Tables, Timesheets, Timekeeping Settings, Work Types, Overtime Rules, Expense Categories, Expense Report Types, Event-Based Expenses, Invoice Templates, Billing Cycles, Invoice Payments, Shifts, Shift Differentials, Calculation Engine, Formula Components, Formulas, Formula Groups, Tax Overrides, Tax Management | Depends on `vndly-vendors-jobs.md` (work orders are required before timesheets/expenses); invoicing output feeds `vndly-sow-reporting-integrations.md` (P2P Goods Receipt) |
| `vndly-sow-reporting-integrations.md` | Statement of Work configuration and lifecycle (milestones, fixed price, units, change orders), Worker Profile Management (v1 and v2), VNDLY Report Builder, RFP, Procure-to-Pay integration, and Workday VNDLY Workforce Connector | Admin Guide | SOW Templates, SOW Payments (Milestone, Fixed Price, Units), Change Orders, SOW Participant Roles, Spend Approval Authority, Worker Profile Management v1/v2, WPM Work Orders, Report Builder, Calculated Fields in Reports, Scheduled Reports, RFP, Procure-to-Pay REST API (PR, PO, GR, Cost Objects), Workforce Connector, Foundational Data Integration, Transactional Integration, ISU Account, Field Mappings (Workday ↔ VNDLY) | Depends on `vndly-vendors-jobs.md` and `vndly-financial-ops.md`; Workforce Connector requires Workday HCM setup from `hcm-staffing.md` and security from `security-configurable.md`; P2P connects to external procurement systems |

---


# Workday AI Documentation Index

**Source:** Workday AI Product Summary — May 14, 2026
**Coverage:** Agent System of Record, Agent Security, Agent Gateway, Agent Marketplace, Workday-Built Agents (BP Optimize, Payroll, Self-Service, Planning), Sana for Workday, Platform Consumption Console, AI Data Contributions.
**Intended Use:** AI consumption reference — structured for retrieval, reasoning, and configuration assistance across Workday AI functional areas.

---

## Workday AI – Agent Platform

| Filename | Purpose | Doc Type | Key Objects / Features | Dependencies |
|----------|---------|----------|----------------------|--------------|
| `agent-system-of-record.md` | Complete reference for ASOR setup, agent lifecycle, security domain configuration, reporting, and sample API agent definition. | Admin Guide | Agent System of Record (ASOR), Agent Management Hub, Agent System User (ASU), Maintain Functional Areas, Domain Security Policies, Agent Registry, All AI Agent Accounts | Requires UMSA + Flex Credits for production; referenced by all other agent files |
| `external-agents.md` | Instructions for registering, authenticating, and configuring external (partner/self-built) agents via the ASOR REST API, including OAuth flows and ASU token management. | Admin Guide | ASOR API (`/asor/v1/agentDefinition`), Register API Client, View Agent Provider, View Agent Platforms, Delegate ASU, Ambient ASU, JWT assertion | `agent-system-of-record.md`, `agent-gateway.md` |
| `agent-security-compliance.md` | Reference for Agent Security framework including execution modes, ASU identity model, Agent Interaction Policy, security policy configuration for delegate and ambient agents, and audit reporting. | Admin Guide | Agent Security, Agent System User (ASU), Ambient Agent Security Group, Agent Interaction Policy, View Security for Agent Skill, View AI Agent User Audit Trail, Delegate Mode, Ambient Mode | `agent-system-of-record.md` |
| `agent-gateway.md` | Technical reference for Agent Gateway: regional endpoints, OAuth 2.0 authentication flow, API request structure, and SOAP endpoint format. | Admin Guide | Agent Gateway, OAuth 2.0 Authorization Code Grant, wd-agent-tenant-alias HTTP header, Regional Endpoints (US/EU/UK/CAN/AU/SIN/IND/JPN) | `external-agents.md`, `agent-security-compliance.md` |
| `agent-marketplace.md` | Concept reference for Agent Marketplace within Workday Marketplace, agent listing structure, Responsible AI badging, and user types. | Feature Doc | Agent Marketplace, Workday Marketplace, Built on Workday (BoW), Responsible AI badging | None |

---

## Workday AI – Workday-Built Agents

| Filename | Purpose | Doc Type | Key Objects / Features | Dependencies |
|----------|---------|----------|----------------------|--------------|
| `agent-bp-optimize.md` | Setup, concept, Process Improvement skill reference, dashboard features, benchmarking, trend/anomaly analysis, optimization recommendations, and sample prompts for the BP Optimize Agent. | Admin Guide | BP Optimize Agent, Process Improvement skill, Agent Management Hub, Business Process Administrator domain, BP Optimize Agent domain, benchmarking, anomaly detection | `agent-system-of-record.md`; US/EU tenants only; <2M transactions/month |
| `agent-payroll.md` | Setup, skill concepts (Core Payroll Data Retrieval, Payroll Data Insights, Identify Missing Data and Configuration, Minimum Wage Analysis), notification configuration, and FAQ for the Payroll Agent. | Admin Guide | Payroll Agent, Identify Missing Data and Configuration skill, Minimum Wage Analysis skill, Payroll Data Insights skill, Find Workers Missing Payment Elections, FLSA Work Period Calendars, Minimum Wage Background Scheduler | `agent-system-of-record.md`; Workday Payroll countries only |
| `agent-self-service.md` | Full reference for Sana Self-Service Agent: setup, all ESS/MSS/Guide/Policy Intelligence skills and tools with descriptions and limitations. | Admin Guide | Self-Service Agent, ESS skills, MSS skills, Guide skill, Policy Intelligence skill, Workday Chat, Request Time Off BP, Request Payroll Inputs BP, Employee Review BP, Correct Time Off BP | `agent-system-of-record.md`; Guide skill always required |
| `agent-planning.md` | Setup steps for registering the Planning Agent in ASOR; integration with Adaptive Planning via Ask Workday; Data Exploration skill reference pointers. | Admin Guide | Planning Agent, Adaptive Planning, Ask Workday for Adaptive Planning, Data Exploration skill, SSO user sync | `agent-system-of-record.md`; requires Adaptive Planning |

---

## Workday AI – Sana and Administration

| Filename | Purpose | Doc Type | Key Objects / Features | Dependencies |
|----------|---------|----------|----------------------|--------------|
| `sana-for-workday.md` | Sana Core vs. Enterprise capability comparison, Sana Workspace setup (user provisioning, home card), and Set Up AI Administrator Security Permissions task walkthrough. | Admin Guide | Sana Core, Sana Enterprise, Sana Workspace, Set Up AI Admin Security Permissions, User Provisioning Workspace, Home Cards Workspace, Sana Agent User Provisioning domain, Sana Enterprise domain | UMSA required; Sana Enterprise SKU for Enterprise features; `agent-system-of-record.md` |
| `platform-consumption-console.md` | Setup and reference for Platform Consumption Console: security configuration, Flex Credit balance/entitlement, Rate Card, consumption components, and notifications. | Admin Guide | Platform Consumption Console, Management Dashboard: Platform Consumption Console domain, Flex Credits, Rate Card, Credit Balance, Credit Entitlement, Embedded Entitlement Overview | UMSA + Flex Credits policy required |
| `ai-data-contributions.md` | Comprehensive reference for managing AI data contributions under UMSA and MSA/ISA, including notification setup, opt-in/out procedures, and full data category reference across all product lines (Financials, HCM, Payroll, Spend, People Experience). | Admin Guide | Data Contribution for Workday AI, Manage: Data for ML Features domain, View: Data for ML Features domain, Innovation Services, ISA→UMSA transition FAQ, Pay Anomalies, Time Anomaly, Skills Cloud, Expense Protect, Journal Insights | UMSA or ISA (MSA); references product-line-specific features across HCM, Financials, Payroll, Spend, People Experience |

---

---

## Workday Everywhere – Microsoft Teams Integration

| Filename | Purpose | Doc Type | Key Objects / Features | Dependencies |
|---|---|---|---|---|
| `workday_teams_overview.md` | Introduces Workday Everywhere product suite and the three deployment phases for Workday for Microsoft Teams. | Feature Doc | Workday Everywhere, Workday for Microsoft Teams, Workday for Slack, Workday Peakon Employee Voice | None — start here |
| `workday_teams_collaborate_plan.md` | Defines stakeholders, their responsibilities, and the three planning questions to answer before deployment. | Admin Guide | Workday Everywhere User (security domain), HR Administrator role, IT Administrator role, Microsoft Teams admin center, app permission policies | `workday_teams_overview.md` |
| `workday_teams_configure_connect_test.md` | Step-by-step instructions for HR and IT to configure security, set up Workday Assistant, add and permission the Teams app, connect the tenant, and run a pilot test. | Admin Guide | Steps: Set Up Security for Workday Everywhere, Setup Considerations: Workday Assistant, Set Up Notifications for Workday Everywhere, Innovation Services Features and Machine Learning Data Contributions, Workday Everywhere User (security domain), Microsoft Teams admin center, app permission policy, tenant alias | `workday_teams_collaborate_plan.md` |
| `workday_teams_deploy_communicate_measure.md` | Covers production deployment, org-wide app enablement, preinstall/pin via setup policies, communication channel guidance, and usage measurement via Assistant Usage Reports discovery board. | Admin Guide | Set Up Notifications for Workday Everywhere, Discovery Boards (Administration / Create / Manage Delivered), Assistant Usage Reports, Workday Drive, Microsoft Teams setup policies, app permission policies | `workday_teams_configure_connect_test.md` |
| `workday_teams_user_experience.md` | Documents the end-user first-time connection flow, connection message triggers/scope, awareness message triggers, and new feature admin notifications. | User Guide / Feature Doc | Workday Everywhere User (security domain), Connection Message, Awareness Message, Set Up Notifications for Workday Everywhere, MFA/SSO, Authorize Workday | `workday_teams_configure_connect_test.md` |
| `microsoft_teams_slack_faq.md` | Workday Everywhere FAQ for Workday for Slack, Workday for Microsoft Teams, and Workday for Microsoft 365 Copilot: setup and installation, the Sana Self-Service Agent (SSA) experience, M365 Copilot integration, capabilities, feature configuration, testing, rollout, troubleshooting, and privacy/security/compliance | FAQ | Workday Everywhere, Workday for Slack, Workday for Microsoft Teams, Workday for Microsoft 365 Copilot, Sana Self-Service Agent (SSA), Workday Assistant (legacy — 2027R2 sunset), Agent Management Hub (ASOR), Flex Credits, UMSA, OAuth 2.0, tenant alias, Workday Everywhere User domain, WQL for Workday Extend, Set Up Notifications for Workday Everywhere, Microsoft Graph API permissions, TLS 1.2, KMS | `workday_teams_overview.md`, `workday_teams_configure_connect_test.md`, `wssa_overview.md`, `wssa_configuration.md` |

---

## Workday Platform – Self-Service Agent (WSSA)

| Filename | Purpose | Doc Type | Key Objects / Features | Dependencies |
|---|---|---|---|---|
| `wssa_overview.md` | Introduces the Self-Service Agent: value proposition, business case, core capabilities, and available platforms | Feature Doc | Self-Service Agent, Policy Intelligence, Guided Navigation, HCM, Talent, Pay, Workforce Management, Sana | None |
| `wssa_roadmap.md` | Documents WSSA feature availability as of Jan 31 2026 and the Q1 2026+ future roadmap | Feature Doc | Conversational Actions, Multi-turn, Policy Intelligence, Guided Navigation, Multilingual Support, Rich Generative UI, Source Citations, Custom Error Messaging, ASOR, ESS, MSS | `wssa_overview.md`, `wssa_configuration.md` |
| `wssa_ess_skills.md` | Complete list of available Employee Self Service (ESS) skills and tool groupings by domain | Feature Doc | ESS skills, HCM, Workforce Management, Talent Management, Payroll, Help, Base/Advanced skill tiers | `wssa_overview.md`, `wssa_flex_credits.md` |
| `wssa_mss_skills.md` | Complete list of available Manager Self Service (MSS) skills and tool groupings by domain | Feature Doc | MSS skills, HCM, Workforce Management, Talent Management, Payroll, Base/Advanced skill tiers, Change Job template | `wssa_overview.md`, `wssa_flex_credits.md` |
| `wssa_additional_skills.md` | Details the Guide Skill (navigation deeplinks) and Policy Intelligence Skill (KB/Admin Guide search) | Feature Doc | Guide Skill, Policy Intelligence, Help SKU, navigational deeplink, Help Knowledge Base, Admin Guide | `wssa_overview.md`, `wssa_flex_credits.md` |
| `wssa_configuration.md` | Prerequisites, step-by-step enablement process, Agent System of Record (ASOR) setup, and Agent Gateway architecture | Admin Guide | uMSA, Flex Credits & Platform Entitlement Policy, Graph API Application Domain, ASOR, Agent Gateway, Agent Registry, Security Administrator, MCP, A2A | `wssa_overview.md`, `wssa_flex_credits.md`, `wssa_sana.md` |
| `wssa_assistant_migration.md` | Comparison of Workday Assistant vs. WSSA with feature matrix, UX differences, and transition timeline | Feature Doc | Workday Assistant, WSSA, 2027R2 deprecation, LLM, multi-turn, Sana compatibility | `wssa_overview.md`, `wssa_configuration.md` |
| `wssa_sana.md` | Overview of Sana Core (included with Flex Credits) and Sana Enterprise (additional SKU) and their relationship to WSSA | Feature Doc | Sana Core, Sana Enterprise, Flex Credits & Platform Entitlement Policy, HCM, FIN, enterprise search, agentic chat | `wssa_configuration.md`, `wssa_flex_credits.md` |
| `wssa_flex_credits.md` | Explains the Flex Credits consumption model, per-tool-call billing, credit exemptions, usage prediction, and monitoring via PCC | Feature Doc | Flex Credits, Platform Consumption Console (PCC), tool call, ASOR, Illuminate Agents, Rate Card, sandbox/production, Credit Balance | `wssa_configuration.md`, `wssa_ess_skills.md`, `wssa_mss_skills.md` |
| `wssa_fact_sheet.md` | Workday AI Fact Sheet for the Self-Service Agent: skills catalog (ESS/MSS by tier), model inputs/outputs, how it works (RAG, Gemini), training, QA/testing, monitoring, user feedback, data extraction cadence, limitations, Responsible AI, and data privacy | AI Fact Sheet | Self-Service Agent, ESS/MSS skills, Base/Advanced tiers, Guide skill, Policy Intelligence, Enhanced Tasks and Reports Discovery, RAG, Google Gemini LLM, text embedding model, Assistant 1.0 coexistence, language support, 30-day session retention, concept drift, low bias risk classification | `wssa_overview.md`, `wssa_ess_skills.md`, `wssa_mss_skills.md`, `wssa_additional_skills.md` |
---
---

## Workday Analytics and Reporting – Discovery Boards

**File:** `discovery_boards_user_guide.md`
**Type:** User Guide
**Purpose:** Complete reference for creating, configuring, sharing, and administering Discovery Boards in Workday, including all viz types, controls, filters, data sources, and reporting limits.

**Key Workday Objects and Features:**
- Discovery Boards, Vizzes (Chart, Donut Chart, Pivot Table, Table, Area Chart, Bar Chart, Heatmap, KPI Chart, Line Chart, Scatterplot, Waterfall)
- Workday Drive, Delivered Discovery Boards report, Prism Analytics data sources, Extend application data sources
- Builder panel, Filter panel, Configuration panel, Formatting panel, Data source panel, Control panel
- Viz drop zones (X-Axis, Y-Axis, Color, Size, Angle, Columns, Rows, Measures, Dimensions)
- Summarization fields (AVG, MAX, MIN, SUM, MEDIAN, PERCENTILE, COUNT_DISTINCT), Attribute fields
- Prompt values (static, dynamic via Global BO, Override at Viz, Create Control and Link)
- Sheet filters, Viz filters, AND/OR filter conditions, nested filter groups
- Curated data source lists, Curated field lists (Data Source Fields, Drill By Fields, Show Details Fields)
- Discovery Board Controls, Maintain Data Source List for Discovery Boards, Maintain Field Lists for Reporting reports
- Maintain Dashboards, Configure My Worklet Landing Pages, Home page worklets
- Security domains: Discovery Boards: Create, Drive, Discovery Boards: Manage Delivered Discovery Boards, Discovery Boards: Manage Curated Data Source List, Discovery Boards: Manage Curated Data Source Field List, Discovery Boards: Manage Drilling Field Lists, Discovery Boards: Set Up Discovery Board as a Worklet
- Reporting limits: RDS types, Prism, viz-level limits (rows, cells, color groupings), scheduled output, browser report limits

**Dependencies:** Requires Workday Drive setup; Prism Analytics for Prism data sources; People Experience for Home page worklets; Custom Report Creation domain for viz export to reports.

---

## Workday Platform – Everywhere (Teams and Slack)

**File:** `workday_everywhere_capabilities.md`
**Type:** Feature Doc
**Purpose:** Reference for all Workday Everywhere capabilities in Microsoft Teams and Slack, covering Quick Actions, Conversations, Dashboards (My Tasks, My Calendar, My Team, Admin), and Notifications/Approvals.

**Key Workday Objects and Features:**
- Workday Everywhere, Workday Assistant, Quick Actions, Workday for Microsoft Teams, Workday for Slack
- Home tab Quick Actions, Chat/Messages tab conversations
- My Tasks dashboard, My Calendar dashboard, My Team dashboard, Admin Dashboard
- Response types: Take Action / Return Information, Navigation into Workday
- Notifications: Connection Message, Awareness Message, Approvals, Help Case Updates, Feedback, Expense Notifications
- Set Up Notifications for Workday Everywhere task
- Innovation Services Agreement (ISA), Workday Everywhere Administrator domain, Workday Everywhere User domain
- Assistant Usage Report Discovery Board (adoption measurement)
- Supported action categories: Expenses, Feedback, HR, Learning, Pay, Procurement, Profile, Projects, Recruiting, Time Off, Time Tracking, Benefits, Career, Goals, Performance Reviews, Staffing Changes, Workday Help

**Dependencies:** Workday Everywhere User domain security; Set Up Notifications for Workday Everywhere for approvals; Anytime Feedback Quick Action must be enabled for feedback notifications; Expense notifications enabled by default (24R2+).

---

## Workday – Cross-Product Feature Descriptions

**File:** `workday_feature_descriptions.md`
**Type:** Feature Doc
**Purpose:** High-level capability descriptions for all Workday product lines and modules as of May 2026, organized by product area with sub-area capability summaries.

**Key Workday Objects and Features:**
- **Workday Adaptive Planning:** Modeling, APIs, Integration Management, Sheets, Process and Workflow, Web Reporting, Dashboards, Intelligent Planning, FM/HCM connections, Consolidation in Planning
- **Workday Analytics and Reporting:** Core Reporting (WQL, report types, management), People Analytics, Prism Analytics, Slides, Worksheets
- **Workday Contract Management and Document Intelligence:** Contract Intelligence, Contract Lifecycle Management (CLM), Contract Redlining, Contract Review & Ticket, Contract Signature, Salesforce Connector for CLM and CI
- **Workday Financial Management:** Accounting Center, Accounts Payable, Accounts Receivable, Asset Management, Auditoria.AI Smartbots, Bank Connectivity, Budgetary Control, Cash Management, Close and Consolidate, Endowments, Expenses, General Ledger, Grants Management, Payment Processing, Project Billing, Projects, Revenue Management, Service CPQ
- **Workday HCM:** Advanced Compensation, Benefits, Career and Development, Case Management, Cloud Connect for Benefits, Cloud Connect for HCM, Compensation, Core HCM, Journey Paths, Knowledge Management, Onboarding, Org Studio, Performance Enablement, Talent Pipeline
- **Workday Paradox:** Conversational Apply, Conversational Career Site, Conversational ATS, Conversational CRM, Conversational Events, Conversational Interview Scheduling, Campus Events
- **Workday Payroll:** Cloud Connect for Third Party Payroll, Core Payroll, Global Payroll Connect, Payroll Accounting and Payslips, Payroll Agent, country-specific payroll (Australia, Canada, France, Ireland, UK, US)
- **Workday Peakon Employee Voice:** Administration, Analysis, Improve, Insights, Listening
- **Workday Platform and Product Extensions:** Bring Your Own Key, Media Cloud, Messaging, Sana Core Platform, Sana Self-Service Agent, Workday Extend
- **Workday HiredScore:** AI for Recruiting, AI for Talent Mobility
- **Workday Spend Management:** Inventory, Procurement, Strategic Sourcing, Supplier Portal
- **Workday Student:** Academic Foundation, Admission, Advising, Campus Engagement, Financial Aid, Student Core, Student Finance, Student Records, Student Recruiting
- **Workday Talent Management:** Candidate Engagement, Cloud Connect for Learning, Growth and Mobility, Learning, Learning for Extended Enterprise, Sana Learn, Talent Acquisition
- **Workday VNDLY:** Extended Workforce Management, Statement of Work, Worker Profile Management
- **Workday Workforce Management:** Absence, Labor Optimization, Project Tracking, Scheduling, Time Tracking, Time Tracking Hub

**Dependencies:** Cross-product; individual capabilities may require specific product subscriptions (e.g., Prism Analytics, Grants Management, Time Tracking for statutory holiday calculations). See individual product area notes within the file.

---
