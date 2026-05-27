# HCM – Talent & Skills Cloud

> Source: Admin Guide – Human Capital Management (May 14, 2026), pp. 1546–1917

---

## Overview

Talent covers goal management, career development, talent reviews, employee reviews, succession planning, feedback, and workforce metrics. Skills Cloud provides AI-driven skill taxonomy and matching across HCM functions.

---

## Goals

### Organization Goals

**What They Are:** Goals applied to a supervisory org and all workers in it. Don't cascade to subordinate orgs by default but can be linked through the hierarchy.

**Setup Considerations:** Decide how managers link org goals through the hierarchy; whether individual goals in reviews align to org goals; how to track progress.

| Task | Purpose |
|------|---------|
| Steps: Set Up Goals | Configure goal fields, statuses, and business processes |
| Set Up Individual Goals | Configure individual goal templates and fields |
| Set Up Goals for Employee Reviews | Link goals to review templates |
| Set Up Organization Goals | Configure org-level goal management |
| Set Up Goal Completion Statuses | Define custom completion status options |
| Steps: Configure Goal Templates | Create reusable goal templates |
| Steps: Manage Organization Goals | Create, edit, cascade org goals |

### Individual Goals

| Task | Purpose |
|------|---------|
| Create or Edit Individual Goals | Workers/managers create and maintain goals |
| Cascade Goal to Employees | Manager distributes org goal to direct reports |
| Add Additional Employees to Goal | Expand goal audience |
| Enable Archiving Goals | Allow historical goal archival |
| Mass Archive Individual Goals | Bulk archive completed goals |

---

## Development Items

**Concept: Development Items** — structured development actions tracked on worker profiles (courses, experiences, stretch assignments).

**Concept: AI-Generated Development Items** — Workday AI suggests development items based on career goals and skills gaps.

**Steps: Set Up Development Items** — configure development item types and business process.

**Steps: Enable AI-Generated Development Items** — activate AI suggestions.

---

## Career Interests

| Task | Purpose |
|------|---------|
| Steps: Set Up Interests | Define interest categories for workers to select |
| Steps: Set Up Opportunity Graph | Configure AI-driven career opportunity recommendations |
| Create a Public Job Catalog | Make job profiles visible for career exploration |
| Set Up Career Interests | Worker self-service career interest selection |
| Set Up Travel Preferences | Configure willingness-to-travel options |
| Set Up Relocation Preferences | Configure relocation willingness options |

**Concept: Opportunity Graph** — AI-powered graph connecting workers to internal opportunities based on skills and interests.

---

## Career Hub

**Setup Considerations:** Configuration decisions for career path visibility, skill matching, opportunity marketplace, and career path builder.

| Task | Purpose |
|------|---------|
| Steps: Set Up Career Hub | Enable and configure the Career Hub experience |
| Configure Career Path Builder | Define typical career progressions between job profiles |
| Process: Refine Maintained Skills for Career Hub Matching | Optimize skills data for AI matching |

**Concept: Career Hub** — centralized worker experience for career exploration, skill development, and internal mobility.

**Concept: Career Path Builder** — visual tool showing typical career progression paths.

**Concept: Career Hub and Opportunity Marketplace Activity Metrics** — analytics on usage and engagement.

**Reference: Career Hub Security** — domain requirements for Career Hub access.

---

## Talent Marketplace

**Setup Considerations:** Configuration for gig work, flex teams, and internal opportunity posting within the organization.

| Task | Purpose |
|------|---------|
| Steps: Set Up Talent Marketplace | Configure marketplace settings and access |
| Steps: Set Up Security for Talent Marketplace | Domain and security group configuration |
| Steps: Set Up Flex Teams | Enable short-term internal gig teams |
| Create Flex Teams | Define and post flex team opportunities |
| Promote Flex Teams | Increase visibility of open flex teams |
| Cancel Flex Teams and Flex Team Roles | End flex team assignments |
| Process: Refine Maintained Skills for Talent Marketplace Matching | AI matching optimization |

**Concept: Flex Teams** — temporary internal project teams; workers can join based on skills and availability.

---

## Career Profile

**Setup Considerations:** Decide which career profile sections are visible to the worker, manager, and HR roles.

**Steps: Set Up Career Profile** — configure visible sections and field visibility.

**Reference: Security for Career Profile Sections** — per-section domain requirements.

---

## Talent Reviews

