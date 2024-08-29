{{
    config(
        materialized='incremental',unique_key='agent_code'
    )
}}
select * from {{ ref('country_snapshot') }}