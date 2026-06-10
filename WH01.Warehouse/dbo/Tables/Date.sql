CREATE TABLE [dbo].[Date] (

	[Date] date NULL, 
	[Year] bigint NULL, 
	[Year Quarter] varchar(8000) NULL, 
	[Year Quarter Number] bigint NULL, 
	[Quarter] varchar(8000) NULL, 
	[Year Month] date NULL, 
	[Year Month Short] date NULL, 
	[Year Month Number] bigint NULL, 
	[Month] varchar(8000) NULL, 
	[Month Short] varchar(8000) NULL, 
	[Month Number] bigint NULL, 
	[Day of Week] varchar(8000) NULL, 
	[Day of Week Short] varchar(8000) NULL, 
	[Day of Week Number] bigint NULL, 
	[Working Day] bit NULL, 
	[Working Day Number] bigint NULL, 
	[End of Month] date NULL
);