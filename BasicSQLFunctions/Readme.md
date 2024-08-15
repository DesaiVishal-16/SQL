# Functions in SQL

## 1. Aggregate Functions

#### def: These functions perform calculations on multiple rows of a table`s column and return a single value.

### a. COUNT()

#### The COUNT function returns the number of rows that match a specified criterion.

```sql
SELECT COUNT(column_name)
FROM table_name
WHERE condition;

-- Example

SELECT COUNT(employeeID)
FROM Employee
WHERE Salary > 50000;
```

### b. SUM()

#### The SUM function calculates the total of a set of numeric column.

```sql
SELECT SUM(column_name)
FROM table_name
WHERE condition;

-- Example

SELECT SUM(Salary)
FROM Employee
WHERE Employee_Location LIKE "Pune";
```

### c. AVG()

#### The AVG function calculates the Average of a set of numeric column.

```sql
SELECT AVG(column_name)
FROM table_name
WHERE condition;

-- Example

SELECT AVG(Salary)
FROM Employee
WHERE Employee_Location LIKE "Pune";
```

### d. MIN and MAX

#### The MIN and MAX functions return the smallest and largest values of a column, respectively.

```sql
SELECT MIN(column_name), MAX(column_name)
FROM table_name
WHERE condition;

Example:

SELECT MIN(Employee_Salary), MAX(Employee_Salary)
FROM Employee;
```

### e. GROUP_CONCAT()

#### Concatenates values from a group into a single string.

```sql
SELECT GROUP_CONCAT(column_name)
FROM table_name

-- Example

SELECT GROUP_CONCAT(Employee_Name)
FROM Employee;
```

## 2. String Functions

#### String functiond are used to perform operations on string data types.

### a. CONCAT()

#### Concatenates two or more strings into one.

```sql
SELECT CONCAT(column_name,another_column_name)
FROM table_name

-- Example

SELECT CONCAT(First_Name,'',Last_Name) AS Full_Name
FROM Employee;
```

### b. SUBSTRING():

#### Extracts a substring from a string.

#### Note: In some databases, this function is called SUBSTR()

```sql
SELECT \* SUBSTRING(column_name,start_position,length)
FROM table_name;

-- Example

SELECT \* FROM Orders
WHERE SUBSTRING(OrderID, 1, 2) = '10';
```

### c. LENGTH()

#### Returns the length of a string.

#### Note: Some databases use LEN() instead of LENGTH()

```sql
SELECT column_name LENGTH(column_name) AS column_length
FROM table_name
WHERE LENGTH(column_name) > 0;

-- Example

SELECT Employee_Name LENGTH(Employee_Name) AS Name_Length
FROM Employee
WHERE LENGTH(Employee_Name) > 5
ORDER BY Name_Length DESC;
```

### d. UPPER() AND LOWER()

#### Converts a string to uppercase.

#### Converts a string to lowercase.

```sql
SELECT column_name
UPPER(column_name) AS Uppercase_column
LOWER(column_name) AS Lowercase_column
FROM table_name

-- Example

SELECT Employee_Name
UPPER(Employee_Name) AS Uppercase_name
LOWER(Employee_Name) AS Lowercase_name
FROM Employee;
```

### e. REPLACE()

#### Replaces all occurrences of a specified string.

```sql
SELECT column_name REPLACE(column_name,'original','replacement') AS modified_column
FROM table_name;

-- Example
SELECT Employee_Name, REPLACE(Employee_Name, 'John', 'Jonathan') AS Modified_Name
FROM Employee
WHERE Employee_Name LIKE '%John%';

SELECT Employee_Name,Employee_Salary REPLACE(CAST(Employee_Salary AS VARCHAR),'50000','70000') AS Adjusted_Salary_String
FROM Employee
WHERE Employee_Name = "Vishal";
```

### f. TRIM()

#### Removes leading and trailing spaces (or specified characters) from a string.

