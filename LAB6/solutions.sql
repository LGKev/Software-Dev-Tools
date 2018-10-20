Kevin Kuwata
ELi Berumen

Lab 6 SQL lab

1. SELECT sname FROM store ORDER BY sname ASC;
2. SELECT sname FROM store ORDER BY sname ASC limit 3;
3. SELECT sname FROM store ORDER BY sname ASC LIMIT 3 OFFSET (SELECT count(*) FROM store) -3;
4. SELECT price FROM store WHERE price = 1
5. SELECT price * qty  AS extended_price FROM store
6. SELECT SUM(price * qty)  AS extended_price FROM store;
7. SELECT * FROM course INNER JOIN department ON course.department_id = department.id WHERE department_id = 1;
8. SELECT SUM(count) FROM enrollment;
9. SELECT COUNT(id) FROM department;
10.UPDATE course SET department_id = 3 WHERE course.cname = '112';
11.ALTER TABLE enrollment ADD COLUMN drop_count TEXT;
	ALTER TABLE enrollment ALTER COLUMN drop_count SET DATA  TYPE VARCHAR;
	ALTER TABLE enrollment ALTER COLUMN drop_count SET DATA TYPE integer USING (drop_count::integer);
12.UPDATE enrollment SET drop_count = (enrollment.count * 0.2); SELECT * FROM enrollment;
	 id | count | drop_count 
	----+-------+------------
  1 |    40 |          8
  2 |    15 |          3
  3 |    10 |          2
  4 |    12 |          2
  5 |    60 |         12
  6 |    14 |          3
  7 |   200 |         40


13. I can't get it to work

14. ugh

15. ALTER TABLE enrollment DROP COLUMN drop_count;
	TRUNCATE enrollment;
	DROP TALBE enrollment;
	CREATE TABLE new_enrollment ( id SERIAL PRIMARY KEY, department_name varchar NOT NULL, count integer NOT NULL, drop_count integer);

	INSERT INTO new_enrollment (id, department_name, count, drop_count)VALUES(1, 'CSC', 100, 20);
	do this a bunch until table is full

Id | department_name | count | drop_count 
----+-----------------+-------+------------
  1 | CSC             |   100 |         20
  2 | CHM             |   120 |          5
  3 | MTH             |    90 |          3
  4 | EGR             |   122 |         12
  5 | CSC             |   100 |          3
  6 | CHM             |    30 |          1


man I just could not get these last ones. 






