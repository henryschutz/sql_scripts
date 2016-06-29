SELECT adfind.TASK_ID,adtask.TASK_ID,adfind.OWNER,adfind.TYPE,adtask.CREATED,TO_char(adtask.EXECUTION_START,'dd/mm/yyyy hh24:mi:ss') as exec_start,TO_char(adtask.EXECUTION_end,'dd/mm/yyyy hh24:mi:ss') as exec_end,
  adfind.IMPACT,adfind.MESSAGE
  
  from dba_advisor_findings adfind 

  left join (select adtask.owner,adtask.TASK_ID,adtask.CREATED,adtask.EXECUTION_START,adtask.EXECUTION_END,adtask.ADVISOR_ID from dba_advisor_tasks adtask) adtask
  
  on (adtask.TASK_ID=adfind.TASK_ID)
  
  
  where 
  type like 'PROB%' --and
  --message like '%SGA%'
  
  order by exec_start