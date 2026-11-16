/*
Community: Consumer Spending (Simpsons)

Step 3: Create an ad hoc SQL query.

Question:
What is the total spending amount for each category?
*/

USE IT143_Simpsons;
GO

SELECT
    Category,
    SUM(Amount) AS TotalSpending
FROM dbo.Planet_Express
GROUP BY Category
ORDER BY Category;
GO