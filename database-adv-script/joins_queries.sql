-- A script using join queries to retrieve and manipulate data from DB

/* -- Inner Join
SELECT booking_id, total_price, status, first_name, last_name FROM `Booking`
INNER JOIN `users` ON
Booking.user_id = users.user_id;
 */

-- Left Join
/* SELECT * FROM `Property`
LEFT JOIN `Review`
ON Property.property_id = Review.property_id; */
/* 
-- Right Join
SELECT * FROM `Booking`
RIGHT JOIN `users`
ON Booking.user_id = users.user_id;

-- Full Outer Join
SELECT * FROM
`Booking` LEFT JOIN `users`
ON Booking.user_id = users.user_id

UNION

SELECT * FROM
`Booking` RIGHT JOIN `users`
ON Booking.user_id = users.user_id;
 */