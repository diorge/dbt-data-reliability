{{
  config(
    materialized = 'incremental',
    transient=False,
    unique_key = 'model_execution_id',
    on_schema_change = 'append_new_columns',
    full_refresh=var('elementary_full_refresh', false)
  )
}}

{{ elementary.get_dbt_run_results_empty_table_query() }}