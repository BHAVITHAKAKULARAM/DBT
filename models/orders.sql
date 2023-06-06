{{
    config(
        materialized='table'
    )
}}
select * from {{ ref('snapshot_name') }}