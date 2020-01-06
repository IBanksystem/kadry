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

prompt Truncating ACTION_OK...
truncate table ACTION_OK;
prompt Loading ACTION_OK...
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 3, 'АHДИЖОH ВИЛОЯТИ', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 6, 'БУХОРО ВИЛОЯТИ', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 8, 'ЖИЗЗАХ ВИЛОЯТИ', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 10, 'КАШКАДАРЁ ВИЛОЯТИ', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 12, 'НАВОИЙ ВИЛОЯТИ', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 14, 'НАМАHГАH ВИЛОЯТИ', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 18, 'САМАРКАHД ВИЛОЯТИ', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 22, 'СУРХОHДАРЁ ВИЛОЯТИ', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 24, 'СИРДАРЁ ВИЛОЯТИ', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 26, 'ТОШКЕHТ ШАХРИ', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 27, 'ТОШКЕHТ ВИЛОЯТИ', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 30, 'ФАРГОHА ВИЛОЯТИ', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 33, 'ХОРАЗМ ВИЛОЯТИ', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 35, 'КОРАКАЛПОГИСТОН РЕСПУБЛИКАСИ', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (20, 214, 'Отклонить', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (20, 222, 'Подтвердить', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (20, 233, 'Утвердить', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (20, 206, 'Разрешено Уволить', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (20, 201, 'Вернуть Введен', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (20, 208, 'Редактировать данные в филиале', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (20, 209, 'ЕДБ Удалять данные в филиале', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (30, 301, 'Филиал Новый', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (30, 302, 'Филиал Сохранить', 2);
commit;
prompt 23 records loaded
set feedback on
set define on
prompt Done.
