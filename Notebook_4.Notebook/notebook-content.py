# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "bbd5edf7-7b91-40dc-afc3-01465948b665",
# META       "default_lakehouse_name": "LH01",
# META       "default_lakehouse_workspace_id": "26ec5295-bece-4e10-b634-827be0e2588a",
# META       "known_lakehouses": [
# META         {
# META           "id": "bbd5edf7-7b91-40dc-afc3-01465948b665"
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

# CELL ********************

df=spark.sql("Select * from WH01.dbo.Sales")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

from pyspark.sql.functions import * 


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df.write.format('parquet').partitionBy("Year","Month").save("Files/parquet/partition/Sales/")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df=df.withColumn("Year",year(df["Order Date"])).withColumn("Month",month(df["Order Date"]))

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

display(df)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
