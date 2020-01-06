spool c:\errGO.txt

prompt # ok_upd20131002.sql
@@ok_upd20131002.sql

prompt # updverok.sql
@@updverok.sql
commit;

prompt # updverok_okref.sql
@@updverok_okref.sql

alter package ok_service compile body;
sho err;

SELECT 'OK_SERVICE',VERSION.GET_MODULE_VERSION('OK_SERVICE', 'PACKAGE',USER) FROM DUAL;
SELECT 'OK_SERVICE2',VERSION.GET_MODULE_VERSION('OK_SERVICE2', 'PACKAGE',USER) FROM DUAL;

spool off;