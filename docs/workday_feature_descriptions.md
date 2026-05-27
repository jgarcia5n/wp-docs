# Workday Feature Descriptions Guide
> Product Summary · May 14, 2026

High-level feature descriptions for capabilities across all Workday products.

---

## Workday Adaptive Planning

### Modeling
- Manage custom dimensions, levels, accounts, attributes
- Configure standard, cube, and modeled sheet types
- Create versions for budgeting and forecasting
- Maintain currencies, exchange rates, rules

### APIs
- Import/export data via Integration APIs
- Create/update metadata via model management APIs
- Security APIs: user CRUD, group import/export, permission sets, event log export

### Integration Management
- Connect to external systems and cloud data warehouses
- Map metadata and provide data/metadata loaders
- Schedule automated sync between source systems and Workday Adaptive Planning

### Manual Import and Export
- Import/export data; map metadata; erase data by version/time period; view import history

### Security Administration
- Access control, permissions, user/group management, idP config, audit activities

### Connection to Workday Financial Management
- Financial Management as data source (actuals); drill from planning to FM objects; publish/execute financial plans in FM

### Connection to Workday HCM
- HCM as data source for headcount plans; drill to HCM objects; publish headcount plans and workforce actions

### Consolidation in Planning
- ERP source data integration, intercompany eliminations, minority interest (NCI) tracking (GAAP)

### Sheets
- Data security (protect/lock/hide), multiple sheet types, data exploration, data entry, filters/search

### Process and Workflow
- Task creation/assignment, status monitoring, submit for review/approval, workflow status tracking (In Progress, Submitted, Approved), task notes/attachments

### Web Reporting
- Dynamic matrix reports (rows, columns, filters, parameters); add calculations/formatting; modeled-sheet, transaction, and report book types; export in multiple formats; data security enforcement

### Dashboards
- Side-by-side charts, grids, data entry sheets; dynamic data updates; in-dashboard commentary

### Intelligent Planning
- ML-based anomaly/outlier detection; predictive forecasting (historical trends, seasonality, key drivers); side-by-side comparison with plans/budgets

---

## Workday Analytics and Reporting

### Core Reporting
- **Foundational Reporting:** Standard reports (copy/edit), custom reports, custom dashboards, calculated fields
- **Analytics and Insights:** Charting, dashboards, discovery boards
- **Interactivity and Self Service:** Configuration options, sharing, security-based access
- **Report Distribution:** Share/distribute reports; background scheduling; Workday Query Language (WQL) support
- **Report Management:** View/mass delete custom reports; usage dashboards; report tags; temporary reports

### People Analytics
- Configuration: influence data feeding insights
- Content: KPIs and insights across employee lifecycle
- Integrations: drive awareness, transition KPIs for further analysis

### Prism Analytics
- **Analytics and Insights:** Blend Workday + non-Workday data with integrated security
- **Data Acquisition:** Ingest Workday and non-Workday data
- **Data Management:** Manage and control access to Prism artifacts
- **Data Transformation:** Blend data; transform to analysis-ready derived datasets
- **Interactivity and Self Service:** Visual drag-and-drop data preparation

### Slides
- Create, collaborate, share presentations with live transactional data
- Refresh linked data in presentations
- Link data as tables, charts, individual text values

### Worksheets
- Schedule or manually initiate report updates to workbook
- Spreadsheet component for ad-hoc data exploration, analysis, visualization, and collaboration with live Workday data

---

## Workday Contract Management and Document Intelligence

### Contract Intelligence
- **Contract Analysis Interoperability:** Bulk import/export with third-party platforms
- **Contract Management Administration:** Document data layout, SSO config, file delete/restore, audit logs
- **Contract Search and Reporting:** Configurable notifications, search/dashboard export, hierarchical document organization, saved custom queries
- **Document Access Controls:** User/group profiles with content access permissions; user roles; restricted access for AI chat responses
- **Document Analysis:** AI + OCR analysis; chat interface; AI model creation/training for document extraction
- **Document Ingestion & Sync:** Upload, submit, bulk import from storage platforms
- **Supplier Contracting:** Integrate supplier document data/metadata

