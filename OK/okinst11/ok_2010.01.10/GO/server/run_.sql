spool c:\okinst.txt;

prompt # OKtbls11.sql
@@OKtbls11.sql
show err;

prompt # updverok.sql
@@updverok.sql

@@ok_service.sql
show err;

commit;

spool off;