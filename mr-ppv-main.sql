CALL SNOWFLAKE.POSTGRES.CREATE_MIRROR(
    mirror_name         => 'MR_PPV_PROD_MAIN_DB',
    postgres_instance   => 'sg_pg_ana_combined_v2',
    postgres_database   => lower('PPV-PROD-MAIN-DB'),
    target_database     => 'PG_MR_PPV_PROD_MAIN_DB',
    postgres_tables     => [
'public.pg_advertiseditem',
'public.pg_gift',
'public.pg_inventoryitem',
'public.pg_merchstore',
'public.pg_order',
'public.pg_promotion',
'public.pg_taxtable',
'public.pg_userbillinginfo',
'public.pg_usersubscription',
'public.tickets_paidevent',
'public.tickets_paidevent_related_paid_events',
'public.tickets_redeemedticket',
'public.tickets_redemptionattempt',
'public.tickets_ticket',
'public.video_video'
                            ],
    postgres_schemas    => NULL,
    refresh_interval    => '6 minutes'
);