### Contract Lifecycle Management
All Contract Intelligence capabilities plus:
- **Contract Redlining, Editing & Collaboration:** Track changes, internal/counterparty version management, sync to master document
- **Contract Review & Ticket:** AI-assisted negotiation; clause library; approval workflows; post-signature task tracking; AI prompt sharing
- **Contract Signature:** Configure signature process; integrate third-party e-signature platforms
- **Contract Workflow Design:** Configurable workflows with event-activating conditions
- **Contract Workflow Interoperability:** Status/activity log display; initiate workflows; update statuses from third-party platforms
- **Intake:** Configure intake forms for contract requests; generate contract drafts

### Salesforce Connector for CLM and CI
- Integrate sales contract data and metadata for search and reporting

---

## Workday Financial Management

### Accounting Center
- Journal line rules, custom validations, intercompany/multicurrency/pass-through transactions, event-based accounting, multiple accounting groups
- Accounting Source Ingestion, Setup, Batch Initiation, Enrichment, Error Processing, Process Orchestration, Reporting

### Accounts Payable
- Accounting Adjustments (procurement cards, supplier invoices), Item Management, Procurement Card Processing
- Supplier Contracts: create/manage, renewal notifications, payment terms
- Supplier Invoice Capture (scanning), Processing (touchless PO-related, VAT validation, spend category recommendations), Reporting
- Supplier Payments (currency lists), Supplier registrations

### Accounts Receivable
- **Customer Collections:** Dunning automation, interest/late fees, invoice holds, collection letters, write-offs
- **Customer Invoice Presentment and Delivery:** PDF printing, e-invoicing (XML/UBL), email with attachments
- **Customer Invoice Processing:** Electronic invoice integrations, statutory invoice types, gapless sequencing, commodity codes
- **Customer Management:** Customer CRUD, segmented security, credit information
- **Customer Payment Processing:** Auto-apply rules, direct debit, lockbox connector, cross-currency, on-account payments, overpayment write-off

### Asset Management
- Asset Accounting (single/multiple books, depreciable/nondepreciable/composite assets, depreciation profiles)
- Asset Reporting, Asset Tracking (custodians), Intangible Assets, Leased Assets

### Auditoria.AI Smartbots
- Automated AP inquiries, monthly accrual calculations, automated supplier communications

### Bank Connectivity
- Receive bank statements/payment acknowledgements; send electronic payments; send positive pay files

### Budgetary Control
- Approve budgets/amendments; evaluate transactions against budgets; manage budget check exceptions
- Multidimensional budgets with parent-child relationships; track actuals against budgets

### Capital Projects
- Track project costs and convert to business assets

### Cash Management
- **AI Powered Bank Reconciliation:** ML-based matching recommendations; matching rule suggestions
- **Bank Account Management:** Cash pools, bank accounts, signatories, fee statements
- **Bank Statement Reconciliation:** Matching rules, reconcile with electronic payments
- **Bank Statement Processing:** Worktag assignment, business info extraction, supported format imports
- **Cash Positioning and Forecasting:** Forecast structures, cash activity grouping, forecasted balance reporting
- **Cash Transactions:** Ad hoc transactions, bank transfers, one-time payments
- **Manage Payment Requests:** Single-use miscellaneous payees, bank routing rules, self-service setup

### Close and Consolidate
- Account Reconciliation (period close certification/decertification)
- Consolidation Data Capture (trial balance import, GL data management)
- Consolidations (NCI entries, consolidated financial statements, intercompany elimination, equity earnings)
- Supplemental Schedules (supplementary data collection, currency aggregation, opening balance roll-forward)
- Translation and Revaluation (currency fluctuation calculations, translation adjustment journals)

### Endowments
- Donor/contribution management, endowment payouts (investment pool income allocation, reinvestment), gift hierarchies, investment pool management, investment statements

### Expenses
- Accounting Adjustments; Corporate Credit Card Processing (individual, shared-liability); Expense Approval/Payment/Reimbursement
- **Expense Protect:** ML-based real-time risk assessment and recommendations
- Expense Reporting and Audit; Corporate card, allowance plan, intercompany expense processing
- **Expense via Workday Everywhere:** Submit expenses via Teams/Slack
- Receipt Capture (benefit reimbursements, corporate card, out-of-pocket); Travel booking integration

