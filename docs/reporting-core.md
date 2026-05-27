# Reporting and Analytics – Custom Reports & Report Writer

> Source: Admin Guide – Reporting and Analytics (May 14, 2026), pp. 13–368

---

## Analytics and Reporting Hub

**Steps: Set Up Analytics and Reporting Hub** — configure the centralized hub for all reporting and analytics tools. Provides quick access to Report Writer, Discovery Boards, Prism Analytics, People Analytics, Worksheets, and Slides.

---

## Workday Reporting Concepts

### Concept: Custom Reports

Custom reports are reports you create (or copy) using Workday Report Writer. They are distinct from Workday-delivered standard reports.

**Key characteristics:**
- Tied to a data source and primary business object
- Fields pulled from the primary business object and related objects
- Secured by domain security policies
- Can be shared, translated, scheduled, and embedded in dashboards/worklets

### Concept: Report Security

Reports are secured at two levels:
1. **Data Source security** — controls access to the underlying data
2. **Report Definition security** — controls who can view/run/edit the report definition

Security domains in the Reporting functional area control both levels. The **Security Domains for Reporting** reference lists all relevant domains.

### Reference: Report Types

| Report Type | Best For |
|-------------|---------|
| Simple | Single-column list reports; basic data extraction |
| Advanced | Multi-column with grouping, subtotals, gauge ranges |
| Matrix | Cross-tabulation with row/column grouping |
| Composite | Complex multi-section financial/operational reports |
| Trending | Time-series worker data using Trended Workers data source |
| Transposed | Pivot rows to columns for comparison views |
| Search | Faceted search-style output with filtering |
| nBox | 9-box/nBox grid reports for talent/performance |

### Reference: Reporting Tools in Workday

| Tool | Purpose |
|------|---------|
| Report Writer | Custom report creation within Workday tenant |
| Discovery Boards | Self-service data visualization (Tableau-like) |
| Prism Analytics | External data blending and advanced analytics |
| People Analytics | Pre-built workforce analytics application |
| Worksheets | Excel-like workbooks with live Workday data |
| Slides | Presentation tool with embedded live data |
| Workday Report Designer | Studio-based form layout and PDF report designer |
| Reports as a Service (RaaS) | REST API for programmatic report execution |
| Workday Query Language (WQL) | SQL-like query language for Workday data |
| OfficeConnect | Excel/PowerPoint integration for financial reporting |

### Concept: Workday Reporting Relationships

Understanding the object model that underlies reporting:
- Business objects link to each other through single-instance and multi-instance fields
- Reports traverse these relationships to pull related data
- The primary business object of the data source anchors the report's rows

---

## Data Sources

### Concept: Business Objects, Data Sources, and Fields

**Business Objects** — Workday stores all data in business objects (e.g., Worker, Position, Payroll Result). Each object has fields (attributes) and instances (rows).

**Data Sources** — define the set of instances returned for reporting. Each data source has a primary business object and may include:
- Built-in filters (e.g., All Active Employees)
- Prompts (e.g., filter by org)
- Security filters

**Fields** — available field types: Boolean, Numeric, Text, Date, Instance (reference to another object), Multi-instance (collection of related objects).

**Run the Data Sources report** to browse available data sources, their primary business objects, and security requirements.

### Concept: Indexed Data Sources and Fields

Indexed data sources support high-performance faceted search and filtering. Used in Search reports and Discovery Boards. Not all data sources are indexed.

### Concept: Selecting a Data Source

**Decision criteria:**
- Does the data source include the primary business object you need?
- Does it have built-in filters aligned to your use case?
- Is it indexed (required for Search reports)?
- Are all required fields accessible from the data source?

Run **Find Custom Reports by Data Source** to see existing reports using a data source.

### Trended Workers Report Data Source

**Setup Considerations** — special configuration required to enable historical worker snapshots for trending analysis.

**Set Up the Trended Workers Report Data Source** — configure the snapshot schedule and retention period.

**Concept: Trended Workers Report Data Source** — how historical snapshots are taken and stored; available fields; effective date behavior.

---

## Set Up Reports

### Setup Considerations: Custom Reporting

**Key decisions:**
- Report type selection (simple, advanced, matrix, composite, etc.)
- Data source selection
- Field selection and related object traversal
- Filter, prompt, and sort configuration
- Output format (web, PDF, Excel, CSV)
- Share and schedule settings

### Core Report Creation

