# Monitor and Refine Database Performance

SHOW PROFILES  -- List of queries run in this session

SHOW PEOFILE FOR QUERY 1 -- detailed time breakdown for query

Best for understanding where time is spent (parsing, optimization, execution, data sending etc).

Note: SHOW PROFILE is deprecated 5.7 & removed MySQL 8.0

EXPLAIN ANALYZE
