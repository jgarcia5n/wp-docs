# HCM – Benefits

> Source: Admin Guide – Human Capital Management (May 14, 2026), pp. 1258–1545

---

## Overview

Workday Benefits supports configuration of health, insurance, retirement savings, and wellness plans. Integrates with Payroll, Absence, and HR events.

---

## Steps: Set Up Benefits

1. **Manage Benefit Coverage Types** — define categories (health care, health savings, retirement, spending accounts, insurance)
2. **Access Maintain Health Care Classifications** — configure provider org types (PPO, EPO, HMO, DHMO)
3. **Define Benefit Coverage Targets** — create Health Care Coverage Targets and Insurance Coverage Targets (employee-only, employee + spouse, family, etc.)
4. **Create Benefit Providers** — define insurance and plan providers
5. **Create Enrollment Events** — identify benefit gain/loss triggers and coverage types per event
6. **Create Enrollment Event Rules** — define coverage conditions (begin/end dates, increase limits, EOI, waiting periods)
7. **Set Up Benefit Electronic Signatures**
8. **Create Benefit Eligibility Rules** — group workers for similar benefit elections
9. **Create Benefit Groups** — workers must be in a benefit group to enroll
10. **Define Benefit Plans** — see Steps: Set Up Employee Benefit Plans
11. **Configure Passive Events** — benefit gains/losses from passage of time
12. Set up benefit credits and surcharges

---

## Core Benefits Configuration

### Benefit Groups and Eligibility

| Task | Purpose |
|------|---------|
| Create Benefit Eligibility Rules | Define criteria for grouping workers into benefit groups |
| Create Benefit Groups | Containers for eligible workers; workers must be in a group to enroll |
| Set Up Benefit Enrollment Instructions | Display instructional content during enrollment |
| Enable Worker Marital Status Update During Enrollment Events | Allow marital status changes during enrollment |
| Set Up Save for Later | Enable workers to save enrollment in progress |
| Custom Validations | Add org-specific validation rules to enrollment |

**Concept: Checking Benefit Group Eligibility** — how Workday evaluates worker eligibility for benefit groups in real time.

**Reference: Benefits and Pay Hub** — combined hub for workers to view benefits and pay data.

---

## Costs and Rates

### Insurance Costs

**Steps: Set Up Insurance Costs** — configure cost structures for insurance plans.

**Steps: Manage Individual Benefit Rates** — manage employee-specific benefit rate assignments.

| Task | Purpose |
|------|---------|
| Create Health Care Rates | Define employee and employer contribution rates for health plans |
| Create Insurance Coverages | Define coverage amounts and tiers |
| Create Insurance Rates | Define premiums per coverage tier |
| Enter Individual Benefit Rates | Override standard rates for specific employees |

---

## Set Up Employee Benefit Plans

### Setup Considerations: Payroll and Benefits

**Key decisions:** Payroll deduction timing, proration rules, deduction begin/end date behavior, arrear handling.

### Plan Types

| Plan Type | Task | Notes |
|-----------|------|-------|
| Health Care | Create Health Care Plans | Configure provider, coverage targets, rates, network type |
| Decision Support | Set Up Decision Support for Medical Plans | Tools to help employees select plans |
| Insurance | Create Insurance Plans | Life, disability, supplemental insurance |
| Critical Illness | Setup Considerations: Critical Illness Insurance Plans | Special configuration for CI products |
| Retirement Savings | Create Retirement Savings Plans | 401(k), 403(b), pension; includes contribution allocation rules |
| Health Savings Account | Create Health Savings Account Plans | HSA plans linked to HDHP |
| Spending Account | Create Spending Account Plans | FSA, dependent care FSA |
| Additional Benefit Plans | Create Additional Benefit Plans | Custom plan types (e.g., wellness reimbursement, commuter) |

**Reference: Health Savings and Spending Accounts Enrollment Options** — enrollment mechanics for HSA/FSA.

### Benefits Knowledge Base

| Task | Purpose |
|------|---------|
| Set Up Benefits Knowledge Base Articles | Create plan-specific help content |
| Generate Help Article for Benefit Plan | AI-assisted article generation per plan |

---

## Benefit Programs

**Steps: Set Up Benefit Programs** — configure benefit program cards and wellness wallet.

| Task | Purpose |
|------|---------|
| Set Up Security and Endpoints for External Benefit Program Partners | Third-party program integration |
| Configure Benefit Program Cards | Worker-facing benefit program tiles |
| Configure the Benefits and Wellbeing Wallet | Employer contribution/reimbursement wallet |
| Set Up the Worker Wellbeing Profile Card | Display wellness profile data |

---

## Enrollment Events and Rules