### General Ledger
- Accounting Adjustments; Allocations and Statistics (company/ledger/statistics/headcount/worktag-based)
- Alternate Ledger Currency; Average Daily Balance; Cash Basis Accounting
- Intercompany (one-sided journals, intercompany invoice exchange); Journals (manual, recurring, operational, import)
- Lease Accounting (short-term/financial/operating contracts, amendment types); Multiple Funding Sources
- **Tax Processing and Reporting:** Transaction/withholding tax, third-party tax service integration, SAF-T Core/Norway/FEC/GoBD, 1099MISC/NEC, DAS2, VAT e-filing (UK/Germany ELSTER), VIES/UK VAT validation
- Tenant Setup and Worktag Configuration (account posting rules, books, primary/optional worktags)

### Grants Management
- Award Billing (invoice/letter of credit draw); Award Budget; Award Cost Processing (indirect costs, revenue recognition)
- Award Management (terms, expenditure control rules, amendments, tasks/deliverables, funding amounts)
- Award Tasks and Milestones; Effort Certification; Funding Sources; Proposal Management; Sub-Award Management

### Payment Processing
- Manage Checks (positive pay, escheat, print, void); Manage Payments (acknowledgements, returned/stopped payments, remittances)
- Payment Integrations; Payment Methods; Payment Purpose Codes (country-specific, ad hoc/transfers/supplier)
- Settle Payments (multicurrency, prenote runs, bank account validation)

### Project Billing
- **Core:** Billable project billing, Time & Expense/Fixed Fee/Value-Based/Usage-Based contracts, billing schedules, intercompany, transfer transactions
- **Pricing:** Contract rate sheets, billing rates by worker/rules
- **Revenue Recognition:** Transaction/installment-based, accrued/deferred/direct methods, percent complete

### Project Tracking
- Project hierarchies, resource plans, time recording

### Projects
- Capital Projects; Opportunity Projects; Plan Work (project plans, resource allocation)
- Project Budget (baseline vs forecast, labor/non-labor); Project Financial Reporting; Project Staffing
- Projects Core (internal/capital/billable, project manager hub); Transfer Pricing (intercompany invoices)
- Resource Cost Rate, Resource Forecast, Resource Management; Templates; Worker Utilization

### Revenue Management
- Billing (schedules, milestones, consolidated billing, flexible terms)
- Customer Contract Management (predefined templates, multi-currency, discounts, renewal terms, amendments, deferred costs)
- Revenue Recognition (schedules from contracts/invoices/templates, multi-period, usage-based subscriptions)
- Revenue Recognition Advanced (allocation rules, multicurrency adjustments, price lists/bundles, deferred cost journals, cumulative catch-up)
- Usage Billing (minimum commitments, tiered/volume pricing, usage recording)

### Service CPQ
- Document Generation (templates, quote configurations, preview/regenerate); Internal Quote Approvals
- Opportunity management (CRM sync, status tracking, quote management); Project and Contract Creation (automated from quote data)
- Quote (phases/tasks/roles, services catalog, spreadsheet/web services creation, merge services); Services Catalog (baseline services, snippets, catalog reporting)

---

## Workday Human Capital Management

### Advanced Compensation
- Bonus Process Options (eligible earnings, qualifying plans, deferred bonuses); Compensation Matrices; Compensation Review Award Types
- Compensation Review: Calculate Targets/Manage Pools, Eligibility, Mass Actions, Modeling and Planning, Planner Experience, Process Setup, Statements
- Coordination of Events (parallel events); Manage Compensation Plans (merit/bonus/stock, proration, scorecards); Manage Compensation Review Process
- Stock Process Options (eligible earnings, qualifying plans, stock allocations)

### Asset Tracking
- Track/report organizational assets by location, cost center, worker, organization (no accounting)

### Benefits
- **Affordable Care Act Management:** Minimum coverage notification; IRS reporting
- **Configurable Benefit Plans:** Health/insurance/retirement plans, healthcare savings/spending accounts, eligibility rules
- **Dependents and Beneficiaries:** Multiple relationship types, legal trust beneficiary, dependent verification, QDROs
- **Management of Enrollment Events:** New hire/termination/life event/open enrollment; mobile enrollment; event coordination; waiting periods; evidence of insurability
- **Medicare:** Coverage/enrollment tracking; coordinating benefits (primary/secondary payer)
- **Tracking COBRA Eligibility:** Employee/dependent eligibility; third-party COBRA integration
- **Wellness Administration:** Enter wellness info; change retirement contributions

