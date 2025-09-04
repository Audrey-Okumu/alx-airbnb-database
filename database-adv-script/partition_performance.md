# Partition Performance – alx_airbnb Database

## Objective

Implement **table partitioning** on the `bookings` table based on the `start_date` column to optimize queries on large datasets.

---

## Partitioning Approach

- Used **range partitioning** on `start_date`.  
- Created partitions per year:
  - `bookings_2025` for bookings in 2025  
  - `bookings_2026` for bookings in 2026  

- Existing data copied from `bookings` table into `bookings_partitioned`.  

---

## Performance Test

Query: Fetch bookings for 2025

```sql
EXPLAIN ANALYZE
SELECT *
FROM bookings_partitioned
WHERE start_date BETWEEN '2025-01-01' AND '2025-12-31';