### Steps: Set Up Enrollment Events and Rules

1. Create Enrollment Events (define triggers: new hire, life event, open enrollment, termination)
2. Create Enrollment Event Rules (define conditions per event type: coverage dates, waiting periods, increase limits, EOI)
3. (Optional) Create Conditional Messages for Enrollment Events

### Enrollment Workflows

| Task | Purpose |
|------|---------|
| Enrolling New Hires in Benefits | Auto-initiate benefit enrollment on hire event |
| Discontinue Benefits on Termination | Configure benefit end on termination |
| Steps: Set Up Automatic Benefit Eligibility Checks | Automated eligibility re-evaluation |

**Concept: Enrollment Period for Benefit Events** — how enrollment windows open and close per event type.

**Concept: Coordination of Benefits Enrollment Events** — handling concurrent enrollment events.

**Concept: Multiple Benefit Events on the Same Day** — priority and processing order.

**Concept: Plan Changes and Waiting Periods** — interaction between plan changes and waiting period start dates.

**Reference: Benefit Deduction Begin Date Rules** — how Workday determines when deductions start.

**Reference: Benefit Deduction End Date Rules** — how Workday determines when deductions end.

---

## Default Coverage and Auto-Enrollment

| Task | Purpose |
|------|---------|
| Steps: Set Up Auto-Contribution Increase for Retirement Plans | Annual auto-escalation for retirement savings |
| Enroll Workers into Retirement Savings Plans with Default Contribution Increases | Auto-enroll with escalation |
| Enroll Workers into Retirement Savings Plans Managed by Third-Party Providers | Third-party recordkeeper integration |
| Set Up Default Benefits Coverage | Define coverage applied when workers don't self-enroll |
| Set Up Auto-Enrollment for Benefit Plans | Automatically enroll eligible workers |

---

## Cross Plan Dependencies

| Task | Purpose |
|------|---------|
| Create Cross Plan Enrollment Prerequisites | Require enrollment in Plan A to enroll in Plan B |
| Create Cross Plan Insurance Coverage Maximums | Cap total coverage across plans |
| Create Cross Plan Insurance Percentage Maximums | Cap coverage as % of another plan |
| Create Cross Plan Retirement Savings Plan Contribution Maximums | Cap contributions across plans |

---

## Benefit Credits and Surcharges

| Task | Purpose |
|------|---------|
| Steps: Set Up Benefit Credits | Configure employer credits applied to benefit costs |
| Steps: Set Up Benefit Surcharges | Configure additional charges (e.g., tobacco surcharge, spousal coverage surcharge) |
| Create Benefit Annual Credit Types | Define credit categories |
| Create Benefit Credits | Specific credit amounts and rules |
| Create Benefit Credit Bundles | Group credits for assignment as a set |
| Assign Benefit Credits to a Benefit Group | Apply credit bundles to eligible groups |
| Create Benefit Surcharges | Define surcharge rules and amounts |
| Change Wellness Data | Update wellness-linked credit/surcharge data |

**Concept: Benefit Credits and Surcharges** — interaction between credits, surcharges, and employee net cost calculations.

---

## Multiple Jobs and Benefits

| Task | Purpose |
|------|---------|
| Steps: Set Up Multiple Jobs for Benefit Eligibility | Configure benefit eligibility across multiple jobs |
| Create Selection Rules for Benefit Jobs | Define which job determines benefit eligibility |
| Assign Benefit Job Selection Rules to Benefit Groups | Link rules to groups |
| Change Jobs Used for Benefit Eligibility | Update job selection for existing workers |

---

## Open Enrollment

### Setup Considerations: Open Enrollment

**Key decisions:** Enrollment window dates, plan year definition, auto-save, communications, corrections workflow.

### Steps: Set Up Open Enrollment

1. Create Benefit Plan Year Definitions
2. Configure enrollment event rules for open enrollment
3. Set up benefits messaging and reminders

### Steps: Manage Open Enrollment

| Task | Purpose |
|------|---------|
| Start Open Enrollment | Initiate the enrollment event for eligible workers |
| Add Employees to Open Enrollment | Include additional workers mid-event |
| Remove Employees from Open Enrollment | Exclude specific workers |
| Send Benefits Messages | Communicate plan changes, deadlines |
| Send Open Enrollment Reminders | Automated reminder notifications |
| Close Open Enrollment | End the enrollment period |
| Finalize Open Enrollment Elections | Lock in elections; generate payroll deductions |
| Reopen Open Enrollment | Re-open for corrections |
| Correct an Employee's Open Enrollment Elections | Admin correction of locked elections |

**Concept: Enrollment Status Indicators** — visual indicators showing worker enrollment progress.

