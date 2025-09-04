# SQL Joins - alx_irbnb Database

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

# SQL Aggregations and Window Functions – alx_airbnb Database

## Objective

This script contains SQL queries to practice **aggregations** and **window functions** on the `alx_airbnb` database.  
You will analyze data using COUNT, GROUP BY, and ranking functions (RANK, ROW_NUMBER).

---

## File

- **aggregations_and_window_functions.sql** – Contains all queries for aggregations and window functions exercises.  

---

## Queries Included

### 1. Total Number of Bookings Per User (Aggregation)

**Purpose:**  
- Calculate the total number of bookings made by each user.  

**Explanation:**  
- `COUNT()` counts the number of bookings.  
- `GROUP BY` ensures the results are per user.  
- `LEFT JOIN` ensures users without bookings are included.  

**Example Output:**  

| user_id | first_name | last_name | total_bookings |
|---------|------------|-----------|----------------|
| u1      | Alice      | Johnson   | 5              |
| u2      | Bob        | Smith     | 3              |

---

### 2. Rank Properties by Total Bookings (Window Function)

**Purpose:**  
- Rank properties based on the total number of bookings they received.  

**Explanation:**  
- `RANK() OVER (ORDER BY COUNT(b.booking_id) DESC)` assigns ranks based on booking count.  
- Properties with the same number of bookings share the same rank.  
- `GROUP BY` is needed to count bookings per property first.  

**Example Output:**  

| property_id | property_name | total_bookings | property_rank |
|-------------|---------------|----------------|---------------|
| p2          | Beach House   | 10             | 1             |
| p1          | Cozy Apartment| 8              | 2             |

---

## Key Concepts

| Concept | Meaning |
|---------|---------|
| COUNT() | Counts rows or non-null values |
| GROUP BY | Groups rows for aggregation |
| LEFT JOIN | Includes unmatched rows from the left table |
| Window Function | Performs calculation across a set of rows related to current row |
| RANK() | Assigns rank based on order; ties get same rank |
| ROW_NUMBER() | Assigns unique sequential number per row |

---