### Career and Development
- **Careers:** Professional profile (talent/education/experience), career transitions, job interests, development items, relocation/travel preferences
- **Mentoring:** 1-on-1 mentor relationships, mentor types, mentorship preferences

### Case Management
- Case Assignment & Routing; Configuration (case types, service categories/teams); Case Creation (employees/non-employees)
- Case Data Management (scramble/purge); Case Deflection (article/task/learning suggestions); Case List; Case Notifications
- Case Reporting and Dashboard; Case Resolution Workflow; Case View (update, notes, replies, share); SLA Management

### Cloud Connect for Benefits
- Healthcare enrollment data file types; third-party benefit provider integrations

### Cloud Connect for HCM
- **Account Provisioning:** Worker profile extraction, group assignment provisioning
- **ACA:** 1094-C/1095-C to IRS; ACA Information Returns Program; integration audit files
- **Medicare Integrations:** EVDSA submissions; coordination of benefits request/response; EGWP drug coverage data
- **Talent Acquisition:** Third-party connectors for assessments, background checks
- **Worker Data:** Job profiles, job families, locations, organizations, positions; Equifax Work Number integration

### Compensation
- Ad Hoc Compensation Changes (stock grants, one-time payments, ad hoc assignments)
- **Compensation Analytics:** Demographic pay equity monitoring
- **Compensation Basis:** Estimated earnings definitions, customized configurations, HCM business process simulations
- **Compensation Discovery Boards:** Pay equity analysis using historical HCM data
- **Compensation Grade Step Progression:** Step preservation, automatic step scheduling, admin notifications
- Compensation Grades & Profiles; Compensation in Staffing Transactions; Compensation Survey Management (vendors, jobs, matches)
- **Education and Government Compensation:** Locality pay areas, period activity pay
- Global Compensation Calculations; HCM Core Compensation; HCM Severance (notice periods, severance packages)
- Manage Compensation Plans; Quality Step Increase; Total Rewards Statement; Wage Theft Prevention

### Core HCM
- **Compliance:** Establishment assignments, Form I-9 (import, correction, E-Verify, multi-BP), country-specific genders
- **Data Privacy and Purging:** Worker data purge, scramble, National ID masking
- Duplicate Management; Employee Talent Data Collection and Cards; Employment Contracts/Agreements
- Global Mobility (international assignment tracking, multi-country personal info); Job Overlap on Position Restriction
- **Mass Processing:** Automated termination, mass hire, mass correct hire date, mass change jobs/organizations
- Non-Employee Tracking (contingent workers, retired employees); Position Management (headcount plans, position budgeting)
- **Regulatory Reporting:** EEO-1/3/4/5 compliance, gender/ethnicity reporting, veteran status
- Safety Incident Tracking; Skills and Experience Tracking (certifications, competencies, qualifications, activities, languages)
- Unions/Collective Agreements; Vaccine and Workplace Test Tracking
- **Worker Data Changes:** Address lookup, address components, personal data modifications, flexible work arrangements
- **Worker Staffing Changes:** Hire/rehire, job changes, termination, additional jobs, position swaps, localized fields, reference letters

### Journey Paths
- Administration (web services); Content Discovery; Journeys Curation (configurations, distributions); Journeys Distribution (scheduling); Journeys Metrics & Reporting; Security (journey categories)

### Knowledge Management
- Access and Security (authenticated audiences); Content Discovery and Consumption (search/view articles); Content Management (create/edit articles)

### Onboarding
- Compliance; E-Verify (auto-resync, 30-day tracking, duplicate case reasons); Employment Contracts/Agreements
- Form I-9 (electronic, audit, Section 3, external authorized representative)
- **Hire and Onboarding:** Recruiting-initiated autocomplete, onboarding experience configuration, start date correction, no-show reporting, duplicate prevention
- Probation/Notice Periods (country-specific rules, field hiding/requiring)

### Org Studio
- Visualize/plan/approve reorganizations; mass review/edit org and workforce changes; design projects (create/copy/edit/archive); position creation; supervisory org management; staffing process proposals

