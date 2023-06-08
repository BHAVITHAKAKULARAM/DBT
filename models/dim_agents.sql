{{
    config(
        materialized='table'
    )
}}
select a.agent_code,a.agent_name,a.phone_no from bhavitha.agents a left join bhavitha.dim_agents b on a.agent_code =b.agent_code 

where b.agent_code is null 
union
select b.agent_code,b.agent_name,a.phone_no from bhavitha.agents a  join bhavitha.dim_agents b on a.agent_code =b.agent_code 

 where b.phone_no<>a.phone_no 


union

select b.agent_code,b.agent_name,b.phone_no from bhavitha.agents a  join bhavitha.dim_agents b on a.agent_code =b.agent_code 

 where b.phone_no=a.phone_no 


