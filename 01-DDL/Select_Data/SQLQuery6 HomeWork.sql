USE PD_311_DDL;
GO
--1)Дисциплина


--SELECT
--[Название предмета] = discipline_name
    
--FROM DependentDisciplines,Disciplines
--WHERE
--    target_discipline = (SELECT discipline_id FROM Disciplines WHERE discipline_name LIKE '%Процедурное программирование на языке С++%')
--	AND dependent_discipline=discipline_id

--2)Возраст и опыт
--SELECT birth_date, work_since,
--[Ф.И.О] = last_name + ' ' + first_name + ' ' + middle_name,
--[Возраст] = DATEDIFF(DAY, birth_date, GETDATE()) / 365,
--[Опыт работы] = FORMATMESSAGE('%i %s', DATEDIFF(DAY, work_since, GETDATE()) / 365, 'Год')
--FROM Teachers
--3)Стаж больше 10 лет
--SELECT work_since,
--[Ф.И.О] = last_name + ' ' + first_name + ' ' + middle_name,
--[Опыт работы] = FORMATMESSAGE('%i %s', DATEDIFF(DAY, work_since, GETDATE()) / 365, 'лет')
--FROM Teachers
--WHERE DATEDIFF(DAY, work_since, GETDATE()) / 365 > 10
