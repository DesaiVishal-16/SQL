-- Good Practice

-- Write commands in capital letters and database names in lowercase




-- Datatypes in SQL

INT 
varchar

-- Contraints in SQL

NOT NULL => mandatory
Primary Key => Uniquely Identification 

-- Basic Command

-- TO show databases

SHOW DATABASES;

-- TO Create databases

CREATE DATABASE courseapp;

--TO Create Same database in databases

CREATE DATABASE IF NOT EXISTS courseapp;

-- TO Use or Select database from databases

USE courseapp;

--TO Check which database was working on

SELECT database();

-- TO See tables in database

SHOW TABLES;

-- TO Crate table in database                                                                            => Create a table
-- (TO add medatory field in sql we use not null)
-- (If we write Primary key then no need to write not null)
-- AUTO_INCREMENT use for auto increse id number 

CREATE TABLE employee(
    EID INT PRIMARY KEY AUTO_INCREMENT, 
    FirstName varchar(50)  NOT NULL,
    LastName varchar(50) NOT NULL,
    Age INT NOT NULL,
    Salary INT NOT NULL,
    Location varchar(50) NOT NULL
    -- PRIMARY KEY(EID) => Another way to define Primary key
);

-- TO See specific table                                                                                  => See a Table data field
-- DESC or DESCRIBE  both are valid

DESC employee;

--TO Delete specific table                                                                                => Delete a table

DROP TABLE employee;                                                                                   

-- TO Manually Insert data in table                                                                       => Create data in table

INSERT INTO employee(FirstName,LastName,Age,Salary,Location) VALUES ("Vishal","Desai",22,50000,"Mumbai");

-- TO Read the table values                                                                               => Read the data

SELECT * FROM employee;


-- Data Reteriver
-- TO Filter  the data based on requirements                                                             => Select the data 
-- TO Filter we use WHERE

-- EX: Requirements: To display employee salary less than 70000

SELECT * FROM employee WHERE salary < 70000;

-- Filter only specific data filed

SELECT FirstName,LastName FROM employee salary < 700000;


-- Update the data                                                                                          => Update the data 
-- Its DML(Data Manipulation Language) Command 
-- It use update the data inside the table

UPDATE employee SET LastName = "Dessai" WHERE EID = 1;


-- Delete the data                                                                                         => Delete the data 

DELETE FROM employee WHERE EID = 4;



-- Alter the data                                                                                          => Update the data schema 
-- Its DDL(Data Defination Language) Command 
-- It use update the data schema of the table