### Performance Enablement
- **Employee Reviews, Conversations, Templates:** Check-ins, configurable review plan templates, development plans
- **Feedback and Recognition:** Requested/unsolicited feedback; private/public feedback
- **Individual and Organizational Goals Alignment:** Organization goal assignment to supervisory orgs; individual goal management

### Talent Pipeline
- **Succession Planning and Pooling:** Succession plans for positions/job profiles, talent pools, succession pools, readiness tracking
- **Talent and Performance Calibration:** Plot/compare/adjust workers; delegate calibration; calibration programs

---

## Workday Paradox

### Apply and Schedule
- **Conversational Apply:** Automate candidate communication, chatbot job search, conditional application progression, custom data attributes, employee referrals via SMS
- **Conversational Career Site:** Branded career site hosting, job distribution to job boards, mobile navigation, SEO support *(requires separate services agreement)*
- **Conversational Interview Scheduling:** Multi-type interview automation (phone/in-person/virtual), calendar integrations, feedback collection, rescheduling automation
- **Hiring Team Experience:** Requisition/offer/onboarding task management, job requisition status integrations, offer automation, volume limits

### Conversational ATS
All Apply and Schedule capabilities plus:
- **Applicant Tracking System:** Full job lifecycle management (creation/editing/distribution), candidate pipeline tracking, employment offers
- **Campus Events:** Event planning/execution/tracking, registration forms, ROI measurement, mobile management, school databases
- **Conversational CRM:** Lead sourcing, drip campaigns, career preference notifications, professional sourcing platform integration
- **Conversational Events:** Virtual/in-person event management, event segments for high volume, native video interviewing, landing pages/QR codes/keywords, event dashboard

---

## Workday Payroll

### Cloud Connect for Third Party Payroll
- Auditing (search changes, reconcile, error tracking); External Documents (upload/purge); Inputs to Payroll; Payroll Worker Data (changes, imports); Payslips import
- Reporting and Analytics (import/analyze external payroll results); Streamlined Integrations (field-level change detection, new hire/termination notifications, merge output files, ad-hoc runs)

### Core Payroll
- **Auditing:** Configuration verification, audit exceptions, alerts
- **Configurable Calculations/Engine:** Numeric/boolean/date calculations, pay component groups, accumulators, earnings/deductions
- **Configurable Framework:** External data interactions, worker grouping, code mapping from prior payroll
- **Employee Mobility:** International assignment (US/Canada inbound), multiple jobs, multi-jurisdiction workers
- End Payroll Inputs for Terminated Workers; Inputs to Payroll (manual one-time/ongoing); Mid Period Changes (proration)
- **Net Pay Validation and Arrears:** Minimum net pay, deduction priorities, arrears recoup
- **Pay Cycle Management:** Payroll processing tasks, sequence/role assignments, result analysis/isolation/action
- Payments; Payroll Compliance (statutory profiles, Payroll Compliance dashboard); Payroll Worker Data (load prior payments, mass pay group assignments)
- Payslips (track payroll info, model hypothetical changes); Reporting and Analytics; Retroactive Changes; Streamlined/Automated Calculations; Year End

### Global Payroll Connect
All Cloud Connect for Third Party Payroll capabilities plus:
- **Additional Payroll Data:** Country-specific payroll data entry; payroll vendor data validation
- **Callback for External Payroll:** Callback message on completed import from external payroll
- **Data Changes on Demand:** REST API for field-level change retrieval; query by pay group or individual worker; structured JSON results
- **Event Outbound Notifications:** Hire/termination notifications to third-party payroll systems
- **Inbound Notifications:** Custom messages to Workday workers/organizations
- **Global Payroll Hub:** Monitor/manage external payroll; processing status across pay groups/countries; variance analysis; vendor-supported actions

### Payroll Accounting and Payslips
- **Accounting Flexibility:** Account posting rules, forward accruals, costing to multiple companies, mid-period allocation splits, salary cap constraints
- **Commitments/Obligations/Budget Checking:** Fiscal-year projection, budget checking, fringe benefits estimation, multi-year commitments (up to 5 years)
- **Grants:** Manage grants within pay period; follow grant sponsor guidelines *(requires Workday Grants Management)*
- **Payments:** Bank statement reconciliation, payment elections (currency, method, distribution), positive pay, international worker payment rules, secure bank detail updates
- **Payslips:** Combined payslips for multiple jobs, dashboard, customizable layouts (advice slips, checks), PDF copy access on mobile, bulk schedule print

