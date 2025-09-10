-- An SQL script that refactors complex queries to improve performance

EXPLAIN
SELECT b.booking1_id,
    b.user_id,
    b.property_id,
    b.payment_id
FROM Booking AS b;