-Finding the amount of cases and deaths per state
SELECT
	covid.state AS states_affected,
	SUM(cases) AS cases_per_state,
	SUM(deaths) AS deaths_per_state,
	us_population._2020_census AS population_num
FROM 
	covid INNER JOIN us_pop_by_state AS us_population
	ON covid.state = us_population.state
--Only wanted the 50 states, covid table had 55 states listed
GROUP BY
	covid.state, us_population._2020_census
--Grouped by state total numbers of deaths and cases 
--Grouped by census to help group other data
ORDER BY 
	cases_per_state DESC, deaths_per_state DESC
--Finding the highest case and deaths by state
