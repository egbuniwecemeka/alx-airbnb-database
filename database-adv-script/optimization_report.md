# Optimize Complex Queries

In the performance.sql file, an initial query that returns the values of Booking table, alonsidee its user, properties and payment details. This query was analyzed using EXPLAIN

Explain helps spot ineffiencies in the following ways

id = steps in query execution
select_type = type of query
table = table accessed at each step
type = join type (where inefficiency shows up) eg. ALL - is for full table scan (slow for big tables), INDEX - full index scan, REF, EQ_REF, CONST - Efficient (uses index lookup)
possible_keys - indexes that could be used
rows - estimated num of rows (large = inefficient)
Extra - extra details.