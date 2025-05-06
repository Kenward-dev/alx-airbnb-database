-- User sample data
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
  ('11e9df70-0000-4000-8000-000000000001', 'Chioma', 'Okonkwo', 'chioma.okonkwo@gmail.com', '$2a$12$1JE6dFXEGvCkRwRGfQeRj.t3o3e7YIxB1HYt9J5nYZOfILcQlFrHK', '08012345678', 'host', '2023-06-15 09:30:00'),
  ('11e9df70-0000-4000-8000-000000000002', 'Adebayo', 'Oladele', 'adebayo.oladele@yahoo.com', '$2a$12$x3FBsKP4JwD8CuD0R5WAJeZQXmtBJmLm9DKdBnEOHgq.ayPGdoQge', '08023456789', 'guest', '2023-07-20 14:20:00'),
  ('11e9df70-0000-4000-8000-000000000003', 'Ngozi', 'Eze', 'ngozi.eze@gmail.com', '$2a$12$R5PGn9mMJJJwNkR.8K5CQO.PtCxRXm7YuKeLnH.k80KLLOrJR5eNm', '08034567890', 'host', '2023-08-05 11:45:00'),
  ('11e9df70-0000-4000-8000-000000000004', 'Emmanuel', 'Nwachukwu', 'emmanuel.nwachukwu@gmail.com', '$2a$12$cCUZaGrpOZBjmZXEBKtRzO1U5vh1A70OQ58HV7jk8jw69XvxvN1Bq', '08045678901', 'guest', '2023-09-12 16:10:00'),
  ('11e9df70-0000-4000-8000-000000000005', 'Fatima', 'Ibrahim', 'fatima.ibrahim@yahoo.com', '$2a$12$Z4ZtQb0YLJd3G8gWt.X4Leae6BWwK9tKmfvxhjCKX06W1DJxEoZwi', '08056789012', 'guest', '2023-10-25 13:30:00'),
  ('11e9df70-0000-4000-8000-000000000006', 'Oluwaseun', 'Adeyemi', 'oluwaseun.adeyemi@gmail.com', '$2a$12$BZv1/Rx6WBBsdYF7IOBwN.T3QoXCkDcLWXgGLjgKhPfzP9hFEAkXG', '08067890123', 'host', '2023-11-08 10:20:00'),
  ('11e9df70-0000-4000-8000-000000000007', 'Amina', 'Mohammed', 'amina.mohammed@gmail.com', '$2a$12$iExcKvZDdtJ5t2/UxUhykuXHXrSIgmSFb6jZ.OoJ3PwecV.rMfJXS', '08078901234', 'admin', '2023-12-01 08:15:00');

-- Address sample data
INSERT INTO Address (address_id, street_address, city, state_province, postal_code, country)
VALUES
  ('21e9df70-0000-4000-8000-000000000001', '15 Bourdillon Road', 'Lagos', 'Lagos', '101233', 'Nigeria'),
  ('21e9df70-0000-4000-8000-000000000002', '7 Adeola Odeku Street', 'Lagos', 'Lagos', '101223', 'Nigeria'),
  ('21e9df70-0000-4000-8000-000000000003', '25 Oyinkan Abayomi Drive', 'Lagos', 'Lagos', '101234', 'Nigeria'),
  ('21e9df70-0000-4000-8000-000000000004', '10 Ibrahim Taiwo Road', 'Kano', 'Kano', '700231', 'Nigeria'),
  ('21e9df70-0000-4000-8000-000000000005', '18 Ahmadu Bello Way', 'Kaduna', 'Kaduna', '800001', 'Nigeria'),
  ('21e9df70-0000-4000-8000-000000000006', '5 Yakubu Gowon Crescent', 'Abuja', 'Federal Capital Territory', '900001', 'Nigeria'),
  ('21e9df70-0000-4000-8000-000000000007', '12 Awolowo Road', 'Ikoyi', 'Lagos', '101222', 'Nigeria'),
  ('21e9df70-0000-4000-8000-000000000008', '30 Adekunle Fajuyi Way', 'Ibadan', 'Oyo', '200001', 'Nigeria'),
  ('21e9df70-0000-4000-8000-000000000009', '8 Nnamdi Azikiwe Street', 'Port Harcourt', 'Rivers', '500001', 'Nigeria');

