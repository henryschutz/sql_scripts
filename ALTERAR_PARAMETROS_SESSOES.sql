declare

begin
for c in (select sid, serial# from v$session where username like 'PERG%' OR username like 'BIB%' OR username like 'IDUFF%' )
loop
 DBMS_SYSTEM.SET_INT_PARAM_IN_SESSION (c.sid,c.serial#,'session_cached_cursors',50);
end loop;
end;
/
