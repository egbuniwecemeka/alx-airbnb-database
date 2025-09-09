# Implementing Indexes for Optimization

Indexing is the structuring of frequently accessed columns for efficient data retrieval, speed and optimization.

## Steps

1. Identify high-usage columns eg WHERE, ORDER BY, JOIN are used.
2. Create indexes. eg CREATE INDEX
3. Three types of index. Single column index, Composite (Multiple) column index, Unique column index, Covering column, FULLTEXT index
4. Check for Indexing. eg EXPLAIN SELECT ...

### Tips

1. Index columns that are filter(WHERE) and joins (ON).
2. Index columns used in sorting(ORDER) and grouping (GROUP BY)
3. Avoid over-indexing. Indexing improves reads but slows writes (INSERT/UPDATE/DELETE)
