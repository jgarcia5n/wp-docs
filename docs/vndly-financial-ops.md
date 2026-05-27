# Workday VNDLY – Financial Operations: Charge Codes, Timesheets, Expenses, Invoicing, Shifts, Calculation Engine & Taxes

> Source: Admin Guide – Workday VNDLY (May 14, 2026), pp. 205–288

---

## Charge Codes

### What They Are

Charge codes are cost allocation tags applied to timesheets and expenses, mapping contractor work to specific cost centers, projects, or budgets. They are the primary mechanism for financial reporting and budget management in VNDLY.

**Concept: Charge Codes** — charge codes are linked to work orders and used to allocate time and expenses. Each work order has one or more charge codes with percentage allocations that must total 100%.

**Concept: Charge Code Tables** — lookup tables that define valid charge codes for specific orgs, locations, or job categories. Tables can be imported from ERP systems or defined manually.

**Concept: Changing Charge Code Combinations** — rules governing how charge code combinations can be changed on active work orders, including approval requirements and effective dating.

**Reference: Flow of Charge Codes** — end-to-end flow from charge code configuration → work order assignment → timesheet allocation → invoice → goods receipt (for Procure-to-Pay).

---

## Timesheets

### Concept: Timesheets

**Timesheet Types:**

| Type | Description | Key Features |
|------|-------------|-------------|
| **Summary** | Contractor enters total hours/days per period | Supports decimal entry (8.5h); shift functionality; previous week entry |
| **Time In/Out** | Contractor enters specific clock-in/out times | Break tracking; allocate to charge codes after entry; Workday Mobile limited to current day |
| **Clock & Assign** | Real-time time punches with simultaneous charge code allocation | Holiday/premium application; complex compensation; hour-based OT; adjustable work week |

**Timesheet Summary dataset** refreshes at 00:35 AM, 6:35 AM, 12:35 PM, and 6:35 PM EST.

**Timesheet Statuses:** Not Started → Saved → Submitted → Approved

### Timesheet Configuration Tasks

| Task | Purpose |
|------|---------|
| Set Up Timekeeping Setting Defaults | Configure global defaults (timesheet type, work week start, approval routing, rounding rules) |
| Create Timekeeping Settings Rules | Rules that apply different timesheet settings based on org, location, job category, or vendor |
| Change Contractor Timekeeping Settings | Override timekeeping settings for an individual contractor |
| Track Time on a Clock and Assign Timesheet | Process a Clock & Assign timesheet on behalf of a contractor |

**Concept: Units of Time Entry for Summary Timesheets** — configure whether time is entered in hours or days; decimal precision settings.

**Set Up Calendar-based Premium Pay** — configure premium pay rates that automatically apply based on calendar dates (holidays, specific days of week).

**Enable Overtime Allocation Enforcement on Timesheets** — require contractors to allocate overtime hours to specific charge codes.

### Timesheet Operations

| Task | Purpose |
|------|---------|
| Upload Timesheets | Bulk import timesheet data via CSV |
| Modify Timesheets | Edit submitted or approved timesheets (requires appropriate permissions) |
| Download Multiple Timesheets | Export filtered timesheet data |

### Work Types and Overtime

**Create Work Types** — define categories of work (Regular, Overtime, Holiday, On-Call, Training) used on timesheets.

**Create Work Type Profiles** — bundle work types into profiles assigned to contractors or job templates.

**Create Overtime Rates and Profiles** — define overtime multipliers (1.5x, 2x) and associated pay rates.

**Create Overtime Rules** — configure when overtime applies (daily OT after 8h, weekly OT after 40h, 7th consecutive day, etc.).

---

## Expenses

### Concept: Expenses

Expenses allow contractors to submit reimbursable costs (travel, meals, equipment, mileage) associated with their work assignments. Expenses are tied to work orders and follow an approval workflow before being included in invoicing.

### Steps: Set Up Expenses

1. Create Expense Categories (define expense types with required fields and GL codes)
2. Create Expense Report Types (group categories into report types for different expense scenarios)
3. Create Expense Mileage (configure mileage reimbursement rates by location)
4. Configure Expense & Adjustment Settings (global expense behavior settings)

### Expense Category Configuration

**Create Expense Categories** — key settings per category:
- Category name and GL account code
- Required fields (receipts, justification, project)
- Spend limits per submission and per period
- Taxability
- Currency handling

**Create Expense Report Types** — bundle categories into report types (e.g., Travel Report, Client Entertainment, Training Expenses).

**Create Expense Mileage** — define per-mile or per-km reimbursement rates; support for multiple rates by region or effective date.

**Configure Expense & Adjustment Settings** — settings for currency, approval routing thresholds, receipt requirements, and audit rules.

### Create Expenses

**Create Expenses** — submit individual expense line items on behalf of a contractor or guide a contractor through expense submission.

**Create Miscellaneous Adjustments** — ad hoc financial adjustments outside of standard expense categories (credits, corrections).

**Bulk Upload Expenses** — import multiple expense records via CSV.

### Event-Based Expenses

**Create Event-Based Expenses** — expenses triggered automatically by specific work events rather than contractor submission.

**Attach an Event-Based Expense to a Work Order** — link an event-based expense definition to a specific work order.

