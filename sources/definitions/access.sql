-- Access control: Simple role pattern for pipeline

-- Database role for read access
DEFINE DATABASE ROLE {{db}}.PIPELINE_READER;

-- Reader: access to the serve layer
GRANT USAGE ON SCHEMA {{db}}.SERVE
    TO DATABASE ROLE {{db}}.PIPELINE_READER;
GRANT SELECT ON ALL VIEWS IN SCHEMA {{db}}.SERVE
    TO DATABASE ROLE {{db}}.PIPELINE_READER;

-- Grant reader role to deployment role
GRANT DATABASE ROLE {{db}}.PIPELINE_READER
    TO ROLE PSEUDO_SYSADMIN;
