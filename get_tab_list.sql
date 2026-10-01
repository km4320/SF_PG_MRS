CALL SNOWFLAKE.POSTGRES.LIST_MIRRORED_TABLES('MR_SF_EVENTS') ->>
select
    '''' || "SOURCE_SCHEMA_NAME" || '.' ||
    "SOURCE_TABLE_NAME" || ''','
from 
    $1;
