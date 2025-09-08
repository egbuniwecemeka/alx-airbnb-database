-- An SQL script that uses correlated and non-correlated subqueries to retrieve data from a DB

-- Find all properties where the average rating is greater than 4
-- Inner subquery: Groups properties by reviews and displays those greater than 4
-- Outer subquery: This retrieves all properties
-- Order of execution: Inner Subquery (1st), Outer Subquery (2nd)
-- This is Non-correlated, because the inner query runs independently of the outer query,
-- i.e it does not access the outer query columns directly inside the inner query
SELECT *
FROM Property AS p
WHERE p.property_id IN (
    SELECT r.property_id
    FROM Review AS r
    GROUP BY r.property_id
    HAVING AVG(r.rating) > 4
);