-- Property sample data
INSERT INTO Property (property_id, host_id, address_id, name, description, pricepernight, created_at, updated_at)
VALUES
  ('31e9df70-0000-4000-8000-000000000001', '11e9df70-0000-4000-8000-000000000001', '21e9df70-0000-4000-8000-000000000001', 'Luxurious Ikoyi Apartment', 'Beautiful 3-bedroom apartment with ocean view in Ikoyi', 85000.00, '2023-06-20 13:45:00', '2023-06-20 13:45:00'),
  ('31e9df70-0000-4000-8000-000000000002', '11e9df70-0000-4000-8000-000000000001', '21e9df70-0000-4000-8000-000000000002', 'Modern Victoria Island Flat', 'Stylish 2-bedroom flat in the heart of VI', 65000.00, '2023-06-22 15:30:00', '2023-07-01 09:15:00'),
  ('31e9df70-0000-4000-8000-000000000003', '11e9df70-0000-4000-8000-000000000003', '21e9df70-0000-4000-8000-000000000003', 'Cozy Lekki Studio', 'Perfect studio apartment for singles or couples in Lekki Phase 1', 45000.00, '2023-08-10 10:20:00', '2023-08-10 10:20:00'),
  ('31e9df70-0000-4000-8000-000000000004', '11e9df70-0000-4000-8000-000000000003', '21e9df70-0000-4000-8000-000000000004', 'Traditional Kano Home', 'Experience authentic northern hospitality in this beautiful 4-bedroom home', 55000.00, '2023-08-15 14:10:00', '2023-09-05 11:25:00'),
  ('31e9df70-0000-4000-8000-000000000005', '11e9df70-0000-4000-8000-000000000006', '21e9df70-0000-4000-8000-000000000005', 'Serene Kaduna Bungalow', 'Peaceful 3-bedroom bungalow with garden in quiet neighborhood', 40000.00, '2023-11-10 09:00:00', '2023-11-10 09:00:00'),
  ('31e9df70-0000-4000-8000-000000000006', '11e9df70-0000-4000-8000-000000000006', '21e9df70-0000-4000-8000-000000000006', 'Executive Abuja Apartment', 'Luxury 3-bedroom apartment close to government offices', 95000.00, '2023-11-15 16:45:00', '2023-12-01 13:20:00');

-- Booking sample data
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
  ('41e9df70-0000-4000-8000-000000000001', '31e9df70-0000-4000-8000-000000000001', '11e9df70-0000-4000-8000-000000000002', '2023-08-10', '2023-08-15', 425000.00, 'confirmed', '2023-07-25 14:30:00'),
  ('41e9df70-0000-4000-8000-000000000002', '31e9df70-0000-4000-8000-000000000003', '11e9df70-0000-4000-8000-000000000002', '2023-09-05', '2023-09-10', 225000.00, 'confirmed', '2023-08-20 11:15:00'),
  ('41e9df70-0000-4000-8000-000000000003', '31e9df70-0000-4000-8000-000000000002', '11e9df70-0000-4000-8000-000000000004', '2023-10-15', '2023-10-20', 325000.00, 'confirmed', '2023-09-30 16:45:00'),
  ('41e9df70-0000-4000-8000-000000000004', '31e9df70-0000-4000-8000-000000000004', '11e9df70-0000-4000-8000-000000000005', '2023-11-22', '2023-11-29', 385000.00, 'confirmed', '2023-10-30 13:20:00'),
  ('41e9df70-0000-4000-8000-000000000005', '31e9df70-0000-4000-8000-000000000005', '11e9df70-0000-4000-8000-000000000004', '2023-12-24', '2023-12-31', 280000.00, 'confirmed', '2023-11-15 09:30:00'),
  ('41e9df70-0000-4000-8000-000000000006', '31e9df70-0000-4000-8000-000000000006', '11e9df70-0000-4000-8000-000000000002', '2024-01-05', '2024-01-10', 475000.00, 'pending', '2023-12-15 15:10:00'),
  ('41e9df70-0000-4000-8000-000000000007', '31e9df70-0000-4000-8000-000000000001', '11e9df70-0000-4000-8000-000000000005', '2024-02-14', '2024-02-16', 170000.00, 'canceled', '2024-01-20 10:45:00');

