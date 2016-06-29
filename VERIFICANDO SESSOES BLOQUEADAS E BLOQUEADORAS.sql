--select * from V$SESSION_WAIT;

/*
select
   sys_context('USERENV','SID')
from dual;

*/

select sid,
  serial#,
   status,
   username,
   osuser,
   program,
   blocking_session blocking,
   event
    from v$session
   where (blocking_session is not null)-- /*AND USERNAME LIKE '%PERGAM%'*/) OR (blocking_session is not null);
