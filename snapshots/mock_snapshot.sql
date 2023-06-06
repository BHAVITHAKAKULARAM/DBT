{% snapshot snapshot_name %}
    {{
        config(
            target_database='DBT',
            target_schema='snapshots',
            unique_key='order_id',
            strategy='timestamp',
            updated_at='updated_at',
        )
    }}

    select * from {{ ref('mock_orders') }}
 {% endsnapshot %}