CREATE FUNCTION CalculateSalaryForOctober2024()
RETURNS TABLE
AS
RETURN 
(
    SELECT 
        teacher_id,
		last_name,
		first_name,
		middle_name,
        COUNT(s.lesson_id) AS number_of_lessons,
        (COUNT(s.lesson_id) * rate) AS salary  
    FROM 
        Teachers 
    LEFT JOIN 
        Schedule s ON teacher_id = s.teacher
        AND s.date >= '2024-10-01'  
        AND s.date < '2024-11-01'   
        AND s.spent = 1              
    GROUP BY 
       teacher_id,
       last_name,
       first_name,
		middle_name,
        rate  
);
