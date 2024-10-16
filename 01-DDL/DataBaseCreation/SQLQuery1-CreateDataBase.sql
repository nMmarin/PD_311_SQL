CREATE DATABASE PD_311_DDL  
ON 
(
	NAME = PD_311_DDL_dat,       
	FILENAME = N'B:\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PD_311_DDL.mdf',     
	SIZE = 8MB,      
	MAXSIZE = 512MB,       
	FILEGROWTH = 8MB
)  
LOG ON 
(
	NAME = PD_311_DDL_log,         
	FILENAME = N'B:\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PD_311_DDL.ldf',
	SIZE = 8MB,      
	MAXSIZE = 512MB,       
	FILEGROWTH = 8MB
);