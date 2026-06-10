CREATE TABLE [dbo].[Product] (

	[ProductKey] bigint NULL, 
	[Product Code] bigint NULL, 
	[Product Name] varchar(8000) NULL, 
	[Manufacturer] varchar(8000) NULL, 
	[Brand] varchar(8000) NULL, 
	[Color] varchar(8000) NULL, 
	[Weight Unit Measure] varchar(8000) NULL, 
	[Weight] varchar(8000) NULL, 
	[Unit Cost] float NULL, 
	[Unit Price] float NULL, 
	[Subcategory Code] bigint NULL, 
	[Subcategory] varchar(8000) NULL, 
	[Category Code] bigint NULL, 
	[Category] varchar(8000) NULL
);