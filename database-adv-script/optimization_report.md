# Query Optimization Report – alx_airbnb Database

## Objective

Refactor a complex query retrieving bookings along with user, property, and payment details to **improve performance**.

---

## Initial Query

- Joins `bookings`, `users`, `properties`, and `payments`.
- Retrieves all columns from all tables.
- Performance measured using:

```sql
EXPLAIN ANALYZE
SELECT ... -- initial query
