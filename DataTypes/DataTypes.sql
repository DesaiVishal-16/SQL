-- 1. Numeric Data Types

-- Note
-- Range: 
-- (- to +); is called Signed integers => Signed integer can represent both positive and negative whole numbers, as well as zero.
-- (+ to +); is called Unsigned integers => Unsigned integer can only represent non-negative whole numbers(positive numbers and zero).

-- a. INT or Integer => The Standard Integer.(Range:-2,147,483,648 to 2,147,483,647 (signed); or 0 to 4,294,967,295 (unsigned))

CREATE TABLE your_table_name(
    column_name INT      
);
-- Ex:
CREATE TABLE products(
    price INT
);

-- b. TINYINT => A very small integer. (Range: -128 to 127(signed); or 0 to 255 (unsigned))

CREATE TABLE your_table_name(
    column_name TINYINT    
);
-- Ex:
CREATE TABLE  products(
    price TINYINT
);

-- c. SMALLINT => A small integer. (Range: -32,768 to 32,767 (signed); or 0 to 65,535 (unsigned))

CREATE TABLE your_table_name(
    column_name SMALLINT    
);
-- Ex:
CREATE TABLE products(
    price SMALLINT
);

-- d. MEDIUMINT => A medium-sized integer. (Range: -8,388,608 to 8,388,607(signed); or 0 to 16,777,215 (unsigned).)
CREATE TABLE your_table_name(
    column_name MEDIUMINT    
);
-- Ex:
CREATE TABLE products(
    price MEDIUMINT
);

-- e. BIGINT => A Large integer => (Range: -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807 (signed);or 0 to 18,446,744,073,709,551,615 (unsigned))
CREATE TABLE your_table_name(
    column_name BIGINT   
);
-- Ex:
CREATE TABLE products(
    price BIGINT
);

-- 2. Decimal Types

-- a. DECIMAL(p,s);=> A fixed point number.`p` is the precision (total number of digits) and `s` id the scale(number of digits after the decimal point)
-- Ex: (p,s); => if i want 3 digits  and only one decimal => (3,1) => 23.2
CREATE TABLE your_table_name(
    column_name DECIMAL(p,s);  
);
-- Ex:
CREATE TABLE products(
    price DECIMAL(2,1);        -- 1.1
);

-- b.NUMERIC => Similat to DECIMAL, used for exact numerical values.
CREATE TABLE your_table_name(
    column_name NUMERIC(p,s);  
);
-- Ex:
CREATE TABLE products(
    price NUMERIC(2,1);        -- 1.1
);

--- 3. Floating-Point Types

-- FLOAT(p);: A small approximate number with floating decimal points. `p` represents precision
CREATE TABLE your_table_name(
    column_name FLOAT
);
-- Ex:
CREATE TABLE products(
    price FLOAT        
);

-- DOUBLE : A Large approximate number with floating decimal points.
CREATE TABLE your_table_name(
    column_name DOUBLE
);
-- Ex:
CREATE TABLE products(
    price DOUBLE       
);

-- REAL : Synonum for DOUBLE in some databases, or a single-precision floating-point number in others.
CREATE TABLE your_table_name(
    column_name REAL
);
-- Ex:
CREATE TABLE products(
    price REAL     
);


-- 4. Character String Data Types

-- a. VARCHAR(n); : Variable-Length Character String.
CREATE TABLE your_table_name(
    column_name VARCHAR(number_of_characters);
);
-- Ex:
CREATE TABLE products(
    USerName VARCHAR(50);     
);

-- b. CHAR(n); : Fixed-Length character string `n` specifies the length
CREATE TABLE your_table_name(
    column_name CHAR(fixed_number_of_characters);
);
-- Ex:
CREATE TABLE products(
    USerName CHAR(50);     
);

-- c. TEXT : Variable-Length string for large text fields. Types include

-- c.1 TINYTEXT: Holds up to 255 characters.
CREATE TABLE your_table_name(
    column_name TINYTEXT
);
-- Ex:
CREATE TABLE products(
    USerName TINYTEXT    
);

-- c.2 TEXT: Holds up to 65,535 characters.
CREATE TABLE your_table_name(
    column_name TEXT
);
-- Ex:
CREATE TABLE products(
    USerName TEXT    
);

-- c.3 MEDIUMTEXT: Holds up to 16,777,215 characters.
CREATE TABLE your_table_name(
    column_name MEDIUMTEXT
);
-- Ex:
CREATE TABLE products(
    USerName MEDIUMTEXT    
);
-- c.3 LONGTEXT: Holds up to 4,294,967,295 characters.
CREATE TABLE your_table_name(
    column_name LONGTEXT
);
-- Ex:
CREATE TABLE products(
    USerName LONGTEXT    
);

-- 5. Binary Data Types

-- a. BINARY(n);: Fixed-Length binary data.
CREATE TABLE your_table_name(
    column_name BINARY(specific_number_of_bytes);
);
-- Ex:
CREATE TABLE products(
    USerName BINARY(10);    
);

-- b. VARBINARY(n);: Varaiable-Length binary data.
CREATE TABLE your_table_name(
    column_name VARBINARY(specific_number_of_bytes);
);
-- Ex:
CREATE TABLE products(
    USerName VARBINARY(10);    
);

-- c.BLOB : Binary Large Object, used for storing binary data.

