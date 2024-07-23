# Constraints in SQL

### Define : Constraints are rules applied to table columns to enforce data integrity and ensure the accuracy and reliability of the data.

```sql
1. NOT NULL -- Ensures that a column cannot have a NULL value.
2. UNIQUE -- Ensures that all values in column are unique.
3. PRIMARY KEY -- A combination of NOT NULL and UNIQUE. Uniquely identifies each row in a table.
4. FOREIGN KEY -- Ensures the referential integrity of the data in one table to match values in another table.
```

### NOT NULL Constraint

```sql
CREATE TABLE Users(
   UserID INT NOT NULL,
   UserName VARCHAR(50) NOT NULL,
   UserAge INT NOT NULL
)
```

### UNIQUE Constraint

```sql
CREATE TABLE Users(
   UserID INT NOT NULL,
   UserName VARCHAR(50) NOT NULL UNIQUE,
   UserAge INT NOT NULL
)
```

### PRIMARY KEY Constraint

```sql
CREATE TABLE Users(
   UserID INT PRIMARY KEY,
   UserName VARCHAR(50) NOT NULL UNIQUE,
   UserAge INT NOT NULL
   -- PRIMARY Key(UserID)  => Another way to definr Primary key
)
```

### FOREIGN KEY Constraint

```sql
CREATE TABLE Orders(
   OrderID INT,
   OrderNumber VARCHAR(50) NOT NULL,
   UserID init,
   PRIMARY KEY(order),
   FOREIGN KEY(UserID) REFERENCES User(UserID) )
)
```
