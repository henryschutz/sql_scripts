declare

begin

for c in (select sid, serial# from v$session where username = 'PERGAMUM_WEB_INT') loop
 
 DBMS_SYSTEM.SET_INT_PARAM_IN_SESSION(c.sid,c.serial#,'session_cached_cursors', 40);
 --DBMS_OUTPUT.PUT_LINE(c.sid || '-' ||c.serial#);
end loop;

end;