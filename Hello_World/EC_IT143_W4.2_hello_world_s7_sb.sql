/*
Step 7: Turn the ad hoc SQL script into a stored procedure.
*/

USE EC_IT143_DA;
GO

CREATE OR ALTER PROCEDURE dbo.usp_load_hello_world_customers_by_city
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE dbo.tbl_hello_world_customers_by_city;

    INSERT INTO dbo.tbl_hello_world_customers_by_city
    (
        City,
        NumberOfCustomers
    )
    SELECT
        City,
        NumberOfCustomers
    FROM dbo.v_hello_world_customers_by_city;
END;
GO