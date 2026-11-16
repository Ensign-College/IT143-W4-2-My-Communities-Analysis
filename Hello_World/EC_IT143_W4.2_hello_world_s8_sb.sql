/*
Step 8: Call the stored procedure.
*/

USE EC_IT143_DA;
GO

EXEC dbo.usp_load_hello_world_customers_by_city;
GO

SELECT *
FROM dbo.tbl_hello_world_customers_by_city
ORDER BY City;
GO