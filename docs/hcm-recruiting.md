# HCM – Recruiting

> Source: Admin Guide – Human Capital Management (May 14, 2026), pp. 176–523

---

## Overview

Workday Recruiting is a single platform for finding, engaging, and selecting candidates. It integrates with Staffing, Compensation, Onboarding, and third-party HR systems.

**Business Benefits:**
- Streamline operations: manage candidates through stages directly in Workday
- Branded career sites for consistent candidate experience
- Mobile-supported review, feedback, and candidate advancement
- Talent pipeline management via candidate pools
- Duplicate candidate detection and merging
- Blind screening to reduce unconscious bias
- Automated calendar coordination for interviews
- Automatic candidate advancement based on criteria
- Centralized notes and feedback on candidate records

---

## Recruiting Setup

### Setup Considerations: Recruiting

**Key configuration decisions:**
- Configure job application business process stages and routing rules
- Set up parallel stages for concurrent review workflows
- Enable machine learning for candidate matching
- Configure recruiting dispositions (rejection reasons)
- Define recruiting workflow (stage progression, approvals)

**Security:** Managed via Recruiting functional area domains. Use segmented security to restrict access by stage.

### Steps: Set Up Recruiting

1. Configure the Job Application Business Process
2. Set Up the Recruiting Workflow (stages, routing, parallel stages)
3. Set Up Recruiting Hub
4. Set Up Segmented Security for Recruiting Stages
5. (Optional) Set Up Machine Learning for Recruiting
6. (Optional) Add Notification Delays to Recruiting Business Processes
7. (Optional) Set Up Auto-Initiate Offers and Employment Agreements
8. Set Up Recruiting to Staffing Field Defaults
9. Set Up Recruiting Notes
10. Create Recruiting Dispositions

### Key Concepts

**Concept: Parallel Stages** — multiple stages run concurrently; candidates can be in more than one stage simultaneously.

**Reference: Search Prefixes for Recruiting** — use prefixes (e.g., `req:`, `cand:`) to search recruiting objects in global search.

**Reference: Tenant Analyzer** — tool that audits recruiting configuration for completeness and potential issues.

---

## Job Requisitions for Recruiting

### Setup Considerations: Job Requisitions

**Key decisions:**
- Required vs. optional fields per requisition type
- Whether to use confidential job requisitions
- Primary recruiter assignment rules
- Job description generation (AI-assisted)
- Spotlight Jobs configuration for featured postings
- Time to Fill reporting configuration

### Steps: Set Up Job Requisitions for Recruiting

1. Configure required fields on the Create Job Requisition business process
2. Set Up Primary Recruiters (automatic assignment rules)
3. (Optional) Set Up Confidential Job Requisitions
4. (Optional) Set Up Job Description Generation (AI)
5. (Optional) Set Up Spotlight Jobs

### Concepts

**Concept: Find Jobs** — internal and external job search experience; configured via career sites.

**Concept: Confidential Job Requisitions, Prospects, and Candidates** — restricts visibility of sensitive requisitions to specified security groups.

**Reference: Auto-Reassign Job Requisition Events** — automatic reassignment rules when recruiters are unavailable.

---

## Evergreen Requisitions

**What They Are:** Standing requisitions for high-volume or recurring hiring needs; candidates are continuously collected without a defined close date.

**Key Concepts:**
- **Candidate Eligibility Snapshots** — capture candidate state at a point in time when moving to a job requisition
- **Moving Candidates Between Evergreen and Job Requisitions** — process for transferring active candidates
- **Link Evergreen Requisitions to Job Requisitions** — connect evergreen pools to specific openings

### Steps: Set Up Evergreen Requisitions

1. Enable Evergreen Requisitions on the recruiting setup
2. Configure eligibility rules for candidate snapshots
3. Create and Edit Evergreen Requisitions

---

## Candidates

### Set Up Prospects and Candidates

Configure prospect types, candidate statuses, and the pipeline management framework. Includes:
- Prospect tracking (pre-requisition interest)
- Candidate pipeline configuration
- Candidate pool rules

### Prospect and Candidate Management

- Manage candidate profiles, merge duplicates, track status
- **Candidate Skills Match** — AI-assisted matching of candidate skills to job profile requirements
- **Candidate Ranking** — configure ranking criteria and display
- **Certificate of Eligibles** — government-sector feature for certified candidate lists
- **Candidate Work Availability** — track preferred work hours, locations, and availability
- **Candidate Self-Scheduling** — candidates book interview slots independently

### Duplicate Management

**Duplicate Candidate Merging** — manual process to identify and merge duplicate candidate records.

**Duplicate Management Framework for Recruiting** — automated rules for detecting duplicates based on configurable match criteria.

### Additional Candidate Features

- **External Candidate References** — collect and manage reference contacts
- **Notifications for Candidates** — configure automated email/task notifications at each stage
- **Candidate Personal Information** — manage personal data collection on applications
- **Candidate Expenses** — track and reimburse interview-related expenses

---

## Career Sites

### External Career Sites

**Setup Considerations:** Branding, custom domains, SEO, third-party analytics (Google Analytics 4), social sign-in.

