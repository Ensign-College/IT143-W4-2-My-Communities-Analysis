/*
Community: Football (MyFC)

Step 5.1: Create a table from the view using SELECT INTO.
*/

USE IT143_MyFC;
GO

IF OBJECT_ID('dbo.tbl_football_players_by_team', 'U') IS NOT NULL
    DROP TABLE dbo.tbl_football_players_by_team;
GO

SELECT *
INTO dbo.tbl_football_players_by_team
FROM dbo.v_football_players_by_team;
GO

SELECT *
FROM dbo.tbl_football_players_by_team
ORDER BY TeamID;
GO