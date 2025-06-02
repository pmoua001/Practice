
Select Distinct
	YEAR(date) AS year_of,
	state,
	SUM(cases) AS case_per_state,
	SUM(deaths) AS deaths_per_state
FROM covid
GROUP BY
	date, state
ORDER BY
	year_of
	