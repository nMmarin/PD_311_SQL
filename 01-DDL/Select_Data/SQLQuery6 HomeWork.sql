USE PD_311_DDL;
GO
--1)����������


--SELECT
--[�������� ��������] = discipline_name
    
--FROM DependentDisciplines,Disciplines
--WHERE
--    target_discipline = (SELECT discipline_id FROM Disciplines WHERE discipline_name LIKE '%����������� ���������������� �� ����� �++%')
--	AND dependent_discipline=discipline_id

--2)������� � ����
--SELECT 
--[�.�.�] = last_name + ' ' + first_name + ' ' + middle_name,
--[���� ��������]=birth_date,
--[�������] = DATEDIFF(DAY, birth_date, GETDATE()) / 365,

--[���� ����������]=work_since,
--[���� ������] = FORMATMESSAGE('%i %s', DATEDIFF(DAY, work_since, GETDATE()) / 365, '���')
--FROM Teachers
--ORDER BY [�������] DESC

--3)���� ������ 10 ���
--SELECT work_since,
--[�.�.�] = last_name + ' ' + first_name + ' ' + middle_name,
--[���� ������] = FORMATMESSAGE('%i %s', DATEDIFF(DAY, work_since, GETDATE()) / 365, '���')
--FROM Teachers
--WHERE DATEDIFF(DAY, work_since, GETDATE()) / 365 > 10
--ORDER BY [���� ������] DESC
