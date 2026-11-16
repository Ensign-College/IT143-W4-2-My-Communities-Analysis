/*
Community: Consumer Spending (Simpsons)

Step 8: Call the stored procedure.
*/

USE IT143_Simpsons;
GO

EXEC dbo.usp_load_simpsons_spending_by_category;
GO

SELECT *
FROM dbo.tbl_simpsons_spending_by_category
ORDER BY Category;
GO