-- PaymentMethod sample data
INSERT INTO PaymentMethod (payment_method_id, user_id, method_type, details, is_default, created_at)
VALUES
  ('51e9df70-0000-4000-8000-000000000001', '11e9df70-0000-4000-8000-000000000002', 'credit_card', 'encrypted_data_for_gtbank_card', TRUE, '2023-07-22 13:40:00'),
  ('51e9df70-0000-4000-8000-000000000002', '11e9df70-0000-4000-8000-000000000002', 'paypal', 'encrypted_data_for_paypal', FALSE, '2023-07-22 13:45:00'),
  ('51e9df70-0000-4000-8000-000000000003', '11e9df70-0000-4000-8000-000000000004', 'credit_card', 'encrypted_data_for_first_bank_card', TRUE, '2023-09-25 16:20:00'),
  ('51e9df70-0000-4000-8000-000000000004', '11e9df70-0000-4000-8000-000000000005', 'credit_card', 'encrypted_data_for_zenith_bank_card', TRUE, '2023-10-28 11:30:00'),
  ('51e9df70-0000-4000-8000-000000000005', '11e9df70-0000-4000-8000-000000000004', 'stripe', 'encrypted_data_for_stripe', FALSE, '2023-11-12 14:15:00'),
  ('51e9df70-0000-4000-8000-000000000006', '11e9df70-0000-4000-8000-000000000005', 'paypal', 'encrypted_data_for_paypal', FALSE, '2023-12-05 09:50:00');

-- Payment sample data
INSERT INTO Payment (payment_id, booking_id, payment_method_id, amount, payment_date)
VALUES
  ('61e9df70-0000-4000-8000-000000000001', '41e9df70-0000-4000-8000-000000000001', '51e9df70-0000-4000-8000-000000000001', 425000.00, '2023-07-25 14:35:00'),
  ('61e9df70-0000-4000-8000-000000000002', '41e9df70-0000-4000-8000-000000000002', '51e9df70-0000-4000-8000-000000000001', 225000.00, '2023-08-20 11:20:00'),
  ('61e9df70-0000-4000-8000-000000000003', '41e9df70-0000-4000-8000-000000000003', '51e9df70-0000-4000-8000-000000000003', 325000.00, '2023-09-30 16:50:00'),
  ('61e9df70-0000-4000-8000-000000000004', '41e9df70-0000-4000-8000-000000000004', '51e9df70-0000-4000-8000-000000000004', 385000.00, '2023-10-30 13:25:00'),
  ('61e9df70-0000-4000-8000-000000000005', '41e9df70-0000-4000-8000-000000000005', '51e9df70-0000-4000-8000-000000000005', 280000.00, '2023-11-15 09:35:00');

