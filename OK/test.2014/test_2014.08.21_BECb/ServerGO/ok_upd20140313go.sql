alter trigger TR_DOSTUP_SS_OK_STATUS disable;

insert into ss_ok_status values (7,'Пенсионер');
commit;

alter trigger TR_DOSTUP_SS_OK_STATUS enable;

alter trigger TR_DOSTUP_SS_OK_category disable;

insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)  values (0,'0',1.000 ,0 ,'A');
commit;

alter trigger TR_DOSTUP_SS_OK_category enable;

