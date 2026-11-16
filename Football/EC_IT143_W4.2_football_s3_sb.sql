/*
Community: Football (MyFC)

Step 3: Create an ad hoc SQL query.
Question:
How many players are on each team?
*/

USE IT143_MyFC;
GO

SELECT
    t.t_id AS TeamID,
    t.t_code AS TeamCode,
    COUNT(p.pl_id) AS NumberOfPlayers
FROM dbo.tblTeamDim AS t
LEFT JOIN dbo.tblPlayerDim AS p
    ON t.t_id = p.t_id
GROUP BY
    t.t_id,
    t.t_code
ORDER BY
    t.t_id;
GO