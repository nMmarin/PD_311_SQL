USE PD_311_DDL;
GO

SELECT 
	--last_name	AS N'Фамилия',
	--first_name AS N'Имя' , 
	--middle_name AS N'Отчество' ,
	--birth_date AS N'Дата рождения' 
	----------------------------------------------------
	--[Ф.И.О.]=last_name+''+first_name+''+middle_name,
	--last_name+''+first_name+''+middle_name AS N'Ф.И.О.',
	[Ф.И.О.]=FORMATMESSAGE('%s %s %s',last_name,first_name,middle_name),
	birth_date AS N'Дата рождения'
FROM Teachers
--WHERE birth_date>'1990-01-01'
--WHERE first_name=N'Марина'
ORDER BY birth_date DESC;--ASC(ASCENDING) -сортировка по возврастанию
						 --DESC(DESCENDING) - сортировка по убыванию
 
							


--SELECT field1, field2,..., feldN
--FROM Table1,Table2,...,TableN;