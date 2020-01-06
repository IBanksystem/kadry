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

alter table OK_EDUCATION modify NOSTRA_SERIES VARCHAR2(3);

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

prompt # ok_upd20130911.sql
@@ok_upd20130911.sql

prompt # ok_upd20131002.sql
@@ok_upd20131002.sql

prompt # ok_upd20131126.sql
@@ok_upd20131126.sql

spool off;