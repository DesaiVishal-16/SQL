# Basics SQL Commands

## Databases Cmd

### To See or Read all Databases

```sql
SHOW DATABASES;
```

### To Create a Database

```sql
CREATE Database your_database_name;
```

### To Select a Database

```sql
USE your_database_name;
```

### To Delete a Databases

```sql
Drop DATABASE your_database_name;
```

## Tables Cmd

### To Create a Table

```sql
CREATE TABLE your_table_name(
    ID INT PRIMARY KEY AUTO_INCREMENT, -- AUTO_INCREMENT => used to automatically generate a unique number for each new record.
    DataField_Char varchar(10) NOT NULL,
    DataField_Num INT NOT NULL
);
```

### TO See or Read a Table

```sql
DESCRIBE your_table_name;
       --OR
 DESC your_table_name;
```

### To Delete a Table

```sql
DROP TABLE your_table_name;
```

### To ALTER or UPDATE a table

### To Change or Update Data Schema of Table

### 1. To ADD New Field in table

```sql
ALTER TABLE your_table_name ADD DatasField_Name datatype;
```

## Data Cmd

### INSERT

### To Insert Data in table

```sql
INSERT INTO your_table_name("DataField_Char","DataField_Num") VALUES ("Hi",3)
```

### SELECT

### 1. To Select all data in table

```sql
SELECT * FROM your_table_name;
```

### 2. To Select Specific data in table

```sql
SELECT DatasField_Name FROM your_table_name;
```

### UPDATE

### To Update Data in table

```sql
UPDATE your_table_name SET DatasField_Name =  "New Value" WHERE ID = DatasField_Name_ID;
```

### DELETE

### To Delete the data from table

```sql
DELETE FROM your_table_name WHERE ID = id_number;
```
