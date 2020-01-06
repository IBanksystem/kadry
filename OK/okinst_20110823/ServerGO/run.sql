spool c:\err.txt
set line 1000

prompt # upd_20110822.sql
@@upd_20110822.sql

prompt # updverok1026.sql
@@updverok1026.sql

prompt # ss_OK_gosubmit.sql
@@ss_OK_gosubmit.sql

prompt # ss_OK_status.sql
@@ss_OK_status.sql

prompt # OK_service.sql
@@OK_service.sql
sho err

spool off;