### Payroll Agent
- Payroll Data Insights (knowledge and data point Q&A); Identify Missing Data and Configuration (proactive issue resolution); Minimum Wage Analysis (US states/Canadian provinces)

### Country-Specific Payroll

**Australia:** Casual employees; Income Withholding Orders; ABA file payments; STP regulatory reporting (RFBA); Superannuation (eligibility, SuperStream, MSCB); Taxes (regular, STSL, bonuses, upward variation)

**Canada:** Employee Mobility (multi-job taxation); Income Withholding Orders; Regulatory Reporting (federal/provincial/territorial); Statutory Holiday pay; Records of Employment (ROE) with Service Canada integration; Taxes (statutory deductions); Year End (T4, T4A)

**France:** **DSN** (monthly Déclaration Sociale Nominative, net-entreprises.fr integration, OETH, CDDU, NTT); Income Withholding Orders; Loans and Advances; SEPA payments; Payroll Processing (IJSS gross-up, termination allowances, French payroll events, transportation/commuting allowances); Reporting and Analytics (journal reports, salary taxes, clarified payslip model); Taxes (URSSAF, AGIRC-ARRCO, Pôle Emploi, PAS withholding from DGFIP, PERCO/PERECO)

**Ireland:** Company Relationships (Employer Registration Number); ISO20022 payments; Payroll Worker Data (employment identifiers, ERN, NAERSA/CSO details); Pension Auto-Enrolment (NAERSA); Regulatory Reporting (Revenue reconciliation, gender pay gap, EPS/FPS, MyFutureFund); Statutory Deductions (PAYE, LPT, PRSI, USC, MyFutureFund)

**United Kingdom:** Auditing (NI, period differences, HMRC RTI errors, apprenticeship levy); Company Relationships (same UK Employer Reference); Court Orders; Employee Mobility (UK Employer Reference transfers); Gender Pay Gap; ISO20022/BACS payments; Payroll Worker Data (company car, Payroll ID); Pension auto-enrolment; Regulatory Reporting (HMRC reconciliation, IR35, EPS/FPS, HMRC notifications); Statutory and Company Leave (adoption/maternity/paternity/parental bereavement/shared parental/sick pay); Statutory Holidays (holiday pay calculation); Student Loans; Taxes (Class 1 NI, Scotland/Wales regimes, tax code uplift); Year End (P45, P60)

**United States:** Company Relationships (merger/acquisition continuity, common pay agent/paymaster); Effort Certification (federally sponsored agreements); Employee Mobility (multi-jurisdiction allocation); **FLSA** (overtime pay, regular rate, overtime premiums, state-level rules); Income Withholding Orders (bankruptcy, garnishment, federal/state tax levy, student loans, wage assignment); Payments (earned wage access); Payroll Worker Data; Regulatory Reporting (periodic/quarterly tax filing); Taxes (federal/state/local rates and limits); Third-Party Sick Pay; Tips; Work Study; Year End (W-2, tax form self-service, tax filing service integration)

---

## Workday Peakon Employee Voice

### Peakon Administration
- Access Control Groups (configure access groups for data visibility and feature access)
- Survey administration, user management, tenant configuration

### Peakon Analysis
- Driver analysis, correlation analysis, benchmark comparisons, demographic breakdowns, custom segment analysis

### Peakon Improve
- Action recommendations, action planning, team action visibility, manager coaching content

### Peakon Insights
- AI-generated insights, intelligent alerts, narrative summaries, trend identification

### Peakon Listening
- Pulse surveys (configurable frequency, confidential); always-on feedback channels; lifecycle surveys; custom surveys; multi-language support

---

## Workday Platform and Product Extensions

### Bring Your Own Key
- Customer-managed encryption keys for Workday data

### Media Cloud
- Secure media storage and delivery for Workday-hosted content

### Messaging
- Configurable messaging capabilities for Workday notifications and communications

