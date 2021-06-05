# pgbench-db-performance-test

pgbench is a simple program for running benchmark tests on PostgreSQL. It runs the same sequence of SQL commands over and over, possibly in multiple concurrent database sessions, and then calculates the average transaction rate (transactions per second). By default, pgbench tests a scenario that is loosely based on TPC-B, involving five SELECT, UPDATE, and INSERT commands per transaction. However, it is easy to test other cases by writing your own transaction script files.

Documentation: https://www.postgresql.org/docs/10/pgbench.html

***How To Run:***

```pgbench  -hlocalhost -n -f insert_update.sql -j 1000 -c 500 -t 1000 --progress=10 -U$POSTGRES_USER $POSTGRES_DB```
