-- Operators

--  1. String Comparison Operators

-- a. LIKE => Pattern Matching

SELECT column1,column2 FROM your_table_name WHERE column_Name LIKE pattern;

-- EX:

Ex: 1. SELECT COUNT(*) as number_of_learners_july FROM Learners WHERE Learner_EnrollmentDate LIKE '%-07-%'

Ex: 2. SELECT first_name, last_name FROM employees WHERE last_name LIKE 'S%';