| Task | Purpose |
|------|---------|
| Create Custom Reports | Build a new report from a data source |
| Copy Reports | Clone an existing report as a starting point |
| Create Reports from Business Object Instances | Create a contextual report from a specific object |
| Find Custom Reports by Data Source | Discover existing reports using a data source |

### Report Configuration Options

| Option | Task | Key Settings |
|--------|------|-------------|
| Drill Down | Set Up Drill Down for Custom Reports | Target report and field mapping |
| Sort | Set Up Sort Options for Custom Reports | Sort fields, sort direction, secondary sorts |
| Filter | Set Up Filter Options for Custom Reports | Field conditions, filter operators |
| Prompts | Set Up Prompt Options for Custom Reports | Prompt fields, defaults, required/optional |
| Output | Set Up Output Options for Custom Reports | Web, PDF, Excel, CSV; column visibility |
| Share | Set Up Share Options for Custom Reports | Security group access, report sharing |
| Advanced | Set Up Advanced Options for Custom Reports | Row limits, effective date handling, caching |
| Curated Field Lists | Set Up Curated Field Lists for Reporting | Limit field choices for a data source |
| Facets | Set Up Facet Configurations | Faceted filter configuration for Search reports |

### Concept: Charts

Workday reports support embedded charts (bar, line, pie, gauge, scatter). Configure chart type, axes, grouping, and colors.

**Reference: Chart Types** — complete list with configuration options.

**Setup Considerations: Charts** — when to use charts; performance considerations for large datasets.

**Concept: Effective and Entry Dates** — how effective-dated data interacts with report output; entry date vs. effective date filtering.

---

## Fields and Prompts

### Create Analytic Indicators

Analytic indicators are colored status indicators (green/yellow/red) added to report fields based on threshold conditions. Configured per field per report.

**Concept: Analytic Indicators** — threshold configuration and display behavior.

### Create Prompt Sets

Prompt sets define reusable groups of prompt fields that can be shared across multiple reports.

### Reference: Field Options

Complete list of field configuration options: column label, width, aggregation, format, currency conversion, linked drill-to report.

### Reference: Field Types

| Field Type | Description |
|-----------|-------------|
| Text | String fields |
| Numeric | Integer and decimal fields |
| Date | Date and datetime fields |
| Boolean | True/false fields |
| Instance | Reference to a single related object |
| Multi-instance | Collection of related objects |
| Calculated Field | Derived values from configured calculations |

---

## Report Types in Detail

### Simple Reports

Single-level list report with optional column sorting and filtering.

**Steps: Create Simple Reports** → **Set Up Columns for Simple Reports**

### Advanced Reports

Multi-level reports supporting grouping, subtotals, outlining, and gauge ranges.

**Steps: Create Advanced Reports:**
1. Create report definition with data source
2. Set Up Columns for Advanced Reports (field selection, aggregation, formatting)
3. Set Up Outlining in Advanced Reports (collapsible grouping levels)
4. (Optional) Create Gauge Ranges (thresholds for numeric indicators)

**Reporting Mass Action** — configure mass actions (bulk update operations) triggered from an Advanced report's output.

### Matrix Reports

Cross-tabulation reports with row groups, column groups, and summarized values in cells.

**Steps: Create Matrix Reports:**
1. Create report with matrix type
2. Set Up Grouping and Summarizing for Matrix Reports (row/column fields and aggregation)
3. Set Up Field Values Groups for Matrix Reports (custom grouping for field value ranges)
4. (Optional) Create Drill-To Report Links for Matrix Reports

**Concept: Matrix Reports** — row/column intersection behavior; subtotals; empty cell handling.

### Composite Reports

Complex, multi-section reports used primarily for financial statements, pay slips, and formal documents. Support multiple data sections with independent data sources.

**Setup Considerations: Composite Reports** — when to use composite vs. other report types; performance implications.

**Steps: Create Composite Reports:**
1. Create report definition
2. Set Up Composite Report Columns (column structure per section)
3. Set Up Composite Report Rows (row definitions per section)
4. Set Up Composite Report Cells (cell formulas and display rules)
5. Set Up Additional Options (formatting, page breaks)
6. Set Up Output Options for Composite Reports (PDF, web, Excel)
7. (Optional) Create Outline Structures
8. (Optional) Create Calculation Expressions (cell-level formulas)
9. (Optional) Create Drill-To Report Links for Composite Reports

**Concept: Composite Reports** — multi-section structure; row, column, and cell hierarchy.

**Concept: Formatting Styles** — CSS-like formatting applied to cells and sections.

