spool c:\errGO.txt

prompt # OKTbls13_ref.sql
@@OKTbls13_ref.sql

prompt # ok_upd20111006.sql
@@ok_upd20111006.sql

prompt # ok_upd20111101.sql
@@ok_upd20111101.sql

prompt # ok_upd20111115.sql
@@ok_upd20111115.sql

prompt # ok_upd20111220.sql
@@ok_upd20111220.sql

prompt # ok_upd20120124.sql
@@ok_upd20120124.sql

prompt # ok_upd20120220.sql
@@ok_upd20120220.sql
commit;

prompt # ok_upd20120417.sql
@@ok_upd20120417.sql

prompt # ok_upd20120418.sql
@@ok_upd20120418.sql

prompt # ok_upd20120528.sql
@@ok_upd20120528.sql

prompt # ok_upd20120827.sql
@@ok_upd20120827.sql

prompt # ok_upd20121004.sql
@@ok_upd20121004.sql

prompt # ok_upd20121005.sql
@@ok_upd20121005.sql

prompt # ok_upd20130911.sql
@@ok_upd20130911.sql

prompt # ok_upd20130917.sql
@@ok_upd20130917.sql

prompt # ok_upd20131002.sql
@@ok_upd20131002.sql

prompt # ok_upd20131126.sql
@@ok_upd20131126.sql

prompt # ok_upd20140115.sql
@@ok_upd20140115.sql

@@TR_OK_STAT_HIST.sql

prompt # ss_ok_pers_col_dflt.sql
@@ss_ok_pers_col_dflt.sql


prompt # ss_ok_stat_over.sql
@@ss_ok_stat_over.sql

prompt # ss_ok_addinform.sql
@@ss_ok_addinform.sql

@@stag_days.sql

@@updverok.sql
commit;

@@updverok_okref.sql
commit;

@@ok_service.sql

SELECT 'OK_SERVICE',VERSION.GET_MODULE_VERSION('OK_SERVICE', 'PACKAGE',USER) FROM DUAL;
SELECT 'OK_SERVICE2',VERSION.GET_MODULE_VERSION('OK_SERVICE2', 'PACKAGE',USER) FROM DUAL;

spool off;