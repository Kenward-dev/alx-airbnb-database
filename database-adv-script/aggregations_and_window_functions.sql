SELECT users.users_id, users.first_name, COUNT(bookings.bookings_id) AS total_bookings
FROM users
LEFT JOIN bookings ON users.users_id = bookings.users_id
GROUP BY users.users_id, users.first_name;


SELECT properties.properties_id, properties.name, COUNT(bookings.bookings_id) AS total_bookings
ROW_NUMBER() OVER ORDER BY COUNT(bookings.bookings_id) DESC AS row_rank
RANK () OVER ORDER BY COUNT(bookings.bookings_id) DESC AS rank
FROM properties
LEFT JOIN bookings ON properties.properties_id = bookings.properties_id
GROUP BY properties.properties_id, properties.name
ORDER BY row_rank;
