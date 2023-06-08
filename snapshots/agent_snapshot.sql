{% snapshot agent_snapshot %}
    {{
        config(
            target_schema='snapshots',
            unique_key='agent_code',
            strategy='check',
            check_cols='all',
        )
    }}

    select * from dim_agents
 {% endsnapshot %}
