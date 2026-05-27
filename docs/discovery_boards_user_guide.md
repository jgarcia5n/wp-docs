# Workday Discovery Boards – User Guide
> Product Summary · May 14, 2026 · Not part of the Workday Administrator Guide

---

## Workflow Overview

Discovery Boards is a self-service analytical tool for line-of-business professionals. A discovery board is a project workspace (canvas) created from Workday Drive.

### Phase 1 – Create a Discovery Board
- New board from Workday Drive (`New > Discovery Board`)
- Copy existing board in Drive (right-click → `Make a Copy`)
- Copy Workday-delivered board from `Delivered Discovery Boards` report
- **Security:** `Discovery Boards: Create` + `Drive` domains (System functional area)

### Phase 2 – Select and Configure Data in a Viz
Each viz uses one data source. Supported data sources:
- Workday-delivered data sources
- Prism data sources (requires Prism Analytics tenant enablement)
- Extend application data sources (Business objects, Business process/event BOs)

Configure per viz: select data source → set prompt values → apply data source filters.

### Phase 3 – Configure and Modify a Viz
Select viz type, fields (attribute/summarization), and appearance:
- Override display names, number/currency formatting, color palettes
- Adjust mark size, group by color, set orientation and grouping (Cluster, Overlay, Stack, Stack to 100)
- Mark types per y-axis; dual-axis and combination charts
- Highlight data in Table viz; apply viz-level or sheet-level filters; sort and limit data

### Phase 4 – Prepare for Viewers
- Up to 10 vizzes per sheet; grid layout
- Multiple sheets; rename sheets and vizzes
- Add descriptions and resize vizzes
- Create **Controls** linked to prompts/filters → displayed in Control panel for viewers

### Phase 5 – Share Insights
- Share with individual users or security groups (requires `Configure Group Sharing in Drive`)
- Export viz as custom report (`Custom Report Creation` domain required)
- Download as CSV (Pivot Table, Table) or PNG (all other types)

### Administrative Functions (Discovery Board Administrators)
- Curate data source list: `Maintain Data Source List for Discovery Boards` report
  - Security: `Discovery Boards: Manage Curated Data Source List`
- Curate field lists (Data Source Fields, Drill By Fields, Show Details Fields): `Maintain Field Lists for Reporting` report
  - Security: `Discovery Boards: Manage Curated Data Source Field List` + `Discovery Boards: Manage Drilling Field Lists`
- Add boards as Home page worklets: `Maintain Dashboards` report → edit Home dashboard
  - Security: `Discovery Boards: Set Up Discovery Board as a Worklet` + `Set Up: Tenant Setup - Worklets`

---

## Concepts

### Vizzes
- A viz = graphical or textual representation of fields from a data source
- Each sheet: up to 10 vizzes; vizzes can be related or unrelated (different data sources)
- **Drill panel:** add vizzes, view transaction-level details, export to Report Writer, drill by dimensions

### Visualization Types

| Viz Type | Report-Compatible | Description |
|---|---|---|
| Chart | Matrix | Marks (bar/line/point/area) on axes; requires ≥1 summarization field |
| Donut Chart | Matrix | Circle segments; positive values only; best for <10 attribute values |
| Pivot Table | Matrix | Tabular with row/column groupings; row and column totals configurable |
| Table | Advanced | Attribute-only columns; spreadsheet-style |
| Area Chart | No | Lines with filled area; trend over time |
| Bar Chart | No | Vertical or horizontal bars; more grouping options than Chart |
| Heatmap | No | 2 attributes vs. common metric; color-coded |
| KPI Chart | No | Measure + optional comparison + variance + indicator rules |
| Line Chart | No | Connected line segments; trend over time |
| Scatterplot | No | 2 metrics vs. common attributes; correlation analysis |
| Waterfall | No | Incremental increases/decreases; positive/negative factors |

### Discovery Board Workspace (Edit Mode)
Key panels (left side icons):
1. Data source panel
2. Builder panel (viz type, drop zones, field config)
3. Filter panel (viz-level and sheet-level filters)
4. Configuration panel (sort order, Drill By, Show Details overrides)
5. Formatting panel (color palettes, field value overrides)

Additional workspace elements: board title/description, Share button, Undo/Redo, sheet controls, Control panel (right side), dual/merged Y-axis selector.

### Summarization and Attribute Viz Fields

