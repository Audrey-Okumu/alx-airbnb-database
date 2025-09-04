--  indexes to optimize queries on User, Booking, and Property tables

-- 1. Index on users.email 
CREATE INDEX idx_users_email ON users(email);

-- 2. Index on bookings.user_id 
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- 3. Index on bookings.property_id
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- 4. Index on properties.host_id 
CREATE INDEX idx_properties_host_id ON properties(host_id);

-- 5. Index on bookings.start_date 
CREATE INDEX idx_bookings_start_date ON bookings(start_date);
