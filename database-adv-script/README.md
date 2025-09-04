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

**Purpose:**

- Retrieves all bookings along with the users who made them.  
- Only rows where both booking and user exist are returned.

**Use Case:**

- See exactly which user booked which property.

---

### 2. LEFT JOIN – Properties and Reviews

**Purpose:**

- Retrieves all properties and their reviews.  
- Properties without reviews still appear; review columns will show `NULL`.

**Use Case:**

- Identify properties that have no reviews yet.

---

### 3. FULL OUTER JOIN – Users and Bookings

**Purpose:**

- Retrieves all users and all bookings, even if no match exists.  
- Users with no bookings or bookings with no linked user still appear.

**Use Case:**

- Complete overview of users and bookings, useful for reporting or debugging.

---

## Key Concepts

| Concept | Meaning |
|---------|---------|
| INNER JOIN | Returns only rows where both tables have matching data |
| LEFT JOIN | Returns all rows from the left table; unmatched right table rows = NULL |
| FULL OUTER JOIN | Returns all rows from both tables; unmatched rows in either table = NULL |
| Aliases (e.g., `b`, `u`, `p`, `r`) | Short names for tables to make queries easier to read |
| ON clause | Defines how rows from two tables are matched |

---

# SQL Subqueries – alx_airbnb Database

## Objective

This script contains **SQL subqueries** to practice both **correlated** and **non-correlated subqueries** on the `alx_airbnb` database.  
The goal is to filter and analyze data using nested queries.

---

## File

- **subqueries.sql** – Contains all subquery exercises.  

---

## Queries Included

### 1. Non-Correlated Subquery – Properties with Average Rating > 4.0

**Purpose:**  
- Retrieve all properties where the **average rating** is greater than 4.0.

**Explanation:**  
- The inner query calculates the average rating for each property.  
- The outer query fetches the full property details for those property IDs.  

---

### 2. Correlated Subquery – Users with More Than 3 Bookings

**Purpose:**  
- Retrieve all users who have made more than 3 bookings.  

**Explanation:**  
- The inner query counts bookings for each user.  
- It is correlated because it **depends on the outer query’s user_id**.  
- Only users meeting the condition are returned.  

---

## Key Concepts

| Concept | Meaning |
|---------|---------|
| Subquery | A query inside another query |
| Non-Correlated Subquery | Runs independently of the outer query |
| Correlated Subquery | Runs for each row of the outer query |
| IN clause | Matches a column against a list of values from a subquery |
| COUNT() | Counts rows meeting a condition |
| AVG() | Calculates the average of a numeric column |

---

## How to Run

1. Ensure your `alx_airbnb` database is populated with sample data from `seed.sql`.  

2. Open Command Prompt and connect to PostgreSQL:

```cmd
"C:\Program Files\PostgreSQL\17\bin\psql.exe" -U postgres -d alx_airbnb