-- c.1 TINYBLOB : Holds up to 225 bytes.
CREATE TABLE your_table_name(
    column_name TINYBLOB
);
-- Ex:
CREATE TABLE products(
    USerName TINYBLOB  
);

-- c.2 BLOB : Holds up to 65,535 bytes.
CREATE TABLE your_table_name(
    column_name BOLB
);
-- Ex:
CREATE TABLE products(
    USerName BOLB 
);

-- c.3 MEDIUMBLOB : Holds up to 16,777,215 bytes.
CREATE TABLE your_table_name(
    column_name MEDIUMBLOB
);
-- Ex:
CREATE TABLE products(
    USerName MEDIUMBLOB  
);

-- c.4 LONGBLOB : Holds up to 4,294,967,295 bytes.

CREATE TABLE your_table_name(
    column_name LONGBLOB
);
-- Ex:
CREATE TABLE products(
    USerName LONGBLOB
);


-- 6. Date and Time Data Types (Date Format "YYYY-MM-DD")

-- a. TIMESTAMP : Stores date and time, with automatic initialization and updating to the current date and time.
-- (YYYY-MM-DD HH-MM-SS) => Y - Year, M - Month, D - Date, H - Hours, M - Minutes, S - Second.(24 Hour format)
CREATE TABLE your_table_name(
    column_name TIMESTAMP -- for manual entry
    column_name TIMESTAMP DEFAULT (CURRENT_TIME()) -- for default current date and time
);
-- Ex:
CREATE TABLE products(
    created_at TIMESTAMP DEFAULT (CURRENT_TIME())
);

-- b. DATE : Stores dates (YYYY-MM-DD)
CREATE TABLE your_table_name(
    column_name DATE -- For manual entry
    column_name DATE DEFAULT (CURRENT_TIME()) -- For default current date.
 );
-- Ex:
CREATE TABLE products(
    created_at DATE DEFAULT (CURRENT_TIME())
);

-- c. TIME : Stores dates (HH-MM-SS)
CREATE TABLE your_table_name(
    column_name TIME -- For manual entry
    column_name TIME DEFAULT (CURRENT_TIME()) -- For default current time.
 );
-- Ex:
CREATE TABLE products(
    created_at DATE DEFAULT (CURRENT_TIME())
);


-- d. DATETIME : Stores date and time (YYYY_MM-DD HH-MM-SS)
CREATE TABLE your_table_name(
    column_name DATETIME -- For manual entry
    column_name DATETIME DEFAULT (CURRENT_TIME()) -- For default current date and time
 );
-- Ex:
CREATE TABLE products(
    created_at DATETIME DEFAULT (CURRENT_TIME())
);

-- e. YEAR : Stores a year (YYYY)
CREATE TABLE your_table_name(
    column_name YEAR -- For manual entry
    column_name YEAR DEFAULT (CURRENT_TIME()) -- For default current date and time
 );
-- Ex:
CREATE TABLE products(
    created_at YEAR DEFAULT (CURRENT_TIME())
);

-- 7 . Boolean and Bit Datatypes.

-- BOOLEAN OR BOOL : Stores TRUE OR FALSE(often implemented as TINYINT(1))
CREATE TABLE your_table_name(
    column_name BOOLEAN 
 );
-- Ex:
CREATE TABLE products(
    is_male BOOLEAN 
);

-- BIT(n): Stores bit-field values `n` specifies the number of bits.
CREATE TABLE your_table_name(
    column_name BIT(n)
 );
-- Ex:
CREATE TABLE products(
    is_active BIT(1)
);

-- 8. Spatial Datatypes

-- GEOMETRY : Stores geometric data, including points,lines,and polugons.
CREATE TABLE your_table_name(
  column_name GEOMETRY
);
-- Ex:
CREATE TABLE products(
    geom GEOMETRY
);

-- POINT: Stores a single point in a two-dimendional space, defined by its X and Y coordinates(longitude and latitude)
CREATE TABLE your_table_name(
  column_name POINT
);
-- Ex:
CREATE TABLE products(
    location POINT
);

-- LINESTRING : Stores a line consisting of one or more points. it can model things like roads or paths.
create table your_table_name(
  column_name LINESTRING
);
-- ex:
create table products(
    paths LINESTRING
);

-- POLYGON : stores a polygon.
create table your_table_name(
  column_name POLYGON
);
-- ex:
create table products(
    area POLYGON
);


-- 9. JSON Datatypes

-- JSON: Stores JSON formatted data, allowing for the storage and retrieval of structured data in a text format.
CREATE TABLE products (
    column_name JSON
);
-- EX:
CREATE TABLE products (
    details JSON
);

INSERT INTO products (details) 
VALUES 
('{ "brand": "TechCorp", "model": "X100", "price": 299.99, "features": ["5G", "128GB Storage", "6.1-inch Display"] }');


-- 10. Other Datatypes

-- ENUM: A string object with a value chosen from a list of permitted values.
create table your_table_name(
  column_name ENUM('value1','value2','value3',...)
);
-- ex:
create table products(
  gender ENUM('Male','Female','other')
);

-- SET: Similar to ENUM, but can hold multiple values from the list.
create table your_table_name(
  column_name SET('value1','value2','value3',...)
);
-- ex:
create table products(
  payment_methods SET('Cash','Credit Card','PayPal','Bank Transfer')
);


