USE PD_311_DDL;
GO
----------------------------------------
--EXEC PrintStudents;
----------------------------------------
--EXEC PrintSchedule;
----------------------------------------
--EXEC PrintScheduleGroup N'PD_212'
------------------------------------------
--SELECT COUNT(discipline_id) FROM Disciplines WHERE discipline_name LIKE '%ADO.NET%';
--SELECT COUNT(teacher_id) FROM Teachers WHERE last_name LIKE '%Покидюк%';
--EXEC sp_AddScheduleForStacionarGroup '2024-01-10','14:30',N'PD_212',N'%ADO.NET%',N'Ковутн'
EXEC sp_AddAlternatingDisciplineToSchedule 'PD_311', '%Hardware%', '2023-09-18', '13:30', 'Кобылинский', 2 , 4
--PRINT (DATEPART(WEEKDAY,GETTDATE()))
