--Practice
Select Distinct Top(250) Name AS title,
	Genre AS game_genre, 
--Couldn't add anyother fields or Distinct wouldn't work correctly due to other fields not matching
	CASE 
		WHEN Genre = 'Action' THEN 'worth playing'
		WHEN Genre = 'Role-Playing' THEN 'worth playing'
		WHEN Genre = 'Adventure' THEN 'interested'
		ELSE 'boring'
		END AS 'decisions'
From game_sales AS games
JOIN
steam_game_recom AS steam
ON
games.Name = steam.title
--Inner Joined to combine exact game titles
ORDER BY decisions DESC
--Ordered in DESC to see all games worth playing 