| Role | Attribute (Dimension) | Summarization (Measure) |
|---|---|---|
| Data type | Qualitative — names, dates, geo | Numeric/quantitative aggregations |
| Purpose | Categorize and group | Analyze attributes as categories |
| Field types | All field types | Numeric, Currency, Text, Instance |
| Examples | Gender, Full Name, Hire Date | SUM(Sales), COUNT_DISTINCT(Full Name), AVG(Base Pay) |

**Aggregate functions:**
- Numeric/Currency (all sources): AVG, MAX, MIN, SUM
- Workday-delivered sources also: MEDIAN, PERCENTILE (5/10/25/50/75/90/95/97/98/99)
- Instance/Text (all sources): COUNT_DISTINCT

### Interactive Viz Queries
Dragging fields to drop zones constructs queries. Equivalent SQL structure:
```
SELECT <attributes>, <summarizations>
FROM <data source>
WHERE <filter attributes>
GROUP BY <attributes>
ORDER BY <sort options>
LIMIT <limit options>
```
Disable auto-update via `Automatically Update` menu option; manually refresh with `Update Now`.

### Drop Zones
- Grayed = not applicable to field; highlighted = available
- Position of attribute fields in drop zones determines grouping order
- Multiple fields permitted in some drop zones; drag to replace existing field

### Chart Viz Mark Types
| Mark | Description |
|---|---|
| Bar | Rectangular bar; length proportional to value |
| Point | Dot at Cartesian coordinates |
| Line | Endpoints connected by straight lines; trend over time |
| Area | Like line but fills space to x-axis; cumulative totals |
| Auto | Workday selects best mark type |

### Discovery Board Controls
A control = configurable input linked to a prompt or filter (the "controllable"). Created via `Create Control and Link` from a prompt or filter menu.

- Control panel appears on right side in both edit and view mode
- Rename, reorder (drag), or remove controls from the panel
- Workday applies AND condition between all controls
- Can't create controls for filters without values (e.g., `is empty`)
- View mode changes to control values are session-only and don't persist

### Sharing Discovery Boards
- Share via Share button on board or via Workday Drive
- Permissions: **Can View** (needs permission on ≥1 data source) or **Can Edit** (needs `Discovery Boards: Create` domain)
- Group sharing requires `Configure Group Sharing in Drive` task on tenant
- Mixed-language support: admin must enable `Allow Mixed-Language Transactions` on `Edit Workday Account` for users whose display language differs from Drive's language

### Discovery Board Security

| Permission | Behavior |
|---|---|
| Can Edit | Displays placeholder for every viz; shows data only if user has data source permission; shows all sheets |
| Can View | Hides vizzes without data source permission; reorganizes remaining vizzes; hides sheets with no accessible data sources |

Contextual security applies — users only see records and fields they have access to.

---

## Creating Discovery Boards

### Steps: Create a Discovery Board
1. Access Drive Home page
2. `New > Discovery Board` → enter name
3. Result: board added to My Files in Drive with 1 empty viz

### Steps: Create Visualizations
1. Access Drive (or Home page worklet)
2. Select discovery board → edit
3. (Optional) Enable `Automatically Update`
4. Set Up the Viz Data Source
5. On Builder panel, select viz type
6. Drag and drop fields into drop zones
7. (Optional) Enable `Show only curated fields`

### Set Up the Viz Data Source
1. Select viz → click Data source panel icon
2. Select data source from list (filtered by permission + curation settings)
3. (Optional) Save board to populate Recommended Data Sources (max 10, alphabetical)
4. (Workday-delivered) Select required/optional filters and prompts

### Set Up Prompt Values
- Prompt types: required or optional; apply to all vizzes on sheet using same data source + filter combo
- Prompt value options:
  - **Static** (default)
  - **Determine Value Dynamically** — uses Global business object field (e.g., First Day of This Month)
  - **Override at Viz** — moves prompt to Viz Overrides section
  - **Create Control and Link** — exposes to viewers via Control panel
- Unsupported prompt field types: Currency, DateTime, Numeric, Text

### Set Up Curated Data Sources
1. `Maintain Data Source List for Discovery Boards` report
2. `Add Data Sources` → select → `Enable in Discovery Boards`
3. Modify via `Add Data Sources` / `Remove Data Sources`

