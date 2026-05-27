# Reporting and Analytics – Discovery Boards, Prism Analytics, People Analytics, Worksheets & Slides

> Source: Admin Guide – Reporting and Analytics (May 14, 2026), pp. 369–1050

---

## Discovery Boards

### What They Are

Discovery Boards are Workday's self-service data visualization tool (Tableau-like experience within Workday). Users drag-and-drop fields onto a canvas to build interactive charts and tables called **Vizzes**.

**Steps: Set Up Tenant for Discovery Boards** — enable the Discovery Boards functional area and configure security.

**Reference: Reporting Limits** — Discovery Board-specific limits on data rows, field counts, and concurrent users.

### Discovery Board Concepts

| Concept | Description |
|---------|-------------|
| Concept: The Discovery Board Workflow | How boards are created, shared, and consumed |
| Concept: Vizzes | Individual visualizations within a board |
| Concept: Visualization Types | Bar, line, scatter, pie/donut, waterfall, KPI, map, table |
| Concept: Discovery Board Workspace | Canvas layout, control panels, and navigation |
| Concept: Summarization and Attribute Viz Fields | Measure (numeric) vs. attribute (categorical) field roles |
| Concept: Interactive Viz Queries | How clicking a viz filters other vizzes on the board |
| Concept: Using Drop Zones in a Viz | Row, column, color, size, and detail drop zones |
| Concept: Chart Viz Mark Types | Bar, line, area, circle, text, and combination marks |
| Concept: Discovery Board Controls | Filter controls, date sliders, and multi-select pickers |
| Concept: Sharing Discovery Boards | Share with users, security groups, or public worklets |
| Concept: Discovery Board Security | Row-level security via Workday domain and data source security |

### Workday-Delivered Discovery Boards

**Copy Workday-Delivered Discovery Boards** — clone delivered boards as a starting point for customization.

### Creating Discovery Boards

**Steps: Create a Discovery Board:**
1. Create board definition (name, data source)
2. Steps: Create Visualizations (add Vizzes to canvas)
3. Set Up the Viz Data Source (select indexed data source and fields)
4. Set Up Prompt Values for Discovery Boards (configurable filters)
5. (Optional) Set Up Curated Data Sources (limit field availability)
6. (Optional) Set Up Curated Field Lists for Discovery Boards
7. (Optional) Set Up Discovery Boards as Home Page Worklets

**Reference: Supported Fields in Discovery Boards** — field types and indexed data source requirements.

### Modifying Visualizations

**Steps: Modify Visualizations** — edit existing Vizzes including:
- Adjust Mark Size in a Viz
- Group Data by Color in a Viz
- Change Viz Colors
- Highlight Data in a Viz
- Change Field Options for Visualizations
- Set Up Visualization Options (axis ranges, labels, tooltips)
- Change Numeric/Currency Summarization Formatting
- Set Up KPI Viz Options (target lines, thresholds)
- Set Up Waterfall Viz Options
- Set Up Donut Chart Options

**Concept: Color in Discovery Boards** — palette configuration and sequential vs. diverging color schemes.

### Filtering and Sorting

| Task | Description |
|------|-------------|
| Filter Data in a Viz | Apply field filters within a Viz |
| Sort Data in a Viz | Control sort order |
| Limit Viz to the Top N Values | Show only the top/bottom N ranked results |

**Concept: Viz Filters** — how board-level, viz-level, and context filters interact.

### Sharing Visualization Insights

**Export a Viz as a Custom Report** — convert a Discovery Board Viz to a persistent custom report.

**Download Visualizations** — export Viz data as CSV or image.

---

## Prism Analytics

### What It Is

Prism Analytics extends Workday reporting with the ability to blend Workday data with external data sources. Data is stored in **Tables** and **Datasets** within Workday, then published as **Prism Data Sources** for use in Custom Reports, Discovery Boards, and Worksheets.

**Data flow:** External data (SFTP, cloud storage, file upload) → Table/Dataset → Published Prism Data Source → Report/Discovery Board

### Steps: Set Up Tenant for Prism Analytics

**Prerequisite:** Create a Tenant Management case with Workday to provision Prism hardware.

Setup sequence:
1. Create User-Based Security Groups (Prism Data Writer, Prism Data Administrator)
2. Create Prism Access Security Groups (link unconstrained groups)
3. Enable Prism Analytics Functional Area (Maintain Functional Areas task)
4. Edit Domain Security Policies for Prism domains (Datasets: Create, Manage, Owner Manage, Publish; Tables: Create, Manage, Owner Manage; Prism: Manage Data Source, Manage Relax Sharing, Manage Connection, Manage File Containers)
5. Activate Pending Security Policy Changes
6. Set Up Dataset Sharing and Table Sharing
7. (Optional) Enable Prism Dataset View Transformations (Edit Tenant Setup - Reporting and Analytics)
8. (Optional) Enable Contextual Publishing for Datasets

