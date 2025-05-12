-- User Table Indexes
CREATE INDEX idx_user_email ON User(email);

-- Property Table Indexes
CREATE INDEX idx_property_host ON Property(host_id);
CREATE INDEX idx_property_address ON Property(address_id);

-- Booking Table Indexes
CREATE INDEX idx_booking_property ON Booking(property_id);
CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_booking_dates ON Booking(start_date, end_date);

-- PaymentMethod Table Indexes
CREATE INDEX idx_payment_method_user ON PaymentMethod(user_id);

-- Payment Table Indexes
CREATE INDEX idx_payment_booking ON Payment(booking_id);
CREATE INDEX idx_payment_method ON Payment(payment_method_id);

-- Review Table Indexes
CREATE INDEX idx_review_property ON Review(property_id);
CREATE INDEX idx_review_user ON Review(user_id);

-- Message Table Indexes
CREATE INDEX idx_message_sender ON Message(sender_id);
CREATE INDEX idx_message_recipient ON Message(recipient_id);

# Performance Measurement Queries

-- Example 1: User Lookup Performance
EXPLAIN ANALYZE 
SELECT * FROM User 
WHERE email = 'example@test.com';

-- Example 2: Property and Host Join Performance
EXPLAIN ANALYZE 
SELECT p.name, p.description, u.first_name, u.last_name 
FROM Property p 
JOIN User u ON p.host_id = u.user_id 
WHERE u.email = 'host@example.com';

-- Example 3: Booking Date Range Query
EXPLAIN ANALYZE 
SELECT * FROM Booking 
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31' 
  AND status = 'confirmed';