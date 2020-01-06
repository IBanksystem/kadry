spool c:\errGO.txt

prompt # ok_upd20130911.sql
@@ok_upd20130911.sql

prompt # ok_upd20131002.sql
@@ok_upd20131002.sql

prompt # ok_upd20131126.sql
@@ok_upd20131126.sql

prompt # ss_ok_stat_over.sql
@@ss_ok_stat_over.sql

prompt # ss_ok_addinform.sql
@@ss_ok_addinform.sql

prompt # updverok.sql
@@updverok.sql
commit;



SELECT 'OK_SERVICE',VERSION.GET_MODULE_VERSION('OK_SERVICE', 'PACKAGE',USER) FROM DUAL;
SELECT 'OK_SERVICE2',VERSION.GET_MODULE_VERSION('OK_SERVICE2', 'PACKAGE',USER) FROM DUAL;

select PACKAGE_NAME,CLASS_NAME,VERSION,SHORT_DESC,NAME from Apps where Package_Name like 'OK%';



spool off;