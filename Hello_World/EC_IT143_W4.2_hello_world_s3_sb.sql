/*
Step 3: Create an ad hoc SQL query.

Question:
How many customers are in each city?
*/

USE EC_IT143_DA;
GO

SELECT
    City,
    COUNT(*) AS NumberOfCustomers
FROM dbo.v_w3_schools_customers
GROUP BY City
ORDER BY City;
GO