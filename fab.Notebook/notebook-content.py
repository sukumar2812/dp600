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
# META     }
# META   }
# META }

# CELL ********************

!pip install semantic-link-labs

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import sempy_labs as labs

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df=spark.read.format("delta").load("Tables/dbo/Sales")

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

labs.delta_analyzer_history("dbo/Sales")

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
