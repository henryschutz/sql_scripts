select sid, event, p1, p2, p3 from v$session_wait 
where event not in ('SQL*Net message from client', 'rdbms ipc message', 'pipe get', 'PL/SQL lock timer', 'pmon timer')