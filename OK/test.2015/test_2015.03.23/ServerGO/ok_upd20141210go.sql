alter trigger TR_DOSTUP_SS_OK_STATUS disable;

insert into ss_ok_status values (8,'Временный отпуск');
commit;

alter trigger TR_DOSTUP_SS_OK_STATUS enable;

