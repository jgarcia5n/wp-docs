# Platform Consumption Console

## Overview
Dashboard to visualize company consumption of **Flex Credits** based on usage of Workday offers in the Workday Flex Credits Rate Card.

**Availability:** UMSA + Workday Flex Credits and Platform Entitlement Policy subscribers only.
- UMSA subscribers without the Flex Credits Policy can configure security but won't see consumption data until policy is signed.

---

## Set Up Security

**Prerequisites:** Implementer or security administrator role.

### Steps
1. Access **Management Dashboard: Platform Consumption Console** domain in System functional area
2. Related actions → Domain > **Create Security Policy** → Confirm → OK
3. In Report/Task Permissions grid, add relevant security groups
4. Select **View** check box → OK
5. **Activate Pending Security Policy Changes**

---

## Credit Balance and Entitlement

### Credit Status Values
| Status | Definition |
|--------|-----------|
| Active | Credits available for consumption |
| Expired | Credits that have expired |
| Inactive | Purchased credits available for future consumption |

All Flex Credits are **fungible** — apply universally across entitled Workday offers in the Rate Card.

### Rate Card Components
| Column | Definition |
|--------|-----------|
| In Blocks of (Units) | Number of units in a chargeable block |
| Credit Rate per Block | Rate charged for that block |

---

## How Consumption is Measured

Workday updates consumption **daily** (reflects previous day's usage).

### Consumption Components
| Component | Definition |
|-----------|-----------|
| Agents | Usage of agent skills and activities |
| API Requests | Number of API requests |
| Document Storage | Gigabytes (GB) of data stored |
| Integrations Events | Number of integration events processed |

**Embedded Entitlement:** Policy provides a baseline usage allowance. After embedded entitlement is consumed, charges apply against available credit entitlement (expiring credits consumed first).

**Tracking start date:** 2026-02-13 for current Flex Credits customers; agreement effective date for new customers.

**Monitoring:** Embedded Entitlement Overview visualization (Overview page); Consumption Usage page for service-level breakdown.

---

## Credit Entitlement Notifications
Workday notifies users with Management Dashboard: Platform Consumption Console domain access when credit entitlement usage reaches **80%, 90%, and 100%**. Banner also displayed on dashboard.

Workday does **not** automatically deactivate agents when credit entitlement is exceeded. To deactivate an agent, see Register and Configure Workday-Built Agents.

---

## Non-Production Tenants
- Platform Consumption Console enabled in Production and non-Production tenants
- Non-Production consumption **does not** affect Flex Credit balance
- Non-Production shows combined activity from all non-Production environments (aggregate daily data)
