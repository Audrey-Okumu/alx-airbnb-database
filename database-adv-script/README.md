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

Purpose:

-Retrieves all bookings along with the users who made them.

-Only rows where both booking and user exist are returned.

Use Case:

-See exactly which user booked which property.


### 2. LEFT JOIN – Properties and Reviews

Purpose:

Retrieves all properties and their reviews.

Properties without reviews still appear; review columns will show NULL.

Use Case:

Identify properties that have no reviews yet.


### 3. FULL OUTER JOIN – Users and Bookings

Purpose:

-Retrieves all users and all bookings, even if no match exists.

-Users with no bookings or bookings with no linked user still appear.

Use Case:

-Complete overview of users and bookings, useful for reporting or debugging.
