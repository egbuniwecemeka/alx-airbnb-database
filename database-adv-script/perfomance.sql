-- An SQL script that refactors complex queries to improve performance

EXPLAIN
SELECT b.booking_id,
    b.property_id
FROM Booking AS b
    INNER JOIN users as u
    INNER JOIN property as p
-- Only one WHERE can be used which is joined multiple ANDs
WHERE b.user_id = u.user_id AND b.property_id = p.property_id
;