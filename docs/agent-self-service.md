# Sana Self-Service Agent

## Overview
Conversational AI agent that retrieves/summarizes broad self-service data and takes action on common employee interactions. Replaces Workday Assistant chat bubble when activated (reduces duplication).

**Skill name conventions:**
- **ESS** – Employee Self-Service (all employee types)
- **MSS** – Manager Self-Service (managers)
- **Base** – simple action skills
- **Advanced** – complex action skills

> **The Guide skill must always remain active** — it is the core skill required for the agent to run.

---

## Setup Prerequisites
- UMSA (opt-in if on MSA)
- Workday Flex Credits and Platform Entitlement Policy (production only)
- Set Up Agent System of Record

## Setup Steps
1. Agent Management Hub → Unregistered Workday Agent tab → Register Self-Service Agent → Confirm → OK
2. Agent Registry → click Self-Service Agent → **Configure Agent**
3. Enable skills via toggle slider per Status column
4. Populate **Available To** per skill
   - Example: ESS - HCM - Base → Employee As Self; MSS - HCM - Base → Manager and Management Chain
5. Click **Activate**

**Result:** Workday Chat icon appears in global navigation; Workday Assistant chat bubble is hidden.

---

## Language Support
Officially validated: English, French, French-Canadian, German, Japanese.
LLM can communicate in 30+ additional languages but without verified accuracy.

**Policy Intelligence skill:** English only (knowledge base articles + responses).

---

