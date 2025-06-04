--Find the correlation between study hours, attendance, and internet access to final exam scores
SELECT 
	Gender,
	COUNT(Gender) AS num_students,
--Count total number of students per gender to see the amount of students
	AVG(Study_Hours_per_Week) AS avg_study_hours,
	AVG(Attendance_Rate) AS avg_attendance,
	AVG(Final_Exam_Score) AS avg_final_score,
	AVG(Past_Exam_Scores) AS avg_past_exam,
	Internet_Access_at_Home AS internet_access,
	Extracurricular_Activities AS student_or_athlete,
	Pass_Fail
FROM student_performance_dataset
--added Extracurricular_Activities to find if student athletes does better than regular students or vice versa
GROUP BY 
	Gender, Pass_Fail, Internet_Access_at_Home, Extracurricular_Activities
--Grouped by gender to categorized all the average of the above categories
ORDER BY
	Pass_Fail DESC, internet_access
--Sort results by pass status and internet access to find correlation 
