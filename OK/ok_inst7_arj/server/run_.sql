spool c:\ok8_inst.txt;

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

prompt # reg_bpl.sql
@@reg_bpl.sql
show err;

prompt # ok_alt.sql
@@ok_alt.sql
show err;

prompt #
@@ok_serv.sql;
show err;

prompt # ok_nci.sql
@@ok_nci.sql
show err;

prompt # okncins.sql
@@okncins.sql
show err;

prompt # spr_off.sql
@@spr_off.sql

commit;

spool off;

