-- Infrastructure: Database, Schemas, Warehouse

DEFINE DATABASE {{db}};

DEFINE SCHEMA {{db}}.RAW;

DEFINE SCHEMA {{db}}.ANALYTICS;

DEFINE SCHEMA {{db}}.SERVE;

DEFINE WAREHOUSE PIPELINE_WH{{env_suffix}}
WITH WAREHOUSE_SIZE = '{{wh_size}}'
AUTO_SUSPEND = 60
AUTO_RESUME = TRUE;
