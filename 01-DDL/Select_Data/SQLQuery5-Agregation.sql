USE PD_311_DDL;
GO

SELECT 
			group_name AS N'Группа',
			COUNT (student_id) AS N'Количество студенов'
FROM		Students,Groups
WHERE		[group]=group_id
GROUP BY	group_name
ORDER BY	N'Количество студенов';
GO

SELECT 
			[Направление обучения]=direction_name,
			[Количество студентов]=COUNT(student_id)
FROM		Students,Groups,Directions
WHERE		[group]=group_id
AND			direction=direction_id
GROUP BY	direction_name;