**Example: Create a Scheduled Event-Based Expense** — configure a recurring expense (e.g., monthly stipend) that fires on a schedule.

**Example: Create a Timesheet Event-Based Expense** — configure an expense that triggers automatically when a timesheet is submitted (e.g., per-diem).

---

## Invoicing

### Configuration Tasks

**Create Invoice Templates** — define invoice layout, included fields, calculation logic, and approval routing. Templates are assigned to vendors or work orders.

**Create Invoice Template Rules** — conditional rules that assign specific invoice templates based on org, vendor type, or work type.

**Create Billing Cycles** — define the frequency and date ranges for invoice generation (weekly, biweekly, monthly).

**Create Billing Cycle Rules** — assign specific billing cycles to org units, vendors, or work order types.

**Set Up Scheduled Billing for Monthly Rates** — configure automated monthly invoice generation for fixed-rate work orders.

### Invoice Operations

| Task | Purpose |
|------|---------|
| Create an Invoice | Manually generate an invoice for a work order |
| Create and Schedule Automated Invoice Jobs | Configure recurring invoice batch jobs |
| Create New Invoice Payments | Record a payment against an invoice |
| Decisioning a Miscellaneous Adjustment for Invoicing | Approve, reject, or modify a miscellaneous adjustment before invoicing |
| Submit Miscellaneous Adjustments for Invoicing | Include approved adjustments in an invoice |
| Void Invoices | Cancel an issued invoice; requires reversal entries |
| Generate Invoice Files | Export invoice data files for ERP/AP system processing |

**Reference: Transaction Statuses** — all possible states for invoices, payments, and adjustments (Draft, Submitted, Approved, Paid, Voided, etc.).

### Invoicing Concepts

| Concept | Description |
|---------|-------------|
| Concept: Manual and Scheduled Invoicing | When to use manual vs. automated invoice creation |
| Concept: Payments | Payment recording, partial payments, and payment matching |
| Concept: Payment Forms | Check, ACH, wire transfer, and credit card payment types |
| Concept: Scheduled Billing for Monthly Rates | How monthly flat-rate billing is calculated and invoiced |
| Concept: Historical Miscellaneous Adjustments for Invoicing | Handling adjustments to closed billing periods |
| Concept: All Transactions vs. Select Transactions with Payments | Payment application strategy for multi-transaction invoices |
| Concept: Invoicing Strategy for Fees | How vendor fees (markup, fixed fee, margin) are calculated and invoiced |

---

## Shifts

### Setup Considerations: Shifts

Shifts enable structured work scheduling for contractors. Configuration allows:
- Defining named shifts with start/end times
- Applying shift differentials (premium pay for certain shifts)
- Associating shifts with job templates and work orders
- Backdating shift changes on active work orders

**Key decisions:** Whether to use shifts, shift differential configuration, approval requirements for shift changes.

### Steps: Set Up Shifts

1. Enable Shift Selection for Job Templates (activate shift association on job templates)
2. Create Shifts (define shift name, days, start/end time, and location)
3. Create Shift Rules (rules controlling which shifts apply to which workers or orgs)
4. (Optional) Bulk Update Shifts (mass update shift assignments)

### Shift Concepts

**Concept: Shift Rules** — conditional logic determining which shift applies to a contractor based on location, job category, or work order attributes.

**Concept: Shift Differentials** — premium pay rates applied to hours worked during specific shifts (e.g., night shift +15%, weekend +20%). Configured as multipliers applied to base bill rate.

**Concept: Backdate Shifts on Work Orders** — behavior and approval requirements when retroactively changing a shift on an active work order with existing approved timesheets.

---

## Calculation Engine

### Concept: Calculation Engine Formulas

The Calculation Engine enables custom pay and billing rate calculations that go beyond standard rate card configurations. Used for complex compensation strategies: premium pay, blended rates, multi-tiered OT.

**Formula structure:**
- **Formula Components** — individual data inputs (base rate, OT multiplier, allowance amount)
- **Formulas** — combine components using arithmetic expressions
- **Formula Groups** — bundle multiple formulas applied together
- **Rules** — conditions that trigger specific formulas or formula groups

### Steps: Create Formulas Using Calculation Engine

1. Create Formula Components Using Calculation Engine (define inputs: fields, constants, or references)
2. Create Formulas Using Calculation Engine (build calculation expressions from components)
3. Create Formula Groups Using Calculation Engine (bundle related formulas)
4. Create Rules Using Calculation Engine (define when formulas apply)

**Example: Create Pay Rate Based Formulas** — sample formula for calculating blended pay rate including base pay, shift differential, and overtime premium.

---

## Taxes

**Add Tax Overrides to Work Orders** — override the default tax rate on a specific work order (e.g., nexus exemptions, contractor tax status).

**Add Tax Overrides to SOW Milestone and Fixed Price Payments** — apply tax overrides to SOW payment types.

**Create Invoice Templates (Tax-Specific)** — tax-aware invoice templates that calculate tax by jurisdiction.

**Manage Global Tax Settings** — configure default tax rates, tax codes, and taxability rules by country or region.

**Change Work Site Tax Rates** — update the tax rate for a specific work site location.

**Concept: Tax Management** — how VNDLY calculates taxes on invoices; jurisdiction determination logic; taxability by service type; integration with ERP tax engines via Procure-to-Pay.
