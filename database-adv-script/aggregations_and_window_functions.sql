-- An SQL script using aggregation and window functions to analyze data

-- Finding the total number of bookings made by each user.
-- Using the COUNT fuction and GROUP BY clause

SELECT COUNT(*) FROM Booking AS b
-- Grouping by a unique column eg primary key is not good
GROUP BY b.user_id;

-- rank properties based on the total number of bookings they have received
-- COUNT(*) → counts all rows, including those with NULLs.
-- COUNT(column) → counts only non-NULL values in that column.

SELECT b.property_id, COUNT(b.booking_id) AS total_booking,
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS rank_booking,
    ROW_NUMBER() OVER (ORDER BY COUNT(b.booking_id) DESC) AS row_num_booking
FROM Booking AS b
GROUP BY b.property_id;