### Set Up Curated Field Lists
1. `Maintain Field Lists for Reporting` → Product Area: Discovery Boards
2. Select Business Object (all data sources with that primary BO share the list)
3. **Data Source Fields tab:** Add Fields → `Enable in Discovery Boards`
4. **Drill By Fields tab:** `Edit Drill By Field List` → add fields, set Default Sort → `Enable in Discovery Boards`
   - Drill By not supported for: blank/Other values, non-filterable fields, Lookup prior value calculated fields
5. **Show Details Fields tab:** `Edit Show Details Field List` → add fields, set Default Sort → `Enable in Discovery Boards`
   - To reorder: remove fields, then re-add in desired order

### Set Up Discovery Boards as Home Page Worklets
1. `Maintain Dashboards` report → Edit Home dashboard
2. Content tab → add worklet row → select `Discovery Boards` folder → select board
3. Set `Required for Groups` and `Required` checkbox
4. Optional worklets: `Configure My Worklet Landing Pages` → Home → Optional Worklets

### Reference: Supported Fields
**Prism data sources:** all fields, tenant-wide summarization calculations, supported global calculated field functions.

**Workday-delivered data sources:** Workday-delivered fields, tenant-wide summarization calculations, tenant-wide calculated fields using these functions:
Aggregate Related Instances, Arithmetic Calculation, Build Date, Concatenate Text, Convert Currency, Convert Text to Number, Count Related Instances, Date Constant, Date Difference, Evaluate Expression, Evaluate Expression Band, Extract Multi-Instance, Extract Single Instance, Format Date, Format Number, Format Text, Increment or Decrement Date, Lookup Date Rollup, Lookup Field with Prompts, Lookup Hierarchy, Lookup Hierarchy Rollup, Lookup Organization, Lookup Organizational Roles, Lookup Range Band, Lookup Related Value, Lookup Translated Value, Lookup Value As Of Date, Numeric Constant, Substring Text, Sum Related Instances, Text Constant, Text Length, True/False Condition

**Unsupported:** Fields on Global BO; DateTime, DateTimeZone, Rich Text, Time field types.

Use optimized fields (blue dot indicator) for better performance.

---

## Modifying Visualizations

### Steps: Modify Visualizations
1. Access viz in discovery board
2. (Area/Bar/Chart/Line) Enable Dual Y-axis → drag summarizations to Y-Axis (Left)/(Right)
3. (Bar/Waterfall) Select horizontal/vertical Orientation
4. (Area/Bar) Select Grouping: Cluster, Overlay, Stack, Stack to 100
5. (Chart) Select Marks type per y-axis; create combination charts with different marks per axis
6. Optionally: Adjust Mark Size, Change Viz Colors, Highlight Data, Group by Color, Change Field Options, Set Up Viz Options, Change Number Formatting, Set Up KPI/Waterfall/Donut options, Filter, Sort, Limit

### Adjust Mark Size in a Viz
Scatterplot or Chart (Point mark type) → drag summarization field to Size drop zone.

### Group Data by Color in a Viz
- Area/Bar/Chart/Line: attribute field to Color drop zone (requires ≥1 attribute in X-Axis)
- Donut: attribute field to Color (requires summarization in Angle)
- Heatmap: summarization field to Color

### Change Viz Colors
1. Formatting panel → select color palette (board-level)
2. Override at viz level with field value overrides
3. Clear overrides as needed

### Highlight Data in a Viz (Table viz only)
- Formatting panel → select table or column → apply formatting (Bold, Italic, Underline, Text Color, Background Color)
- Conditional formatting for Boolean, Date, Number, Text fields
- Multiple conditions: Workday applies first matching condition; formatting applies when no condition matches

### Change Field Options for Visualizations
- Builder panel → drop zone menu → Field Options → update Field Display Name (or Reset to default)
- Pivot Table: Display As % of total (Overall Total unavailable for rows-only)
- Supported display name drop zones by viz type: Area/Bar/Bubble/Chart/Line/Scatterplot (X-Axis, Y-Axis), Donut (Angle, Color), Heatmap (X-Axis, Y-Axis, Color)

### Set Up Visualization Options (Configuration Panel)
- **Pivot Table Columns/Rows:** Sort Order, Number of groupings (max 250/12000), Hide Totals
- **X-Axis (Area/Bar/Chart/Line):** Sort Order, Number of axis groupings (max 100), Summarize remaining → Other, Display Name
- **Y-Axis (Area/Bar/Chart/Line):** Axis display name
- **Color:** Sort Order, Number of groupings (max 250), Summarize remaining → Other, Display Name (Donut)
- **Options (Area/Bar/Line/Matrix Chart/Heatmap/Scatterplot):** Data Labels (All or Custom measures), Reference Lines (Constant/Measure/Workday Delivered; Label: Name+Value/Name/Value)
- **Show Details:** Enable toggle, Override default fields/settings toggle, Field list, Sort Order
- **Drill By:** Enable toggle, Override default fields/settings toggle, Field list, Sort Order (Alphabetical/Value Total/Logical)

