CALL SNOWFLAKE.POSTGRES.CREATE_MIRROR(
    mirror_name         => 'MR_ONEFC_PROD_ANA_DB',
    postgres_instance   => 'sg_pg_ana_combined_v2',
    postgres_database   => lower('ONEFC-PROD-ANA-DB'),
    target_database     => 'PG_MR_ONEFC_PROD_ANA_DB',
    postgres_tables     => [
'public.analytics_v2_eventrecord',
'public.analytics_v2_hangtransaction',
'public.analytics_v2_marketingoptin',
'public.analytics_v2_ticketredemptionattempt',
'public.analytics_v2_toss',
'public.analytics_v2_userrecord',
'public.hang_summary'
                            ],
    postgres_schemas    => NULL,
    refresh_interval    => '4 minutes'
);
