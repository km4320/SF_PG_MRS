CALL SNOWFLAKE.POSTGRES.CREATE_MIRROR(
    mirror_name         => 'MR_SF_EVENTS',
    postgres_instance   => 'sf_events',
    postgres_database   => lower('SF_EVENTS'), -- ppv-prod-main-db
    target_database     => 'PG_MR_SF_EVENTS_DB',
    postgres_tables     => [
'public.events',
'public.onefc_events',
'public.ppv_events',
'public.sports_events',
'public.sports_teams',
'public.wnba_events',
'public.wnba_teams'    
                            ],
    postgres_schemas    => NULL,
    refresh_interval    => '5 minutes'
);