### Key Concepts: Tables and Datasets

| Concept | Description |
|---------|-------------|
| Concept: Tables | Simple containers for external data; one data source per table; schema-validated |
| Concept: Table Error File | How Workday reports schema validation errors on table load |
| Concept: Datasets | Transformed data containers with pipeline stages for complex data preparation |
| Concept: Dataset Workspace | UI for building and managing dataset pipelines |
| Concept: Data Catalog | Searchable catalog of all tables, datasets, and Prism data sources |
| Concept: Prism Management Console | Admin console for monitoring Prism data operations |
| Concept: Dataset Schema Changes | Behavior when upstream schema changes |
| Concept: Dataset Pipelines | The sequence of stages applied to transform data |
| Concept: Dataset Stages | Individual transformation steps within a pipeline |
| Concept: Unpivot Stages | Converting wide (columnar) data to long (row) format |
| Concept: Dataset Field Origin | Tracing where each field value originates |
| Concept: Field Lineage | End-to-end lineage from source to published field |
| Concept: Table and Dataset Field Types | Supported types: Text, Number, Date, Boolean, Instance |
| Concept: NULL Values in Tables and Datasets | NULL handling in filters, joins, and aggregations |
| Concept: Prism Calculated Fields | Computed fields defined within a dataset using Prism Expression Language |
| Concept: Hiding Dataset Fields | Exclude fields from downstream consumers |
| Concept: Dataset Integration Schedules | Automated dataset refresh on a schedule |

### Steps: Set Up Tenant for Analytic Data Source

Configure the analytic data source feature for Workday-delivered analytic datasets (e.g., Peakon).

### Creating Tables and Datasets

| Task | Purpose |
|------|---------|
| Steps: Create a Table by File Upload | Upload a CSV/Excel file as a table |
| Steps: Create Table from a Workday Report | Use a Workday custom report as the table source |
| Steps: Create Table from an Existing Table or Dataset | Derive a new table from existing Prism data |
| Steps: Create a Table Manually | Define table schema and enter data manually |
| Steps: Create a Dataset with External Data (SFTP Server) | Load data from an SFTP source on schedule |
| Steps: Create a Dataset with External Data (Upload a File) | One-time file upload to a dataset |
| Steps: Create a Dataset Using Workday Data | Use Workday report data as dataset source |
| Steps: Create a Derived Dataset | Build a dataset from one or more existing tables/datasets |
| Import a Table or Dataset into a Derived Dataset | Add an upstream data source to a derived dataset |
| Manage Dataset Integration Schedules | Set and manage automatic refresh schedules |
| Upload a New File to a Dataset | Refresh dataset with a new file version |

### Editing Tables and Datasets

| Task | Purpose |
|------|---------|
| Parse External Data in a Table | Configure column parsing for imported files |
| Edit a Table | Modify table schema or data |
| Parse External Data in a Dataset | Configure parsing for dataset source files |
| Add a Prism Calculated Field to a Dataset | Add computed fields using Prism Expression Language |
| Add a Stage to a Dataset | Insert a transformation stage in the pipeline |
| Manage Dataset Fields | Rename, hide, retype fields |
| Change Dataset Field Types | Cast fields to different types |
| Convert Dataset Text Fields to Date Fields | Parse text dates into typed date fields |
| View Pipeline Snapshot Comparison | Compare pipeline output before and after changes |

### Dataset Stage References

| Stage Type | Description |
|-----------|-------------|
| Explode Stages | Expand array fields into individual rows |
| Filter Stages | Remove rows based on conditions |
| Group By Stages | Aggregate rows by one or more fields |
| Join Stages | Combine two data sources by matching fields |
| Union Stages | Stack rows from two data sources with matching schemas |
| Unpivot Stages | Transform columns into rows |
| Validation Stages | Flag or remove rows that fail validation rules |

### Managing Cloud Connections

Prism supports connections to external data stores for automated data ingestion:

