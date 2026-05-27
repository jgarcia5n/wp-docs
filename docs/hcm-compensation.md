# HCM – Compensation

> Source: Admin Guide – Human Capital Management (May 14, 2026), pp. 997–1257

---

## Overview

Workday Compensation enables configuration of pay structures, plan types, eligibility rules, and review processes. Compensation integrates with Payroll via Compensation Elements and with Staffing via defaulting rules and job profiles.

---

## Components: Elements and Eligibility Rules

### Steps: Set Up Compensation Components

1. **Create Frequencies** — define annualization factors (e.g., Hourly = 2080, Bi-weekly = 26, Annual = 1)
2. **Access Maintain Units of Measure** — define units for unit-based compensation plans
   - Security: Set Up: Unit of Measure domain in Common Financial Management
3. **Create Compensation Elements** — link Compensation to Payroll (determines which earnings pay the employee)
4. **Create Compensation Packages** — group grades, grade profiles, and plans for assignment as a set
5. **Create Eligibility Rules for Compensation** — define employee groups eligible for each plan
6. **Assign Compensation Components to an Eligibility Rule** — enables automatic defaulting during staffing transactions
7. (Optional) **Steps: Manage Compensation Basis**
8. Set up security: segmented security by compensation plans or intersection security

**Note:** Workday doesn't recommend intersection security for Compensation; it doesn't apply to all situations (e.g., exclusion criteria depend on organizations, many plans aren't org-associated).

### Create Frequencies

- Access: **Maintain Frequencies** task
- Security: Set Up: Compensation General domain in Core Compensation functional area
- Key field: **Annualization Factor** — occurrences per year used to calculate annual compensation (up to 6 decimal places)
- **Use Weekly Hours** option — for Hourly types; uses scheduled weekly hours for annual equivalent (best practice for Workday Payroll)

### Compensation Eligibility Rules

**Setup Considerations:** Define which employee populations are eligible for which compensation plans. Use combinations of: worker type, job profile, job family, job category, location, organization, management level.

**Create Eligibility Rules for Compensation** — task: Create Compensation Eligibility Rule.

**Assign Compensation Components to an Eligibility Rule** — links packages, grades, grade profiles, and plans to eligible populations for automatic defaulting.

---

## Grades and Grade Steps

### Steps: Set Up Compensation Grades and Grade Steps

1. Create Compensation Grades (min/mid/max ranges)
2. Create Compensation Grade Profiles (sub-ranges by region, function, etc.)
3. Create Compensation Grade Steps (specific monetary amounts within a grade)
4. Create a Compensation Grade Hierarchy (grouping for roll-up reporting)
5. (Optional) Set Up Automatic Compensation Grade Step Progression Schedules
6. (Optional) Set Up Step Progression Notifications
7. (Optional) Set Up Time Off and Leave Impact on Step Progression
8. (Optional) Set Up Quality Step Increase

**Reference: Compensation Grade and Pay Range Security** — domain requirements for grade access.

**Reference: Compensation Step and Grade Progression Reports** — available reports for tracking progression.

---

## Compensation Survey Management and Benchmark

**Setup Considerations:** Use external survey data or internal benchmarks to set and validate pay ranges.

| Task | Purpose |
|------|---------|
| Steps: Enable Machine Learning for Compensation Benchmark Job Matching | AI-assisted matching of job profiles to survey jobs |
| Steps: Manage External Compensation Surveys, Job Catalog, and Job Matches | Import and manage survey data |
| Steps: Manage External Compensation Survey Results | Review and apply survey results |
| Steps: Configure External Compensation Benchmarks from Survey Results | Set pay ranges from survey data |
| Create External Compensation Survey Benchmark Cycles | Define benchmark review cycles |
| Steps: Create Shadow Compensation Pay Ranges | Parallel pay ranges for benchmarking without affecting live data |
| Steps: Configure Internal Compensation Benchmarks | Use internal data to set benchmark ranges |

**Reference: Workday Compensation Benchmark Solutions** — overview of available benchmark integration options.

---

## Manage Compensation Plan Assignments

| Task | Purpose |
|------|---------|
| Roll Out Compensation Plans to Employees | Mass-assign plans to eligible employee populations |
| Remove Compensation Plans from Multiple Employees | Mass removal by plan and population |
| Remove Compensation Plans with Expected End Date | Scheduled removal when plan expires |
| Set Up Adjustments to Unit Salary, Hourly, Allowance, and Commission Plans | Configure adjustment rules per plan type |
| Steps: Propose Compensation for Employees or Positions | Initiate compensation proposals outside of review cycles |

**Concept: Remove Prior Compensation for Rehires** — how Workday handles compensation assignments when a former employee is rehired.

---

## Manage Compensation

| Task | Purpose |
|------|---------|
| Create Compensation Packages | Group grades, grade profiles, and plans for easy assignment |
| Set Up Compensation Package Analytics | Reporting and analytics on package assignments |
| Restrict Viewing of Funded and Non-Funded Plan Assignments | Segmented security for plan visibility |
| Set Up Segmented Security by Compensation Plans | Limit plan visibility and edit access by segment |
| Maintain Compensation Change Templates | Reusable templates for compensation change events |
| Set Up Compa Integration for Real-Time Benchmarking | Third-party benchmarking integration |
| Set Up Task Consolidation for Compensation in Recruiting | Combine compensation and offer tasks |
| Steps: Analyze Pay Equity | Run pay equity analysis using Workday reporting |
| Configure Scramble Plans for Compensation | Mask compensation values in reports for data privacy |

**Concept: Out of Order Compensation Changes** — behavior when compensation events are processed outside of chronological order.

**Reference: Compensation Plan Comparisons** — feature matrix for all plan types.

**Reference: Benefits and Pay Hub** — combined hub for employee benefit and pay visibility.

---

## Compensation Plan Types

### Salary Plans

| Task | Purpose |
|------|---------|
| Steps: Set Up Salary Plans | Configure salary plan options and eligibility |
| Create Salary Plans | Define annual/period salary plans |
| Create Unit Salary Plans | Plans based on units (e.g., per diem, per piece) |
| Create Period Salary Plans | Plans with specific payment periods |

### Hourly Plans

| Task | Purpose |
|------|---------|
| Steps: Set Up Minimum Wage for Hourly Plans | Configure minimum wage enforcement by location |
| Steps: Set Up Mass Operations for Minimum Wage | Bulk update to bring workers to minimum wage |
| Create Hourly Plans | Define hourly rate plans |

**Concept: Minimum Wage in Compensation** — how Workday enforces minimum wage by location and effective date.

### Allowance Plans

**Create Allowance Plans** — fixed or calculated allowances (e.g., car allowance, housing allowance, meal allowance). Supports monetary and non-monetary allowances.

### Commission Plans

**Create Commission Plans** — variable pay based on performance metrics or sales results.

### Merit Plans

**Steps: Set Up Merit Plans** — configure merit increase parameters, budget, and eligibility.

**Create Merit Plans** — define merit plan parameters and guidelines.

### Bonus Plans

| Task | Purpose |
|------|---------|
| Steps: Set Up Bonus Plans | Configure bonus types and eligibility |
| Steps: Pay for Company Performance | Link bonus amounts to company performance metrics |
| Steps: Set Up Eligible Earnings Overrides for Bonuses | Define custom earnings basis for bonus calculations |
| Create Bonus Plans | Define individual and discretionary bonus plans |
| Create Compensation Scorecards | Define performance scoring for bonus eligibility |
| Create Compensation Scorecard Results | Record actual scores |
| Create Deferred Bonus Calculations | Configure multi-year deferred bonus payments |
| Create Future Payment Plans | Schedule future bonus payments |
| Steps: Rescind or Forfeit Bonus Payments for Employees | Remove awarded payments |

**Concept: Company Performance Options** — link bonus pools to company-level performance results.

**Concept: Future Payment Plans and True Ups** — deferred payment mechanics and reconciliation.

### Stock Plans

| Task | Purpose |
|------|---------|
| Steps: Manage Stock Plans and Grants | Configure equity compensation plans |
| Create Stock Plans | Define vesting schedules, grant types |
| Request Stock Grants | Initiate stock grant for a worker |
| Add Stock Grants | Admin-add grants outside of request process |
| Create Stock Participation Rate Tables | For ESPP-style plans |
| Steps: Update Approved Stock Grants | Modify granted awards |

### Calculated Plans

**Steps: Manage Calculated Plans for Compensation** — formula-based compensation plans. Supports complex calculations using report fields and calculated fields.

**Concept: Calculated Plans for Compensation** — when and how to use calculated plans vs. other plan types.

### Locality Pay

**Steps: Set Up Locality Pay Areas** — configure geographic locality pay differentials (common in government/federal compensation).

### One-Time Payment Plans

| Task | Purpose |
|------|---------|
| Steps: Set Up and Manage One-Time Payments | Configure and issue ad hoc payments |
| Create One-Time Payment Plans | Define one-time payment types |
| Request One-Time Payments for Employees | Initiate individual or bulk payments |
| Steps: Enable Self-Service One-Time Payments | Allow managers/employees to request payments |

**Concept: Forfeit and Clawback for Terminated Workers** — rules for recovering one-time or bonus payments from terminated employees.

---

## Compensation Basis

**Steps: Manage Compensation Basis** — define the grouping of compensation components used to calculate base pay for compa-ratio and target penetration.

**Create Configurable Compensation Basis** — define custom basis calculations using selected plan types.

**Create Calculation Compensation Basis** — formula-driven basis calculations.

**FAQ: Manage Basis Total (MBT)** — clarification on how MBT is calculated.

---

## Compensation Reviews

### Setup Considerations: Compensation Reviews

**Key decisions:**
- Compensation matrix structure (merit matrix, compa-ratio grid)
- Budget management (pools by org, plan type, or combination)
- Participation rules (which employees are included)
- Time proration rules for partial-year employees
- Coordination with other events (terminations, leaves, transfers)
- Custom calculations and modifiers
- Grid configurations for manager entry

### Steps: Prepare for Compensation Reviews

1. Create Compensation Matrix
2. Create Eligibility Waiting Periods for Compensation Review Processes
3. Create Time Proration Rules for Compensation Reviews
4. Create Compensation Rounding Rules
5. Manage Compensation Review Participation Rule Sets
6. (Optional) Create Grid Configurations for Compensation
7. (Optional) Steps: Manage Custom Calculations for Compensation Reviews
8. (Optional) Steps: Manage Custom Modifiers for Compensation Reviews
9. Steps: Set Up the Compensation Review Business Process

### Manage Compensation Reviews

| Task | Purpose |
|------|---------|
| Initiate Compensation Review Processes | Start a review cycle (merit, bonus, stock) |
| Steps: Add or Remove Employees to or from Compensation Reviews | Adjust participation mid-cycle |
| Steps: Manage Multiple Events During Compensation Reviews | Handle concurrent staffing events |
| Change Dates and Reasons on In-Progress Compensation Reviews | Adjust cycle parameters |
| Steps: Recalculate Bonus Targets, Pool, and Awards | Refresh calculations after changes |
| Manage Compensation Review Pools | Distribute and manage budget pools |
| Manage Awards for Compensation Reviews | Review and approve awards |
| Review Promotions in Compensation Reviews | Incorporate promotion increases in cycle |
| Manage Funding for Bonuses | Define and track bonus funding sources |

**Reference: Terminations During Compensation Review Processes** — how Workday handles employees who terminate during a review cycle.

---

## Compensation Statements

| Task | Purpose |
|------|---------|
| Steps: Create Wage Theft Prevention Notices | Generate legally required pay notices |
| Steps: Set Up Total Rewards Statement | Configure total compensation summary for workers |
| Configure Total Rewards Templates | Customize statement layout and content |
| Steps: Create Custom Compensation Review Statements | Custom statements for review cycles |
| Steps: Manage Compensation Review Statements | Generate, review, and distribute statements |

---

## Severance Plans

| Task | Purpose |
|------|---------|
| Steps: Manage Employee Severance | Configure severance eligibility and calculation |
| Create Severance Matrix | Define severance amounts by tenure, level, etc. |
| Create Severance Packages | Bundle severance components |
| Create Severance Worksheets for Workers | Generate individual severance calculations |
| Complete Severance Package Assignments | Finalize and assign severance |
| Request Compensation Change After Termination | Handle compensation adjustments post-termination |
