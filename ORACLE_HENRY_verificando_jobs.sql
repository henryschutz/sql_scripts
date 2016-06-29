--drop user teste_uffbi_staging cascade;
--create user teste_uffbi_staging default tablespace datawarehouse identified by oracle;
--select * from SYS.DBA_SCHEDULER_CHAINS;
--spool /home/Henry/teste_output_sqldeveloper.txt
--select * from SYS.DBA_SCHEDULER_JOBS where job_name like 'SCH%' OR JOB_NAME LIKE 'CAD%' or JOB_NAME like 'RUN%' OR JOB_NAME like 'IMP%' OR JOB_NAME like 'ID%';
--SELECT * FROM dba_RECYCLEBIN;



--SELECT * FROM SYS.DBA_SCHEDULER_JOB_RUN_DETAILS WHERE OWNER IN ('SYSTEM');
--SELECT * FROM SYS.DBA_SCHEDULER_SCHEDULES;
--SELECT * FROM SYS.DBA_SCHEDULER_JOB_LOG WHERE OWNER IN ('SYSTEM') AND (job_name like 'SCH%' OR JOB_NAME LIKE 'CAD%');
--select * from dba_SCHEDULER_RUNNING_CHAINS;
--select * from SYS.DBA_SCHEDULER_JOB_RUN_DETAILS where job_name like 'SCH%' OR JOB_NAME LIKE 'CAD%' or JOB_NAME like 'RUN%';
--select * from dba_jobs;
--select * from SYS.DBA_JOBS_RUNNING;
--SELECT * FROM SYS.DBA_DATAPUMP_JOBS;
--drop table "scheduled_IDUFF_PROD";
--DROP TABLE "IMPORT_SCHED_UFFBI2";
--select * from v$session;