| Connection Type | Task |
|----------------|------|
| Amazon Redshift | Create an Amazon Redshift Connection |
| Amazon S3 | Create an Amazon S3 Connection |
| Azure Synapse | Create an Azure Synapse Connection |
| Azure Blob Storage | Create an Azure Blob Connection |
| BigQuery | Create a BigQuery Connection |
| Google Cloud Storage | Create a Google Cloud Storage Connection |
| Salesforce | Create a Salesforce Connection |
| SFTP | Create an SFTP Connection |
| Snowflake | Create a Snowflake Connection |

### Changing Data in Tables (Data Change Tasks)

**Create a Data Change Task** — define a batch operation that modifies Prism table data (insert, update, delete rows).

**Concept: Data Change Tasks** — how data changes are scoped, scheduled, and executed.

**Concept: Mapping Fields in Data Change Tasks** — field mapping between source and target.

**Steps: Add Prism Data Change Service to a Business Process** — trigger data changes from a BP completion event.

### Securing Data in Tables and Datasets

| Task | Purpose |
|------|---------|
| Set Up Table Sharing | Define who can view/use a table |
| Set Up Dataset Sharing | Define who can view/use a dataset |
| Share a Table/Dataset with Others | Grant access to specific users or groups |
| Edit Prism Data Source Security | Modify published data source access |

**Concept: Security in Prism Analytics** — layered security: table/dataset sharing, published data source domain security, row-level security.

**Concept: Sharing Tables and Datasets** — owner vs. contributor vs. viewer access model.

**Concept: Relax Sharing Options** — options to allow non-owners to share Prism data.

### Preparing Data for Analysis (Publishing)

Before a dataset is available for reporting, it must be published as a **Prism Data Source**.

| Task | Purpose |
|------|---------|
| Enable Contextual Publishing for Datasets | Auto-publish datasets when they change |
| Publish a Dataset as a Prism Data Source Manually | One-time manual publish |
| Create Dataset Publish Schedules | Schedule recurring publish operations |

**Concept: Making Prism Data Available for Analysis** — publish vs. unpublish; data freshness behavior.

**Concept: Coordinating Publish Schedules with Dataset Integration** — align integration refresh with publish timing.

### Deleting Prism Analytics Data

| Task | Purpose |
|------|---------|
| Truncate Data in a Table | Remove all data from a table (keep schema) |
| Delete Rows of Data in a Table | Delete specific rows by condition |
| Truncate Data in a Dataset | Remove all data from a dataset |
| Unpublish a Dataset | Remove from active Prism data sources |
| Delete Rows from a Prism Data Source | Remove rows from published data |

### Managing Analytic Dimensions

Analytic dimensions allow Workday object instances (e.g., Cost Centers, Job Profiles) to serve as dimension values in Prism datasets.

| Task | Purpose |
|------|---------|
| Steps: Convert an External Dimension Text Field to an Instance Field | Link text values to Workday object instances |
| Create an Analytic Dimension Business Object with Values | Define a custom dimension |
| Create an Analytic Dimension Hierarchy and Assign Values | Hierarchical organization of dimension values |
| Add an Instance Mapping Stage | Map text fields to Workday instances in a dataset pipeline |

**Concept: Analytic Dimensions** — how dimensions enable filtering and drill-down by Workday objects.

### Managing Analytic Data Sources

**Workday-Delivered Analytic Data Sources** — pre-built datasets provided by Workday (e.g., Peakon Employee Voice). Installable and schedulable.

| Task | Purpose |
|------|---------|
| Install and Schedule an Analytic Data Source | Deploy a Workday-delivered analytic dataset |
| Uninstall an Analytic Data Source | Remove a delivered dataset |
| Steps: Set Up Peakon Employee Voice Analytic Data Source | Configure Peakon integration data source |

### Prism Expression Language (PEL)

A formula language for creating calculated fields within Prism datasets.

**Reference: Prism Expression Language** — complete syntax and function reference.

#### PEL Function Categories

| Category | Examples |
|----------|---------|
| Conversion Functions | TO_NUMBER(), TO_TEXT(), TO_DATE() |
| Date Functions | DATE_DIFF(), DATE_ADD(), YEAR(), MONTH(), DAY() |
| Informational Functions | IS_NULL(), IS_NOT_NULL(), COALESCE() |
| Instance Functions | INSTANCE_ID(), INSTANCE_LABEL() |
| Logical Functions | IF()/THEN/ELSE, AND(), OR(), NOT() |
| Math Functions | ABS(), ROUND(), CEIL(), FLOOR(), MOD(), SQRT() |
| Text Functions | CONCAT(), LEFT(), RIGHT(), LOWER(), UPPER(), TRIM(), REPLACE() |
| URL Functions | URL encoding and decoding functions |
| Window Functions | ROW_NUMBER(), RANK(), LAG(), LEAD(), SUM() OVER(), AVG() OVER() |
| Regular Expressions | REGEXP_MATCH(), REGEXP_REPLACE() |

