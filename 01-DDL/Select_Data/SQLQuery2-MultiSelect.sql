USE PD_311_DDL;
GO

--SELECT 
--		[�.�.�.]=FORMATMESSAGE('%s %s %s ', last_name, first_name, middle_name),
--		[������]=group_name,
--		direction_name
--FROM Students, Groups, Directions
--WHERE [group]=group_id
--AND direction = direction_id
--AND direction_name= N'JavaBackEnd Development';

SELECT  
[�.�.�.]=FORMATMESSAGE('%s %s %s ', last_name, first_name, middle_name),
[�������]=discipline_name
--discipline=discipline_id,
--teacher=teacher_id

FROM Teachers,Disciplines,TeachersDisciplineRelations
WHERE teacher=teacher_id
AND discipline=discipline_id
--AND discipline_name=N'UML � �������� ��������������'
ORDER BY discipline ASC