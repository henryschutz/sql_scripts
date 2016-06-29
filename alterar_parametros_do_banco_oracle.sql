--SHOW parameter sessions;
--SHOW parameter open_cursors;
--SHOW parameter session_cached_cursors;
--SHOW parameter sga_max_size;
--SHOW parameter pga_aggregate_target;
--show parameter sga_target;

--alter system set open_cursors=500 scope=spfile;
--alter system set session_cached_cursors=100 scope=spfile;
--alter system set sga_target=4G scope=memory;