---

## People Analytics

### What It Is

People Analytics is a pre-built workforce analytics application embedded in Workday. It provides structured analysis of workforce metrics across topics like headcount, turnover, hiring, compensation, DEI, and skills.

**Setup Considerations: People Analytics** — configuration decisions for pipeline field mappings, security, population filters, and custom metrics.

### Steps: Prepare for People Analytics Installation

1. Provision Prism Analytics (prerequisite)
2. Confirm data quality requirements
3. Plan population views and intersections
4. Configure pipeline field mappings

**Steps: Set Up Languages in People Analytics** — enable multi-language display.

### Key Concepts

| Concept | Description |
|---------|-------------|
| Concept: Metrics in People Analytics | Pre-built metric definitions; headcount, hire rate, attrition, time-to-fill, pay equity, etc. |
| Concept: Key Performance Indicators (KPIs) | KPI display on People Analytics landing page |
| Concept: Focus Insights | AI-generated callouts highlighting significant trends |
| Concept: Skills in People Analytics | Skills gap and workforce skills analysis |
| Concept: Refining in People Analytics | Population filtering and slice-and-dice capabilities |
| Concept: Export and Download Options | Export formats (Excel, PDF, PNG) for People Analytics content |
| Concept: Storyteller Engine | AI narrative generation explaining metric movements |
| Concept: Trends, Gaps, Top Drivers, and Detailed Data | Analysis framework used across all People Analytics topics |

### References

| Reference | Content |
|-----------|---------|
| Reference: Terminology | People Analytics-specific term definitions |
| Reference: Business Questions by Topic | Available analysis questions by topic area |
| Reference: Metrics in People Analytics | Complete metric catalog with calculation methodology |
| Reference: Visualizations by Topic | Available chart types per topic |
| Reference: Empty States | Meaning of empty visualizations (no data vs. zero) |

### Maintaining People Analytics

**Key maintenance tasks:**

| Task | Purpose |
|------|---------|
| Steps: Configure Application Settings | Global settings (fiscal year start, default currency, etc.) |
| Steps: Configure Pipeline Field Mappings | Map Workday fields to People Analytics dimensions |
| Steps: Change People Analytics Configuration | Modify active configuration settings |
| Steps: Configure a Pipeline in People Analytics | Build the data pipeline from Workday to the analytics engine |
| Steps: Set Up Constrained Security to People Analytics | Restrict population visibility by security group |
| Steps: Set Up Email Digest in People Analytics | Configure scheduled email summaries for leaders |
| Steps: Set Up Skills in People Analytics | Connect Skills Cloud data to People Analytics |
| Steps: Set Up VIBE Index in People Analytics | Configure diversity and belonging metrics |

**Concept: Hierarchies and Organizations in People Analytics** — how org hierarchy drives population views.

**Concept: Security in People Analytics** — constrained security for manager-scoped views.

**Concept: Data Quality Module** — validation rules and data quality checks for People Analytics.

### VIBE Index

**Concept: VIBE Index in People Analytics** — Visibility, Inclusion, Belonging, and Equity index measuring DEI dimensions across the workforce.

**Concept: Belonging in the VIBE Index** — how belonging is measured and weighted.

**Concept: Calculating the VIBE Score** — methodology for the composite VIBE score.

---

## Worksheets

### What They Are

Worksheets is Workday's Excel-like spreadsheet tool with live Workday data embedded directly in workbook cells. Supports formulas, charts, collaboration, and data analysis without leaving Workday.

### Setup

**Set Up Worksheets** — configure security, feature flags, and tenant-level Worksheets settings.

**Migrate Live Data Workbooks Between Tenants** — migrate workbook definitions across tenants (e.g., implementation to production).

**Reference: Security Domains and Worksheets Actions** — all domain requirements for Worksheets access.

### Key Concepts

| Concept | Description |
|---------|-------------|
| Concept: Managing Workbooks | Create, share, version, and delete workbooks |
| Concept: Live Data in Workbooks | How Workday data is embedded and refreshed in cells |
| Concept: Structured References in Workbooks | Referencing Workday report fields using structured notation |
| Concept: Using External References | Reference data from other workbooks |
| Concept: Creating Reports to Insert into Workbooks | Custom reports as data sources for workbook cells |
| Concept: Single- and Multi-Instance Field Values in Workbooks | How Workday object instances resolve in cells |
| Concept: Array Formulas in Workbooks | Multi-cell formula arrays for bulk data retrieval |
| Concept: Editing Workbooks | Collaboration, conflict resolution, and version history |
| Concept: Automatic and Manual Calculation in Workbook Formulas | When formulas recalculate automatically vs. on demand |
| Concept: Data Analysis with Worksheets Functions | Statistical and analytical formula capabilities |

