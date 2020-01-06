spool c:\errGO.txt

@@ss_ok_dep_koef.sql
@@ok_upd20120126.sql

prompt # ok_upd20140729.sql
@@ok_upd20140729.sql


prompt # updverok.sql
@@updverok.sql


SELECT 'OK_SERVICE',VERSION.GET_MODULE_VERSION('OK_SERVICE', 'PACKAGE',USER) FROM DUAL;
SELECT 'OK_SERVICE2',VERSION.GET_MODULE_VERSION('OK_SERVICE2', 'PACKAGE',USER) FROM DUAL;

spool off;