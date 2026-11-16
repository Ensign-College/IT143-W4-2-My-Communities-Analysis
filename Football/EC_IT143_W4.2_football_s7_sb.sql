/*
Community: Football (MyFC)

Step 7: Turn the ad hoc SQL script into a stored procedure.
*/

USE IT143_MyFC;
GO

CREATE OR ALTER PROCEDURE dbo.usp_load_football_players_by_team
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE dbo.tbl_football_players_by_team;

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
END;
GO