**Concept: Dynamic Control Fields for Accounting Worktags** — dynamic column headers driven by worktag values.

**References:** Composite Report Columns / Rows / Cells / Calculation Expressions.

### Trending Reports

Time-series reports using the Trended Workers data source to show data changes over time.

**Steps: Create Trending Reports** → **Set Up Trending Reports** (configure time periods and snapshot fields)

**Steps: Set Up Tenants for Trended Worker Reporting** — prerequisite tenant setup.

### Transposed Reports

Convert row data into column comparisons (pivot-style).

**Steps: Create Transposed Reports** → **Set Up Rows for Transposed Reports**

### Search Reports

Faceted search-style reports with interactive filtering. Require indexed data sources.

**Steps: Create Search Reports** — configure indexed data source, facet filters, and display columns.

### nBox Reports

Grid-based talent matrix reports (9-box and nBox variants).

**Steps: Create nBox Reports** → **Set Up Matrix Options for nBox Reports** (configure axes, quadrants, worker placement)

---

## Run and Schedule Reports

| Task | Purpose |
|------|---------|
| Group Reports | Organize multiple reports into a report group for combined scheduling/output |
| Burst Reports | Distribute report results to multiple recipients with different filter values |
| Attach Excel Templates to Custom Reports | Apply Excel formatting templates to Excel output |
| Schedule Reports or Report Groups | Run reports on a recurring schedule |
| Manage Scheduled Future Processes | View and manage pending scheduled report runs |
| Save Filters | Save filter combinations as named filter sets |
| Manage Report Usage | View report run history and identify unused reports |
| Save Searches | Save global search queries for reuse |

**Concept: Report Schedules and Weekly Service Update Window** — scheduled reports pause during the weekly Workday service update; reschedule to avoid the window.

**Concept: Interacting with Report Results** — sorting, filtering, exporting, and drilling into report results from the output page.

---

## Report Administration

| Task | Purpose |
|------|---------|
| Add Custom Reports to Workday Menus | Surface custom reports in navigation menus and related actions |
| Share Custom Report Definitions | Grant other users access to run or edit a report |
| Transfer Ownership of Report Groups | Change the owner of a report group |
| Translate Custom Reports | Add translations for report name and column labels |

**Key Concepts:**

| Concept | Description |
|---------|-------------|
| Concept: Custom Report Deletion | Deletion prerequisites; impact on dependent reports and worklets |
| Concept: My Reports | Worker's personal report library |
| Concept: Report Definition Usages | Where a report is used (worklets, scheduled jobs, BPs, RaaS) |
| Concept: Report Tags | Metadata tags for organizing and finding reports |
| Concept: Temporary Reports | Reports created ad hoc with automatic expiry |

**Reference: Report Run History** — tracking report execution history and performance.

**Reference: Reports for Managing Custom Reports** — inventory and audit reports for the custom report catalog.

**Reference: Security Domains for Reporting** — domain requirements for report creation, sharing, and scheduling.

---

## Report Performance and Limitations

| Reference | Coverage |
|-----------|---------|
| Create Report Performance Logs | Enable detailed performance logging for a report |
| Reference: Report Performance Log Fields | Fields available in performance logs |
| Reference: Improving Report Performance | Indexing strategies, filter ordering, field selection |
| Reference: Best Practices for Large Volume Reports | Pagination, burst delivery, scheduled overnight runs |
| Reference: Reporting Limits | Row limits, timeout thresholds, field count limits |

---

## Worklets and Dashboards

**Steps: Set Up Custom Dashboards** — configure dashboards with custom worklet layout.

**Create Custom Dashboards** — define dashboard components, layout, and security.

**Configure Dashboard Content** — add, remove, and arrange worklets on dashboards.

**Enable Reports for Related Worklets** — make a custom report available as a related worklet on a business object page.

**Save Custom Prompt Values for Worklets** — persist default filter values for a worklet.

**Concept: Custom Worklets** — how worklets embed report output in Workday pages; worklet configuration options.

**Concept: Worklet Performance** — caching behavior; heavy worklets and page load impact.

---

## Custom Metrics and Scorecards

**Steps: Create Custom Metrics and Scorecards:**
1. Set Up Analytic Scorecard Profiles and Metric Sets (define the scorecard structure)
2. Create Custom Metrics (define individual metrics with calculations and targets)
3. Set Up Custom Reports for Scorecards (link custom reports as metric sources)
4. Process Metrics (run metric calculations)
5. Review Metrics (view scorecard results)

