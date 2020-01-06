alter trigger TR_DOSTUP_SS_OK_LEVEL_DEP disable;
insert into ss_ok_level_department select 5,'Город' from dual;
commit;
alter trigger TR_DOSTUP_SS_OK_LEVEL_DEP enable;
