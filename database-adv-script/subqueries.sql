SELECT properties.*
FROM properties
WHERE properties.properties_id IN (
    SELECT reviews.properties_id
    FROM reviews
    GROUP BY reviews.properties_id
    HAVING AVG(reviews.rating) > 4
);


SELECT users.*
FROM users
WHERE (
    SELECT COUNT(*)
    FROM bookings
    WHERE bookings.users_id = users.users_id
) > 3;