**Steps: Set Up External Career Sites:**
1. Configure branding (logos, colors, images)
2. Set up Candidate Home Accounts (self-service portal)
3. Configure sidebars (featured content, links)
4. Add Location Hierarchy Facets to Find Jobs
5. (Optional) Enable Social Sign In (Google, LinkedIn, Apple)
6. (Optional) Populate Job Applications with LinkedIn/SEEK Profiles
7. Create External Career Sites

**Concept: Social Sign In for Candidate Accounts** — candidates use existing social accounts to create/access Workday candidate accounts.

### Internal Career Sites

**Steps: Set Up Internal Recruiting** — configure internal job postings visibility for existing workers.

**Steps: Set Up Jobs Hub** — internal job search hub for workers.

**Steps: Set Up Internal Job Alerts** — workers subscribe to job alerts matching their criteria.

---

## Candidate Engagement

### Recruiting Campaigns

Create targeted outreach campaigns to engage candidate pools. Associate campaigns with recruiting cycles to measure effectiveness.

### Recruiting Landing Pages

Configure branded landing pages for specific talent segments or initiatives.

### Recruiting Event Management

Create and manage recruiting events (career fairs, info sessions). Track attendance, conversations, and follow-up actions.

---

## Job Postings

### Setup Considerations: Job Postings

**Key decisions:**
- Internal vs. external posting rules
- Job board integrations (Indeed, LinkedIn, etc.)
- Remote job configuration
- Automatic unposting rules (after filled, after date)

### Steps: Set Up Job Postings

1. Configure posting rules per requisition type
2. Set up job board integrations
3. (Optional) Set Up Remote Jobs (remote location type)
4. Create Job Posting Templates (reusable content)

**Concept: Automatically Unpost Jobs** — rules to remove job postings when requisition is filled or date expires.

**Concept: Google Jobs** — schema.org structured data integration for Google Jobs indexing.

---

## Recruiting Agencies

### Setup Considerations: Recruiting Agencies

**Key decisions:** Agency user access levels, candidate ownership rules, confidential posting access, self-management capabilities.

### Steps: Set Up Recruiting Agencies

1. Create Recruiting Agency and Agency Users
2. Configure access to job postings and candidate submissions
3. (Optional) Enable Self-Management for Recruiting Agencies
4. Set Up Recruiting Agencies for Confidential Job Postings

**Concept: Recruiting Agency Management** — agency portal experience, submission workflows, and candidate ownership.

---

## Referrals and Endorsements

### Setup Considerations

**Key decisions:** Referral eligibility rules, referral payment process, endorsement workflow, required vs. optional referral fields.

### Steps: Set Up Referrals

1. Configure Referral business process
2. Define eligibility rules (who can refer)
3. (Optional) Set Up Referral Payment Processes

### Steps: Set Up Endorsements

Configure peer endorsement of prospective candidates; link to recruiting stages.

---

## Job Applications

**Steps: Set Up Job Applications** — configure application fields, required documents, and application flow.

**Steps: Set Up Job Application Templates** — reusable application forms per job type or family.

**Steps: Enable Candidates to Withdraw Their Job Applications** — self-service withdrawal configuration.

---

## Questionnaires

### Setup Considerations: Questionnaires for Recruiting

**Key decisions:** Question types, scoring, eligibility filtering, stage assignment, segmented security.

**Steps: Set Up Questionnaires for Recruiting:**
1. Create questionnaire with questions and scoring rules
2. Assign to job requisition or job application stage
3. (Optional) Configure Supplementary Questionnaires
4. (Optional) Add Eligibility Questions (auto-disqualify logic)

**Concept: Segmented Security for Recruiting Questionnaires** — restrict questionnaire results visibility by role.

---

## Assessments

**Steps: Set Up Assessments for Candidates** — integrate third-party assessment providers; configure trigger by stage.

**Steps: Configure Segmented Security for Assessment Test Results** — restrict result visibility to hiring managers or specific roles.

---

## Interviews

### Setup Considerations: Interviews

**Key decisions:** Interview types, scorecards, calendar integrations, web conference provider, reminder configuration.

### Steps: Set Up Interviews

1. Configure interview types and scorecards
2. (Optional) Integrate with Microsoft Outlook or Google Calendar
3. (Optional) Set Up Integration to Web Conference Provider
4. Set Up Interview Reminders
5. Configure the Interview Business Process

**Steps: Manage Interviews** — schedule, track, and record feedback for interviews.

---

## Offers

### Setup Considerations: Offers

**Key decisions:** Offer document template, approval routing, employment agreement integration, task consolidation, auto-initiation rules.

### Steps: Set Up Offers

1. Configure Offer business process (approvals, routing)
2. Create offer letter templates (Workday Docs or PDF)
3. (Optional) Set Up Task Consolidation for Offers
4. (Optional) Configure Offer and Employment Agreement for Same Application

---

## Onboarding Experience

### Setup Considerations: Onboarding Plans

**Key decisions:** Plan triggers (hire date, start date), content types (tasks, documents, videos), audience eligibility rules, dashboards.

### Steps: Set Up Onboarding

1. Set Up Onboarding Planner (content and task sequencing)
2. (Optional) Set Up Workday Docs for Onboarding
3. Configure Onboarding Plans with eligibility rules
4. (Optional) Copy Onboarding Dashboard Content to Onboarding Plan
5. (Optional) Inactivate Onboarding Plans

**Concept: Onboarding Plans** — structured collections of tasks, content, and milestones presented to new hires. Triggered by hire events; matched to workers via eligibility rules.
