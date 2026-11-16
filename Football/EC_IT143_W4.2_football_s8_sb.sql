/*
Community: Football (MyFC)

Step 8: Call the stored procedure.
*/

USE IT143_MyFC;
GO

EXEC dbo.usp_load_football_players_by_team;
GO

SELECT *
FROM dbo.tbl_football_players_by_team
ORDER BY TeamID;
GO