spool c:\okinst.txt;

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


prompt # ok_alt.sql
@@ok_alt.sql
show err;

prompt # ok_alt2.sql
@@ok_alt2.sql
show err;


prompt # ok_nci.sql
@@ok_nci.sql
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

prompt # OKtbls13.sql
@@OKtbls13.sql
show err;

prompt # OKTbls13_ref.sql
@@OKTbls13_ref.sql

prompt # OKTbls14_ref.sql
@@OKTbls14_ref.sql


prompt # iias_ok.sql
@@iias_ok.sql

prompt # OK_PERS.sql
@@OK_PERS.sql

prompt # OK_PERS2.sql
@@OK_PERS2.sql

prompt # ok_serv.sql;
@@ok_serv.sql;
show err;



commit;

spool off;

