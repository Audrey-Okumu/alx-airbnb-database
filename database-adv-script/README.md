# Database Advanced Scripts – SQL Joins

## Objective

This directory contains **advanced SQL scripts** to practice **joins** on the `alx_airbnb` database.  
The goal is to combine data from multiple tables to retrieve meaningful insights using different types of joins: **INNER JOIN, LEFT JOIN, FULL OUTER JOIN**.

---

## Files

- **joins_queries.sql** – Contains all SQL queries for the joins exercises.  

---

## Queries Included

### 1. INNER JOIN – Bookings and Users

```sql
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email
FROM bookings b
INNER JOIN users u
ON b.user_id = u.user_id;

SELECT 
    p.property_id,
    p.name AS property_name,
    r.review_id,
    r.rating,
    r.comment
FROM properties p
LEFT JOIN reviews r
ON p.property_id = r.property_id;

SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date,
    b.total_price
FROM users u
FULL OUTER JOIN bookings b
ON u.user_id = b.user_id;
