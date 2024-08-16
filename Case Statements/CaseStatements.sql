-- Case Statements in Sql

-- Syntax

SELECT column_name
        CASE 
            WHEN conditon THEN 'result'
            ELSE 'result'
        END AS new_column_name
FROM table_name;

-- Examples:

-- Ex 1:
SELECT grade,
       CASE
           WHEN grade >=90 THEN 'Excellent'
           WHEN grade >=75 THEN 'Good'
           ELSE 'Needs Improvement'
       END AS performance
FROM students;

-- Ex 2:
SELECT customer_name, total_sales,
       CASE
           WHEN total_sales > 10000 THEN total_sales * 0.90  -- 10% discount
           WHEN total_sales BETWEEN 5000 AND 10000 THEN total_sales * 0.95  -- 5% discount
           ELSE total_sales  -- No discount
       END AS discounted_total
FROM sales;


