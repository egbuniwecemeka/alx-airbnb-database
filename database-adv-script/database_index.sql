-- A script that creates appropriate indexes for columns

-- Indexing user_id column of users in the Booking table
CREATE INDEX ind_usr_book ON Booking(user_id);

-- Indexing the property_id column of Review table
CREATE INDEX ind_prop_rev ON Review(property_id);