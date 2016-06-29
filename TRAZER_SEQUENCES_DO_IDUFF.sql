select 
replace(replace(OBJECT_NAME,'_SEQ',''),'SEQ_','') as tabela,
(select dbao.object_name.currval from dual)
,OBJECT_NAME 
from dba_objects dbo where object_type='SEQUENCE' AND OWNER='IDUFF_PRODUCAO' AND STATUS='VALID';