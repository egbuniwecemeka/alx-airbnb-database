-- An SQL script that populates the database with simple data

-- Insert Users
SET @host_id = UUID();
SET @ada_id = UUID();
SET @john_id = UUID();

INSERT INTO `User` (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
(@host_id,'Emmanuel','Egbuniwe','xyz@gmail.com','#','234','host'),
(@ada_id, 'Ada', 'Obi', 'ada.obi@example.com', 'hashed_password2', '08087654321', 'guest'),
(@john_id, 'John', 'Doe', 'john.doe@example.com', 'hashed_password3', '08123456789', 'guest');

-- Insert Properties
SET @property1_id = UUID();
SET @property2_id = UUID();
INSERT INTO `Property` (property_id, host_id, name, description, location, pricepernight)
VALUES
(@property1_id, @host_id,
'2 bedroom flat', 'An elegant 2 spacious and environment friendly apartment.', 'Ikoyi, Lagos', 50000.00),
(@property2_id, @host_id,
'Service Apartment', 'A cosy fully furnished service apartment', 'Maitama, Abuja', 70000.00);

-- Insert Bookings
SET @booking1_id = UUID();
SET @booking2_id = UUID();

INSERT INTO `Booking` (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
(@booking1_id, @property1_id, @ada_id,'2025-08-05', '2025-08-10', 300000.00, 'confirmed'),
(@booking2_id, @property2_id, @john_id, '2025-09-01', '2025-09-05', 350000.00, 'pending');

-- Insert Payments
SET @payment1_id = UUID();

INSERT INTO `Payment` (payment_id, booking_id, amount, payment_method)
VALUES (@payment1_id, @booking1_id, 300000.00, 'paypal');

-- Insert Reviews
SET @review1_id = UUID();

INSERT INTO `Review` (review_id, property_id, user_id, rating, comment)
VALUES
(@review1_id, @property1_id, @ada_id,
5, 'Very conducive and serene, Highly recommended for families!!!');

-- Insert Messages
SET @message1_id = UUID();
SET @message2_id = UUID();

INSERT INTO `Message` (message_id, sender_id, recipient_id, message_body)
VALUES
(@message1_id, @ada_id, @host_id,
'I will like to enquire about the availabilty of available lodges'),
(@message2_id, @host_id, @ada_id,
'Yes, both apartments are available. Thank you');
