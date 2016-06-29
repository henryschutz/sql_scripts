--select plan, group_or_subplan, type, cpu_p1, cpu_p2, cpu_p3, cpu_p4, status
--from dba_rsrc_plan_directives order by 1,2,3,4,5,6; 

--SELECT name, is_top_plan FROM v$rsrc_plan;
select * from V$RSRC_CONSUMER_GROUP;--Verificar o consumo de cpu dos grupos do planejamento em vigor
--select * from V$RSRC_SESSION_INFO

--ALTER SYSTEM SET RESOURCE_MANAGER_PLAN = 'IDUFF_PERGAMUM';

--select grantee, granted_group from DBA_RSRC_CONSUMER_GROUP_PRIVS 
--order by granted_group; 

--SELECT SID,SERIAL#,USERNAME,RESOURCE_CONSUMER_GROUP FROM V$SESSION;