**Concept: Workday Scorecards** — scorecard hierarchy, metric aggregation, and trend display.

**Reference: Custom Scorecard Report Definition** — report configuration requirements for scorecard metrics.

---

## Business View Data Sources

**Concept: Business View Data Sources** — modified data sources with customized field availability, field names, and union field combinations. Used to standardize field access for a reporting population.

**Steps: Customize Business View Data Sources:**
1. Add and Union Fields to a Business View Data Source
2. Hide and Delete Fields in a Business View Data Source
3. Change Field Names and Descriptions in a Business View Data Source

**Concept: Union Fields Security** — security behavior when fields from multiple sources are unioned.

---

## Custom Data Sources

**Set Up Extended Indexed Data Sources** — extend existing indexed data sources with additional fields for search and Discovery Board use.

**Concept: Extended Indexed Data Sources** — how to add fields to indexed data sources without modifying the base data source.

**Maintain Custom Data Source for the Worker Business Object** — customize the worker business object data source for specialized reporting needs.

---

## Quicklinks

**Steps: Display a Quicklinks Worklet on a Dashboard** — configure a worklet that shows a list of quick-access links.

**Maintain Quicklinks** — manage the set of links displayed in a Quicklinks worklet.

---

## Reports as a Service (RaaS)

**Concept: Reports as a Service (RaaS)** — REST API for executing Workday custom reports programmatically. Returns report data as JSON, XML, or CSV.

**Concept: Accessing RaaS Output** — authentication (OAuth 2.0 via SAML or client credentials), URL construction, pagination.

**Concept: Reports as RSS Feeds** — configure report output as an RSS feed for subscription-based consumption.

---

## Workday Query Language (WQL)

**Concept: Workday Query Language (WQL)** — SQL-like query language for programmatic access to Workday data via REST API. Supports SELECT, FROM, WHERE, GROUP BY, ORDER BY, LIMIT.

| Task/Reference | Description |
|----------------|-------------|
| Convert Reports to WQL Queries | Auto-generate a WQL query from an existing custom report |
| View WQL Query Results | Execute WQL queries directly in the Workday UI |
| Concept: Related Business Objects in WQL | How to traverse object relationships in WQL |
| Concept: Pagination of WQL Query Results | Cursor-based pagination for large result sets |
| Reference: WQL REST API | API endpoint, headers, authentication, error codes |
| Reference: WQL Aliases | Built-in aliases for common business objects |
| Reference: WQL Result Limits | Maximum row and field limits per query |
| Reference: WQL and RaaS Comparisons | When to use WQL vs. RaaS |
| WQL Reference | Complete function and operator reference |

---

## Business Form Layouts and Workday Report Designer

### Business Form Layouts

**Create Business Form Layouts with Report Designer in Workday Studio** — design custom PDF form layouts for Workday documents (pay slips, offer letters, contracts).

### Setup Considerations: Report Designer

**What It Is:** An Eclipse-based (Workday Studio) tool for creating pixel-precise PDF report designs. Supports complex layouts, charts, barcodes, and multi-data-source documents.

**Steps: Create Business Form Layouts with Report Designer:**
1. Create Report Design Projects (Studio project container)
2. Create Report Design Files (individual report designs)
3. Create Data Sources (connect report to Workday report output)
4. Create Data Sets (define field mappings from data source)
5. Design report layout (labels, text, charts, grids, tables, images)
6. Deploy Report Designs to Workday (associate with custom report)

### Designing and Formatting Reports

| Element | Task |
|---------|------|
| Labels | Add static text labels |
| Text Blocks | Add rich-text content blocks |
| Dynamic Text | Add merge fields from data sets |
| Rotated Dynamic Text | Sideways text for headers/footers |
| Data Sets and Fields | Bind data to layout elements |
| Images and Background Images | Embed logos and watermarks |
| Grids | Structured grid layouts |
| Lists | Repeating data list elements |
| Tables | Tabular data display |
| Charts | Bar, line, pie charts from data sets |
| Barcodes | 1D and 2D barcode elements |
| Group Report Data | Repeating section grouping by field value |
| JavaScript | Conditional layout logic via JavaScript |

### Translation Support in Report Designer

**Steps: Translate Labels Using Resource Files** — define translation resource files for multi-language PDF output.

**Steps: Create Translation Resource Files** — build locale-specific string files.

### Sharing Report Designs

**Export Report Design Projects** — export design for migration between tenants.

**Import Report Design Projects** — import designs into a new tenant.
