spool c:\okinst_20110106.txt;

prompt # updverok.sql
@@updverok.sql

prompt # iias_ok.sql
@@iias_ok.sql

alter package ok_service compile body;
show err;



commit;

spool off;

