/*
Community: Consumer Spending (Simpsons)

Step 4: Turn the ad hoc SQL query into a view.
*/

USE IT143_Simpsons;
GO

CREATE OR ALTER VIEW dbo.v_simpsons_spending_by_category
AS
SELECT
    Category,
    SUM(Amount) AS TotalSpending
FROM dbo.Planet_Express
GROUP BY Category;
GO

SELECT *
FROM dbo.v_simpsons_spending_by_category
ORDER BY Category;
GO