spool c:\okinst_f.txt;

prompt # OKtbls3.sql
@@OKtbls3.sql
show err;

prompt # OKtbls4.sql
@@OKtbls4.sql
show err;

prompt # OKtbls5.sql
@@OKtbls5.sql
show err;

prompt # OKtbls6.sql
@@OKtbls6.sql
show err;

prompt # OKtbls7.sql
@@OKtbls7.sql
show err;

prompt # OKtbls8.sql
@@OKtbls8.sql
show err;

prompt # OKtbls9.sql
@@OKtbls9.sql
show err;


commit;

spool off;