| Task | Purpose |
|------|---------|
| Steps: Manage Talent Reviews | Configure talent review events |
| Create Talent Review Rules | Define evaluation rules per review type |
| Create Talent Review Templates | Build review forms (ratings, questions, notes) |
| Start Talent Reviews | Initiate a talent review cycle |
| Add Logo to Talent Cards | Branding for talent card output |
| Mass Print Talent Cards | Bulk print worker talent summaries |
| Steps: Create Custom Talent Card Layouts | Customize talent card display |

**Concept: Talent Reviews** — manager-driven assessment of worker potential, performance, and risk.

**Concept: Talent Cards** — printable/viewable summary of worker talent data used in calibration sessions.

---

## Employee Reviews

### Common Employee Review Setup

Configure review templates, rating scales, review sections, and business processes shared across review types.

**Key configuration objects:**
- Review template sections (goals, competencies, development, overall rating)
- Rating scales and weighting
- Eligibility rules for review population
- Routing (self-evaluation → manager → calibration → acknowledgment)

### Employee Review Process

Configure the employee review business process with steps for: self-evaluation, manager review, skip-level review, calibration, acknowledgment.

### Performance Reviews

Configure performance-specific review templates. Supports:
- Goal achievement ratings
- Competency ratings
- Overall performance rating
- Manager and employee comments

### Development Plans

Configure development plan templates for formal development tracking linked to reviews and career goals.

### Disciplinary Actions

Configure disciplinary action types, business process, and security. Supports formal performance improvement tracking.

### Performance Improvement Plans (PIPs)

Configure PIP templates, milestones, and business process routing.

### Employee Review Ratings and Weightings

Configure rating scale components and weighting formulas for composite scores.

---

## Talent and Performance Calibration

**What It Is:** Cross-manager review of talent ratings to ensure consistency and fairness across the organization.

| Task | Purpose |
|------|---------|
| Steps: Calibrate Talent and Performance Ratings | Initiate calibration process |
| Configure Custom Organizations for Calibration | Define calibration scope |
| Setup Considerations: Calibration nBox Reports | Configure 9-box and nBox grid settings |
| Create Calibration nBox Reports | Build nBox visualization templates |
| Set Up Calibration nBox Reports | Configure axes (performance, potential) |
| Define Calibration Program Rules | Set calibration rules and constraints |
| Set Up Calibration Programs | Define calibration programs by org and review period |
| Steps: Set Up Calibration | Full setup workflow |
| Hide Calibration Workers | Restrict visibility of specific workers during calibration |

**Concept: Calibration nBox Placement** — how Workday places workers on the nBox grid based on ratings.

**Concept: Calibration Results** — output of the calibration process and downstream impacts on pay/talent decisions.

---

## Feedback

### Feedback Types

| Type | Description |
|------|-------------|
| Anytime Feedback | Spontaneous, unprompted feedback given at any time |
| Requested Feedback | Structured feedback requested by worker or manager |
| Confidential Feedback | Visible only to specified roles |
| Anonymous Feedback | Giver identity hidden |

### Setup

| Task | Purpose |
|------|---------|
| Steps: Set Up Feedback | Configure feedback types and business processes |
| Set Up Feedback Security | Define who can give, view, and manage feedback |
| Set Up Feedback Business Processes | Configure routing and approval workflows |
| Feedback Templates | Create structured question templates for feedback requests |
| Set Up Anytime Feedback Notifications | Configure notification triggers |
| Steps: Set Up AI-Generated Feedback Suggestions | Enable AI-assisted feedback drafting |
| Steps: Set Up Mass Operation Feedback Events | Configure bulk feedback collection |

**Reference: Feedback Security Domains** — full list of feedback-related security domains.

**Reference: Feedback Business Processes** — all configurable business processes for feedback.

---

## Check-Ins

**Setup Considerations:** Informal manager-worker conversation logging; linked to goals and development.

**Steps: Set Up Check-Ins** — configure Check-In templates, frequency, and business process.

---

## Succession

**Setup Considerations:** Configuration for succession pools, candidate assessment, and plan management.

| Task | Purpose |
|------|---------|
| Steps: Set Up Succession | Configure succession planning features |
| Steps: Set Up Assess Potential | Configure potential assessment tool |
| Steps: Set Up Mass Operations for Assess Potential | Bulk potential assessments |
| Steps: Set Up Succession Pool Security | Restrict pool visibility |
| Steps: Manage Succession Plans | Create and maintain plans for key positions |
| Steps: Manage Succession Pools | Manage candidates in succession pools |
| Steps: Manage Succession Candidates | Individual candidate management |
| Steps: Set Up Succession Planning in HR Partner Hub | Configure Hub integration |

**Concept: Skills in Succession Planning** — how skill profiles inform succession candidate matching.

