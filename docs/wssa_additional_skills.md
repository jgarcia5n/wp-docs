# Additional Self Service Skills

**Status:** Available | **Last Updated:** January 30, 2026

---

## Guide Skill

Routes the user to the correct task or report in Workday via a navigational deeplink when the agent cannot directly answer a question.

- **Consumption:** Not consumption eligible (does not use Flex Credits)
- **Example:** User asks "Help me find the ESPP calculator" → Agent returns deeplinks to ESPP Contribution Calculator and ESPP Purchase History

---

## Policy Intelligence Skill

Searches and retrieves company policy and procedural information from Help Knowledge Base articles and Workday Admin Guides to support accurate responses.

- **Requires:** Help SKU
- **Sources:** Help KB articles, Workday Admin Guides
- **Future:** External sources (Box, SharePoint, Dropbox, Google Drive)
- **Example:** User asks about lost receipts policy → Agent retrieves and summarizes the relevant policy article

---

## Notes

- Guide Skill deeplinks do not count as tool calls and are free
- Policy Intelligence requires Help SKU ownership
- Future 3rd party policy integration will expand sources beyond Workday-hosted content
