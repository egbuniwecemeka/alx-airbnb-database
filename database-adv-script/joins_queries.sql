-- A script using join queries to retrieve and manipulate data from DB

SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email
FROM Booking b
INNER JOIN User u
    ON b.user_id = u.user_id;

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