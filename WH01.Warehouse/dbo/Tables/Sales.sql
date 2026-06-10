CREATE TABLE [dbo].[Sales] (

	[Order Number] bigint NULL, 
	[Line Number] bigint NULL, 
	[Order Date] date NULL, 
	[Delivery Date] date NULL, 
	[CustomerKey] bigint NULL, 
	[StoreKey] bigint NULL, 
	[ProductKey] bigint NULL, 
	[Quantity] bigint NULL, 
	[Unit Price] float NULL, 
	[Net Price] float NULL, 
	[Unit Cost] float NULL, 
	[Currency Code] varchar(8000) NULL, 
	[Exchange Rate] bigint NULL
);