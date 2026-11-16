
-- IT143 W4.2 - Hello World
-- Step 4: Turn the ad hoc SQL query into a view
-- Question: How many customers are in each city?

USE EC_IT143_DA;
GO

CREATE OR ALTER VIEW dbo.v_hello_world_customers_by_city
AS
SELECT
    City,
    COUNT(*) AS NumberOfCustomers
FROM dbo.v_w3_schools_customers
GROUP BY City;
GO

SELECT *
FROM dbo.v_hello_world_customers_by_city
ORDER BY City;
GO