### Change Number/Currency Formatting
Hover summarization field in drop zone → Formatting:
- **Custom:** format string
- **Automatic:** Workday determines
- **Numeric/Currency:** Negative Values display, Decimal Places, Display Unit (K/M/B/T), thousands separator, currency symbol (Currency only)
- **Percentage:** Negative Values display, Decimal Places
- Reset to Default available

### Set Up KPI Viz Options
1. Comparison Measure tab or Period Comparison Date tab → define variance calculation
2. Select variance display format (% decimal places)
3. Define base/comparison periods (dynamic or static dates)
4. Toggle Show Date Ranges on Visualization
5. Indicators tab → add rules (Base measure value or % of target; comparison operators; visual indicator)
   - Rules evaluated top-to-bottom; first match wins

### Set Up Waterfall Viz Options
Builder panel → Viz Options:
- Show data labels, Hide Start Value, Hide total
- Sort Order (Dimension drop zone only): alphabetical/logical/numerical, asc/desc
- Limit (Dimension drop zone only)
- Axis display names, Measure display names, Label display name

### Set Up Donut Chart Options
Builder panel → Angle Options:
- Angle Display Name, Show Value Data Labels, Show Percentage Data Labels, Hide Total, Space Out Segments, Show Leader Lines

### Concept: Color in Discovery Boards
- Board-level: select palette + field value overrides
- Viz-level: override per field value
- Palettes include color-blind friendly and high-contrast options
- Color assignments are dynamic unless manually overridden
- Waterfall: 4-color palette (Start, Increase, Decrease, Total); Increase/Decrease colors swappable
- Color override availability: Yes for Bar/Line/Area/Scatterplot/Waterfall/Chart/Donut; No for Heatmap; N/A for KPI

---

## Filtering and Sorting Data

### Filter Data in a Viz
1. Select viz → Filter panel → Add filter to Sheet Filters or Viz Filters section
2. Configure: Field, Filter Operator, Filter Values, AND/OR conditions, Nested groups (up to 4 levels)
3. Filter menu options:
   - **Determine Value Dynamically** — uses Global BO field
   - **Move to Sheet / Move to Viz** — change filter scope
   - **Create Control and Link** — expose to viewers
   - **Remove** — delete filter
   - **Disable** — temp disable without removing

Note: Lookup date rollup calculated fields not supported on sheet or viz filters.

### Sort Data in a Viz
- Chart/Area/Bar/Heatmap/Line → X-Axis or Color drop zone options → Sort Order
- Donut/Scatterplot → Color drop zone options
- Pivot Table → Columns or Rows drop zone options
- Table → hover attribute field in Columns → Table Options → Sort Order
- Sort options: Alphabetical, Logical (default, e.g., chronological months), Numerical, ascending/descending
- Donut: first mark in sorted list starts at Y-axis (top), clockwise rotation

### Limit Viz to the Top N Values
Supported: Area, Bar, Chart, Donut, Heatmap, Line, Scatterplot, Pivot Table

1. Click drop zone options for X-Axis, Columns, Rows, or Color containing an attribute field
2. Select Limit value
3. (Optional, not Pivot Table) Select Sum Remaining Values → displayed as "Other"

### Concept: Viz Filters
- **Viz filters:** apply to selected viz only
- **Sheet filters:** apply to all vizzes on sheet using same data source + data source filter
- Multiple sheet and viz filters with AND/OR combinations
- Can reorder and move between filter groups

---

## Sharing Visualization Insights

### Export a Viz as a Custom Report
- Security: `Custom Report Creation` + `Discovery Boards: Create`
- Supported viz types: Chart, Donut Chart, Pivot Table, Table
- Chart/Donut → Matrix report (chart + table); Pivot Table → Matrix (table only); Table → Advanced report
- Each export creates a new report definition; you are set as owner; sharing = Don't share report definition
- Color overrides not exported for Chart/Donut

Steps: Select viz → viz menu (upper right) → `Create Report` → enter report name.

