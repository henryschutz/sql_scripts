--show parameter session_cached_cursors;
--show parameter pga_aggregate_target;
--show parameter sga_target;
--show parameter sga_max_size;

--alter system set sga_target=4500M scope=spfile;
--alter system set sga_max_size=5G scope=spfile;
--alter system set pga_aggregate_target=1500M scope=spfile;