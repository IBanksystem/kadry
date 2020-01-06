spool c:\erok.txt

prompt # ss_ok_pers_query
@@ss_ok_pers_query.sql

prompt # ss_ok_pers_col_dflt
@@ss_ok_pers_col_dflt.sql

prompt # ok_nsi.sql
@@ok_nsi.sql

prompt # updverokorder.sql
@@updverokorder.sql

select * from apps where (Ltrim(Rtrim(Package_Name))) like 'OK%';
SELECT 'OK_SERVICE',VERSION.GET_MODULE_VERSION('OK_SERVICE', 'PACKAGE',USER) FROM DUAL;
SELECT 'OK_SERVICE2',VERSION.GET_MODULE_VERSION('OK_SERVICE2', 'PACKAGE',USER) FROM DUAL;



spool off;
