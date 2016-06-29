--BEGIN
--    
--DBMS_SCHEDULER.STOP_JOB(job_name=> 'CADEIA_PUMP',force=>TRUE );
-- 
-- 
-- END;
--
--BEGIN
--    
--DBMS_DATAPUMP.STOP_JOB(job_name=> 'IMPORT_SCHED_UFFBI',force=>TRUE );
-- 
-- 
-- END;

--BEGIN
----    
--DBMS_SCHEDULER.DROP_CHAIN_RULE( chain_name=> 'PUMPEXPORT',RULE_NAME => 'SCHED_RULE$3',force=>TRUE );
-- 
-- 
--END;


--BEGIN
--DBMS_SCHEDULER.DEFINE_CHAIN_RULE(chain_name => 'PUMPEXPORT', condition => '"UM"  SUCCEEDED', action => 'START "DOIS"', rule_name =>'step2');
--
--END;

--
--BEGIN
--DBMS_SCHEDULER.DROP_CHAIN_RULE (   chain_name   =>   'PUMPEXPORT',   rule_name    =>   'STEP2',   force        =>   TRUE);
--END;

