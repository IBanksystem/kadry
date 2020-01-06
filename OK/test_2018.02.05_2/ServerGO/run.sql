spool c:\ok_err.txt

@@ok_photo_b64.sql

@@upd_20160209go.sql
@@upd_20160725.sql
@@upd_20160826.sql
@@upd_20170127.sql
@@upd_20170427.sql

@@updverok.sql

@@TR_OK_PERIOD_HIST.sql
@@TR_OK_RELATION_HIST.sql
@@TR_OK_EDUCATION_HIST.sql

prompt # V_TRANS_OK.sql
@@V_TRANS_OK.sql

@@ok_actiongo.sql
@@action_ok_go.sql

@@stag_days_bank.sql

SELECT 'OK_SERVICE',VERSION.GET_MODULE_VERSION('OK_SERVICE', 'PACKAGE',USER) FROM DUAL;
SELECT 'OK_SERVICE2',VERSION.GET_MODULE_VERSION('OK_SERVICE2', 'PACKAGE',USER) FROM DUAL;

update ok_personal set tabel_line=1 where post_code=1 and  tabel_line is null and status_code=2 and branch in ('00395','01138');
update ok_personal set tabel_line=99 where tabel_line is null and status_code=2 and branch in ('00395','01138');
update ok_personal set tabel_line=999999 where tabel_line is null and status_code=5 and branch in ('00395','01138');
commit;

prompt # upd_20180123.sql
@@upd_20180123.sql

prompt # upd_20180124.sql
@@upd_20180124.sql

@@ok_service.sql
sho err

prompt # ok_service2.sql
@@ok_service2.sql
sho err

prompt # TR_OK_PERSONAL_HIST.sql
@@TR_OK_PERSONAL_HIST.sql

prompt # TR_OK_PHOTO_B64_HIST.sql
@@TR_OK_PHOTO_B64_HIST.sql


spool off;
