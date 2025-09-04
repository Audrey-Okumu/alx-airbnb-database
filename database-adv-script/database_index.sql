-- ===================================================
-- database_index.sql
-- Index creation and performance measurement
-- ===================================================

-- 1. Measure query performance BEFORE adding indexes
-- Example: Count bookings for a specific user
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE user_id = 'u1';

-- ===================================================
-- Create indexes to optimize queries
-- ===================================================

-- 1. Index on users.email (commonly used in WHERE and JOIN)
CREATE INDEX IF NOT EXISTS idx_users_email ON users(email);

-- 2. Index on bookings.user_id (used in JOINs and filtering by user)
CREATE INDEX IF NOT EXISTS idx_bookings_user_id ON bookings(user_id);

-- 3. Index on bookings.property_id (used in JOINs and filtering by property)
CREATE INDEX IF NOT EXISTS idx_bookings_property_id ON bookings(property_id);

-- 4. Index on properties.host_id (used in JOINs when fetching host's properties)
CREATE INDEX IF NOT EXISTS idx_properties_host_id ON properties(host_id);

-- 5. Index on bookings.start_date (used in filtering bookings by date)
CREATE INDEX IF NOT EXISTS idx_bookings_start_date ON bookings(start_date);

-- ===================================================
-- 2. Measure query performance AFTER adding indexes
-- ===================================================

EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE user_id = 'u1';

EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE property_id = 'p1';

EXPLAIN ANALYZE
SELECT *
FROM users
WHERE email = 'alice@example.com';