## Limitations
- No file uploads
- No contingent workers
- No zip (hiding optional fields), custom labels (tokenization), additional jobs (multi-position)
- No implementer/proxy account usage
- No user preferences from profiles (locale)
- No delegated actions (appear successful in chat but won't create system events/requests)
- If skill involves tenant access restrictions (e.g., MFA), assign same restrictions to security groups in Available To

---

## Skills Reference

| Skill | Description |
|-------|-------------|
| ESS - Help - Advanced | Submit support requests (complex issues documented and routed for resolution) |
| ESS - Human Capital Management - Advanced | Update personal data, request reference letters |
| ESS - Human Capital Management - Base | Retrieve personal info: worker profiles, compensation, benefits, team info |
| ESS - Payroll - Base | Retrieve compensation, payment, and tax form info |
| ESS - Talent Management - Advanced | Submit performance reviews, create referrals |
| ESS - Talent Management - Base | Retrieve performance goals, feedback history, internal job listings |
| ESS - Workforce Management - Advanced | Submit time-off requests, check in/out of shifts, enter time blocks, submit time |
| ESS - Workforce Management - Base | Retrieve time tracking, scheduling, absence info, time-off balances |
| Guide | Navigational deep links to correct Workday report/task when agent can't answer directly |
| MSS - Human Capital Management - Base | Retrieve team info: structures, work history, direct reports |
| MSS - Payroll - Advanced | Initiate payroll input requests (Request Payroll Inputs BP) |
| MSS - Talent Management - Advanced | Conduct reviews, change talent data, execute team development transactions |
| MSS - Talent Management - Base | Retrieve goal progress, learning statuses, team feedback |
| MSS - Workforce Management - Base | Retrieve direct reports' time-off balances and schedules |
| Policy Intelligence | Search Help Knowledge Base articles to answer company policy/procedural questions (English only) |

---

## Tools Reference (by Skill)

### ESS - Help - Advanced
| Tool | Description | Limitations |
|------|-------------|-------------|
| create_a_case | Submit formal support requests | — |

### ESS - Human Capital Management - Advanced
| Tool | Description | Limitations | Custom Validations |
|------|-------------|-------------|-------------------|
| change_home_contact_info | Update home address and personal phone numbers | No file uploads; managers can't update on behalf of direct reports | Yes |
| change_marital_status | Update marital status (3-step: initiate, draft, submit) | No removing/clearing status; may enter approval workflow | Yes |
| change_name | Update legal and/or preferred name | No: other name components, file uploads, effective date | Yes |
| change_personal_info | Update personal info (marital status, citizenship, ethnicity) via Change Personal Information BP | Based on security access and org config | — |
| request_reference_letter | Initiate employment verification/reference letter for current user | Managers can't initiate for direct reports; no custom language or client-specific formatting | No |

### ESS - Human Capital Management - Base
| Tool | Description | Limitations |
|------|-------------|-------------|
| view_bonus_history | Historical bonuses and one-time payments (amounts, dates, plan names, percentages, reasons) | No clawbacks, non-bonus plan types, or future payments |
| view_coworker_info | Search coworker by name/ID for professional profile | No home addresses; ambiguous names need clarification; no bulk lookups |
| view_dependents | List active dependents (name, relationship, DOB, age, gender, tobacco status) | — |
| view_healthcare_elections | Active healthcare enrollment and elections for user + dependents | Healthcare and Retirement Benefits only |
| view_my_team | My-team list users (peers under same manager, not direct reports) | No detailed profile info |
| view_org_info | Organization records for user's orgs or name search | Org metadata only; use view_my_team for people queries |
| view_personal_info | Personal and employment profile details for session user | Read-only; no emergency contacts or custom profile fields |
| view_retirement_savings | Active retirement savings plan details, contribution rates, beneficiary allocations | — |
| view_total_compensation | Base pay, total compensation, pay frequency, grade, range, stock grants + vesting | No future stock vesting dates |

### ESS - Payroll - Base
| Tool | Description | Limitations |
|------|-------------|-------------|
| view_direct_deposit | Bank accounts and direct deposit info from payment elections | No non-bank-account payment elections |
| view_next_paydate | Next on-cycle payment date for primary pay group | AU, CA, FR, IE, UK, USA only; Payroll Interface pay group needs additional config |
| view_payslips | Latest or date-filtered payslips (payment date, period dates, gross, net, YTD) | AU, CA, FR, IE, UK, USA only; no custom labels, line-item detail, or net-zero payslips |
| view_w2 | Most recent US Form W-2 info | Most recent year only; no individual W-2 box info |
| view_w4 | US federal tax withholding election (Form W-4) for specified date | — |

### ESS - Talent Management - Advanced
| Tool | Description | Limitations | Custom Validations |
|------|-------------|-------------|-------------------|
| create_referral | Submit referral for external candidate to 1+ job requisitions | No resume/file uploads; no status display after submission | No |
| start_performance_review_self | Initiate self-performance review | Further inputs must be completed in Workday UI after initiation | Yes |
| request_feedback_self | Request feedback from other users with template selection and privacy settings | — | — |

### ESS - Talent Management - Base
| Tool | Description | Limitations |
|------|-------------|-------------|
| find_jobs | Search approved internal job postings (location, skills, manager, req ID) | No free-form keyword search; paginated results |
| view_feedback | Received feedback (unsolicited + requested) with dates, providers, content | — |
| view_my_goals | Personal goals with status, due date, org alignment | No date range filtering; no Target Amount, Milestones, Cascaded Goals |
| view_org_goals | Org goals for specified date range (primary-job supervisory org default) | Active supervisory orgs only; no name/description search |
| view_performance_review | Completed or in-progress reviews with ratings; filter by status | No overall comments |
| view_talent_profile_details | Talent profile sections (job history, skills, education) for current user or named worker | — |

### ESS - Workforce Management - Advanced
| Tool | Description | Limitations | Custom Validations |
|------|-------------|-------------|-------------------|
| delete_time_off | Cancel/delete approved time off (Correct Time Off BP) | No in-progress requests or corrections | Yes |
| edit_time_off | Edit approved time off entry (quantity, start/end times, reasons) | No changes to time off type, position, worktags | Yes |
| enter_time_block | Create time entries (quantity-based or in/out time-based) | No worktag entry or project-based time codes | — |
| request_time_off | Submit time off request (Request Time Off BP) | No requests with worktags, system warnings, start/end times, or absence tables | Yes |
| shift_check_in | Clock in at shift start | No worktag entry or project-based codes | — |
| shift_check_out | Clock out (break or end of shift) | — | — |
| submit_time | Submit timesheet for full time period containing specified date | — | No |
| update_time_block_comment | Add/update comment on a specific time block | No other field edits | — |

### ESS - Workforce Management - Base
| Tool | Description | Limitations |
|------|-------------|-------------|
| my_time_off_events | Time off events (Approved, Submitted, Not Submitted, Sent Back) for date range | No Cancelled or Denied entries |
| time_off_balance | Time off balances as of effective date | No carryover, expiring accruals, or expiration details |
| time_off_types | All time off types user is eligible for | Excludes types not available via standard process | 
| view_holiday_calendar | Company holiday calendar events for date range | No duration of holiday events |
| view_time_blocks | Recorded time blocks for date range | Limited to first 20 per request |

### Guide
| Tool | Description |
|------|-------------|
| navigation_deeplink | Direct link to correct Workday task/report when agent can't answer |

### MSS - Human Capital Management - Base
| Tool | Description | Limitations |
|------|-------------|-------------|
| recommend_change_job_template | Recommend predefined Change Job template based on user context | Recommendation only; doesn't initiate workflow |
| view_direct_reports_info | Professional profile info for direct reports (anniversaries, birthdays, promotions, tenure) | Direct reports only; some fields may not populate |
| view_direct_reports | Names and IDs of direct reports | Direct reports only; use view_org_info for hierarchy context |
| view_worker_history | Employment events (hire, job change, compensation) for user or named worker within date range | Single event category per invocation; named worker must be in manager's reporting structure |

### MSS - Payroll - Advanced
| Tool | Description | Limitations |
|------|-------------|-------------|
| request_payroll_input | Create payroll input requests for earnings/deductions; identifies eligible pay components and next payroll start date | No (custom validations) |

**Key rules for request_payroll_input:**
- Creates payroll inputs only for Workday Payroll workers (blocks request for external pay group or no pay group)
- Multi-job workers default to primary position effective on input start date when position not specified

### MSS - Talent Management - Advanced
| Tool | Description | Limitations |
|------|-------------|-------------|
| start_performance_review_worker | Start Employee Review BP for single direct report or entire team | One template only when starting for all direct reports simultaneously |
| request_feedback_worker | Request feedback about a worker from other users (confidential or visible) | — |

### MSS - Talent Management - Base
| Tool | Description | Limitations |
|------|-------------|-------------|
| find_job_requisition | Up to 10 open/in-progress job requisitions for manager's leadership orgs | No evergreen or internal apply postings |
| view_candidate_status | Application info for candidates (skills, experience, links) | My Candidates access required; link formatting may be inconsistent |
| view_team_goals | Up to 100 goals for direct reports grouped by worker and completion status | No milestones, categories, or target/actual currency filter |
| view_team_learning_status | Learning records (completion, grade, expiration) for direct team | Enrolled activities only; no due date or individual learner filter |
| view_team_performance_review | High-level review metadata and overall ratings for supervisory org | First supervisory org only for multi-org managers; no section ratings/comments |

### MSS - Workforce Management - Base
| Tool | Description | Limitations |
|------|-------------|-------------|
| view_direct_reports_time_off | Time off events for direct reports within date range | Latest version only for corrected entries; no cancelled/denied entries |

### Policy Intelligence
| Tool | Description |
|------|-------------|
| search_policy_documents | Retrieves company policy info from Help Knowledge Base articles |
