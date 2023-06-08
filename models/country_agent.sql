{{
    config(
        materialized='incremental'
    )
}}
select * from {{ ref('country_snapshot') }}