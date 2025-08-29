-- Insert Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
  ('u1', 'Alice', 'Johnson', 'alice@example.com', 'hashed_password1', '1234567890', 'guest', NOW()),
  ('u2', 'Bob', 'Smith', 'bob@example.com', 'hashed_password2', '9876543210', 'host', NOW()),
  ('u3', 'Charlie', 'Brown', 'charlie@example.com', 'hashed_password3', NULL, 'admin', NOW());

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
  ('p1', 'u2', 'Cozy Apartment', 'A nice 2-bedroom apartment in the city center.', 'Nairobi', 50.00, NOW(), NOW()),
  ('p2', 'u2', 'Beach House', 'Beautiful house by the ocean.', 'Mombasa', 120.00, NOW(), NOW());

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
  ('b1', 'p1', 'u1', '2025-09-01', '2025-09-05', 200.00, 'confirmed', NOW()),
  ('b2', 'p2', 'u1', '2025-12-15', '2025-12-20', 600.00, 'pending', NOW());

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
  ('pay1', 'b1', 200.00, NOW(), 'credit_card'),
  ('pay2', 'b2', 600.00, NOW(), 'paypal');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
  ('r1', 'p1', 'u1', 5, 'Amazing place, very clean!', NOW()),
  ('r2', 'p2', 'u1', 4, 'Great location but a bit noisy.', NOW());

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
  ('m1', 'u1', 'u2', 'Hi, is the apartment available for next week?', NOW()),
  ('m2', 'u2', 'u1', 'Yes, it is available. Looking forward to hosting you!', NOW());
