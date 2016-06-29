--set linesize 5000;
--set pagesize 5000;
--select 'GRANT SELECT ON ' || OWNER ||'.'|| OBJECT_NAME || ' TO RO_SIORG_CONSULTA;' from DBA_OBJECTS where owner in ('SIORG') AND OBJECT_TYPE IN ('TABLE','VIEW');

--show parameter sga_target;
--show parameter sga_max_size;
--alter system set sga_max_size=3G scope=spfile;


--alter system set sga_target=2G scope=memory;

--
--alter PROFILE IDUFF_PRODUCAO LIMIT 
--   SESSIONS_PER_USER          2
--   CPU_PER_SESSION            UNLIMITED 
--   CPU_PER_CALL               UNLIMITED 
--   CONNECT_TIME               DEFAULT 
--   LOGICAL_READS_PER_SESSION  DEFAULT
--   LOGICAL_READS_PER_CALL     DEFAULT 
--   PRIVATE_SGA                DEFAULT; 
--alter system set resource_limit=true;
--grant resource, connect to IDUFF_DESENV;

--exec dbms_resource_manager_privs.grant_switch_consumer_group('IDUFF_PRODUCAO', 'IDUFF_PRODUCAO',FALSE); 