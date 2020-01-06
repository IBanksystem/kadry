prompt PL/SQL Developer import file
prompt Created on 27 Март 2014 г. by Администратор
set feedback off
set define off
prompt Creating SS_OK_CATEGORY...
create table SS_OK_CATEGORY
(
  CATEGORY_CODE NUMBER(2) not null,
  CATEGORY_NAME VARCHAR2(10) not null,
  CATEGORY_RATE NUMBER(15,5) not null,
  SALARY        NUMBER(15) not null,
  STATE_NOTES   CHAR(1),
  EMP_CODE      NUMBER(6),
  INS_DATE      DATE
)
tablespace USER_DATA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SS_OK_CATEGORY
  is 'справочник "Разряды"';
comment on column SS_OK_CATEGORY.CATEGORY_CODE
  is 'номер в тарифной сетке';
comment on column SS_OK_CATEGORY.CATEGORY_NAME
  is 'разряд оплаты труда';
comment on column SS_OK_CATEGORY.CATEGORY_RATE
  is 'тарифные коэффициенты';
comment on column SS_OK_CATEGORY.SALARY
  is 'оклад';
comment on column SS_OK_CATEGORY.STATE_NOTES
  is 'A-активный';
comment on column SS_OK_CATEGORY.EMP_CODE
  is 'код сотрудника ОК';
comment on column SS_OK_CATEGORY.INS_DATE
  is 'дата вставки записи';
alter table SS_OK_CATEGORY
  add constraint SS_OK_CATEGORY_PK primary key (CATEGORY_CODE)
  using index 
  tablespace USER_DATA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index SS_OK_CATEGORY_UK2 on SS_OK_CATEGORY (CATEGORY_NAME)
  tablespace USER_DATA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for SS_OK_CATEGORY...
alter table SS_OK_CATEGORY disable all triggers;
prompt Loading SS_OK_CATEGORY...
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (22, '12', 6.115, 486693, 'A', 787, to_date('25-02-2014 18:55:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (9, '8', 4.64, 369298, 'A', 787, to_date('25-02-2014 18:52:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (4, '3', 2.998, 238611, 'A', 787, to_date('25-02-2014 18:51:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (19, '16z', 7.312, 581974, 'A', 788, to_date('26-03-2014 10:09:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (11, '10', 5.362, 426762, 'A', 787, to_date('25-02-2014 18:54:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (18, '18', 8.522, 678266, 'A', 787, to_date('25-02-2014 18:57:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (15, '14z', 6.54835, 521183, 'A', 788, to_date('26-03-2014 10:07:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (12, '11', 5.733, 456289, 'A', 787, to_date('25-02-2014 18:54:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (10, '9', 4.997, 397711, 'A', 228, to_date('17-03-2014 12:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (8, '7', 4.284, 340964, 'A', 787, to_date('25-02-2014 18:52:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (6, '5', 3.612, 287479, 'A', 787, to_date('25-02-2014 18:51:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (23, '12z', 5.809, 462358, 'A', 788, to_date('26-03-2014 10:09:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (24, '6z', 3.744, 297981, 'A', 788, to_date('26-03-2014 10:10:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (25, '10z', 5.09491, 405424, 'A', 788, to_date('26-03-2014 10:11:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (27, '7z', 4.06981, 323916, 'A', 788, to_date('26-03-2014 10:11:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (17, '17', 8.106, 645157, 'A', 787, to_date('25-02-2014 18:57:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (16, '16', 7.697, 612604, 'A', 787, to_date('25-02-2014 18:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (14, '14', 6.893, 548614, 'A', 787, to_date('25-02-2014 18:55:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (13, '13', 6.503, 517574, 'A', 787, to_date('25-02-2014 18:55:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (7, '6', 3.941, 313664, 'A', 787, to_date('25-02-2014 18:52:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (5, '4', 3.297, 262408, 'A', 788, to_date('12-03-2014 11:14:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (3, '2', 2.725, 216883, 'A', 787, to_date('25-02-2014 18:51:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (2, '1', 2.476, 197065, 'A', 788, to_date('26-03-2014 10:07:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (1, '15', 7.292, 580370, 'A', 787, to_date('25-02-2014 18:55:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (29, '11z', 5.446, 433475, 'A', 788, to_date('26-03-2014 10:12:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (28, '9z', 4.74714, 377825, 'A', 788, to_date('26-03-2014 10:12:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (30, '15z', 6.927, 551352, 'A', 788, to_date('26-03-2014 10:13:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (0, '0', 1, 79590, 'A', null, null);
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (32, '11mz', 5.17403, 411801, 'A', 788, to_date('26-03-2014 10:14:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (33, '12mz', 5.51878, 439240, 'A', 788, to_date('26-03-2014 10:14:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (34, '13z', 6.17785, 491695, 'A', 788, to_date('26-03-2014 10:15:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (35, '9mz', 4.50979, 358934, 'A', 788, to_date('26-03-2014 10:15:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (37, '8mz', 4.1876, 333291, 'A', 788, to_date('27-03-2014 10:33:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (38, '8z', 4.408, 350833, 'A', 788, to_date('27-03-2014 10:38:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (39, '4z', 3.13215, 249288, 'A', 788, to_date('27-03-2014 10:39:31', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (40, '10mz', 4.83921, 385153, 'A', 788, to_date('27-03-2014 10:42:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (31, '5z', 3.4314, 273105, 'A', 788, to_date('26-03-2014 10:13:42', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 37 records loaded
prompt Enabling triggers for SS_OK_CATEGORY...
alter table SS_OK_CATEGORY enable all triggers;
set feedback on
set define on
prompt Done.
