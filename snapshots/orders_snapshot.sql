{% snapshot orders_snapshot %}

{{
    config(
      target_database='DBT',
      target_schema='snapshots',
      unique_key='order_id',

      strategy='timestamp',
      updated_at='updated_at','created_at'
    )
}}

select * from {{ ref('mock_orders') }}

{% endsnapshot %}