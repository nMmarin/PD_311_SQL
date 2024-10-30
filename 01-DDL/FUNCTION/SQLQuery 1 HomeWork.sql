USE PD_311_DDL; 
GO 

CREATE FUNCTION GetNumberOfClassesForLastMonth1
(
    @teacher_last_name NVARCHAR(50)
)
RETURNS INT
AS
BEGIN
    DECLARE @teacher AS INT;
    SELECT @teacher = teacher_id 
    FROM Teachers 
    WHERE last_name = @teacher_last_name;

    DECLARE @number_of_lessons AS INT;
    SELECT @number_of_lessons = COUNT(lesson_id) 
    FROM Schedule 
    WHERE teacher = @teacher 
      AND DATEPART(MONTH, [date]) = DATEPART( MONTH, DATEADD(MONTH,-1,GETDATE()))
      AND DATEPART(YEAR, [date]) = DATEPART( YEAR, GETDATE());

    RETURN @number_of_lessons;
END;
