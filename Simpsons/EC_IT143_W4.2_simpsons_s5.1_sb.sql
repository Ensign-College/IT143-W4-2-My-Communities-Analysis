/*
Community: Consumer Spending (Simpsons)

Step 5.1: Create a table from the view using SELECT INTO.
*/

USE IT143_Simpsons;
GO

IF OBJECT_ID('dbo.tbl_simpsons_spending_by_category', 'U') IS NOT NULL
    DROP TABLE dbo.tbl_simpsons_spending_by_category;
GO

SELECT *
INTO dbo.tbl_simpsons_spending_by_category
FROM dbo.v_simpsons_spending_by_category;
GO

SELECT *
FROM dbo.tbl_simpsons_spending_by_category
ORDER BY Category;
GO