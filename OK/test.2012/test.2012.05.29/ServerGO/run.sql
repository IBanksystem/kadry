spool c:\err.txt

prompt # OKTbls_0.sql
@@OKTbls_0.sql
commit;

prompt # ok_upd20111220.sql
@@ok_upd20111220.sql
commit;

prompt # crSsOKhist
@@crSsOKhist.sql

prompt # ok_upd20110525
@@ok_upd20110525.sql
commit;

prompt # ok_upd20110822
@@ok_upd20110822.sql
commit;

prompt # ok_upd20111006
@@ok_upd20111006.sql
commit;

prompt # ok_upd20111101
@@ok_upd20111101.sql
commit;

prompt # ok_upd20111115
@@ok_upd20111115.sql
commit;

@@ok_upd20120124.sql
commit;

@@ok_upd20120126.sql
commit;

@@ok_upd20120208.sql
commit;

@@ok_upd20120220.sql
commit;

@@ok_upd20120309.sql
commit;

prompt # ok_upd20120417
@@ok_upd20120417.sql

prompt # ok_upd20120418
@@ok_upd20120418.sql

prompt # ok_upd20120419
@@ok_upd20120419.sql

prompt # ok_upd20120528.sql
@@ok_upd20120528.sql


prompt # TR_OK_PERSONAL_HIST.trg
@@TR_OK_PERSONAL_HIST.trg

@@crTRokhist.sql

prompt # @@crTRokpd.sql
@@crTRokpd.sql

prompt # @@TR_OK_RELATION_HIST_DEL.trg
@@TR_OK_RELATION_HIST_DEL.trg

prompt # @@TR_OK_PERIOD_HIST_DEL.trg
@@TR_OK_PERIOD_HIST_DEL.trg

prompt # @@TR_OK_EDUCATION_HIST_DEL.trg
@@TR_OK_EDUCATION_HIST_DEL.trg

prompt # @@TR_OK_AWARD_HIST_DEL.trg
@@TR_OK_AWARD_HIST_DEL.trg

prompt # @@TR_OK_ELECTION_HIST_DEL.trg
@@TR_OK_ELECTION_HIST_DEL.trg

prompt # @@TR_OK_VOYAGE_HIST_DEL.trg
@@TR_OK_VOYAGE_HIST_DEL.trg

prompt # @@TR_OK_LANGUAGE_HIST_DEL.trg
@@TR_OK_LANGUAGE_HIST_DEL.trg

prompt # @@TR_OK_RISE_HIST_DEL.trg
@@TR_OK_RISE_HIST_DEL.trg

@@updverok.sql
commit;

prompt # OK_service.pck
@@OK_service.pck
sho err

SELECT 'OK_SERVICE',VERSION.GET_MODULE_VERSION('OK_SERVICE', 'PACKAGE',USER) FROM DUAL;

prompt # ok_service2.pck
@@ok_service2.pck
sho err
create public synonym ok_service2 for ok_service2;

SELECT 'OK_SERVICE2',VERSION.GET_MODULE_VERSION('OK_SERVICE2', 'PACKAGE',USER) FROM DUAL;




spool off;