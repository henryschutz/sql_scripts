select a.value, b.name 
            from v$mystat a, v$statname b 
           where a.statistic# = b.statistic# 
             and a.statistic#= 3