-- ===================================================
-- partitioning.sql
-- Partition the bookings table by start_date
-- ===================================================

-- 1. Create a new partitioned table
DROP TABLE IF EXISTS bookings_partitioned CASCADE;

CREATE TABLE bookings_partitioned (
    booking_id SERIAL PRIMARY KEY,
    property_id INT NOT NULL,
    user_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) CHECK (status IN ('pending','confirmed','cancelled')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(user_id),
    CONSTRAINT fk_property FOREIGN KEY (property_id) REFERENCES properties(property_id)
) PARTITION BY RANGE (start_date);

-- 2. Create partitions by year (example: 2025 and 2026)
CREATE TABLE bookings_2025 PARTITION OF bookings_partitioned
FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

CREATE TABLE bookings_2026 PARTITION OF bookings_partitioned
FOR VALUES FROM ('2026-01-01') TO ('2027-01-01');

-- 3. Insert existing bookings into partitioned table
INSERT INTO bookings_partitioned (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
SELECT booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at
FROM bookings;

-- 4. Test query performance: fetch bookings in 2025
EXPLAIN ANALYZE
SELECT *
FROM bookings_partitioned
WHERE start_date BETWEEN '2025-01-01' AND '2025-12-31';
