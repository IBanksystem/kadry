prompt PL/SQL Developer import file
prompt Created on 30 Июнь 2017 г. by user
set feedback off
set define off
prompt Creating ACTION_OK...
create table ACTION_OK
(
  DEAL_ID NUMBER(6),
  ID      NUMBER(6) not null,
  NAME    VARCHAR2(80),
  MANUAL  NUMBER(1)
)
;
alter table ACTION_OK
  add constraint XPK_ACTION_OK primary key (ID);


prompt Loading ACTION_OK...
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (30, 301, 'Филиал Новый', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (30, 302, 'Филиал Сохранить', 1);
commit;
prompt 2 records loaded
set feedback on
set define on
prompt Done.
