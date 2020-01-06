spool c:\ok_.txt
alter trigger TR_DOSTUP_SS_OK_DEPARTMENT disable;
update ss_ok_department set high_dep_code=null where department_code=high_dep_code and high_dep_code is not null;
commit;
alter trigger TR_DOSTUP_SS_OK_DEPARTMENT enable;

spool off;
