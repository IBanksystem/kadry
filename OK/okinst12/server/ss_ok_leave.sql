prompt PL/SQL Developer import file
prompt Created on 25 Январь 2010 г. by user
set feedback off
set define off
prompt Dropping SS_OK_LEAVE...
drop table SS_OK_LEAVE cascade constraints;
prompt Creating SS_OK_LEAVE...
create table SS_OK_LEAVE
(
  LEAVE_ID    NUMBER(8) not null,
  LEAVE_CODE  NUMBER(2) not null,
  LEAVE_NAME  VARCHAR2(150) not null,
  STATE_NOTES CHAR(1) not null,
  EMP_CODE    NUMBER(6) not null,
  INS_DATE    DATE not null
)
;
comment on table SS_OK_LEAVE
  is 'Справочник видов отпусков';
comment on column SS_OK_LEAVE.LEAVE_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_LEAVE.LEAVE_CODE
  is 'Код вида отпуска	Присваивается  начиная с "1" при вызове функции "Добавить",  видимое поле, обязательное для заполнения';
comment on column SS_OK_LEAVE.LEAVE_NAME
  is 'Тип отпускаТрудовой, учебный и т.д.	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column SS_OK_LEAVE.STATE_NOTES
  is 'Признак активности: A - активная, P - пассивная.Вводится с клавиатуры, видимое поле, по умолчанию ставится признак А активная';
comment on column SS_OK_LEAVE.EMP_CODE
  is 'Имя пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, невидимое поле, обязательное для заполнения';
comment on column SS_OK_LEAVE.INS_DATE
  is 'Дата и время  ввода информации	SYSdate not null, невидимое поле обязательное для заполнения';
alter table SS_OK_LEAVE
  add constraint SS_OK_LEAVE_PK primary key (LEAVE_CODE, STATE_NOTES);
alter table SS_OK_LEAVE
  add constraint SS_OK_LEAVE_UK unique (LEAVE_CODE);
alter table SS_OK_LEAVE
  add constraint SS_OK_LEAVE_CHK_CODE
  check (LEAVE_code>0);

prompt Disabling triggers for SS_OK_LEAVE...
alter table SS_OK_LEAVE disable all triggers;
prompt Loading SS_OK_LEAVE...
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (1, 1, 'Мехнат таътили(трудовой отпуск)', 'A', 114, to_date('25-01-2010 15:07:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (2, 2, 'Ўкув таътили(ученический отпуск)', 'A', 114, to_date('25-01-2010 15:07:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (3, 3, 'Иш хаки сакланмаган(отпуск без содержания)', 'A', 114, to_date('25-01-2010 15:07:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (4, 4, 'Ишдаш бушаш компенсацияси(компенсация за неиспользованный отпуск при увольнении)', 'A', 114, to_date('25-01-2010 15:07:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (5, 5, 'Декрет таътили(декретный отпуск)', 'A', 114, to_date('25-01-2010 15:07:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (6, 6, 'Ижтимоий таътил(социальный отпуск)', 'A', 114, to_date('25-01-2010 15:07:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (7, 7, 'Мехнат таътили компенсацияси(копменсация за неиспользованный трудовой отпуск)', 'A', 114, to_date('25-01-2010 15:07:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (8, 8, 'Давлат бурчи(государственная обязанность)', 'A', 114, to_date('25-01-2010 15:07:25', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 8 records loaded
prompt Enabling triggers for SS_OK_LEAVE...
alter table SS_OK_LEAVE enable all triggers;
set feedback on
set define on
drop public synonym SS_OK_LEAVE;
create public synonym SS_OK_LEAVE for SS_OK_LEAVE;

alter package ok_service compile body;

prompt Done.
