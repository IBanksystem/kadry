spool c:\errEDB.txt

drop table bank9004.ss_ok_gosubmit;
drop table bank9006.ss_ok_gosubmit;

prompt # ok_upd20111006.sql
@@ok_upd20111006.sql

prompt # ok_upd20111101.sql
@@ok_upd20111101.sql

prompt # ok_upd20111220.sql
@@ok_upd20111220.sql

prompt # ok_upd20120124.sql
@@ok_upd20120124.sql

prompt # ok_upd20120417.sql
@@ok_upd20120417.sql

prompt # ok_upd20120528.sql
@@ok_upd20120528.sql

prompt # ok_upd20120827.sql
@@ok_upd20120827.sql

prompt # ok_upd20121004.sql
@@ok_upd20121004.sql

prompt # updverokEDB.sql
@@updverokEDB.sql
commit;

prompt # reg_bpl_stat.sql
@@reg_bpl_stat.sql
commit;

spool off;