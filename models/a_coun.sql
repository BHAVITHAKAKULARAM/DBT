{{
    config(
        materialized='incremental',unique_key='agent_code'
    )
}}
select * from {{ ref('agent_snapshot') }}