-- A script that creates appropriate indexes for columns
-- Indexes only help when MySQL has to search, filter, sort, or join.

-- Indexing user_id column of users in the Booking table
CREATE INDEX ind_usr_book ON Booking(user_id);

-- Indexing the property_id column of Review table
CREATE INDEX ind_prop_rev ON Review(property_id);

-- Composite index on users table
EXPLAIN ANALYZE
SELECT u.first_name, u.last_name
FROM users AS u
WHERE u.first_name = 'Emmanuel';

CREATE INDEX ind_fname_lname ON users(first_name, last_name);

EXPLAIN ANALYZE
SELECT u.first_name, u.last_name
FROM users AS u
WHERE u.first_name = 'Emmanuel';;
