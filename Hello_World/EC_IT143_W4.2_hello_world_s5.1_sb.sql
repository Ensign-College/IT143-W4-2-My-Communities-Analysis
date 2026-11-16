/*
Step 5.1: Create a table from the view using SELECT INTO.
*/

USE EC_IT143_DA;
GO

IF OBJECT_ID('dbo.tbl_hello_world_customers_by_city', 'U') IS NOT NULL
    DROP TABLE dbo.tbl_hello_world_customers_by_city;
GO

SELECT *
INTO dbo.tbl_hello_world_customers_by_city
FROM dbo.v_hello_world_customers_by_city;
GO

SELECT *
FROM dbo.tbl_hello_world_customers_by_city
ORDER BY City;
GO