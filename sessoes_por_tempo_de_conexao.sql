select username,sid,serial#,status,to_char(logon_time,'dd/mm/yyyy hh24:mi:ss') as logontime 
from v$session 
where 
--STATUS='INACTIVE'and
username is not null and
(sysdate-logon_time)*24>24
--select * from v$session where STATUS='INACTIVE' --and username is not null