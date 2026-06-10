-- Auto Generated (Do not modify) 3E18EFDAC16FF0D4A030D140D4BF7D58AD2DF1BC4F149EA8FC05870248962C24
/****** Script for SelectTopNRows command from SSMS  ******/
create view dbo.vw_sales as SELECT SUM([Quantity]) AS QTY,
      SUM([Unit Price]) AS NP
  FROM [dbo].[Sales]