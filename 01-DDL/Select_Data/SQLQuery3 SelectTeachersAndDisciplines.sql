USE PD_311_DDL;
GO

SELECT 
[Ф.И.О.]=FORMATMESSAGE(N'%s %s %s', last_name,first_name,middle_name),
[Дисциплина]=discipline_name
FROM TeachersDisciplineRelations,Teachers,Disciplines
WHERE teacher=teacher_id
AND discipline=discipline_id
AND discipline_name LIKE('%SQL%')
--ORDER BY discipline_name;