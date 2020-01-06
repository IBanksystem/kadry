spool c:\err.txt
set line 1000

prompt # upd_20110525.sql
@@upd_20110525.sql

prompt # TR_OK_TABEL.sql
@@TR_OK_TABEL.sql

alter package ok_service compile body;
sho err;

spool off;