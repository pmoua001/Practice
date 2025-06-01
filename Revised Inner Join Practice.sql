
WITH
best_games AS (
	Select Distinct Top 500
	title,
	YEAR(date_release) AS year_release,
	rating,
	(price_final - price_original)AS final_price_difference,
	all_games.Genre AS games_genre
	From steam_game_recom AS steam	
	Inner JOIN
	game_sales AS all_games
	ON
	steam.title = all_games.Name
	WHERE rating >= 'Positive'
	ORDER BY rating DESC
)

Select *
From best_games
WHERE final_price_difference !=0
ORDER BY final_price_difference ASC