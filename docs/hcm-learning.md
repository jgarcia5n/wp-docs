# HCM – Learning

> Source: Admin Guide – Human Capital Management (May 14, 2026), pp. 1918–2203

---

## Overview

Workday Learning supports content creation, delivery, enrollment management, campaign management, and extended enterprise (external) learning. Integrates with Skills Cloud, Talent, and Absence.

---

## Learning Setup and Maintenance

### Setup Considerations: Learning

**Key decisions:**
- Content types to support (courses, programs, certifications, campaigns)
- Instructor management (internal vs. external)
- Calendar integrations (Google Calendar, Microsoft Outlook)
- Virtual classroom platform (Microsoft Teams, Zoom)
- Machine learning recommendations configuration
- Pricing model (for paid courses)
- Extended enterprise (external learners)

### Steps: Set Up Learning

1. Configure learning domains and security
2. Set up learning instructors (internal and external)
3. Set up learning assessors
4. Configure learning dashboards
5. (Optional) Set Up Machine Learning for Learning Recommendations
6. (Optional) Set Up Learning Discovery Boards
7. (Optional) Steps: Set Up Express Interest for Learning Courses
8. (Optional) Configure calendar integrations

### Learning Instructors and Assessors

| Task | Purpose |
|------|---------|
| Setup Considerations: Learning Instructors | Instructor role requirements and configuration |
| Steps: Set Up Learning Instructors | Define and configure instructors |
| Steps: Set Up Learning Assessors | Configure assessor roles for graded content |
| Steps: Manage External Learning Instructors in Bulk | EIB-based bulk management |
| Steps: Manage Internal Learning Instructors in Bulk | Bulk internal instructor updates |

### Learning Configuration

| Task | Purpose |
|------|---------|
| Configure Learning Dashboards | Define dashboard content for learners and admins |
| Maintain Learning Validations for Learning Enrollments | Enrollment validation rules |
| Maintain Drop Course Event Categories | Categories for course drop reasons |
| Maintain Learning Unit Types | Define unit types for reporting |

**Concept: Learning Topics** — Workday taxonomy for organizing learning content by subject area.

**Reference: Learning Content Organization** — how content is structured (lesson → course → program).

---

## Learning Security

Configure domain security for learning content creation, enrollment management, and reporting. Key domains: Learning Administration, Learning Enrollment, Learning Content.

---

## Learning Pricing

Configure paid learning: pricing tiers, payment methods, and cost center charging for internal/external learners.

---

## Learner Experience

Configure the learner-facing experience: recommended content, search, bookmarks, learning history, and learning transcript.

---

## Learning Content

### Content Types

| Type | Description |
|------|-------------|
| Stand-Alone Lesson | Individual learning unit (video, document, SCORM, xAPI) |
| Course | Collection of lessons with structure and assessment |
| Course Offering | Scheduled instance of a course (specific date/time/instructor) |
| Blended Course | Mix of instructor-led and self-paced content |
| Program | Structured series of courses and requirements |
| Certification | Learning requirements with expiry and renewal |
| Campaign | Targeted content delivery to a specific audience |

### Setup Considerations: Learning Content

**Key decisions:** Content organization, versioning strategy, expiry periods, completion rules, prerequisite and equivalency rules.

### Content Management Tasks

| Task | Purpose |
|------|---------|
| Setup Considerations: Learning Lessons | Configuration for individual lesson types |
| Setup Considerations: Learning Campaigns | Campaign targeting and delivery rules |
| Steps: Manage Learning Content | Day-to-day content lifecycle management |
| Steps: Set Up Learning Content Description Generation and Revision | AI-assisted description drafting |
| Steps: Set Up Advanced Catalog Management | Configure catalog visibility and filtering rules |
| Set Up External Content Lesson Tracking and Grading | Track completions from external platforms |
| Create Stand-Alone Learning Lessons | Upload or link external content |
| Create Learning Courses | Build structured courses with lessons |
| Create Learning Course Offerings | Schedule instructor-led course instances |
| Create Version Schemas for Blended Courses | Define versioning for blended course updates |
| Move Instructor-Led Classroom Training Online | Convert in-person to virtual delivery |
| Create Learning Programs | Multi-course structured learning paths |
| View and Edit Learning Content | Manage existing content |
| Create Learning Equivalency Rules | Define content that satisfies the same requirement |
| Create Learning Prerequisite Rules | Require prior completion before enrollment |
| Configure Learning Content Highlights Rules | Surface featured content on learner home |

