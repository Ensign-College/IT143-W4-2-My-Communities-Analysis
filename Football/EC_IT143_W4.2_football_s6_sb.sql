
-- IT143 W4.2 - Football Community
-- Step 6: Load the table from the view

USE IT143_MyFC;
GO

TRUNCATE TABLE dbo.tbl_football_players_by_team;
GO

INSERT INTO dbo.tbl_football_players_by_team
(
    TeamID,
    TeamCode,
    NumberOfPlayers
)
SELECT
    TeamID,
    TeamCode,
    NumberOfPlayers
FROM dbo.v_football_players_by_team;
GO

SELECT *
FROM dbo.tbl_football_players_by_team
ORDER BY TeamID;
GO
