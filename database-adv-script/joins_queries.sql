SELECT users.first_name, bookings.booking_date
FROM users
INNER JOIN bookings ON users.user_id = bookings.user_id;


SELECT properties.name, reviews.rating
FROM properties
LEFT JOIN reviews ON properties.property_id = reviews.property_id
ORDER BY reviews.rating DESC;


SELECT users.first_name, bookings.booking_date
FROM users
FULL OUTER JOIN bookings ON users.user_id = bookings.user_id;