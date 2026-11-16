
-- IT143 W4.2 - Football Community
-- Step 4: Turn the ad hoc SQL query into a view
-- Question: How many players are on each team?

USE IT143_MyFC;
GO

CREATE OR ALTER VIEW dbo.v_football_players_by_team
AS
SELECT
    t.t_id AS TeamID,
    t.t_code AS TeamCode,
    COUNT(p.pl_id) AS NumberOfPlayers
FROM dbo.tblTeamDim AS t
LEFT JOIN dbo.tblPlayerDim AS p
    ON t.t_id = p.t_id
GROUP BY
    t.t_id,
    t.t_code;
GO

SELECT *
FROM dbo.v_football_players_by_team
ORDER BY TeamID;
GO