**Reference: Succession Planning Reports** — available standard reports.

---

## Mentors and Connections

**Steps: Set Up Mentorships** — configure mentorship program, request workflow, and matching.

**Concept: Connections** — informal peer-to-peer connection feature for networking and collaboration.

---

## Talent Highlights

**Setup Considerations:** Configure which worker talent signals surface on Talent Highlights cards.

**Steps: Set Up Talent Highlights** — configure data sources and display rules.

**Concept: Talent Highlights** — at-a-glance summary of a worker's talent signals (skills, certifications, goals, feedback).

**Reference: Talent Highlights Source Data** — data sources powering the Talent Highlights display.

---

## Talent Matrix Reports (9-box / nBox)

| Task | Purpose |
|------|---------|
| Steps: Set Up Talent Matrix Reports | Configure nBox report templates |
| Steps: Enable Manual Talent Matrix Placement | Allow manual override of grid placement |
| Configure nBox Reports | Define axes and quadrant labels |
| Run Talent Matrix Reports | Execute and view talent matrix |
| Set Up Talent Matrix Placement Indicator | Visual indicators on worker profile |

**Concept: Talent Matrix Reports** — how nBox grids are populated from ratings data.

---

## Talent Pools

| Task | Purpose |
|------|---------|
| Steps: Manage Talent Pools | Configure pool types and security |
| Create Talent Pools | Define static or dynamic talent pools |
| Add Members to Static Talent Pools | Manual addition of workers |

**Concept: Talent Pool Security** — public, private, and restricted pool access models.

---

## Workforce Metrics

**Create Custom Metrics for HCM** — define org-specific metrics using report fields and calculated fields.

**Concept: Management Reporting Dashboard** — pre-built dashboard for HCM metrics.

**Reference: Workforce Composition Dashboards** — available workforce composition worklets and reports.

---

## Talent Insight Apps

**Steps: Set Up the Retention Risk Insight Application** — configure AI-driven retention risk scoring.

**Configure Talent Insight Applications** — customize which insight apps are active and visible.

**Concept: Retention Risk Insight Application** — how Workday calculates and presents retention risk signals.

---

## Professional Profiles

**Steps: Set Up Professional Profiles** — configure the professional profile experience (LinkedIn integration, external profile import).

**Steps: Set Up Upload My Experience** — allow workers to import resume/experience data.

---

## Skills and Skills Cloud

### Skills (Core)

| Task | Purpose |
|------|---------|
| Steps: Maintain Skills | Create and maintain the skills catalog |
| Steps: Maintain Skill Categories | Organize skills into categories and groups |
| Steps: Manage Skill Profiles | Configure how skills appear on worker profiles |
| Steps: Set Up Skills Fit Analysis | Enable skill gap analysis vs. job profiles |
| Set Up Critical Skills | Designate skills critical to the organization |
| Manage Skills and Experience | Worker and manager skill maintenance |

**Concept: Skills and Competencies Comparison** — distinction between skills (specific abilities) and competencies (behavioral patterns).

**Reference: Skills Terminology** — definitions for all skills-related terms.

---

### Skills Cloud

**What It Is:** Workday-managed AI skill taxonomy that standardizes skill names, suggests related skills, and powers cross-product skill matching (Recruiting, Talent, Learning).

**Setup Considerations:**
- Whether to use Workday-delivered skill categories or custom categories
- How to handle imported skills from external sources
- Skill endorsement and rating configuration
- Skill level framework

| Task | Purpose |
|------|---------|
| Steps: Set Up Skills Cloud | Full Skills Cloud setup workflow |
| Enable Skills Cloud | Activate the AI-powered taxonomy |
| Steps: Enable Importing of External Skills | Allow skills from LinkedIn, resume parsing, etc. |
| Steps: Set Up Workday-Delivered Skill Categories and Skill Category Groups | Use Workday taxonomy |
| Steps: Set Up Mass Populate Skills for Workers | Bulk assign skills via workbook |
| Steps: Set Up Skill Endorsements and Ratings | Peer endorsements and proficiency ratings |
| Steps: Set Up Skill Level | Define skill proficiency levels |
| Maintain Skill Level | Update skill level definitions |

**Concept: Skill Assessments** — how Workday supports formal skill assessment linked to learning or manager review.

**Concept: Skills Verification** — workflow for verifying claimed skills.

**Concept: Automated Skill Management** — AI-driven skill suggestions based on job history, learning completions, and role.

**Concept: Skills Cloud Translations** — multilingual support for skill names.

**Reference: Skill Sources** — all sources from which skills can be imported or inferred (job profile, learning, external).
