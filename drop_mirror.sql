-- mirror_name         => 'MR_NBA_PROD_ANA_DB'
CALL SNOWFLAKE.POSTGRES.DROP_MIRROR(mirror_name => '-- mirror_name', drop_target_database => false);
CALL SYSTEM$WAIT(17);

-- Not a duplicate, it is by design and SF Support claims
CALL SNOWFLAKE.POSTGRES.DROP_MIRROR(mirror_name => '-- mirror_name', drop_target_database => false);
CALL SYSTEM$WAIT(10);

-- target_database     => 'PG_MR_NBA_PROD_ANA_DB'
GRANT OWNERSHIP ON DATABASE -- target_database TO ROLE ACCOUNTADMIN REVOKE CURRENT GRANTS;
DROP DATABASE -- target_database;

/* Example for NBA domain ANA subdomain: MR_NBA_PROD_ANA_DB mirror, PG_MR_NBA_PROD_ANA_DB database

CALL SNOWFLAKE.POSTGRES.DROP_MIRROR(mirror_name => 'MR_NBA_PROD_ANA_DB', drop_target_database => false);
CALL SYSTEM$WAIT(17);

CALL SNOWFLAKE.POSTGRES.DROP_MIRROR(mirror_name => 'MR_NBA_PROD_ANA_DB', drop_target_database => false);
CALL SYSTEM$WAIT(10);

-- target_database     => 'PG_MR_NBA_PROD_ANA_DB'
GRANT OWNERSHIP ON DATABASE PG_MR_NBA_PROD_ANA_DB TO ROLE ACCOUNTADMIN REVOKE CURRENT GRANTS;
DROP DATABASE PG_MR_NBA_PROD_ANA_DB;

*/