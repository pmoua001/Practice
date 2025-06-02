SELECT 
	Gender,
	COUNT(Gender) AS num_students,
--clearly define the number of students 
	AVG(Study_Hours_per_Week) AS avg_study_hours,
	AVG(Attendance_Rate) AS avg_attendance,
	Internet_Access_at_Home AS internet_access,
	Pass_Fail
FROM student_performance_dataset
GROUP BY 
	Gender, Pass_Fail, Internet_Access_at_Home
--Grouped categories to find the average number
ORDER BY
	Pass_Fail DESC, internet_access
--Ordered the categories to find if kids that pass had internet or not