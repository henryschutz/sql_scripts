--session cached cursors, by session
select count(*),a.value, s.username
from v$sesstat a, v$statname b, v$session s
where a.statistic# = b.statistic#  and s.sid=a.sid and b.name = 'session cursor cache count' 
group by a.value,s.username
order by 3 desc;