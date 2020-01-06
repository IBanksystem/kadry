spool c:\err.txt
set line 1000

prompt # upd_20110822.sql
@@upd_20110822.sql

prompt # updverok.sql
@@updverok.sql

prompt # ss_OK_gosubmit.sql
@@ss_OK_gosubmit.sql

prompt # ss_OK_status.sql
@@ss_OK_status.sql

prompt # OK_service.pck
@@OK_service.pck
sho err

SELECT 'OK_SERVICE',VERSION.GET_MODULE_VERSION('OK_SERVICE', 'PACKAGE',USER) FROM DUAL;

spool off;