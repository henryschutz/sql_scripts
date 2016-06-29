--SET SERVEROUTPUT ON;

declare

sql_text varchar2(254);



begin


sql_text:='delete  iduff_producao.pub_identificador where IDENTIFICACAO_IDIDENTIFICACAO=100000140190';


execute immediate sql_text;

COMMIT;

DBMS_OUTPUT.put_line('Deleção concluí­da.');

exception

      WHEN others THEN
                      
                      dbms_output.put_line('Erro: '||SQLERRM);
                      ROLLBACK;
                      
end;