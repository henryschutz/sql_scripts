--SET SERVEROUTPUT ON;

declare

sql_text varchar2(254);



begin


sql_text:='delete IDUFF_PRODUCAO.PUB_TOKENS where updated_at<= sysdate-2';


execute immediate sql_text;

COMMIT;

DBMS_OUTPUT.put_line('Deleção concluí­da.');

exception

      WHEN others THEN
                      
                      dbms_output.put_line('Erro: '||SQLERRM);
                      ROLLBACK;
                      
end;