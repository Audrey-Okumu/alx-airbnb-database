# Index Performance – alx_airbnb Database

## Objective

This document explains how to implement **indexes** to improve query performance on the `alx_airbnb` database.

---

## Identified High-Usage Columns

| Table      | Column      | Reason for Index                           |
|------------|------------|--------------------------------------------|
| users      | email      | Frequently used in WHERE and JOIN clauses |
| bookings   | user_id    | JOINs with users, filtering by user       |
| bookings   | property_id| JOINs with properties, filtering by property |
| bookings   | start_date | Filtering by date ranges                  |
| properties | host_id    | Fetching properties by host               |

---

## Creating Indexes

Use the `database_index.sql` file:

```sql
\i "C:/Users/PC/Desktop/alx-airbnb-database/database-adv-script/database_index.sql"
