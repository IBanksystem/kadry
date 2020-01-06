
prompt Created on 19 Август 2011 г. by user
alter table SS_OK_STATUS modify STATUS_CODE NUMBER(2);
set feedback off
set define off
prompt Deleting SS_OK_STATUS...
delete from SS_OK_STATUS;
commit;
prompt Loading SS_OK_STATUS...
insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (1, 'Новый');
insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (2, 'Принят');
insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (3, 'Не принят');
insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (4, 'Уволен');
insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (5, 'Декретный отпуск');

insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (6, 'Разрешено Уволить');

insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (14, 'Отклонено ГО');

insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (22, 'Подтвержден ГО');

insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (29, 'Отправлен в ГО');

commit;
set feedback on
set define on
prompt Done.