### Sana Core Platform
- Core AI platform capabilities for Sana-powered Workday experiences

### Sana Self-Service Agent
- AI-powered self-service agent for employee and worker queries

### Sana Enterprise Connectors and Tools
- Connectors and tools for enterprise integrations with Sana

### Workday Extend
- Build custom applications on the Workday platform; extend Workday business processes; custom data objects and business processes

---

## Workday HiredScore

### HiredScore AI for Recruiting
- **Candidate Scoring and Prioritization:** AI-based scoring of candidates against job requirements; prioritize pipeline based on fit
- **Bias Detection and Mitigation:** Monitor for disparate impact; fairness-aware scoring; diversity insights
- **Talent Rediscovery:** Surface previously considered candidates from existing talent pools
- **Recruiter Productivity Tools:** Intelligent recommendations; automated screening assistance; workflow optimization
- **Analytics and Reporting:** Funnel analytics, conversion rates, sourcing effectiveness, compliance reporting
- **Integration:** Native Workday Recruiting integration; bidirectional data sync

### HiredScore AI for Talent Mobility
- **Internal Candidate Scoring:** AI-based scoring of internal employees for open roles
- **Skills Matching:** Match employee skills and experience to job requirements
- **Career Path Recommendations:** Suggest relevant internal opportunities to employees
- **Manager and HR Tools:** Visibility into internal mobility pipeline; talent retention insights
- **Analytics:** Internal mobility metrics, time-to-fill from internal sourcing, skills gap analysis

---

## Workday Spend Management

### Inventory
- Inventory item setup and management; inventory tracking by location; reorder management; inventory valuation; integration with procurement and accounts payable

### Procurement
- **Requisitions:** Self-service requisitioning; configurable approval workflows; catalog and non-catalog items
- **Purchase Orders:** PO creation/management; change orders; receipt matching (2-way, 3-way)
- **Supplier Management:** Supplier registration, qualification, segmentation
- **Contracts:** Supplier contracts with pricing, terms, renewal notifications
- **Procurement Analytics:** Spend analysis; contract compliance; supplier performance reporting
- **Guided Buying:** Guided purchasing experience; preferred supplier promotion; budget checking

### Strategic Sourcing
- **Events:** RFx creation (RFI, RFP, RFQ); multi-round sourcing events; award management
- **Supplier Collaboration:** Supplier portal for event participation; bid management; Q&A
- **Contract Creation:** Auto-generate contracts from awarded sourcing events
- **Savings Tracking:** Capture and report on sourcing savings

### Supplier Portal
- Self-service supplier registration and profile management
- Invoice submission and status tracking; PO acknowledgement
- Document exchange and compliance management

---

## Workday Student

### Academic Foundation
- Academic unit and curriculum management; course catalog; academic calendar; room/facility scheduling; prerequisite/co-requisite configuration

### Admission
- Application management; decision processing; admission checklists; waitlist management; deposit tracking; matriculation

### Advising
- Student advising plans; academic progress tracking; degree audit; advising appointment management; academic alerts

### Campus Engagement
- Student activities and organizations; event management; co-curricular transcript; student government integration

### Financial Aid
- Aid packaging and awarding; federal/state/institutional aid types; satisfactory academic progress (SAP) tracking; R2T4 processing; verification; aid disbursement

### Student Core
- Student record management; enrollment management; registration; academic standing; transfer credit evaluation; student profile

### Student Finance
- Tuition and fee calculation; student billing and statements; payment plan management; refund processing; third-party billing; 1098-T generation

### Student Records
- Grade entry and management; transcript generation; degree conferral; enrollment verification; academic history

### Student Recruiting
- Prospect/inquiry management; campus visit management; communication plans; recruitment event management

---

## Workday Talent Management

### Candidate Engagement
- **Candidate Relationship Management (CRM):** Pipeline management, candidate nurturing, talent community, multi-channel engagement campaigns

### Cloud Connect for Learning
- Third-party learning management system (LMS) connectors; completion data sync; content library integration

### Growth and Mobility
- **Career Hub:** Personalized career recommendations; skill-based job matching; career path visualization
- **Opportunity Marketplace:** Internal gig/project opportunities; mentoring opportunities; stretch assignments
- **Skills Cloud:** ML-based skills inference; skills taxonomy; skills gap analysis

