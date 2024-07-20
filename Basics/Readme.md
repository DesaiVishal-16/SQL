# SQL BASICS

## Good Practice

### Write commands in capital letters and database names in lowercase

## DataTypes in SQL

```sql
INT
varchar
```

## Contraints in SQL

```sql
NOT NULL => mandatory
Primary Key => Uniquely Identification
```

## Basic Commands

### TO Display Databases

```sql
SHOW DATABASES;
```

## TO Create Databases

```sql
CREATE DATABASE your_database_name;

-- Ex:
CREATE DATABASE courseapp;
```

## TO Create Same database in databases

```sql
CREATE DATABASE IF NOT EXISTS your_database_name;

-- Ex:
CREATE DATABASE IF NOT EXISTS courseapp;
```

## TO Select a database from Databases

```sql
USE your_database_name;

-- Ex:
USE courseapp;
```

## TO Check which database was working on

```sql
SELECT database();
```

## TO See tables in database

```sql
SHOW TABLES;
```

## TO Crate table in database => Create a table

#### (TO add medatory field in sql we use not null)

#### (If we write Primary key then no need to write not null)

#### AUTO_INCREMENT use for auto increase id number

```sql
CREATE TABLE your_table_name(
ID INT PRIMARY KEY AUTO_INCREMENT,
DataField varchar(10) NOT NULL,
DataField INT NOT NULL,
-- PRIMARY KEY(EID) => Another way to define Primary key
);

-- Ex:
CREATE TABLE employee(
EID INT PRIMARY KEY AUTO_INCREMENT,
FirstName varchar(50) NOT NULL,
LastName varchar(50) NOT NULL,
Age INT NOT NULL,
Salary INT NOT NULL,
Location varchar(50) NOT NULL
);
```

## TO See specific table => See a Table data field

#### DESC or DESCRIBE both are valid

```sql
Desc your_table_name;

-- Ex:
DESC employee;
```

## TO Delete specific table => Delete a table

```sql
DROP TABLE your_table_name;

Ex:
DROP TABLE employee;
```

## TO Manually Insert data in table => Create data in table

```sql
INSERT INTO your_table_name(DataField) VALUES ("value");

Ex:
INSERT INTO employee(FirstName,LastName,Age,Salary,Location) VALUES ("Vishal","Desai",22,50000,"Mumbai");
```

## TO Read the table values => Read the data

### "\*" means All Data Field that present in table

```sql
SELECT * FROM your_table_name;

-- Ex:
SELECT * FROM employee;
```

## Data Reteriver

### TO Filter the data based on requirements => Select the data

### TO Filter we use WHERE

#### EX: Requirements: To display employee salary less than 70000

```sql
SELECT * FROM your_table_name WHERE datafiled conditionOperation value;

-- Ex:
SELECT * FROM employee WHERE salary < 70000;
```

## Filter only specific data filed

```sql
 SELECT datafiled,datafiled FROM your_table_name datafiled conditionOperation value;

 -- Ex:
 SELECT FirstName,LastName FROM employee salary < 700000;
```

## Update the data => Update the data

### Its DML(Data Manipulation Language) Command

### It use update the data inside the table

```sql
UPDATE your_table_name SET DataFiled = "new Value" WHERE ID = idNumber;

-- Ex:
UPDATE employee SET LastName = "Dessai" WHERE EID = 1;
```

## Delete the data => Delete the data

```sql
DELETE FROM your_table_name WhERE ID = idNumber;

-- Ex:
DELETE FROM employee WHERE EID = 4;
```

## Alter the data => Update the data schema

## Its DDL(Data Defination Language) Command
