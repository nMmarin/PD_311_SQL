USE PD_311_DDL;
GO

SELECT 
			group_name AS N'������',
			COUNT (student_id) AS N'���������� ��������'
FROM		Students,Groups
WHERE		[group]=group_id
GROUP BY	group_name
ORDER BY	N'���������� ��������';
GO

SELECT 
			[����������� ��������]=direction_name,
			[���������� ���������]=COUNT(student_id)
FROM		Students,Groups,Directions
WHERE		[group]=group_id
AND			direction=direction_id
GROUP BY	direction_name;