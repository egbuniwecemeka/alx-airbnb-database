# Partitioning Large Tables

Analogy: Partitioning is like a book with large chapters, where instead of going through the book to find a certain information, we jump directly to the chapter to get that information.

Partitioning involves splitting a big table into smaller manageable parts.

THey are stored on seperate disks but operate as a single table.

## Types of Partitioning

1. RANGE - split rows based on range of values eg dates, IDs
2. LIST - split by specific values
3. HASH - distribute rows across partitions based on hash functions
KEY - uses MySQLs internal function. Similar to hash.

### Uses

1. Partition prunning
2. Smaller indexes
3. Better maintainance
4. Parallelism

### Limitation

1. Wrong partitioning can slow down things
2. Some operations are not supported eg foreign keys
