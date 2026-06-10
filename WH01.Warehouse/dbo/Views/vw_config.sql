-- Auto Generated (Do not modify) 1961DD1694DB44FBD0DCCE7E1F45169A1191FB0FBE65AC30424C8C8694B8F16D
create view dbo.vw_config as 
select rows.filepath() as file_nm,count(*) as vol from 
OPENROWSET (BULK 'Files/parquet/**',DATA_SOURCE='hello',format='parquet') as rows
group by  rows.filepath()