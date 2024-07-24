-- Aliasing in SQL

-- The AS keyword used for aliasing or naming 

-- 1. Column Aliasing:

SELECT FUNCTION(Column_Name) AS New_Temp_Column_Name FROM your_table_name;

--Ex:

SELECT COUNT(*) AS number_of_employee FROM Employee;
