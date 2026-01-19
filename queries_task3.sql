CREATE DATABASE task3_sql;
USE task3_sql;
SELECT COUNT(*) FROM `sample - superstore`;
SELECT * FROM `sample - superstore` LIMIT 5;
RENAME TABLE `sample - superstore` TO sample_superstore;
SELECT COUNT(*) FROM sample_superstore;