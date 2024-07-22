-- Basics SQL Commands

-- Databases Cmd

-- To See or Read all Databases

SHOW DATABASES;


-- To Create a Database

CREATE Database your_database_name;

-- To Select a Database

USE your_database_name;

-- To Delete a Databases

Drop DATABASE your_database_name;


-- Tables Cmd

-- To Create a Table

CREATE TABLE your_table_name(
    ID INT PRIMARY KEY AUTO_INCREMENT, -- AUTO_INCREMENT => used to automatically generate a unique number for each new record.
    DataField_Char varchar(10) NOT NULL,
    DataField_Num INT NOT NULL
);

-- TO See or Read a Table 

DESCRIBE your_table_name;
       --OR
 DESC your_table_name;

-- To Delete a Table

DROP TABLE your_table_name;

-- ALTER  => Update
-- To Change or Update Data Schema of Table

-- TO ADD New Field in table
ALTER TABLE your_table_name ADD DatasField_Name datatype;



-- Data Cmd

-- INSERT
-- To Insert Data in table

INSERT INTO your_table_name("DataField_Char","DataField_Num") VALUES ("Hi",3)

-- SELECT
-- To Select all data in table

SELECT * FROM your_table_name; 

-- To Read Specific data in table

SELECT DatasField_Name FROM your_table_name; 

-- UPDATE
-- To Update Data in table

UPDATE your_table_name SET DatasField_Name =  "New Value" WHERE ID = DatasField_Name_ID;

-- DELETE
-- To Delete the data from table

DELETE FROM your_table_name WHERE ID = id_number;
