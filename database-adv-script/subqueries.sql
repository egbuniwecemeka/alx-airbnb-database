-- An SQL script that uses correlated and non-correlated subqueries to retrieve data from a DB

-- Find all properties where the average rating is greater than 4
-- Inner subquery: Groups properties by reviews and displays those greater than 4
-- Outer subquery: This retrieves all properties
-- Order of execution: Inner Subquery (1st), Outer Subquery (2nd)
-- This is Non-correlated, because the inner query runs independently of the outer query,
-- i.e it does not access the outer query columns directly inside the inner query
SELECT p.property_id, p.name, p.description
FROM Property AS p
WHERE p.property_id IN ( -- IN expects a single column list
    SELECT r.property_id
    FROM Review AS r
    GROUP BY r.property_id
    HAVING AVG(r.rating) > 4.0
);

-- Correlated subquery to find users who have made more than 3 bookings
-- Correlated subquery is a query where the inner subquery is dependent on the outer subquery.
    -- WHERE works before grouping → it cannot see results of COUNT(), SUM(), or other aggregates.
    -- HAVING works after grouping → it can filter based on those aggregate values
SELECT u.user_id, u.first_name, u.last_name
FROM users AS u
WHERE (
    -- SELECT b.user_id
    SELECT COUNT(b.user_id)
    FROM Booking AS b
    WHERE b.user_id = u.user_id
) > 3;
