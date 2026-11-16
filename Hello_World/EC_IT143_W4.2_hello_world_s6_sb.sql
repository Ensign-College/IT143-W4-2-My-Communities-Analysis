/*
Step 6: Load the table from the view using an ad hoc SQL script.
*/

USE EC_IT143_DA;
GO

TRUNCATE TABLE dbo.tbl_hello_world_customers_by_city;
GO

INSERT INTO dbo.tbl_hello_world_customers_by_city
(
    City,
    NumberOfCustomers
)
SELECT
    City,
    NumberOfCustomers
FROM dbo.v_hello_world_customers_by_city;
GO

SELECT *
FROM dbo.tbl_hello_world_customers_by_city
ORDER BY City;
GO