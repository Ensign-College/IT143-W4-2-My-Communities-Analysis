/*
Community: Consumer Spending (Simpsons)

Step 6: Load the table from the view using an ad hoc SQL script.
*/

USE IT143_Simpsons;
GO

TRUNCATE TABLE dbo.tbl_simpsons_spending_by_category;
GO

INSERT INTO dbo.tbl_simpsons_spending_by_category
(
    Category,
    TotalSpending
)
SELECT
    ISNULL(Category, 'Uncategorized'),
    SUM(Amount)
FROM dbo.Planet_Express
GROUP BY Category;
GO

SELECT *
FROM dbo.tbl_simpsons_spending_by_category
ORDER BY Category;
GO