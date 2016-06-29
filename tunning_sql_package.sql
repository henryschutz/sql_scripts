--set serveroutput on

declare

  l_sql_tune_task_id  varchar2(100);

begin

  l_sql_tune_task_id := dbms_sqltune.create_tuning_task (

                          sql_id      => '19x310rdfbyq7',

                          scope       => dbms_sqltune.scope_comprehensive,

                          time_limit  => 60,

                          task_name   => 'henry_sql_tuning',

                          description => 'teste tuning on sql:19x310rdfbyq7.');

  dbms_output.put_line('l_sql_tune_task_id: ' || l_sql_tune_task_id);

end;
