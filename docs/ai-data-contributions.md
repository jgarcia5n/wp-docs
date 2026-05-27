# AI Data Contributions

## Subscription Agreement Types
- **MSA (Main Service Agreement):** Access AI features via Innovation Services (requires ISA opt-in)
- **UMSA (Universal Main Subscription Agreement):** Data contributions for AI features auto-enabled

**Determine type:** Community profile → org name → Subscription Service Agreement field.

---

## Set Up Notifications for AI Feature Data Contributions *(UMSA customers)*

**Configure** AI Features and Third Party Notification domain (Innovation Services functional area).

### Notification Types
| Type | Timing | Purpose |
|------|--------|---------|
| AI Feature Availability | Day of release | Confirms feature available; starts 14-day window to manage data contributions before extraction begins |
| Description or Technical Updates | Weekly (change-triggered) | Reports updates to feature descriptions and data fields |
| Upcoming AI Features | 30 days before release | Notice of upcoming AI features for purchased SKUs |

### Steps
1. Edit Domain Security Policies → add security groups to AI Features and Third Party Notification domain (Innovation Services functional area)
2. Activate Pending Security Policy Changes
3. Edit Tenant Setup - Notifications → System tab → verify Ascend Notifications routing rule includes email. If not, select Override Parent Notification Type Settings and select a rule with email.

---

## Enable Innovation Services for MSA Customers

### Steps
1. Enable Innovation Services functional area (see Steps: Enable Functional Areas and Security Policies)
2. Edit Domain Security Policies → configure Manage: Innovation Services domain
3. Access Innovation Services and Data Selection Opt-In report
4. Innovation Services Opt-In task → select features from Available Services tab
5. (Optional) Maintain Innovation Services Data Selection Opt-In → select data contribution categories

**Testing in Implementation tenant:**

| Task | Description |
|------|-------------|
| Maintain Weekly Data Contribution Activation for Implementation Tenant | Manages future weekly data extracts |
| Run On-Demand Data Contribution Activation for Implementation Tenant | Extracts data and subscribes to future weekly extracts |

> Refresh Sandbox Preview or Implementation tenant before running these tasks. Allow up to 2 weeks for recommendations to appear.

---

## Manage Data Contributions (UMSA Customers)

**Prerequisites:** UMSA; Manage: Data for ML Features + View: Data for ML Features domains (Innovation Services functional area).

### Steps
1. Access **Data Contribution for Workday AI** report
2. Manage per field:
   - **Disallow Data Contribution** – disables contribution; deletes past data within 30 days
   - **View Data Collected** – view definitions for contributed data types
   - **Contribution Changes** – view upcoming changes to required data
   - **Countries Excluded from Data Collection by End User Location** – exclude by country at AI feature level
3. Click OK

**Effect of disabling:** Stops new data collection; deletes past contributions within 30 days. Impact varies by feature (degraded experience to non-functional).

---

## UMSA AI Feature Activation Timeline
1. AI features enabled in next service update (weekly maintenance window)
2. Data contributions populate in Data Contributions for Workday AI task within **24 hours**
3. AI recommendations appear in tenant within **14 days**
4. Workday does NOT extract data for new AI features until **14 days** after release (can disable data contributions on day of release)

---

## Reference: AI Data Contributions by Product Line

### Cross Application Services: Intelligent Core GA Features
| ML Feature | Opt-In Data Categories | Notes |
|-----------|----------------------|-------|
| ML Recommendations for Change Job | Custom Organization Data, Supervisory Organization Data, Staffing Event Data, Worker Profile Data | Country exclusion unavailable for Supervisory Org Data and Custom Org Data |

### Financials: Financial Management ML GA Features
| Data Category | Notes |
|--------------|-------|
| Customer Payment Data | Requires customer payment transactions in past 30 days; for Intelligent Customer Payment Matching |
| Expenses Data | Requires 10,000+ expense report lines; for Expense Protect feature |
| Journal Line Data | Requires 12+ months historical data; for Journal Insights |
| Supplier Invoice Data | ML suggestions for top 5 selections (cost center, location, region, spend category on supplier invoice lines); enable worktag recommendations in Edit Tenant Setup – Financials |
| Accounts Receivable Data | Customer overpayment reasons/worktag: 3,000+ historical overpayments; customer invoice line recommendations: 3,000+ invoices with revenue category and sales item |

### Financials: Receipt Scanning for Expenses
- Formats: PDF, JPG, TIFF, PNG

### HCM: HCM ML Features and Third Party Connectors GA
Must enable HCM ML Features and Third Party Connectors GA service and data contribution per feature.

