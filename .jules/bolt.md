## 2024-05-23 - Database Indexing for Large Employee Tables
**Learning:** In a database with hundreds of thousands of rows (e.g., employees, titles, dept_emp), full table scans for common filters like birth_date or current status (to_date = '9999-01-01') become a significant bottleneck. Adding targeted indexes on these columns can reduce query time from O(n) to O(log n).
**Action:** Always identify frequently queried columns in schema files and add indexes, especially for large datasets that lack specific query-optimized indexes.