### Learning
- **Content Creation:** Workday-native course builder; blended learning paths; video/document support
- **Delivery:** Instructor-led training (ILT), virtual ILT, eLearning, learning campaigns
- **Administration:** Enrollment management, completion tracking, certification management, compliance learning
- **Reporting:** Learning transcript, team learning status, completion rates, compliance reporting

### Learning for Extended Enterprise
- External learner management; external enrollment; payment/e-commerce for external learners; branded learning portal

### Sana Learn
- **AI-Powered Learning:** Generative AI for content creation and personalization; AI tutor; adaptive learning paths
- **Content:** AI-generated courses, quizzes, and summaries from existing documents
- **Collaboration:** Social learning features; peer learning; discussion boards
- **Analytics:** Learning effectiveness metrics; engagement analytics; knowledge retention tracking

### Talent Acquisition
- **Requisition Management:** Job requisition creation/approval/management; position management integration; compensation proposal
- **Sourcing:** Job board distribution; employee referrals; agency management; sourcing analytics
- **Candidate Management:** Application review; interview scheduling; offer management; background check integration
- **Offer Management:** Offer letter generation; electronic signature; offer negotiation workflow
- **Recruiting Analytics:** Pipeline metrics, source effectiveness, time-to-hire, diversity reporting
- **Candidate Experience:** Career site integration; candidate portal; communication automation

---

## Workday VNDLY

### Extended Workforce Management
- **Worker Sourcing:** Staffing supplier management; worker request/requisition creation; supplier bid management; worker selection
- **Onboarding:** Worker onboarding checklist; document collection; system access provisioning
- **Time and Expense:** Timesheet submission/approval; expense submission; integration with AP for payment
- **Compliance:** Worker classification; I-9 for contract workers; insurance certificate tracking; background check management
- **Reporting and Analytics:** Spend analytics; worker utilization; supplier performance; headcount reporting

### Statement of Work (SOW)
- **SOW Creation and Management:** Milestone/deliverable-based SOW creation; rate card management; change order workflow
- **Project Tracking:** Deliverable tracking; milestone approval; budget vs actuals
- **Invoicing:** SOW-based invoice generation; payment terms management; AP integration
- **Reporting:** SOW spend analytics; project profitability; vendor performance

### Worker Profile Management
- Consolidated external worker profiles; skills and experience tracking; performance and rating history; worker communication tools

---

## Workday Workforce Management

### Absence
- **Leave Management:** Leave plan configuration; leave of absence request/approval workflow; FMLA tracking; paid/unpaid leave types; accrual calculations
- **Time Off:** Time off plan setup; accrual rules; carryover limits; payout rules; holiday calendars
- **Compliance:** Country-specific leave regulations; statutory leave types; leave certification tracking

### Labor Optimization
- **Demand Forecasting:** Volume-based and historical demand forecasting for scheduling
- **Labor Budgeting:** Labor cost budgeting; budget vs actuals reporting
- **Staffing Optimization:** Optimal schedule generation based on demand, availability, and skills; coverage gap analysis

### Project Tracking (Workforce Management)
- Track worker time against projects; project hierarchies; resource plans

### Scheduling
- **Schedule Creation:** Manager-created schedules; shift templates; pattern-based scheduling; automated schedule generation
- **Worker Self-Service:** Shift swaps; open shift claims; schedule preferences; shift offers
- **Compliance:** Scheduling rules (minimum rest, maximum hours, overtime); scheduling agreement compliance
- **Communication:** Schedule distribution; push notifications; schedule change alerts

### Time Tracking
- **Time Entry:** Multiple time entry methods (clock in/out, timesheet, mobile); elapsed and in/out time tracking
- **Manager Tools:** Timesheet approval workflow; mass approval; schedule comparison; overtime alerts; team time dashboard
- **Calculations:** Automatic overtime calculations; shift differentials; multiple pay rate support; retroactive adjustments
- **Integration:** Payroll integration; project tracking integration; absence integration
- **Compliance:** Audit trails; rule-based time calculations; configurable period definitions

### Time Tracking Hub
- Centralized view for supervisors of team time activity; exception management; time entry status monitoring; compliance alert management; real-time attendance visibility
