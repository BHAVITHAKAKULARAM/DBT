{{
    config(
        materialized='table'
    )
}}
select a.agent_code,a.agent_name,a.phone_no from bhavitha.agents a left join bhavitha.dim_agents b on a.agent_code =b.agent_code 

where b.agent_code is null 

union 

select a.agent_code,a.agent_name,a.phone_no from bhavitha.agents a left join bhavitha.dim_agents b on a.agent_code =b.agent_code 


where b.phone_no<>a.phone_no

union 

select a.agent_code,a.agent_name,a.phone_no from bhavitha.agents a left join bhavitha.dim_agents b on a.agent_code =b.agent_code 

 where b.phone_no=a.phone_no 