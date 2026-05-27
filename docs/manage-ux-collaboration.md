# Manage Workday – User Experience, Worktags & Collaboration

> Source: Admin Guide – Manage Workday (May 14, 2026), pp. 1243–1459

---

## User Experience

### My Tasks

**Concept: My Tasks** — the worker's primary task inbox. Displays all pending BP tasks, to-do items, and inbox notifications across all BPs. Supports filtering, sorting, and delegation.

**Example: Create a My Tasks Filter to Share with Others** — admin-created filters shared across a security group.

**Example: Create a Personal My Tasks Filter** — individual worker filter configuration.

---

### People Experience

#### Home Page

Configure the worker Home landing page:
- Featured worklets and announcements
- Recommended content sections
- Quick action shortcuts
- AI-generated content suggestions
- Personalization controls

#### Journeys

**What They Are:** Guided, multi-step experiences for workers during key life events (e.g., new hire, return from leave, promotion, open enrollment). Journeys sequence tasks, content, and resources into a structured workflow.

Key configuration:
- Define Journey triggers (hire, leave return, life event, anniversary)
- Configure Journey steps (tasks, learning, forms, acknowledgments)
- Set Journey eligibility rules (who sees which journey)
- Configure Journey notifications

---

### Accessibility

**Concept: Accessibility** — Workday's commitment to WCAG 2.1 AA compliance. Covers keyboard navigation, screen reader support, color contrast, and focus management.

---

### Guidance Workspace

**What It Is:** Admin tool for creating and managing QuickTips — contextual in-app guidance overlays that appear on specific Workday pages.

| Task | Purpose |
|------|---------|
| Steps: Configure QuickTips using Guidance Workspace | Create and deploy QuickTips |
| Configure QuickTips in Guidance Workspace | Edit existing QuickTips |
| Delete Guidance Project and All its Quick Tips | Remove a guidance project |
| Disable AI QuickTips | Turn off Workday AI-generated QuickTips |

**Concept: Guidance Workspace** — project-based QuickTip management; targeting rules; publish workflow.

**Concept: AI QuickTips and AI Content Generation** — how Workday AI generates contextual guidance; content review and approval.

**QuickTips Sample Library** — Workday-delivered sample QuickTips for common configuration patterns.

---

### Electronic Signatures

Integrate e-signature platforms with Workday document workflows.

| Platform | Setup Task |
|----------|-----------|
| Adobe Sign | Set Up Adobe Sign — configure OAuth connection, document routing, and signature workflow |
| DocuSign | Set Up DocuSign — configure API credentials, envelope templates, and tab mapping |

**Concept: DocuSign Tabs** — mapping Workday document fields to DocuSign tab positions.

**Concept: Track Document Signatures** — monitor signature status from within Workday BPs.

**Concept: eSignature Integrations Best Practices** — document template design, retry handling, and error recovery.

**Reference: Adobe Sign Email Notification Settings** — configurable notification events.

**Troubleshooting: eSignature Integrations** — common issues with document delivery, signature failure, and timeout.

**Troubleshooting: Generated Documents** — errors in document generation due to template issues, missing data, or layout conflicts.

---

## Worktags

### Setup Considerations: Worktags

**What They Are:** Dimension tags applied to financial and operational transactions to enable multidimensional reporting and cost allocation. Worktags are the primary mechanism for tagging spend, time, and HR data to organizational dimensions.

**Common worktag types:** Company, Cost Center, Region, Fund, Grant, Program, Project, Business Unit, Custom Org, Basic Worktag.

**Key decisions:**
- Which worktag types to enable
- Required vs. optional worktags per transaction type
- Worktag defaulting rules (auto-populate from worker or org)
- Worktag validation rules (allowed combinations)
- Custom worktags for organization-specific dimensions

### Configuration Tasks

| Task | Purpose |
|------|---------|
| Steps: Define Custom Worktags | Create organization-specific worktag types |
| Steps: Set Up Custom Organizations as Worktags | Use custom org hierarchy as a worktag dimension |
| Create Basic Worktags | Simple tag values without hierarchy |
| Configure Related Worktags | Define defaulting relationships between worktag types |
| Configure Worktag Defaulting | Set auto-population rules when one worktag implies another |
| Configure Worktags for Transactions | Define which worktags are required/optional per transaction type |
| Convert Basic Worktags to Full Definitions | Upgrade basic tags to full org/hierarchy definitions |

**Concept: Worktags** — full overview of worktag types, transaction applicability, and reporting behavior.

**Reference: Worktag Types** — complete catalog of all Workday worktag types and their usage contexts.

---

## Collaboration

### Activity Stream

**Steps: Enable Activity Stream** — activate the social activity feed that shows worker and org updates.

**Concept: Activity Stream** — how posts, likes, comments, and follows work in Workday's activity stream. Privacy controls and moderation.

---

### Campaigns and Scheduled Distributions

**What They Are:** Targeted communications sent to defined worker audiences on a schedule or triggered by an event. Used for change management, awareness campaigns, and recurring communications.

**Setup Considerations: Campaigns** — key decisions on audience targeting, message frequency, and opt-out handling.

| Task | Purpose |
|------|---------|
| Steps: Set Up Campaigns | Enable and configure the campaigns framework |
| Steps: Create Campaign Categories | Organize campaigns by type |
| Steps: Schedule Worker Communication Notifications | Time-based notification scheduling |
| Create Audiences to Use in Collaboration Tasks | Define worker populations for campaigns |
| Create Campaigns | Build and configure a campaign |
| Schedule a Notification to Send in the Future | Queue a future-dated communication |

**Concept: Campaigns and Scheduled Distributions** — campaign lifecycle, audience evaluation, delivery channels (email, inbox), and metrics.

---

### Engagement Builder

**What It Is:** A structured tool for creating multi-touchpoint engagement programs combining learning content, communications, and surveys.

**Setup Considerations: Engagement Builder** — configuration decisions for engagement types, audience rules, and message templates.

| Task | Purpose |
|------|---------|
| Steps: Create Engagement Categories | Organize engagements by type |
| Create a Learning Engagement | Engagement that drives learning content completion |
| Create a Worker Communications Engagement | Structured multi-message communication program |
| Create an Audience | Define targeted worker population |
| Create an Integration System User (ISU) for Engagements | ISU for engagement delivery integrations |
| Create Engagement Message Templates | Reusable rich-text templates for engagement messages |
| Set Up Security for Engagement Builder | Domain access configuration |
| Set Up Worker Communications Engagement Type | Define custom engagement types |

**Key Concepts:**

| Concept | Description |
|---------|-------------|
| Concept: Custom Reports as Audience Source | Use a custom report output as the audience definition |
| Concept: Defining Audiences | Static vs. dynamic audience types; refresh behavior |
| Concept: Engagement Reminders | Automated reminder messages within an engagement |
| Concept: Manage an Engagement | Lifecycle management: launch, pause, close |

---

### Surveys

**What They Are:** Structured questionnaires distributed to worker populations for measuring sentiment, gathering feedback, or conducting assessments.

**Setup Considerations: Surveys** — anonymous vs. identified responses, survey frequency, and result visibility.

| Task | Purpose |
|------|---------|
| Create and Send Surveys | Build and distribute surveys |
| Steps: Set Up Survey Notifications and Campaigns | Configure survey delivery via campaigns |
| Steps: Send Surveys Using Scheduled Distribution | Schedule recurring survey delivery |

**Concept: Surveys** — survey types, response anonymization, result aggregation, and reporting.
