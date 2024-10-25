USE PD_311_DDL;
GO
ALTER PROC sp_AddScheduleForStacionarGroup
@start_date					DATE,
@group_time					TIME,
@group_name					NVARCHAR(50),
@discipline_name			NVARCHAR(256),
@teacher_last_name			NVARCHAR(150)
AS
BEGIN
		
		DECLARE @date			AS DATE		= @start_date;
		DECLARE @time			AS TIME		= @group_time;
		DECLARE @group			AS INT		= (SELECT group_id FROM Groups WHERE group_name=@group_name);
		DECLARE @discipline		AS SMALLINT = (SELECT discipline_id FROM Disciplines WHERE discipline_name LIKE @discipline_name);
		DECLARE @number_of_lessons AS INT=(SELECT number_of_lessons FROM Disciplines WHERE discipline_id=@discipline);
		DECLARE @teacher		AS INT		= (SELECT teacher_id FROM Teachers WHERE last_name=@teacher_last_name);
		PRINT (@group)
		PRINT (@discipline)
		PRINT (@teacher)
		PRINT (@number_of_lessons)

DECLARE @lesson AS SMALLINT = 0;
WHILE @lesson < @number_of_lessons
BEGIN
	PRINT(FORMATMESSAGE(N'%s %s','����:', CAST(@date AS NVARCHAR(50))))
	PRINT(FORMATMESSAGE(N'%s %s','����:', DATENAME(WEEKDAY,@date)));
	PRINT(FORMATMESSAGE(N'%s %s','�����:',CAST(@time AS NVARCHAR(50))))
	PRINT(FORMATMESSAGE(N'%s %i','���� �:',@lesson));
		INSERT 
		Schedule	([date],[time],[group],disciplne,teacher,spent)
		VALUES		(@date,@time,@group,@discipline,@teacher,IIF(@date<GETDATE(),1,0))
	SET @lesson=@lesson+1;
	IF @lesson < @number_of_lessons
	BEGIN
		PRINT(FORMATMESSAGE(N'%s %s','����:', CAST(@date AS NVARCHAR(50))));
		PRINT(FORMATMESSAGE(N'%s %s','�����:', CAST(DATEADD(MINUTE,90,@time)AS NVARCHAR(50))));
		PRINT(FORMATMESSAGE(N'%s %i','���� �:',@lesson));
			INSERT 
		Schedule	([date],[time],						[group],	disciplne,	teacher,	spent)
		VALUES		(@date, DATEADD(MINUTE, 90, @time), @group,		@discipline,@teacher,	IIF(@date < GETDATE(),1,0))
		SET @lesson=@lesson+1;
	END
	SET @date= DATEADD(DAY,IIF(DATEPART(WEEKDAY, @date)=6,3,2),@date)
PRINT ('-----------------------------------------------')
	END
END
GO


--PrintStudents
--------------------------------------------------------------------------------
--CREATE PROCEDURE PrintStudents
--AS 
--BEGIN
--	SELECT
--	[�.�.�.] = FORMATMESSAGE(N'%s %s %s',last_name,first_name,middle_name),
--	[�������] = DATEDIFF(DAY,birth_date,GETDATE())/365,
--	[������] = group_name
--	FROM Students, Groups
--	WHERE [group]=group_id;
--END
--------------------------------------------------------------------------------
Go
--CREATE PROCEDURE PrintSchedule
--------------------------------------------------------------------------------
--AS
--BEGIN
--	Select
--	[����]=[date],
--	[�����]=[time],
--	[����]=DATENAME(WEEKDAY,[date]),
--	[������]=group_name,
--	[����������]=discipline_name,
--	[�������������]=FORMATMESSAGE(N'%s %s %s',last_name,first_name,middle_name),
--	[����� ����������]= IIF (spent=1, N'���������',N'�������������')
--FROM		Schedule,Groups,Disciplines,Teachers
--WHERE		[group] = group_id
--	AND			disciplne = discipline_id
--	AND			teacher = teacher_id
--END
--------------------------------------------------------------------------------
GO
--CREATE PROCEDURE PrintScheduleGroup
--@group NVARCHAR(50)
--AS
--BEGIN
--SELECT 
--	[����]=[date],
--	[�����]=[time],
--	[����]=DATENAME(WEEKDAY,[date]),
--	[������]=group_name,
--	[����������]=discipline_name,
--	[�������������]=FORMATMESSAGE(N'%s %s %s',last_name,first_name,middle_name),
--	[����� ����������]= IIF (spent=1, N'���������',N'�������������')
--FROM		Schedule,Groups,Disciplines,Teachers
--WHERE		[group] = group_id
--AND			disciplne = discipline_id
--AND			teacher = teacher_id
--AND			group_name = @group
--END
GO
