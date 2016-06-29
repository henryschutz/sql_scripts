--marca a sessão para ser eliminada.
--SELECT 'alter system kill session ' || '''' ||sid||','||serial#||''''||';' FROM V$SESSION where STATUS='INACTIVE' --and username ='BIBINTERNET'
--and username is not null and (sysdate-logon_time)/24>0.2;

--SELECT sid,serial#,username,sysdate-logon_time as dias_conectados,((sysdate-logon_time)*24) as logontime FROM V$SESSION 
--where STATUS='INACTIVE' --and username ='BIBINTERNET' and username is not null and (sysdate-logon_time)*24>1

--Derruba a sessão do usuário e faz rollback
--SELECT 'alter system disconnect session ' || '''' ||sid||','||serial#||''''||' IMMEDIATE;' FROM V$SESSION where STATUS='KILLED' --and username ='BIBINTERNET'
--and username is not null and (sysdate-logon_time)/24>0.2

--SET LINESIZE 30000;

--SELECT STATUS,WAIT_CLASS,STATE FROM V$SESSION;
 SELECT * FROM v$sqlarea;