-- A script using join queries to retrieve and manipulate data from DB

-- Inner Join
SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    u.first_name,
    u.last_name
FROM 
    Booking AS b
INNER JOIN
    users AS u ON b.user_id = u.user_id;

/* -- Left Join
SELECT * FROM Property
LEFT JOIN Review
ON Property.property_id = Review.property_id
ORDER_BY(Property.property_id);
 */
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