### Campaigns

**Setup Considerations: Learning Campaigns** — configure targeted content delivery by audience, deadline, and completion tracking.

**Steps: Set Up and Launch Learning Campaigns** — full workflow for campaign creation and activation.

### Certifications

**Steps: Set Up Learning Certifications** — configure certification requirements, expiry periods, and renewal workflows.

---

## Calendar Integrations

| Task | Purpose |
|------|---------|
| Steps: Configure Google Calendar for Learning | Sync course offerings to Google Calendar |
| Steps: Configure Microsoft Outlook Calendar for Learning | Sync course offerings to Outlook |
| Steps: Configure Translation Templates for Calendar Email Invites | Multilingual calendar invites |

---

## Virtual Classroom Integrations

| Task | Purpose |
|------|---------|
| Steps: Set Up Virtual Classroom Integration with Microsoft Teams | Teams meeting creation for course offerings |
| Steps: Set Up Virtual Classroom Integration with Zoom | Zoom meeting creation for course offerings |
| Steps: Set Up Integration System User Security for Virtual Classroom Integration | Authentication setup |

---

## Learning Enrollments

**Setup Considerations: Learning Enrollments** — enrollment request workflow, manager approval, waitlist behavior, completion tracking.

| Task | Purpose |
|------|---------|
| Mass Enroll Learners | Bulk enrollment by audience rule |
| Mass Drop Learners | Bulk removal from courses |
| Manage Waitlists for Learning Course Offerings | Waitlist rules and auto-promotion |
| Manage Schedules and Grading and Attendance | Track attendance and assign grades |
| Manage Enrollment Completion | Mark and manage completion records |
| Create and Manage Reminders for Learning Content | Automated completion reminders |
| Reset Learning Due Dates | Extend deadlines for assigned content |
| Steps: Waive Learning Assignments | Exempt workers from required assignments |

**Concept: Learning Assignments** — how required learning is assigned, tracked, and enforced.

**Concept: Waitlists for Learning Course Offerings** — waitlist management and auto-enrollment logic.

**Reference: Learning Records and Report Data Sources** — data sources for custom learning reports.

**Reference: Workday-Delivered Reports for Learning** — standard reports for completions, assignments, and enrollments.

---

## Extended Enterprise Learning

**What It Is:** Workday Learning delivered to external users (partners, customers, contractors) outside the organization.

**Setup Considerations: Extended Enterprise Learning** — user account types, affiliation model, pricing, access management.

| Task | Purpose |
|------|---------|
| Steps: Set Up Extended Enterprise Learning | Full extended enterprise setup |
| Steps: Set Up Access for Extended Enterprise Learning | Access and security configuration |
| Steps: Set Up Extended Enterprise Affiliations | Define affiliation types for external learners |
| Steps: Set Up Internal Hiring and Transcript Transition for Extended Enterprise Learners | Move external to internal learner records |
| Steps: Set Up Mass Extended Enterprise Learner Account Deactivation | Bulk deactivation |
| Create External Learning Users | Add external user accounts |
| Create Extended Enterprise Learners | Register learners in the extended enterprise |

**Concept: Extended Enterprise Affiliations** — how external learners are grouped and managed.

**Reference: Extended Enterprise Learning Feature Availability** — feature comparison vs. internal learning.

---

## Packaged Content

Configure and manage Workday-delivered or third-party content packages (e.g., LinkedIn Learning, content libraries).

---

## Observational Checklists

Configure checklists for evaluating on-the-job competency demonstrations; used in place of or alongside traditional learning completions.

---

## Cloud Connect for Learning

Integration framework for connecting Workday Learning to external content providers and LRS (Learning Record Store) via xAPI.