### References

| Reference | Content |
|-----------|---------|
| Reference: Workbook Limits | Row, column, formula, and data volume limits |
| Reference: Workbook Actions Available Based on Permissions | Feature availability by access level |
| Reference: Automatic Data Updates in Workbooks | When and how live data refreshes |
| Reference: Mobile Features for Worksheets | Available features on Workday mobile |

### Workbook Templates

**Concept: Workbook Templates** — pre-configured workbook structures that can be distributed and populated.

**Create and Distribute Workbook Templates** — build templates and share with specific audiences.

### Worksheets Function Reference

Worksheets supports standard spreadsheet functions plus Workday-specific extensions.

**Reference: Worksheets-Unique Functions** — Workday-specific functions for accessing live Workday data.

**Reference: Worksheets Functions by Category** — full function catalog by category (Math, Statistical, Text, Date, Logical, Lookup, Financial, etc.).

**Reference: Formula Errors** — error codes and resolution.

**Worksheets Functions** — detailed function reference with syntax, parameters, and examples.

---

## Slides

Slides is Workday's built-in presentation tool that embeds live Workday data and Worksheets content directly into slides.

**Steps: Set Up Security for Slides** — configure security group access to Slides features.

**Concept: Slides** — presentation creation within Workday; embedding live charts, tables, and Worksheets data.

**Concept: Managing Slides Presentations** — create, edit, share, and present from Workday.

**Concept: Editing Slides Presentations** — layout tools, text formatting, live data embedding, and design options.

**Reference: Access to Linked Worksheets Data in Slides** — how Worksheets data permissions apply when linked to Slides.

**Reference: Slides Presentation Limits** — slide count, image size, and data volume limits.

**Reference: Presentation Actions Available Based on Permissions** — feature availability by access level.

---

## Reporting on Modeled Data Sources (OfficeConnect)

### What It Is

OfficeConnect is Workday's Excel and PowerPoint integration for financial reporting. It allows users to pull Workday financial data directly into Excel/PowerPoint using the **Financial Reporting Data Model**.

**Enable OfficeConnect for Workday Financial Management** — activate the OfficeConnect feature for the tenant.

### Setup

**Set Up the Financial Reporting Data Model** — configure the modeled data source that OfficeConnect uses:
1. Define reporting model structure (accounts, worktags, time periods)
2. Map ledger accounts to the reporting model
3. Configure currency translation settings
4. (Optional) Configure multiple reporting models

### Key Concepts

| Concept | Description |
|---------|-------------|
| Concept: Modeled Data Sources | Pre-aggregated financial data for high-performance reporting |
| Concept: Reporting on the Financial Modeled Data Source | How the model exposes financial data to OfficeConnect and Report Writer |
| Concept: The Financial Reporting Data Model | Structure: accounts, dimensions, time periods, scenarios |
| Concept: Configuring Multiple Reporting Models | Multiple models for different reporting scopes (actual, budget, forecast) |
| Concept: Caching and Refreshing the Financial Modeled Data Source | How the model cache is maintained and refreshed |
| Concept: Enforcing Security in OfficeConnect | How Workday row-level security applies in OfficeConnect |
| Concept: Currencies and Currency Translation | Handling multi-currency reporting in OfficeConnect |
| Concept: Differences Between OfficeConnect and Report Writer | Feature comparison; when to use each |
| Concept: Differences in OfficeConnect Between Financials and Planning | Behavioral differences for Adaptive Planning |

### Reporting on Prism Data Sources

Configure the financial reporting model to include Prism Analytics data alongside Workday financial data.

| Task | Purpose |
|------|---------|
| Steps: Set up the Reporting Model for Prism Data Sources | Enable Prism data in OfficeConnect |
| Create Field Mappings for Prism Data Sources | Map Prism fields to reporting model dimensions |
| Configure the Reporting Model for Prism Data Sources | Set model parameters for Prism data integration |
| Create Custom Fields for the Reporting Model | Add custom calculated fields to the model |
| Steps: Create Instance Fields for Prism Data Sources | Map Prism text fields to Workday object instances |

**Concept: Custom Versions** — how custom reporting model versions allow scenario analysis.
