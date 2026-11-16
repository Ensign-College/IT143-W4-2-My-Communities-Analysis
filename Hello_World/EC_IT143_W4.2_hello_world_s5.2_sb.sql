/*
Step 5.2: Refine the table architecture.
*/

USE EC_IT143_DA;
GO

IF OBJECT_ID('dbo.tbl_hello_world_customers_by_city', 'U') IS NOT NULL
    DROP TABLE dbo.tbl_hello_world_customers_by_city;
GO

CREATE TABLE dbo.tbl_hello_world_customers_by_city
(
    City NVARCHAR(100) NOT NULL,
    NumberOfCustomers INT NOT NULL,

    CONSTRAINT PK_hello_world_customers_by_city
        PRIMARY KEY (City)
);
GO

INSERT INTO dbo.tbl_hello_world_customers_by_city
(
    City,
    NumberOfCustomers
)
SELECT
    City,
    NumberOfCustomers
FROM dbo.v_hello_world_customers_by_city;
GO

SELECT *
FROM dbo.tbl_hello_world_customers_by_city
ORDER BY City;
GO