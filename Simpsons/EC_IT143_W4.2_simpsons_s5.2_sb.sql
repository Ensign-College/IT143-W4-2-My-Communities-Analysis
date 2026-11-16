/*
Community: Consumer Spending (Simpsons)

Step 5.2: Refine the table architecture.
*/

USE IT143_Simpsons;
GO

IF OBJECT_ID('dbo.tbl_simpsons_spending_by_category', 'U') IS NOT NULL
    DROP TABLE dbo.tbl_simpsons_spending_by_category;
GO

CREATE TABLE dbo.tbl_simpsons_spending_by_category
(
    Category NVARCHAR(150) NOT NULL,
    TotalSpending DECIMAL(18,2) NOT NULL,

    CONSTRAINT PK_simpsons_spending_by_category
        PRIMARY KEY (Category)
);
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