**Concept: Benefits Enrollment Events on Mobile** — mobile enrollment experience.

---

## Benefit Changes

| Task | Purpose |
|------|---------|
| Change Benefit Elections | Process life event or qualifying event changes |
| Change Retirement Savings Elections | Update contribution elections |
| Finalize Open Benefit Event Elections | Lock in life event elections |
| Correct Benefits | Retroactive correction of benefit elections |
| Extend Benefits Coverage for an Individual Employee | Extend coverage beyond standard end date |

---

## Passive Events

**What They Are:** Benefits changes triggered by passage of time (not by worker actions). Example: age-out of dependent, end of waiting period.

**Steps: Set Up Passive Events:**
1. Set Up Passive Event Business Processes
2. Create Passive Event Rules (conditions and resulting actions)
3. Schedule Passive Events (run frequency)

**Concept: Passive Event Rules** — how rules are evaluated and triggered.

**Concept: Preview Alerts for Passive Events** — review upcoming passive event triggers before processing.

---

## Evidence of Insurability (EOI)

**What It Is:** Required medical underwriting for coverage above guaranteed issue amounts.

| Task | Purpose |
|------|---------|
| Steps: Set Up Evidence of Insurability | Configure EOI requirements per plan/coverage level |
| Steps: Manage Evidence of Insurability | Process and track EOI applications |
| Correct Employee EOI Approval and Denial Dates | Admin corrections |

**Concept: Evidence of Insurability Processes** — workflow for EOI submission, review, and approval.

---

## COBRA

| Task | Purpose |
|------|---------|
| Steps: Set Up COBRA Automation | Configure automatic COBRA eligibility on qualifying events |
| Grant COBRA Eligibility | Manually grant COBRA to a former worker |
| Correct COBRA Eligibility Records | Fix COBRA eligibility data |
| Grant COBRA to an Ex-Spouse | QDRO-related COBRA extension |

---

## Patient Protection and Affordable Care Act (ACA)

### Setup Considerations: ACA Reporting

**Key decisions:** ALE status, measurement method (monthly or look-back), reporting configuration, 1094-C/1095-C setup.

| Task | Purpose |
|------|---------|
| Steps: Set Up ACA Measurements and Eligibility | Configure measurement periods and FTE thresholds |
| Steps: Set Up ACA Software Partner Transmission | Electronic filing integration |
| Steps: Set Up ACA Forms 1094-C and 1095-C | Configure form data and employer information |
| Steps: Import ACA 1095-C Recipient Data | EIB import for recipient data |
| Create ACA Measurement Periods | Define standard and initial measurement periods |
| Create an ACA Company Configuration | Per-company ACA settings |
| View and Correct ACA Data Transmission Status | Monitor IRS transmission |

**Reference: Affordable Care Act 1095-C Form Codes** — code reference for line 14 and line 16 reporting.

---

## Medicare

**Steps: Set Up Medicare Tracking** — configure Medicare secondary payer (MSP) tracking.

**Manage Medicare Information** — maintain worker Medicare status for insurance coordination.

---

## Dependents and Beneficiaries

| Task | Purpose |
|------|---------|
| Manage Personal Relationship Types | Define relationship types (spouse, domestic partner, child) |
| Manage Dependents and Beneficiaries | Add, edit, and remove dependents and beneficiaries |
| Add or Delete Court-Ordered Benefits (QDRO) | Process qualified domestic relations orders |
| Steps: Set Up Fair Market Value for Health Care Plans | Configure imputed income for domestic partner coverage |
| Assign a Verification Status to Dependents | Track dependent eligibility verification |
| Purge Dependents and Beneficiaries | GDPR-related data removal for terminated workers |

---

## Wellness

**Concept: Workday Wellness** — integration with wellness program partners; tracks wellness activities linked to benefit credits/surcharges.

| Task | Purpose |
|------|---------|
| Steps: Set Up Workday Wellness | Enable wellness module and configure basics |
| Steps: Set Up Workday Wellness and Connect Wellness Partners | Third-party partner integration |
| Steps: Configure Worker Data and Enrollments | Map worker data for wellness programs |
| Steps: Manage Wellness Data Errors | Troubleshoot wellness data sync issues |
| Steps: Configure Plan Setup Insurance | Wellness-linked insurance configuration |
| Steps: Configure Evidence of Insurability | Wellness-driven EOI integration |
| Steps: Configure Worker Communication Cards | Wellness-specific worker communication |
| Steps: Set Up Connected Absence for Wellness Partners | Absence tracking integration with wellness |

**Reference: Workday Wellness Key Terms** — glossary of wellness-specific terminology.
