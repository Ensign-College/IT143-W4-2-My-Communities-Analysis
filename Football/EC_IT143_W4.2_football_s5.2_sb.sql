/*
Community: Football (MyFC)

Step 5.2: Refine the table architecture.
*/

USE IT143_MyFC;
GO

IF OBJECT_ID('dbo.tbl_football_players_by_team', 'U') IS NOT NULL
    DROP TABLE dbo.tbl_football_players_by_team;
GO

CREATE TABLE dbo.tbl_football_players_by_team
(
    TeamID INT NOT NULL,
    TeamCode VARCHAR(20) NOT NULL,
    NumberOfPlayers INT NOT NULL,

    CONSTRAINT PK_football_players_by_team
        PRIMARY KEY (TeamID)
);
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