# Moving from Workday Assistant to Self-Service Agent (WSSA)

---

## Product Comparison

| Feature | Workday Assistant | Self-Service Agent (WSSA) |
|---|---|---|
| Supports simple queries, actions, and navigation | ✓ | ✓ |
| Ability to reason and suggest | ✗ | ✓ |
| Multi-turn conversational support | ✗ | ✓ |
| Powered by an LLM | ✗ | ✓ |
| Extensible to 3rd party platforms (coming soon) | ✗ | ✓ |
| Supports 3rd party policy intelligence (coming soon) | ✗ | ✓ |
| Compatible with Sana | ✗ | ✓ |

---

## UX Differences

**Workday Assistant (Guide model)**
- Returns deeplinks to tasks/reports
- Does not reason or synthesize
- Example: "View W-4" → returns link to Withholding Elections

**Self-Service Agent (Conversational model)**
- Retrieves data, reasons, and responds in natural language
- Supports multi-turn intent and action confirmation
- Example: "I want to take a day off in Feb to maximize time away" → checks holiday calendar, suggests adjacent dates, checks balances, submits request on confirm

---

## Transition Timeline

- **Workday Assistant will NOT be fully removed until 2027R2 (September 2027)**
  - Provides ample time to assess value and plan transition
- **Assistant chat is automatically disabled for users who have access to the Self-Service Agent**
  - Prevents two chat bubbles from appearing simultaneously
  - Assistant-powered search results remain active in search even after chat is disabled

---

## Historical Context

| Product | Launch | Description |
|---|---|---|
| Workday Assistant | March 2020 | First-generation natural language chatbot (guide model) |
| WSSA | 2025+ | AI-powered LLM conversational assistant; replaces and extends original chatbot |
