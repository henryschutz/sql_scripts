 select MUTEX_IDENTIFIER, MUTEX_TYPE, max(gets), max(sleeps), mutex_value

from v$mutex_sleep_history

where mutex_type='Cursor Pin'

group by MUTEX_IDENTIFIER, MUTEX_TYPE, mutex_value

order by 3, 4