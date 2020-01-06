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

create or replace public synonym ACTION_OK for ACTION_OK;
grant all on ACTION_OK to public;

insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(20,208,'ЕДБ Редактировать данные в филиале',1);

commit;

insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(20,209,'ЕДБ Удалять данные в филиале',1);

commit;

insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(30,301,'Филиал Новый',1);

commit;

insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(30,302,'Филиал Сохранить',2);

commit;

