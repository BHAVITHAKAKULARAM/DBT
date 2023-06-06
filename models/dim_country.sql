{{ config(materialized='table') }} 

 

select s.agent_code as id,s.phone_no as phone,t.flag=1  from  bhavitha.agents s left join (select agent_code,phone_no from dim_country) t on s.agent_code=t.agent_code 

where t.agent_code is null  

union  

select t.agent_code,s.phone_no,t.flag=1 from agents s   join (select agent_code,phone_no from dim_country) t  on s.agent_code=t.agent_code 

where s.phone_no<>t.phone_no 

union 

select t.agent_code,s.phone_no,t.flag=0 from bhavitha.agents s   join (select agent_code,phone_no from dim_country) t  on s.agent_code=t.agent_code 

where s.phone_no<>t.phone_no 

union 

select t.agent_code,t.phone_no, t.flag from bhavitha.agents s join dim_country t on s.agent_code=t.agent_code 

where s.agent_code=t.agent_code and s.phone_no=t.phone_no and t.flag=1 

 