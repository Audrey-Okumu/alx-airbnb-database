-- Retrieve bookings along with the user who made them
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
ON b.user_id = u.user_id
ORDER BY b.booking_id;

-- Retrieve all properties and their reviews (even if a property has no review)
SELECT 
    p.property_id,
    p.name AS property_name,
    r.review_id,
    r.rating,
    r.comment
FROM properties p
LEFT JOIN reviews r
ON p.property_id = r.property_id
ORDER BY p.property_id, r.review_id;

-- Retrieve all users and all bookings, even if no matching booking or user
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
ON u.user_id = b.user_id
ORDER BY u.user_id, b.booking_id;
