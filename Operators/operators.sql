-- Operators


-- 1. Arithmetic Operators

-- a. Additon ("+")

SELECT column1 + column2 AS sum_result
FROM your_table_name

--Ex:
SELECT price + 10 AS increased_price
FROM products;

-- b. Subtraction ("-")

SELECT column1 - column2 AS diff_result
FROM your_table_name

--Ex:
SELECT price - 10 AS decreased_price
FROM products;

-- c. Multiplcation ("*")

SELECT column1 * column2 AS multi_result
FROM your_table_name

--Ex:
SELECT price * 10 AS double_price
FROM products;

-- d. Division ("/")

SELECT column1 / column2 AS division_result
FROM your_table_name

--Ex:
SELECT price / 10 AS half_price
FROM products;

-- e. Modulus ("%")

SELECT column1 % column2 AS modulus_result
FROM your_table_name

--Ex:
SELECT price % 10 AS modulu_price
FROM products;

-- 2. Comparison Operators

-- a. Equal to ("=")

SELECT column1 FROM your_table_name
WHERE column1 = value

-- Ex:
SELECT price FROM products
WHERE price = 20

--- b. Not Equal to ('!=' or '<>')

SELECT column1 FROM your_table_name
column1 != value

-- Ex:
SELECT price FROM products
WHERE price != 20

--- c. Greater than ('>')

SELECT column1 FROM your_table_name
column1 > value

-- Ex:
SELECT price FROM products
WHERE price > 20

--- d. Less than ('<')

SELECT column1 FROM your_table_name
column1 < value


-- Ex:
SELECT price FROM products
WHERE price < 20

-- e. Greater than Equal to ('>=')

SELECT column1 FROM your_table_name
column1 >= value

-- Ex:
SELECT price FROM products
WHERE price >= 20

-- f. Less than Equal to ('<=')

SELECT column1 FROM your_table_name
column1 <= value

-- Ex:
SELECT price FROM products
WHERE price <= 20

-- 3. Logical Operator

-- a. AND (Combines two conditions; both must be true)
SELECT column1,column2 FROM your_table_name
WHERE condition1  AND condition2

-- Ex:
SELECT * FROM products
WHERE price > 10 AND category ='Electronics'

-- b. OR (Combines two conditions; at least one must be true)
SELECT column1,column2 FROM your_table_name
WHERE condition1  OR condition2

-- Ex:
SELECT * FROM products
WHERE price > 10 OR category ='Electronics'

-- c. NOT (Negative a condition)
SELECT column1,column2 FROM your_table_name
WHERE condition1  AND NOT condition2

-- Ex:
SELECT * FROM products
WHERE price > 10 AND NOT category ='Electronics'


-- Example for all Logical operator in one query

SELECT * FROM products
WHERE (price > 10 stock >100) AND NOT (category = 'Electronics' OR category = 'Toys')

-- This would select all products that either cost more than 10 or have more than 100 in stock, but are not in the Electronics or Toys categories.


--  4. String Comparison Operators

-- a. LIKE => Pattern Matching
SELECT column1,column2 
FROM your_table_name 
WHERE column1 LIKE pattern;

-- EX:

Ex: 1. SELECT COUNT(*) as number_of_learners_july 
FROM Learners
WHERE Learner_EnrollmentDate LIKE '%-07-%'

Ex: 2. SELECT first_name, last_name 
FROM employees 
WHERE last_name LIKE 'S%';

-- b. BETWEEN => Select values within a given range.
SELECT column1
FROM your_table_name 
WHERE column1 BETWEEN value1 AND value2

-- Ex:
SELECT *
FROM products
WHERE price BETWEEN 1 AND 10

-- c. IN => Select values that match any value in a list
SELECT column1
FROM your_table_name 
WHERE column1 IN (value1,value2,value3,..)

-- Ex:
SELECT *
FROM products
WHERE category IN ('Electronics','Books','Clothing')

-- d. IS NULL => Check if a value is NULL
SELECT column1
FROM your_table_name 
WHERE column1 IS NULL

-- Ex:
SELECT *
FROM products
WHERE price IS NULL


-- e. IS NULL => Check if a value is not NULL
SELECT column1
FROM your_table_name 
WHERE column1 IS NOT NULL

-- Ex:
SELECT *
FROM products
WHERE price IS NOT NULL


-- f. EXISTS => Check if a subquery returns any rows
SELECT column1
FROM your_table_name 
WHERE column1 EXISTS (subquery)

-- Ex:
SELECT product_name
FROM products
WHERE EXISTS (
    SELECT 1
    FROM orders
    WHERE product_id = id AND order_date > '2024-01-01'
);