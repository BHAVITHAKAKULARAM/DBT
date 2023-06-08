{{ config(materialized='table') }} 

 

select s.agent_code,s.phone_no,1 as flag  from  bhavitha.agents s left join dim_country t on s.agent_code=t.agent_code 

where t.agent_code is null  

union  

select t.agent_code,s.phone_no,1 as flag from agents s   join dim_country t  on s.agent_code=t.agent_code 

where s.phone_no<>t.phone_no 

union 

select t.agent_code,t.phone_no,0 as flag from bhavitha.agents s   join dim_country t  on s.agent_code=t.agent_code 

where s.phone_no<>t.phone_no 

union 

select t.agent_code,t.phone_no, flag from bhavitha.agents s join dim_country t on s.agent_code=t.agent_code 

where s.phone_no=t.phone_no 

 