| ML Feature | ML Categories | Opt-In Data Categories | Notes |
|-----------|--------------|----------------------|-------|
| ML for Worker Profile and Skills | Skills Cloud, Skills Suggestions and Verification | Job Requisition Data, Talent Profile Data, Worker Profile Data | Country exclusion unavailable for Talent Profile Data and Job Requisition Data |
| ML for Recruiting | Suggested Jobs/Skills for External Candidates, Suggested Skills for Job Requisitions | Job Requisition Data | Country exclusion unavailable for Job Requisition Data |
| ML for Learning Core | Learning Skills Tagging, ML Recommended For You, Related Content Recommendations, Based on Your Skills to Develop | Learning Data | Configure Related Content via Edit Tenant Setup - HCM; Maintain Learner Experience task for Based on Your Skills and Recommended For You; ML data updated every 24 hours Mon–Fri |
| ML for Talent Marketplace | Talent Marketplace | Demographics Data, Job Requisition Data, Learning Data, Projects Data, Skills Data, Talent Opportunity Marketplace Data, Worker Profile Data | Country exclusion unavailable for Job Requisition Data and Talent Opportunity Marketplace Data; Talent Opportunity Marketplace Data and Worker Profile Data required |
| ML for Career Hub | Career Hub | Job Requisition Data, Learning Data, Talent Opportunity Marketplace Data, Talent Profile Data, Worker Profile Data, Skills Data | Contact CSM for Career Hub eligibility; country exclusion unavailable for Job Requisition Data, Talent Opportunity Marketplace Data, Talent Profile Data; Talent Profile Data + Worker Profile Data required |
| ML for Manager Insights Hub | Manager Insights Hub | Learning Data, Talent Opportunity Marketplace Data, Worker Profile Data | Country exclusion unavailable for Talent Opportunity Marketplace Data; opt into HCM ML GA + enable Skills Cloud and Interests for Suggested Opportunities |

### HCM: Workforce Management ML Services
| Data Category | Notes |
|--------------|-------|
| Time Configuration Data | Required for Workday Time Anomaly; updated weekly |
| Worker Data | Required for Workday Time Anomaly; limited worker org and job data for time-entering workers; updated weekly |
| Historical Schedule Block Data | Required for Workday Time Anomaly; updated weekly |
| Worker Time and Absence Data | Required for Workday Time Anomaly; time blocks, time off entries, time review events; updated weekly |
| User Feature Delivery Data | Helps detect time anomalies; run Innovation Service Data Details report to see specific fields; country exclusion unavailable |

### Payroll: Payroll Machine Learning GA Features
Select Payroll: Payroll Machine Learning GA Features → Opt In for these categories:

| Data Category | Notes |
|--------------|-------|
| Anomalous Payroll Results | Required for Pay Anomalies feature |
| Payroll Data | Required for Pay Anomalies; recommend 6+ pay periods historical data |
| Payroll Data (Historical) | Required for Pay Anomalies; recommend 6+ pay periods historical data |
| Pay Anomalies Validations | Required for Pay Anomalies feature |
| Previous States of Payroll Results (Historical) | Required for Pay Anomalies; recommend 6+ pay periods historical data |
| Worker Data | Required for Pay Anomalies feature |
| P45 Tax Form Scanning | Required for P45 Tax Form Scanning feature |

> All 6 Pay Anomalies categories must be opted in; missing categories will cause ML model build failure.
> Do not opt out of the innovation service after running the Pay Anomalies report (causes data sync issues).

### People Experience: User Experience ML
| Data Category | Notes |
|--------------|-------|
| Workday-Generated User Information | Drives 3 recommended tasks in Quick Tasks on home page (based on tenant trends + user activity) |
| Knowledge Management Articles | Enables Workday to recommend relevant articles to users |
| Search Query | Provides more relevant/personalized Workday Search results |

### Spend Management: Spend Management ML GA Features
| Data Category | Notes |
|--------------|-------|
| Spend Transaction Data | Includes PO recommendations if opted in before PO support was added (Opt In to Additional Data check box); data purged within 2 weeks of opt-out |

---

## FAQ: Transitioning from ISA to UMSA

| Question | Answer |
|----------|--------|
| Why can I no longer access Innovation Services reports/domains? | UMSA replaces Innovation Services reports/domains with Workday AI management. Use Data Contribution for Workday AI report (Manage/View: Data for ML Features domains) instead of Innovation Services and Data Selection Opt-In report |
| Do I need to opt in to AI features on UMSA? | Most AI and third-party features are automatically available under UMSA |
| How to validate features still enabled after moving from ISA? | Access Data Contribution for Workday AI report to review enabled features |
| How to validate third-party integrations after ISA→UMSA transition? | Access All Integration Systems report (Integration Reports domain) to confirm status |
| Is data contribution enabled by default on UMSA? | Yes, enabled by default for Intelligent Application features |
| How to opt out of data contribution? | Use Data Contribution for Workday AI report → disable specific product lines or features |
| How has security configuration changed? | Manage: Innovation Services domain replaced by Manage: Data for ML Features and View: Data for ML Features domains |
| How to see specific data Workday uses? | Click View Data Collected on Data Contribution for Workday AI report |
| How does Workday notify about new/updated AI features? | 30-day notification before delivery to preview and production tenants (if notifications configured) |
| What about Media Cloud Addendum? | Existing packaged content continues to work; terms now under Platform and Product Extensions Product Terms in UMSA |
| What Workday Learning configurations to review? | Verify Learner Name configuration: Edit Tenant Setup - HCM → select Send Learner Name to Third-Party Content Provider |
| How to submit subscription management requests? | Route as Customer Success Request via Workday Community |
