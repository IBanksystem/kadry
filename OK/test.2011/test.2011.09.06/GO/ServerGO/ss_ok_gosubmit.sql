prompt Created on 19 Август 2011 г. by user
set feedback off
set define off
prompt Deleting SS_OK_GOSUBMIT...
delete from SS_OK_GOSUBMIT;
commit;
prompt Loading SS_OK_GOSUBMIT...
insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (6, 'Разрешено Уволить');
insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (14, 'Отклонён ГО');
insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (22, 'Подтверждён ГО');

insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (29, 'Отправлен в ГО');
insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (33, 'Утверждён ГО');

commit;
set feedback on
set define on
prompt Done.
