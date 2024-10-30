CREATE FUNCTION CompleteLessonsForTeacher	
(
	@teacher_last_name		NVARCHAR(150)
) 
RETURNS INT
AS
BEGIN
	DECLARE @teacher INT;
	DECLARE @number_of_lessons INT;
	SET @teacher = (SELECT teacher_id FROM Teachers WHERE last_name = @teacher_last_name);
	
	SET @number_of_lessons = (SELECT COUNT(lesson_id) 
							  FROM Schedule 
							  WHERE teacher = @teacher 
							  AND spent = 1 
							  AND date >= DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()) - 1, 0)  
							  AND date < DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()), 0));      

	RETURN @number_of_lessons;
END;
