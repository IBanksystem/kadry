spool c:\okinst12.txt;

prompt # updverok.sql
@@updverok.sql


prompt # ssOKtabl.sql
@@ssOKtabl.sql
show err;

prompt # OKTables.sql
@@OKTables.sql
show err;

prompt # OK_Pers.sql
@@OK_Pers.sql
show err;


prompt # reg_bpl.sql
@@reg_bpl.sql
show err;

prompt # ok_alt.sql
@@ok_alt.sql
show err;

prompt # ok_alt2.sql
@@ok_alt2.sql
show err;


prompt # ok_nci.sql
@@ok_nci.sql
show err;

prompt # okncins.sql
@@okncins.sql
show err;

prompt # spr_off.sql
@@spr_off.sql

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

prompt # OK_PERS.sql
@@OK_PERS.sql
show err;

prompt # OKtbls8.sql
@@OKtbls8.sql
show err;

prompt # OKtbls9.sql
@@OKtbls9.sql
show err;

prompt # OKtbls10.sql
@@OKtbls10.sql
show err;

prompt # OKtbls11.sql
@@OKtbls11.sql
show err;

prompt # OKtbls12.sql
@@OKtbls12.sql
show err;




prompt # ss_ok_hospital.sql
@@ss_ok_hospital.sql

prompt # ss_ok_leave.sql
@@ss_ok_leave.sql

prompt # ss_ok_type_period.sql
@@ss_ok_type_period.sql


prompt #
@@ok_serv.sql;
show err;



commit;

spool off;

