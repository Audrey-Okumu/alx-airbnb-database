-- Insert Users
INSERT INTO users (first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('Alice', 'Johnson', 'alice@example.com', 'hashed_password1', '1234567890', 'guest'),
  ('Bob', 'Smith', 'bob@example.com', 'hashed_password2', '9876543210', 'host'),
  ('Charlie', 'Brown', 'charlie@example.com', 'hashed_password3', NULL, 'admin');

-- Insert Properties
INSERT INTO properties (host_id, name, description, location, price_per_night)
VALUES
  (2, 'Cozy Apartment', 'A nice 2-bedroom apartment in the city center.', 'Nairobi', 50.00),
  (2, 'Beach House', 'Beautiful house by the ocean.', 'Mombasa', 120.00);

-- Insert Bookings
INSERT INTO bookings (property_id, user_id, start_date, end_date, total_price, status)
VALUES
  (1, 1, '2025-09-01', '2025-09-05', 200.00, 'confirmed'),
  (2, 1, '2025-12-15', '2025-12-20', 600.00, 'pending');

-- Insert Payments
INSERT INTO payments (booking_id, amount, payment_method)
VALUES
  (1, 200.00, 'credit_card'),
  (2, 600.00, 'paypal');

-- Insert Reviews
INSERT INTO reviews (property_id, user_id, rating, comment)
VALUES
  (1, 1, 5, 'Amazing place, very clean!'),
  (2, 1, 4, 'Great location but a bit noisy.');

-- Insert Messages
INSERT INTO messages (sender_id, recipient_id, message_body)
VALUES
  (1, 2, 'Hi, is the apartment available for next week?'),
  (2, 1, 'Yes, it is available. Looking forward to hosting you!');
