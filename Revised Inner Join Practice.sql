
WITH
best_games AS (
	Select Distinct Top 500
--Chose TOP 500 for games with positive rating
	title,
	YEAR(date_release) AS year_release,
	rating,
	user_reviews,
	(price_final - price_original)AS final_price_difference,
	discount,
	all_games.Genre AS games_genre
	From steam_game_recom AS steam
	Inner JOIN
--Wrote Inner Join for Personal Preference even though Computer will automatically change it from JOIN
	game_sales AS all_games
	ON
	steam.title = all_games.Name
	WHERE rating = 'Positive' 
	OR rating = 'Very Positive' 
	OR rating = 'Overwhelmingly Positive' 
	OR rating = 'Mostly Positive' 
--Thought rating >='Postive' would work but had to write out all ratings so Query will run all the ratings from positive and up 
)
--Created a temp table so final query doesn't look so congested
Select *
From best_games
WHERE games_genre = 'Action'
Or games_genre = 'Adventure'
Or games_genre = 'Role-Playing'
Or games_genre = 'Fighting'
--Had issues filtering out genre in temp table, so had to filter out in final query
ORDER BY discount DESC
--Final Query 