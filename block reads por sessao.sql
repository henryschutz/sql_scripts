select  nvl(ses.USERNAME,'ORACLE PROC') username,
  OSUSER os_user,
  PROCESS pid,
  ses.SID sid,
  SERIAL#,
  PHYSICAL_READS,
  BLOCK_GETS,
  CONSISTENT_GETS,round((CONSISTENT_GETS * 8192/1024/1024),2) as Gets_Mb  ,
  BLOCK_CHANGES,
  CONSISTENT_CHANGES
from  v$session ses, 
  v$sess_io sio
where   ses.SID = sio.SID

order   by ses.USERNAME,PHYSICAL_READS