```sql
SELECT column_name TRIM(column_name)
FROM table_name

-- Example
SELECT TRIM(' abc ') FROM Employee; // output: abc

SELECT Employee_Name TRIM(Employee_Name)
FROM Employee;
```

## 3. Date and Time Functions

#### These functions handle and manipulate date and time values.

### a. NOW()

#### Returns the current date and time.

```sql
SELECT NOW();
```

### b. CURDATE()

#### Returns the current date.

```sql
SELECT CURDATE();
```

### c. CURTIME()

#### Returns the current time.

```sql
SELECT CURTIME();
```

### d. DATE()

#### Extracts the date part of a date or datetime expresion.

```sql
SELECT DATE(NOW());
```

### e. YEAR()

#### Extracts the year from a date

```sql
SELECT YEAR(NOW());
```

### f. MONTH()

#### Extracts the month from a date

```sql
SELECT MONTH(NOW());
```

### g. DAY()

#### Extracts the day from a date.

```sql
SELECT DAY(NOW());
```

### h. DATEDIFF()

#### Returns the difference between two dates.

```sql
SELECT DATEDIFF('2024-12-31','2024-01-01')
```

### i. DATE_ADD()

#### Adds a time interval to a date.

```sql
SELECT DATE_ADD('2024-08-14',INTERVAL 10 DAY) -- Output: 2024-08-24
```

### j. DATE_SUB()

#### Substracts a time interval to a date.

```sql
SELECT DATE_SUB('2024-08-14',INTERVAL 10 DAY) -- Output: 2024-08-04
```

## 4. Mathematical Functions

#### Mathematical functions are used to perform mathematical operations.

### a. ABS()

#### Returns the absolute value of a number.

```sql
SELECT ABS(-5) -- Output 5
```

### b. ROUND()

#### Rounds a number to a specified number off decimal places.

```sql
SELECT Round(4.3443,2) AS Rounded_Number -- Output 4.34

SELECT ProductName,Price,
ROUND(Price, 1) AS Rounded_Price
FROM Products;

SELECT
ROUND(5.6789, 0) AS Round_To_Integer, -- 6
ROUND(5.6789, 1) AS Round_To_1Decimal, -- 5.7
ROUND(5.6789, 2) AS Round_To_2Decimals,-- 5.68
ROUND(5.6789, -1) AS Round_To_Tens; -- 10
```

### c. FLOOR()

#### Returns the largest integer less than or equal to a number.

```sql
SELECT FLOOR(4.93) -- Output: 4
```

### d. CEIL()

#### Returns the smallest integer greater than or equal to a number.

``sql
SELECT CEIL(4.33) -- Output: 5

````

### e. POWER()
#### Returns a number raised to the power of another number.

```sql
SELECT POWER(2,3) -- Output: 8
````

### g. MOD()

#### Returns the remainder of a division.

```sql
SELECT MOD(10,3) -- Output: 1
```

## 5. Conversion Functions

#### These functions convert data from one type to another.

### a. CAST()

#### Converts a value from one data type to another.

```sql
SELECT CAST('2024-08-14' AS DATE);
```

### b. CONVERT()

#### Converts a value from one data type to another.

```sql
SELECT CONVERT('2024-08-14', DATE);
```

### c. COALESCE()

#### Returns the first non-null value in a list.

```sql
SELECT COALESCE(NULL,NULL,'default value'); -- Output: default value.
```

## 6. System Functions

#### System functions provide information about the database and the current session.

### USER()

#### Returns the current MySQL user.

```sql
SELECT USER();
```

### DATABASE()

#### Returns the name of the current database.

```sql
SELECT DATABASE();
```

### VERSION()

#### Returns the version of the MySQL server.

```sql
SELECT VERSION();
```

### CONNECTION_ID():

#### Returns the connection ID for the current session.

```sql
SELECT CONNECTION_ID();
```

```

```

```

```
