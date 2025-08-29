# Database Normalization (Airbnb Project)

## Objective
Ensure that the Airbnb database schema follows the principles of database normalization up to the Third Normal Form (3NF).

---

## Step 1: First Normal Form (1NF)
- Each column holds atomic (indivisible) values.
- There are no repeating groups or arrays.
- ✅ Our schema satisfies 1NF. Example: `User.email` stores a single value, not multiple emails.

---

## Step 2: Second Normal Form (2NF)
- Every non-key attribute depends on the whole primary key.
- Our schema uses single-column primary keys (`user_id`, `property_id`, etc.), so no partial dependencies exist.
- ✅ Our schema satisfies 2NF. Example: In `Booking`, attributes like `start_date` and `status` depend only on `booking_id`.

---

## Step 3: Third Normal Form (3NF)
- No transitive dependencies (non-key attributes depending on other non-key attributes).
- Each non-key attribute is directly dependent on its table’s primary key.
- ✅ Our schema satisfies 3NF. Example: In `Property`, `location` depends only on `property_id` and not on `name` or `description`.

---

## Conclusion
The Airbnb database schema is normalized up to **Third Normal Form (3NF)**:
- Reduces redundancy.
- Improves data integrity.
- Ensures efficient queries and updates.

