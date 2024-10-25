USE PD_311_DDL;
GO

--CREATE PROCEDURE sp_AddScgeduleForBaseStacionar
--@group_name				NVARCHAR(50),
----@dicipline_name		NVARCHAR(256),
--@start_date				DATE,
--@group_time				TIME,
--@teacher_1_last_name	NVARCHAR(150),
--@teacher_2_last_name	NVARCHAR(150)
--AS
--BEGIN
--	DECLARE @group			INT =	(SELECT group_id	    FROM Groups			WHERE group_name = @group_name);
--	DECLARE @teacher_1		INT =	(SELECT teacher_id		FROM Teachers		WHERE last_name = @teacher_1_last_name);
--	DECLARE @teacher_2		INT =	(SELECT teacher_id		FROM Teachers		WHERE last_name = @teacher_2_last_name);
--	DECLARE @date			DATE =	@start_date;
--	DECLARE @discipline_1	SMALLINT= (SELECT discipline_id FROM Disciplines	WHERE	discipline_name LIKE N'%Hardware%');
--	DECLARE @discipline_2	SMALLINT= (SELECT discipline_id FROM Disciplines	WHERE	discipline_name LIKE N'%Процедурное программирование %С++%');
--	DECLARE @discipline_3	SMALLINT= (SELECT discipline_id FROM Disciplines	WHERE	discipline_name LIKE N'%%');
--	DECLARE @number_of_lessons_1 SMALLINT =	(SELECT number_of_lessons FROM Disciplines WHERE discipline_name LIKE N'%Hardware%');
--	DECLARE @number_of_lessons_2 SMALLINT =	(SELECT number_of_lessons FROM Disciplines WHERE	discipline_name LIKE N'%Процедурное программирование %С++%');
--	DECLARE @

--END

