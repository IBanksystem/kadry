spool c:\okinst12.txt;


prompt # OKtbls2.sql
@@OKtbls2.sql
show err;
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


prompt # OK_PERS.sql
@@OK_PERS.sql
show err;

prompt # OKtbls8.sql
@@OKtbls8.sql
show err;


prompt # ok_serv.sql;
@@ok_serv.sql;
show err;

prompt # ss_ok_hospital.sql
@@ss_ok_hospital.sql

prompt # ss_ok_leave.sql
@@ss_ok_leave.sql

prompt # ss_ok_type_period.sql
@@ss_ok_type_period.sql

prompt # updverok.sql
@@updverok.sql

commit;

spool off;