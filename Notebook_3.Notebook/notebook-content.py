# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {}
# META }

# CELL ********************

token=notebookutils.credentials.getToken("https://api.fabric.microsoft.com")
headers={
    "Content-Type":"Application/json",
    "Authorization":f"Bearer {token}"
    }
url="https://api.fabric.microsoft.com/v1/workspaces/26ec5295-bece-4e10-b634-827be0e2588a/warehouses"
body={
    "displayName":"WH WO Collation",
    "description":"Case insensitive WH",
    "creationPayload": {
    "collationType": "Latin1_General_100_CI_AS_KS_WS_SC_UTF8"
  }
}

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json, requests

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

response = requests.post(url=url,headers=headers,json=body)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

response.status_code

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
