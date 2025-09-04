# Performance Monitoring and Refinement – alx_airbnb Database

## Objective

Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

---

## 1. Monitoring Queries

Use `EXPLAIN ANALYZE` to check the performance of frequently used queries.

**Example 1: Fetch bookings for a specific user**

```sql
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE user_id = 'u1';
