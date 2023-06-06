{% snapshot country_snapshot %}

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='agent_code',
          check_cols=['country', 'London'],
        )
    }}

    select * from {{ ref('dim_agents') }}

{% endsnapshot %}