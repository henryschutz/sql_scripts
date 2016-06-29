--show parameter tracefile_identifier;
--show parameter max_dump_file_size;
--show parameter events;
 --alter session set tracefile_identifier='hr_';
--alter session set events '10046 trace name context forever, level 12';
--ALTER SESSION SET sql_trace=FALSE;
--show parameter USER_DUMP_DEST;
 --show parameter sql_trace;
 
 
--SELECT VALUE FROM V$DIAG_INFO WHERE NAME = 'Default Trace File';
 --select * from DBA_ENABLED_TRACEs
 
 --select * from IDUFF_DESENV.V_AULA_RAD_EMEC;