-- Review sample data
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
  ('71e9df70-0000-4000-8000-000000000001', '31e9df70-0000-4000-8000-000000000001', '11e9df70-0000-4000-8000-000000000002', 5, 'Amazing apartment with stunning views! The host was very welcoming and the amenities were top-notch. Will definitely stay here again when next in Lagos.', '2023-08-16 18:30:00'),
  ('71e9df70-0000-4000-8000-000000000002', '31e9df70-0000-4000-8000-000000000003', '11e9df70-0000-4000-8000-000000000002', 4, 'Great studio in a fantastic location. Easy access to shopping malls and beaches. Only issue was occasional power outage but the generator kicked in quickly.', '2023-09-11 14:45:00'),
  ('71e9df70-0000-4000-8000-000000000003', '31e9df70-0000-4000-8000-000000000002', '11e9df70-0000-4000-8000-000000000004', 5, 'This flat exceeded my expectations! Very clean, modern furnishings and the security was excellent. Madam Chioma was an excellent host.', '2023-10-21 11:20:00'),
  ('71e9df70-0000-4000-8000-000000000004', '31e9df70-0000-4000-8000-000000000004', '11e9df70-0000-4000-8000-000000000005', 4, 'Lovely traditional home with beautiful cultural decor. The neighborhood was quiet and the host provided delicious local breakfast. Would recommend for authentic northern experience.', '2023-11-30 17:15:00'),
  ('71e9df70-0000-4000-8000-000000000005', '31e9df70-0000-4000-8000-000000000005', '11e9df70-0000-4000-8000-000000000004', 3, 'The bungalow was nice but slightly smaller than it appeared in photos. Location was good and the garden was beautiful. Had issues with hot water but the host resolved quickly.', '2024-01-02 10:30:00');

-- Message sample data
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
  ('81e9df70-0000-4000-8000-000000000001', '11e9df70-0000-4000-8000-000000000002', '11e9df70-0000-4000-8000-000000000001', 'Good day! I am interested in your Ikoyi apartment listing. Is it available for the second week of August?', '2023-07-22 09:15:00'),
  ('81e9df70-0000-4000-8000-000000000002', '11e9df70-0000-4000-8000-000000000001', '11e9df70-0000-4000-8000-000000000002', 'Hello Adebayo! Yes, the apartment is available from August 10-15. Would you like to book for those dates?', '2023-07-22 10:30:00'),
  ('81e9df70-0000-4000-8000-000000000003', '11e9df70-0000-4000-8000-000000000002', '11e9df70-0000-4000-8000-000000000001', 'That sounds perfect! I would like to proceed with the booking. Do you offer airport pickup?', '2023-07-22 11:45:00'),
  ('81e9df70-0000-4000-8000-000000000004', '11e9df70-0000-4000-8000-000000000001', '11e9df70-0000-4000-8000-000000000002', 'Great! I can arrange airport pickup for an additional ₦15,000. I will send you booking details shortly.', '2023-07-22 13:20:00'),
  ('81e9df70-0000-4000-8000-000000000005', '11e9df70-0000-4000-8000-000000000004', '11e9df70-0000-4000-8000-000000000003', 'Hello! Is your Lekki studio pet-friendly? I have a small dog and would like to book for October.', '2023-09-28 15:40:00'),
  ('81e9df70-0000-4000-8000-000000000006', '11e9df70-0000-4000-8000-000000000003', '11e9df70-0000-4000-8000-000000000004', 'Hi Emmanuel! Unfortunately, the building does not allow pets. I can recommend other pet-friendly options in the area if you need.', '2023-09-28 16:25:00'),
  ('81e9df70-0000-4000-8000-000000000007', '11e9df70-0000-4000-8000-000000000005', '11e9df70-0000-4000-8000-000000000006', 'Good afternoon. Does your Abuja apartment have 24-hour electricity? I need reliable power for work during my stay.', '2023-12-12 14:10:00'),
  ('81e9df70-0000-4000-8000-000000000008', '11e9df70-0000-4000-8000-000000000006', '11e9df70-0000-4000-8000-000000000005', 'Hello Fatima. Yes, we have 24-hour electricity with both AEDC supply and backup generator. High-speed internet is also included.', '2023-12-12 15:35:00');