SELECT 
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date,
    Booking.status,

    User.user_id,
    User.first_name,
    User.email,

    Property.property_id,
    Property.name AS property_name,
    Property.location,

    Payment.amount,
    Payment.status AS payment_status

FROM Booking
JOIN User ON Booking.user_id = User.user_id
JOIN Property ON Booking.property_id = Property.property_id
LEFT JOIN Payment ON Booking.booking_id = Payment.booking_id;


EXPLAIN SELECT 
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date,
    Booking.status,

    User.user_id,
    User.first_name,
    User.email,

    Property.property_id,
    Property.name AS property_name,
    Property.location,

    Payment.amount,
    Payment.status AS payment_status

FROM Booking
JOIN User ON Booking.user_id = User.user_id
JOIN Property ON Booking.property_id = Property.property_id
LEFT JOIN Payment ON Booking.booking_id = Payment.booking_id;