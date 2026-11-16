/*
Community: Consumer Spending (Simpsons)

Step 7: Turn the ad hoc SQL script into a stored procedure.
*/

USE IT143_Simpsons;
GO

CREATE OR ALTER PROCEDURE dbo.usp_load_simpsons_spending_by_category
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE dbo.tbl_simpsons_spending_by_category;

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
END;
GO