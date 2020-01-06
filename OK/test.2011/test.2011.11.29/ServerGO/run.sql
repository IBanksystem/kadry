spool c:\err.txt

@@ok_upd20110525.sql
commit;

@@ok_upd20110822.sql
commit;

@@ok_upd20111006.sql
commit;

@@ok_upd20111101.sql
commit;

prompt # OK_service.pck
@@OK_service.pck
sho err

SELECT 'OK_SERVICE',VERSION.GET_MODULE_VERSION('OK_SERVICE', 'PACKAGE',USER) FROM DUAL;

spool off;