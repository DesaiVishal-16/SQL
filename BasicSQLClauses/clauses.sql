-- Clauses in SQL


-- 1. Data Retrival
-- a. SELECT => Specifies which columns to retrieve

SELECT * FROM your_table_name;
SELECT column1,column2 FROM your_table_name;

-- b. FROM   => Specifies the table(s) to query 

SELECT column1,column2 FROM your_table_name;

-- 2. Filtering and Conditions
-- a. WHERE => The WHERE clause is used to filter records.

SELECT * FROM your_table_name WHERE conditions;

-- Ex:
SELECT * FROM employee WHERE salary < 70000;


-- 3. Grouping and Aggregation
-- ORDER BY => Sorts the result set

-- ORDER BY in Ascending order (by default is Ascending order)

SELECT column1 FROM your_table_name ORDER BY column1 ASC;

-- ORDER BY in Descending order 

SELECT column1 FROM your_table_name ORDER BY column1 DESC;


-- 4. Limiting Results
-- a. Limit => Limits the number of rows returned

SELECT column1 FROM your_table_name ORDER BY column1 DESC LIMIT 1;

-- 5. DISTINCT => Eliminates duplicate rows from the result set

SELECT DISTINCT your_table_id FROM your_table_name;

-- Ex:
SELECT DISTINCT department_id FROM employees;
