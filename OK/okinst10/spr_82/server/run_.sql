spool c:\sprich.txt;

prompt # ok_alt2.sql
@@ok_alt2.sql
show err;

prompt # ok_serv.sql
@@ok_serv.sql
show err;

commit;

spool off;

