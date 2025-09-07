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

-- Left Join
SELECT
    p.property_id,
    p.host_id,
    p.name,
    p.description,
    p.location,
    r.rating,
    r.comment
FROM
    Property AS p
LEFT JOIN
    Review AS r ON p.property_id = r.property_id
ORDER BY(p.property_id);

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