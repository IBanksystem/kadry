spool c:\ok_err.txt

@@upd_20160209go.sql

@@upd_20160725.sql

@@updverok.sql

@@TR_OK_PERIOD_HIST.sql
@@TR_OK_RELATION_HIST.sql

prompt # V_TRANS_OK.sql
@@V_TRANS_OK.sql


@@stag_days_bank.sql

@@ok_service.sql
sho err

SELECT 'OK_SERVICE',VERSION.GET_MODULE_VERSION('OK_SERVICE', 'PACKAGE',USER) FROM DUAL;
SELECT 'OK_SERVICE2',VERSION.GET_MODULE_VERSION('OK_SERVICE2', 'PACKAGE',USER) FROM DUAL;



spool off;
