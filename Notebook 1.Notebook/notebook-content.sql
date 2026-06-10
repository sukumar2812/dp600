-- Fabric notebook source

-- METADATA ********************

-- META {
-- META   "kernel_info": {
-- META     "name": "sqldatawarehouse"
-- META   },
-- META   "dependencies": {
-- META     "lakehouse": {
-- META       "default_lakehouse_name": "",
-- META       "default_lakehouse_workspace_id": "",
-- META       "known_lakehouses": []
-- META     },
-- META     "warehouse": {
-- META       "default_warehouse": "5bf6618c-9cbb-b60e-4005-f7d235c3e4f8",
-- META       "known_warehouses": [
-- META         {
-- META           "id": "5bf6618c-9cbb-b60e-4005-f7d235c3e4f8",
-- META           "type": "Datawarehouse"
-- META         },
-- META         {
-- META           "id": "623debaa-1fff-4b63-935c-f90cebcef338",
-- META           "type": "Lakewarehouse"
-- META         }
-- META       ]
-- META     }
-- META   }
-- META }

-- CELL ********************

insert into dp600_e1.student values ('Hello','Hello',100)

-- METADATA ********************

-- META {
-- META   "language": "sql",
-- META   "language_group": "sqldatawarehouse"
-- META }

-- CELL ********************

select * from dp600_e1.student

-- METADATA ********************

-- META {
-- META   "language": "sql",
-- META   "language_group": "sqldatawarehouse"
-- META }

-- CELL ********************

EXEC dp600_e1.sp_read_data @subject='Math'

-- METADATA ********************

-- META {
-- META   "language": "sql",
-- META   "language_group": "sqldatawarehouse"
-- META }

-- CELL ********************

select count(*) as row_cnt,'Sales' as Table_Name from lh01.dbo.Sales
union all
select count(*) as row_cnt,'Student' as Table_Name from dp600_WH01.dp600_e1.student

-- METADATA ********************

-- META {
-- META   "language": "sql",
-- META   "language_group": "sqldatawarehouse"
-- META }
