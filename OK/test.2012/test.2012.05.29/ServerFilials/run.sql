spool c:\err.txt

@@OKTbls_0.sql
commit;

@@ok_upd20111220.sql
commit;

@@ok_upd20110525.sql
commit;

@@ok_upd20110822.sql
commit;

@@ok_upd20111006.sql
commit;

@@ok_upd20111101.sql
commit;

prompt # ok_upd20120417
@@ok_upd20120417.sql

prompt # ok_upd20120528.sql
@@ok_upd20120528.sql

prompt # TR_OK_PERSONAL_HIST.trg
@@TR_OK_PERSONAL_HIST.trg

@@crTROKPERS.sql

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



spool off;