-- An SQL script using aggregation and window functions to analyze data

-- Finding the total number of bookings made by each user.
-- Using the COUNT fuction and GROUP BY clause

SELECT COUNT(*) FROM Booking AS b
-- Grouping by a unique column eg primary key is not good
GROUP BY b.user_id;

-- rank properties based on the total number of bookings they have received
SELECT b.booking_id FROM Booking AS b;