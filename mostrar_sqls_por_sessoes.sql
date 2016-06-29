SELECT sa.sql_id,
       s.USERNAME,
       sa.sql_text                      txt,
       ''''||sid||', '||s.serial#||'''' sid_serial,
       pid,
       process                          client_pid,
       p.spid                           spid,
       blocking_session,
       BLOCKING_SESSION_STATUS,
       S.seconds_in_wait,
       s.program
  FROM V$PROCESS p,
       V$SESSION s,
       V$SQLAREA sa
 WHERE p.addr=s.paddr
   AND s.username IS NOT NULL
   AND s.sql_address=sa.address(+)
   AND s.sql_hash_value=sa.hash_value(+)
   AND s.status = 'ACTIVE'
   AND sa.sql_text like'call spwper%'
 ORDER BY sid;