### Download Visualizations
- Security: `Discovery Boards: Create`
- Non-table viz types: `Download as PNG`
- Matrix Report - Pivot Tables / Advanced Report - Tables: `Download as CSV`
- Also available from Drill By and Show Details results
- File name = viz name; title and description export with viz
- CSV: Microsoft Excel limit 32,767 chars per cell
- Can't download multiple CSV files simultaneously

---

## Reporting Limits

### Data Sources (RDS)

| Report Criteria | Limit |
|---|---|
| Indexed RDS | 3 million |
| Indexed RDS (prefiltering) | 3 million |
| Nonindexed RDS (prefiltering) | 3 million |
| Nonindexed RDS (postfiltering, pregrouping) | 1 million |
| Nonindexed RDS (postfiltering, indexed fields) | 3 million |
| Prism (background reports: Advanced, Matrix, Simple, Transposed) | 1 million rows |
| Prism data size | 512 MB |
| Non-Prism indexed data size | 2 GB |
| Prism table rows for discovery board viz / dashboard worklet | 2 billion max |

### Financial Modeled Data Source

| Description | Limit |
|---|---|
| Journal line data duration | Up to 3 years rolling (current + 2 prior) |
| Optional dimensions | 15 max |
| Values per dimension | 100,000 max |
| Query response cells | 1,000,000 |

### Processing
- Report processing timeout: 30 minutes (error); after 20 sec, option to schedule as background
- Background/scheduled/web service reports: 6 hours max
- Enable Background Only: Report editor → Advanced tab → Report Performance → Background Only checkbox

### Discovery Board Viz Limits
- Query timeout: 45 seconds
- Returned data size: 50 MB

| Viz Type | Limits |
|---|---|
| Area/Bar/Chart/Line Chart | 100 x-axis values; 250 color groupings + Other; 40M cells |
| Donut Chart | 250 color groupings + Other |
| Heatmap | 100 x-axis + Other; 100 y-axis + Other |
| Pivot Table | 50,000 data rows; 12,000 row groupings; 250 column groupings; 40M cells |
| Scatterplot | 250 color groupings + Other |
| Table | 50,000 data rows |
| Filter panel (>5,000 values) | Returns up to 5,000 distinct values |

### Scheduled Report Output

| Rows | Result |
|---|---|
| < 10,000 | Selected format (Excel, PDF, CSV) |
| 10,000–500,000 | Excel or CSV; PDF → CSV |
| 500,000–1M | CSV only |
| > 1M | CSV (max 15 GB file size) |

Report groups: 200 with Excel template; 2,500 without template.

If Excel/PDF exceeds 1 GB WML, Workday auto-generates CSV.

### Reports Run in Browser

| Report Type | Key Limits |
|---|---|
| All | 50 MB file size; 2 GB XML string; 5 sec tabular processing |
| Advanced | 1,000 instances; 10,000 rows (no pagination); 50,000 rows (supported pagination) |
| Composite | 100,000 cells; 1,000 columns; 16,000 rows; 50,000/10,000 rows with drill-down |
| Matrix | 250 columns; 12,000 rows; 15 summarization rows; 80,000 drill-down cells; 1M rows for count distinct (Prism) |
| nBox | 100 images per cell; 50,000/10,000 drill-down rows |
| Search | 2,000 instances; 300,000 per facet |
| Simple | 1,000 instances; 50,000 rows |
| Transposed | 1,000 instances; 50,000 rows |
| Trending | 80,000 drill-down cells; 1M rows (aggregated); 40M rows (background/scheduled/web services) |

### Report Designer Browser Limits
- Cells for multi-instance columns/fields: 1 million (composite, matrix, trending)
- Top-level rows: 50,000

| Browser | Rows Displayed | Columns Displayed |
|---|---|---|
| Internet Explorer 11 | 50 | 20 |
| All other browsers | 200 | 50 |

### Export to Excel Limits
- Columns: 16,384
- Rows: 1,048,576

### Mobile Devices
iPad/custom reports — not supported: hiding table borders/column headings, manual refresh, maximizing reports, 3D chart options.

Mobile — not supported: creating composite reports, custom dashboards, saving custom prompt values for worklets, dual-axis/combination charts, composite report formatting styles.

Not supported on mobile: Calendars, XpressO reports with 2 tabs or using related BO data.

Check dashboard mobile enablement: `Maintain Dashboards` → related actions → Dashboard > Edit → Settings tab → Device Type.
