# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "400c8a57-18ee-405d-b2da-631bc0cc30ec",
# META       "default_lakehouse_name": "LH02",
# META       "default_lakehouse_workspace_id": "26ec5295-bece-4e10-b634-827be0e2588a",
# META       "known_lakehouses": [
# META         {
# META           "id": "400c8a57-18ee-405d-b2da-631bc0cc30ec"
# META         }
# META       ]
# META     },
# META     "warehouse": {
# META       "default_warehouse": "04dfa66f-7565-8780-4cc6-2debd0569aed",
# META       "known_warehouses": [
# META         {
# META           "id": "04dfa66f-7565-8780-4cc6-2debd0569aed",
# META           "type": "Datawarehouse"
# META         }
# META       ]
# META     }
# META   }
# META }

# CELL ********************

# MAGIC %%sql
# MAGIC 
# MAGIC select * from WH01.dbo.Sales


# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }
