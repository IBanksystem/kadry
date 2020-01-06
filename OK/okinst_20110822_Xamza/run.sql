spool c:\err.txt
set line 1000

prompt # iias_ok.sql
@@iias_ok.sql

prompt # OKTbls13.sql
@@OKTbls13.sql

prompt # upd_20110525.sql
@@upd_20110525.sql

prompt # TR_OK_TABEL.sql
@@TR_OK_TABEL.sql

alter table OK_FREEDAYS add ins_date date;


alter package ok_service compile body;
sho err;


spool off;