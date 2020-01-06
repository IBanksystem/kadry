prompt PL/SQL Developer import file
prompt Created on 27 Март 2014 г. by Администратор
set feedback off
set define off
prompt Creating SS_OK_POST...
create table SS_OK_POST
(
  POST_ID               NUMBER(8) not null,
  POST_CODE             NUMBER(3) not null,
  POST_NAME             VARCHAR2(80) not null,
  LEVEL_DEPARTMENT_CODE NUMBER(1) not null,
  STATE_NOTES           CHAR(1) not null,
  EMP_CODE              NUMBER(6) not null,
  INS_DATE              DATE not null,
  REZERV_CODE           NUMBER(2),
  CATEGORY_CODE         NUMBER(2),
  POST_GROUP_CODE       NUMBER(5),
  EDUCATION_TITLE_CODE  NUMBER(3),
  CONFIRM_CODE          NUMBER(2)
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
comment on table SS_OK_POST
  is 'Справочник должностей';
comment on column SS_OK_POST.POST_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_POST.POST_CODE
  is 'Код должности	Начинается с "1" при вызове функции "Добавить" видимое поле, обязательное для заполнения';
comment on column SS_OK_POST.POST_NAME
  is 'Наименование должности	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column SS_OK_POST.LEVEL_DEPARTMENT_CODE
  is 'код Уровень подразделения';
comment on column SS_OK_POST.STATE_NOTES
  is 'Признак активности записиA - активная записьP - пассивная запись	Вводится с клавиатуры, видимое поле, по умолчанию ставится признак  -А -активная запись';
comment on column SS_OK_POST.EMP_CODE
  is 'Код пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, не видимое поле, обязательное для заполнения';
comment on column SS_OK_POST.INS_DATE
  is 'Дата и время  ввода информации 	SYSdate not null, не видимое поле, обязательное для заполнения';
comment on column SS_OK_POST.CATEGORY_CODE
  is 'код разряда оплаты труда справочник ss_ok_category';
comment on column SS_OK_POST.POST_GROUP_CODE
  is 'Код должностной группы ss_ok_post_group ';
comment on column SS_OK_POST.EDUCATION_TITLE_CODE
  is 'образование необходимое для данной должности';
comment on column SS_OK_POST.CONFIRM_CODE
  is 'должность подтверждается в республике или в области или в районе';
alter table SS_OK_POST
  add constraint SS_OK_POST_PK primary key (POST_CODE, STATE_NOTES)
  using index 
  tablespace INDEXES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SS_OK_POST
  add constraint SS_OK_POST_UK unique (POST_CODE)
  using index 
  tablespace INDEXES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SS_OK_POST
  add constraint SS_OK_POST_CHK_CODE
  check (post_code>0);

prompt Disabling triggers for SS_OK_POST...
alter table SS_OK_POST disable all triggers;
prompt Loading SS_OK_POST...
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2762, 93, 'Юристконсульт', 1, 'A', 611, to_date('03-09-2013 15:23:21', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2763, 94, 'Етакчи юристконсульт', 1, 'A', 788, to_date('24-03-2014 17:13:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2764, 95, 'Бош юрисконсульт', 1, 'A', 788, to_date('24-03-2014 17:14:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2782, 178, 'Бўлим бошлиги ўринбосари', 1, 'A', 788, to_date('24-03-2014 17:15:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 34, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2783, 303, 'Булим бошлиги уринбосари', 2, 'A', 787, to_date('26-12-2013 16:19:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 23, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2696, 201, 'Бошкарувчи ўринбосари', 3, 'A', 787, to_date('26-02-2014 11:02:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 22, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2697, 202, 'Бўлим бошлиги - бошкарувчи ўринбосари', 3, 'A', 787, to_date('26-02-2014 11:07:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 23, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2698, 203, 'Бўлим бошлиги', 3, 'A', 787, to_date('26-02-2014 11:06:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2699, 204, 'Бош бухгалтер', 3, 'A', 787, to_date('26-02-2014 11:00:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2700, 205, 'Бош мутахассис', 3, 'A', 787, to_date('26-02-2014 11:01:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2701, 206, 'Етакчи мутахассис', 3, 'A', 787, to_date('26-02-2014 11:08:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 28, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2702, 207, '1-тоифали мутахассис', 3, 'A', 787, to_date('26-02-2014 10:59:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2703, 208, '2-тоифали мутахассис', 3, 'A', 787, to_date('26-02-2014 10:59:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2704, 209, 'Мутахассис', 3, 'A', 787, to_date('26-02-2014 15:47:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2705, 210, 'Касса мудири', 3, 'A', 787, to_date('27-02-2014 10:16:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2706, 211, 'Катта кассир', 3, 'A', 787, to_date('26-02-2014 15:45:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2707, 212, 'Кассир-назоратчи', 3, 'A', 787, to_date('26-02-2014 15:44:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2708, 213, 'Кассир', 3, 'A', 787, to_date('26-02-2014 11:10:17', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2709, 214, 'Бош бухгалтер ўринбосари', 3, 'A', 787, to_date('26-02-2014 11:00:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 29, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2710, 215, 'Котиба-иш юритувчи', 3, 'A', 787, to_date('26-02-2014 15:46:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2711, 216, 'Котиба-архивариус', 3, 'A', 787, to_date('26-02-2014 15:45:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2713, 218, 'Ёрдамчи ишчи', 3, 'A', 611, to_date('03-09-2013 15:50:49', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2714, 219, 'Сантехник', 3, 'A', 787, to_date('27-11-2013 12:11:18', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2715, 220, 'Хайдовчи', 3, 'A', 787, to_date('27-02-2014 10:26:55', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2716, 221, 'Богбон', 3, 'A', 787, to_date('26-02-2014 11:00:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2717, 222, 'Коровул', 3, 'A', 611, to_date('03-09-2013 15:51:14', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2718, 223, 'Хизмат кўрсатиш хоналари фарроши', 3, 'A', 787, to_date('06-01-2014 16:27:55', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2719, 228, 'Хужалик мудири', 3, 'A', 787, to_date('27-11-2013 12:11:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2720, 229, 'Архивариус', 3, 'A', 611, to_date('03-09-2013 15:51:33', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2721, 230, 'Курьер', 3, 'A', 787, to_date('10-10-2013 11:24:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2722, 231, 'Котиба', 3, 'A', 787, to_date('26-02-2014 15:45:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2723, 232, 'Иш юритувчи', 3, 'A', 787, to_date('26-02-2014 11:09:16', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2724, 233, 'Мини банк мудири', 3, 'A', 787, to_date('26-02-2014 15:47:16', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2725, 234, 'Электрик', 3, 'A', 787, to_date('10-10-2013 11:45:12', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2726, 235, 'Охирги назорат буйича бош мутахассис', 4, 'A', 611, to_date('03-09-2013 15:56:43', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2728, 237, 'Бош мутахассис (ички назорат буйича)', 3, 'A', 787, to_date('26-02-2014 11:01:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2729, 238, 'Юрист', 3, 'A', 611, to_date('03-09-2013 15:54:35', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2730, 239, 'Шўъба мудири', 3, 'A', 787, to_date('27-02-2014 10:14:16', 'dd-mm-yyyy hh24:mi:ss'), 1, 29, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2731, 240, 'Бухгалтер-назоратчи', 3, 'A', 787, to_date('26-02-2014 11:04:07', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2732, 241, 'Назоратчи', 3, 'A', 787, to_date('26-02-2014 15:47:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2733, 242, 'Маслахатчи-менежер', 3, 'A', 787, to_date('26-02-2014 15:47:03', 'dd-mm-yyyy hh24:mi:ss'), 1, 22, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2734, 243, 'Маслахатчи-менежер', 2, 'A', 788, to_date('24-03-2014 16:54:53', 'dd-mm-yyyy hh24:mi:ss'), 1, 22, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2735, 244, 'Бош назоратчи', 3, 'A', 787, to_date('26-02-2014 11:01:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2736, 245, 'Ўз тўлов кассири', 4, 'A', 611, to_date('03-09-2013 15:57:01', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2737, 246, 'Инкассатор', 2, 'A', 787, to_date('13-01-2014 12:43:12', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2739, 248, 'Кассир (кирим кассаси)', 2, 'A', 787, to_date('26-12-2013 16:24:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2740, 249, 'Кассир (чиким кассаси)', 2, 'A', 787, to_date('26-12-2013 16:24:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2741, 250, 'Кассир (кайта санок кассаси)', 2, 'A', 787, to_date('26-12-2013 16:24:37', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2742, 251, 'Кечки касса кассири', 2, 'A', 787, to_date('26-12-2013 16:10:55', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2743, 252, 'Кассир (кирим касса)', 3, 'A', 787, to_date('26-02-2014 11:10:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2744, 253, 'Кассир (чиким кассаси)', 3, 'A', 787, to_date('26-02-2014 11:11:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2745, 254, 'Кассир (кайта санок кассаси)', 3, 'A', 787, to_date('26-02-2014 11:10:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2746, 255, 'Кассир (кечки касса)', 3, 'A', 787, to_date('26-02-2014 11:10:28', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2747, 300, 'Етакчи мутахассис (банк пластик карточкаларибилан ишлаш бўйича)', 2, 'A', 787, to_date('26-12-2013 16:23:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 25, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2748, 301, 'Банк операциялари бўлими бошлиги уринбосари', 2, 'A', 787, to_date('27-02-2014 16:03:28', 'dd-mm-yyyy hh24:mi:ss'), 1, 22, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2785, 278, 'Бўлим бошлиги ўринбосари', 3, 'A', 787, to_date('26-02-2014 11:07:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 29, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2801, 96, 'Рахбар', 1, 'A', 611, to_date('03-09-2013 15:23:59', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2821, 302, 'Бош юрисконсульт', 2, 'A', 787, to_date('26-12-2013 16:19:14', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2822, 304, 'Етакчи юрисконсульт', 2, 'A', 787, to_date('26-12-2013 16:23:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 25, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2823, 305, 'Юрисконсульт', 2, 'A', 611, to_date('03-09-2013 15:48:02', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2841, 97, 'Рахбар котибаси', 1, 'A', 644, to_date('11-03-2014 16:58:08', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2861, 279, 'Бош мутахассис (назорат тафтиш бўйича)', 3, 'A', 787, to_date('26-02-2014 11:01:14', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2863, 280, 'Етакчи мутахассис (ходимлар билан ишлаш бўйича)', 3, 'A', 787, to_date('26-02-2014 11:08:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 28, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2881, 306, 'Бўлим бошлиги - филиал бошлиги ўринбосари', 2, 'A', 788, to_date('24-03-2014 16:54:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 36, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2921, 307, 'ЖБПТТ бўлим бошлиги - бош бухгалтер ўринбосари', 2, 'A', 788, to_date('24-03-2014 16:53:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2941, 179, 'Бошкарма бошлиги-Директор ўринбосари', 1, 'A', 644, to_date('11-03-2014 15:39:41', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2961, 281, 'Кассир (махсус касса)', 3, 'A', 787, to_date('26-02-2014 11:10:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2983, 198, 'Бухгалтер-назоратчи (кечки касса)', 3, 'A', 787, to_date('26-02-2014 11:04:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3001, 197, 'Етакчи мутахассис (сунги назоратчи)', 3, 'A', 787, to_date('26-02-2014 11:08:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 28, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3022, 180, 'Назоратчи', 3, 'A', 787, to_date('26-02-2014 15:47:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3041, 282, 'Катта бухгалтер назоратчи', 3, 'A', 787, to_date('26-02-2014 15:44:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3062, 182, 'Ходимлар билан ишлаш бош мутахассиси', 1, 'A', 788, to_date('24-03-2014 17:17:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3081, 181, 'Катта кассири (кирим кассаси)', 3, 'A', 787, to_date('26-02-2014 15:45:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3083, 183, 'Катта кассир (чиким кассаси)', 3, 'A', 787, to_date('26-02-2014 15:45:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3084, 184, 'Катта кассир (кайта санаш кассаси)', 3, 'A', 787, to_date('26-02-2014 15:45:18', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3121, 284, 'Бош мутахассис (сўнги назоратчи)', 3, 'A', 787, to_date('26-02-2014 11:01:21', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3141, 185, 'Катта бухгалтер назоратчи', 2, 'A', 787, to_date('26-12-2013 16:26:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3162, 187, 'Бухгалтер назоратчи (кечки касса)', 2, 'A', 787, to_date('26-12-2013 16:19:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3163, 188, 'Назоратчи кассир (кайта санаш кассаси)', 2, 'A', 787, to_date('26-12-2013 16:13:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3164, 189, 'Кассир (махсус касса)', 2, 'A', 787, to_date('26-12-2013 16:24:49', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3181, 190, 'Бош мутахассис (ички назорат буйича)', 3, 'A', 787, to_date('26-02-2014 11:01:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3221, 191, 'Назоратчи', 1, 'A', 788, to_date('24-03-2014 17:17:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3222, 192, 'Кассир', 1, 'A', 788, to_date('24-03-2014 17:17:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3241, 193, '1-тоифали бухгалтер-назоратчи (кайта санок кассаси)', 1, 'A', 787, to_date('14-11-2013 17:08:50', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3242, 194, '1-тоифали бухгалтер назоратчи (кечки касса)', 1, 'A', 787, to_date('14-11-2013 17:09:16', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3243, 195, '1-тоифали бухгалтер-назоратчи (валюта операциялари бўйича)', 1, 'A', 787, to_date('14-11-2013 17:09:59', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3261, 196, '1-тоифали бухгалтер назоратчи (валюта операциялари бўйича)', 1, 'A', 787, to_date('14-11-2013 17:10:21', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3301, 186, '1-тоифали мутахассис (сўнги назоратчи)', 3, 'A', 787, to_date('26-02-2014 10:59:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3321, 308, 'Бош мутахассис (лотореялар билан ишлаш буйича)', 2, 'A', 787, to_date('26-12-2013 16:18:53', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3341, 285, 'Бош юристконсулт', 3, 'A', 787, to_date('26-02-2014 11:01:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3361, 309, 'Бош мутахассис (муаммоли активлар билан ишлаш)', 2, 'A', 787, to_date('26-12-2013 16:18:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3381, 286, 'Етакчи юристконсульт', 3, 'A', 787, to_date('26-02-2014 11:09:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 28, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3401, 310, 'Катта бухгалтер назоратчи (кайта санаш кассаси)', 2, 'A', 787, to_date('26-12-2013 16:27:02', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3402, 287, 'Бухгалтер-назоратчи (кайта санаш кассаси)', 3, 'A', 787, to_date('26-02-2014 11:04:18', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3403, 288, 'Катта бухгалтер назоратчи (кайта санаш кассаси)', 3, 'A', 787, to_date('26-02-2014 15:45:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3421, 289, 'Шўъба мудири - бош бухгалтер ўринбосари', 3, 'A', 787, to_date('17-12-2013 11:16:04', 'dd-mm-yyyy hh24:mi:ss'), 1, 22, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3501, 290, 'Бош мутахассис (ахборотлаштириш буйича)', 3, 'A', 787, to_date('26-02-2014 11:00:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3521, 291, 'Хавфсизлик хизмати назоратчиси', 3, 'A', 645, to_date('17-09-2013 16:36:47', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3541, 292, 'Бўлим бошлиги - бош бухгалтер ўринбосари', 3, 'A', 788, to_date('13-03-2014 14:59:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3561, 293, 'Кассир 1', 3, 'A', 787, to_date('26-02-2014 11:11:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
commit;
prompt 100 records committed...
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3562, 294, 'Кассир 2', 3, 'A', 787, to_date('26-02-2014 15:43:42', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3581, 295, 'Етакчи мутахассис-1', 1, 'A', 788, to_date('24-03-2014 17:21:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3601, 296, 'Етакчи мутахассис -2', 1, 'A', 788, to_date('24-03-2014 17:21:27', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3602, 311, 'Бош мутахассис (ходимлар билан ишлаш буйича)', 2, 'A', 787, to_date('26-12-2013 16:19:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3603, 312, 'Бош мутахассис (назорат тафтиш буйича)', 2, 'A', 787, to_date('23-01-2014 12:01:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3621, 313, 'Бош мутахассис (ички назорат буйича)', 2, 'A', 787, to_date('26-12-2013 16:18:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3641, 297, 'Кассир 3', 3, 'A', 787, to_date('26-02-2014 15:44:08', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3643, 298, 'Кассир 4', 3, 'A', 787, to_date('26-02-2014 15:44:11', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3661, 299, 'Кассир 5', 3, 'A', 787, to_date('26-02-2014 15:44:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3666, 314, 'Кассир 6', 3, 'A', 787, to_date('26-02-2014 15:44:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3667, 315, 'Кассир 7', 3, 'A', 787, to_date('26-02-2014 15:44:18', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3668, 316, 'Кассир 8', 3, 'A', 787, to_date('26-02-2014 15:44:21', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3669, 317, 'Кассир 9', 3, 'A', 787, to_date('26-02-2014 15:44:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3670, 318, 'Кассир 10', 3, 'A', 787, to_date('26-02-2014 11:11:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3671, 319, 'Кассир 11', 3, 'A', 787, to_date('26-02-2014 11:11:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3682, 320, 'Етакчи мутахассис (ахборотлаштириш буйича)', 3, 'A', 787, to_date('26-02-2014 11:08:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 28, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3702, 321, 'Кассир (кайта санок кассаси)', 1, 'A', 788, to_date('24-03-2014 17:19:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2561, 1, 'Бошкарув Раиси', 1, 'A', 788, to_date('24-03-2014 16:59:55', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2562, 2, 'Бошкарув Раиси биринчи  ўринбосари', 1, 'A', 788, to_date('24-03-2014 16:59:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 17, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2563, 3, 'Бошкарув Раиси ўринбосари', 1, 'A', 644, to_date('11-03-2014 15:29:10', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 1, 1, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2564, 4, 'Раис ёрдамчиси', 1, 'A', 644, to_date('18-09-2013 18:44:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2565, 5, 'Филиал бошлиги', 1, 'A', 788, to_date('24-03-2014 17:00:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2566, 6, 'Раис котиби', 1, 'A', 644, to_date('11-03-2014 15:40:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2567, 7, 'Марказ директори', 1, 'A', 438, to_date('31-05-2013 15:06:43', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2568, 8, 'Бошкарма бошлиги', 1, 'A', 645, to_date('14-09-2013 09:56:17', 'dd-mm-yyyy hh24:mi:ss'), 1, 30, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2569, 9, 'Бошкарма бошлиги - бош бухгалтер', 1, 'A', 787, to_date('14-11-2013 17:04:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 22, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2570, 10, 'Бошкарма бошлиги  ўринбосари', 1, 'A', 438, to_date('31-05-2013 15:06:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 28, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2571, 11, 'Бўлим бошлиги - бошкарма бошлиги ўринбосари', 1, 'A', 788, to_date('24-03-2014 17:04:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 36, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2572, 12, 'Бўлим бошлиги', 1, 'A', 644, to_date('18-09-2013 18:44:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2573, 13, 'Кичик бўлим бошлиги', 1, 'A', 438, to_date('31-05-2013 15:07:01', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2574, 14, 'Шўъба мудири', 1, 'A', 787, to_date('12-11-2013 15:58:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2575, 15, 'Минибанк бошлиги', 1, 'A', 644, to_date('11-03-2014 15:41:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2576, 16, 'Бош мутахассис', 1, 'A', 787, to_date('14-11-2013 17:15:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2577, 17, 'Етакчи мутахассис', 1, 'A', 644, to_date('18-09-2013 18:45:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2578, 18, '1-тоифали мутахассис', 1, 'A', 787, to_date('06-01-2014 16:34:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2579, 19, '2-тоифали мутахассис', 1, 'A', 787, to_date('06-01-2014 16:34:46', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 2, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2580, 20, 'Мутахассиси', 1, 'A', 644, to_date('18-09-2013 18:45:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 2, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2581, 21, 'Шогирд', 1, 'A', 438, to_date('31-05-2013 15:07:40', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2582, 22, 'Бош бухгалтер', 1, 'A', 787, to_date('06-01-2014 16:34:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 30, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2583, 23, 'Бош бухгалтер', 1, 'A', 644, to_date('18-09-2013 18:46:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2584, 24, 'Бош бухгалтер ўринбосари', 1, 'A', 644, to_date('18-09-2013 18:46:14', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2585, 25, 'Бўлим бошлиги - бош бухгалтер ўринбосари', 1, 'A', 788, to_date('24-03-2014 17:03:49', 'dd-mm-yyyy hh24:mi:ss'), 1, 22, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2586, 26, 'Бухгалтер-назоратчи', 1, 'A', 644, to_date('11-03-2014 16:51:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2587, 27, 'Касса мудири', 1, 'A', 644, to_date('11-03-2014 16:51:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2588, 28, 'Назоратчи-кассир', 1, 'A', 644, to_date('11-03-2014 16:51:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2589, 29, 'Катта кассир', 1, 'A', 644, to_date('11-03-2014 16:51:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2590, 30, '1 тоифали  кассир', 1, 'A', 438, to_date('31-05-2013 15:08:44', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2591, 31, 'Кассир', 1, 'A', 644, to_date('11-03-2014 16:51:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2592, 32, 'Кассир (кечки касса)', 1, 'A', 644, to_date('11-03-2014 16:51:49', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2593, 33, 'Экспедиция мудири', 1, 'A', 438, to_date('31-05-2013 15:09:04', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2594, 34, 'Экспедитор', 1, 'A', 438, to_date('31-05-2013 15:09:07', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2595, 35, 'Архивариус', 1, 'A', 788, to_date('24-03-2014 17:05:17', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2596, 36, 'Нусха кўчириш оператори', 1, 'A', 788, to_date('24-03-2014 17:05:42', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2597, 37, '1 даражали телетайпист', 1, 'A', 438, to_date('31-05-2013 15:09:17', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, 2, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2598, 38, 'Раис ўринбосари котибаси', 1, 'A', 788, to_date('24-03-2014 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2599, 39, 'Иш юритувчи-референт', 1, 'A', 644, to_date('11-03-2014 15:42:10', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2600, 40, 'Курьер-иш юритувчи', 1, 'A', 644, to_date('11-03-2014 16:52:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2601, 41, '1-тоифали иш юритувчи котиба', 1, 'A', 787, to_date('14-11-2013 17:06:03', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2602, 42, '1-тоифали машинистка', 1, 'A', 787, to_date('14-11-2013 17:06:09', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2603, 43, 'Рухсатномалар бўйича мутахассис', 1, 'A', 788, to_date('24-03-2014 17:08:08', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 2, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2604, 44, 'Бош энергетик', 1, 'A', 787, to_date('14-11-2013 17:16:50', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2605, 45, 'Электрик', 1, 'A', 788, to_date('24-03-2014 17:23:11', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2606, 46, 'Сантехник', 1, 'A', 788, to_date('24-03-2014 17:23:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2607, 47, 'Енгил автомобил хайдовчиси', 1, 'A', 787, to_date('14-11-2013 17:06:19', 'dd-mm-yyyy hh24:mi:ss'), 1, 3, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2608, 48, '1-тоифали алокачи-телефонист', 1, 'A', 787, to_date('06-01-2014 16:35:16', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2609, 49, 'Хизмат курсатиш хоналари фарроши', 1, 'A', 787, to_date('06-01-2014 16:35:46', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2610, 50, 'Богбон', 1, 'A', 644, to_date('11-03-2014 16:52:42', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2611, 51, 'Ердамчи ишчи', 1, 'A', 438, to_date('31-05-2013 15:10:04', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2612, 52, 'Бош мутахассис (мехнатни мухофаза килиш бўйича)', 1, 'A', 788, to_date('24-03-2014 17:09:16', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2613, 53, 'Хамшира', 1, 'A', 438, to_date('31-05-2013 15:10:11', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2614, 54, 'Дам олиш маскани бошлиги', 1, 'A', 438, to_date('31-05-2013 15:10:14', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2615, 55, 'Коровул', 1, 'A', 438, to_date('31-05-2013 15:10:18', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2616, 56, 'Ишчи (мавсумий)', 1, 'A', 438, to_date('31-05-2013 15:11:18', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2617, 57, 'Марказ директори уринбосари', 1, 'A', 438, to_date('31-05-2013 15:11:21', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2618, 58, 'Кассир-инкассатор', 1, 'A', 438, to_date('31-05-2013 15:11:26', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2619, 59, 'Марказий амалиётлар филиали бошлиги', 1, 'A', 788, to_date('24-03-2014 17:18:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2620, 60, 'Рахбар котибаси', 1, 'A', 438, to_date('31-05-2013 15:11:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2621, 61, 'Инкассатор', 1, 'A', 644, to_date('11-03-2014 15:42:41', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2622, 62, 'Хайдовчи-инкассатор', 1, 'A', 644, to_date('11-03-2014 15:42:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2623, 63, 'Омбор мудири', 1, 'A', 787, to_date('14-11-2013 17:15:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2624, 64, 'Департамент директори', 1, 'A', 644, to_date('11-03-2014 15:43:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2625, 65, 'Департамент директори уринбосари', 1, 'A', 788, to_date('24-03-2014 17:22:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 30, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2626, 66, 'Шуъба мудири', 1, 'A', 788, to_date('24-03-2014 16:59:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 34, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2627, 67, 'Захира таркиби билан ишлаш ва назорат олиб бориш', 1, 'A', 611, to_date('03-09-2013 15:20:06', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2628, 68, 'Электрон назорати буйича етакчи мутахассис', 1, 'A', 787, to_date('12-11-2013 15:59:37', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2629, 69, 'Етакчи мутахассиси (сунги назоратчи)', 1, 'A', 644, to_date('11-03-2014 16:53:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2630, 70, 'Бошкарув Раиси уринбосари', 1, 'A', 788, to_date('24-03-2014 17:14:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2631, 71, 'Бош назоратчи', 1, 'A', 644, to_date('11-03-2014 15:43:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2632, 72, 'Етакчи назоратчи', 1, 'A', 644, to_date('11-03-2014 15:44:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2633, 73, '1-тоифали назоратчи', 1, 'A', 611, to_date('03-09-2013 15:20:55', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2634, 74, 'Етакчи мутахассис (рухсатномалар буйича)', 1, 'A', 788, to_date('24-03-2014 17:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, 2, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2635, 75, 'Девонхона мудири', 1, 'A', 788, to_date('24-03-2014 17:20:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 34, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2637, 77, 'Етакчи мутахассис-комендант', 1, 'A', 787, to_date('12-11-2013 16:00:26', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2638, 78, 'Дурадгор', 1, 'A', 611, to_date('03-09-2013 15:21:30', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2639, 79, 'Омбор ишчиси', 1, 'A', 644, to_date('11-03-2014 16:54:53', 'dd-mm-yyyy hh24:mi:ss'), 1, 0, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2640, 80, 'Богбон-фаррош', 1, 'A', 611, to_date('03-09-2013 15:21:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2641, 81, 'Микроавтобус хайдовчиси', 1, 'A', 644, to_date('11-03-2014 16:55:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 3, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2642, 82, 'Механик-диспетчер', 1, 'A', 644, to_date('11-03-2014 17:20:27', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2643, 83, 'АТС хизмати буйича техник', 1, 'A', 611, to_date('03-09-2013 15:22:02', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2644, 84, 'Лифтер', 1, 'A', 611, to_date('03-09-2013 15:22:11', 'dd-mm-yyyy hh24:mi:ss'), 1, 4, 4, null, 1);
commit;
prompt 200 records committed...
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2645, 85, 'Директор ўринбосари - бўлим бошлиги', 1, 'A', 788, to_date('24-03-2014 17:16:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 30, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2646, 86, 'Директор ўринбосари - бошкарма бошлиги', 1, 'A', 788, to_date('24-03-2014 17:10:20', 'dd-mm-yyyy hh24:mi:ss'), 1, 30, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2647, 87, 'Маслахатчи-менежер', 1, 'A', 611, to_date('03-09-2013 15:22:32', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2648, 88, 'Филиал бошлиги ўринбосари', 1, 'A', 644, to_date('11-03-2014 16:57:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2649, 89, 'Курьер', 1, 'A', 611, to_date('03-09-2013 15:22:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2650, 90, 'Бош мутахассис', 1, 'A', 644, to_date('11-03-2014 15:44:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2651, 91, 'Мутахассис-коммутатор', 1, 'A', 788, to_date('24-03-2014 17:12:11', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2652, 92, 'Бошкарув Раиси ўринбосари ёрдамчиси', 1, 'A', 788, to_date('24-03-2014 17:12:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2653, 101, 'Филиал бошлиги', 2, 'A', 787, to_date('10-12-2013 14:40:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 19, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2654, 102, 'Филиал бошлиги ўринбосари', 2, 'A', 787, to_date('26-12-2013 15:46:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 30, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2655, 103, 'Бош бухгалтер', 2, 'A', 787, to_date('26-12-2013 16:17:59', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2656, 104, 'Бош бухгалтер ўринбосари', 2, 'A', 787, to_date('26-12-2013 16:18:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 22, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2657, 105, 'Бўлим бошлиги', 2, 'A', 787, to_date('26-12-2013 16:33:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 22, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2658, 106, 'Бош мутахассис', 2, 'A', 787, to_date('26-12-2013 16:18:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2660, 112, 'Етакчи мутахассис', 2, 'A', 787, to_date('26-12-2013 16:23:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 25, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2661, 113, '1-тоифали мутахассис', 2, 'A', 787, to_date('06-01-2014 16:28:55', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2662, 114, '2-тоифали мутахассис', 2, 'A', 787, to_date('06-01-2014 16:29:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2663, 115, 'Мутахассис', 2, 'A', 787, to_date('26-12-2013 16:12:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2664, 116, 'Мини банк мудири', 2, 'A', 787, to_date('06-01-2014 16:28:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2665, 117, 'Касса мудири', 2, 'A', 787, to_date('26-12-2013 16:24:17', 'dd-mm-yyyy hh24:mi:ss'), 1, 25, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2666, 118, 'Катта кассир-назоратчи', 2, 'A', 787, to_date('26-12-2013 16:27:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 27, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2667, 119, 'Катта кассир', 2, 'A', 787, to_date('26-12-2013 16:27:19', 'dd-mm-yyyy hh24:mi:ss'), 1, 27, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2668, 120, 'Кассир-назоратчи', 2, 'A', 787, to_date('26-12-2013 16:26:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2669, 121, '1-тоифали кассир', 2, 'A', 787, to_date('06-01-2014 16:29:10', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2670, 122, 'Кассир', 2, 'A', 787, to_date('26-12-2013 16:24:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2671, 126, 'Котиба-иш юритувчи', 2, 'A', 787, to_date('26-12-2013 16:11:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2672, 127, 'Котиба', 2, 'A', 787, to_date('26-12-2013 16:11:17', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2673, 128, 'Архивариус', 2, 'A', 611, to_date('03-09-2013 15:42:23', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2674, 129, 'Нусха кучириш оператори', 2, 'A', 788, to_date('24-03-2014 16:57:51', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2675, 130, 'Богбон', 2, 'A', 788, to_date('24-03-2014 16:55:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2676, 131, 'Ёрдамчи ишчи', 2, 'A', 611, to_date('03-09-2013 15:42:36', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2677, 132, 'Сантехник', 2, 'A', 787, to_date('26-12-2013 16:14:31', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2678, 133, 'Енгил автомобил хайдовчиси (двигател иш хажми - 1,8 литргача)', 2, 'A', 787, to_date('06-01-2014 16:30:12', 'dd-mm-yyyy hh24:mi:ss'), 1, 3, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2679, 134, 'Курьер-иш  юритувчи', 2, 'A', 787, to_date('26-12-2013 16:11:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2680, 135, 'Коровул', 2, 'A', 611, to_date('03-09-2013 15:43:13', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2681, 136, 'Хизмат кўрсатиш хоналари фарроши', 2, 'A', 787, to_date('06-01-2014 16:31:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2683, 139, 'Иш юритувчи', 2, 'A', 787, to_date('26-12-2013 16:58:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2684, 140, 'Курьер', 2, 'A', 787, to_date('26-12-2013 16:11:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2685, 141, 'Хужалик мудири', 2, 'A', 787, to_date('26-12-2013 16:15:27', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2686, 142, 'Бўлим бошлиги ўринбосари', 2, 'A', 787, to_date('26-12-2013 16:22:31', 'dd-mm-yyyy hh24:mi:ss'), 1, 23, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2687, 143, 'Электрик', 2, 'A', 787, to_date('26-12-2013 16:16:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2688, 144, 'Шўъба мудири', 2, 'A', 787, to_date('26-12-2013 16:15:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 23, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2689, 145, 'Бош бухгалтер', 2, 'A', 788, to_date('24-03-2014 16:52:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2690, 146, 'Телефонист', 2, 'A', 788, to_date('24-03-2014 16:57:07', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2691, 147, 'Банк операциялари булими бошлиги', 2, 'A', 787, to_date('27-02-2014 16:03:20', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2692, 148, 'Банк операциялари булими бош бухгалтери', 2, 'A', 787, to_date('27-02-2014 16:04:07', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2693, 149, 'Назоратчи', 2, 'A', 787, to_date('13-01-2014 12:42:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2694, 153, 'Филиал бошлиги 1-уринбосари', 2, 'A', 787, to_date('26-12-2013 15:47:31', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2695, 200, 'Бошкарувчи', 3, 'A', 787, to_date('26-02-2014 11:01:51', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3703, 322, 'Кассир (валюта операциялари бўйича)', 1, 'A', 788, to_date('24-03-2014 17:18:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3704, 323, 'Кассир (махсус касса)', 1, 'A', 788, to_date('24-03-2014 17:18:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3705, 324, 'Бош мутахассиси (ички назорат)', 1, 'A', 788, to_date('24-03-2014 17:08:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3706, 325, '1-тоифали бухгалтер назоратчи', 1, 'A', 787, to_date('14-11-2013 17:12:11', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3741, 329, 'Бўлим бошлиги - бош бухгалтер ўринбосари', 2, 'A', 788, to_date('24-03-2014 16:48:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 29, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3761, 330, 'Хавфсизлик хизмати назоратчиси мутахассис', 2, 'A', 788, to_date('24-03-2014 16:53:14', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3781, 331, 'Булим бошлиги-филиал бошлиги уринбосари', 2, 'A', 788, to_date('24-03-2014 16:52:20', 'dd-mm-yyyy hh24:mi:ss'), 1, 36, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3841, 340, 'Бухгалтер назоратчи 8', 3, 'A', 787, to_date('26-02-2014 11:03:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3842, 341, 'Бухгалтер назоратчи 9', 3, 'A', 787, to_date('26-02-2014 11:04:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3843, 342, 'Бухгалтер назоратчи 10', 3, 'A', 787, to_date('26-02-2014 11:03:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3844, 343, 'Бухгалтер назоратчи 11', 3, 'A', 787, to_date('26-02-2014 11:03:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3921, 346, 'Бухгалтер-назоратчи  3', 2, 'A', 787, to_date('26-12-2013 16:20:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3922, 347, 'Бухгалтер-назоратчи  4', 2, 'A', 787, to_date('26-12-2013 16:20:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3923, 348, 'Бухгалтер-назоратчи  5', 2, 'A', 787, to_date('26-12-2013 16:20:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3924, 349, 'Бухгалтер-назоратчи  6', 2, 'A', 787, to_date('26-12-2013 16:20:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3925, 350, 'Бухгалтер-назоратчи  7', 2, 'A', 787, to_date('26-12-2013 16:20:49', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3926, 351, 'Бухгалтер-назоратчи  8', 2, 'A', 787, to_date('26-12-2013 16:20:53', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3927, 352, 'Бухгалтер-назоратчи  9', 2, 'A', 787, to_date('26-12-2013 16:21:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3928, 353, 'Бухгалтер-назоратчи 10', 2, 'A', 787, to_date('26-12-2013 16:21:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3929, 354, 'Бухгалтер-назоратчи 11', 2, 'A', 787, to_date('26-12-2013 16:21:10', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3930, 355, 'Кассир 2', 2, 'A', 787, to_date('26-12-2013 16:25:31', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3941, 356, 'Кассир 3', 2, 'A', 787, to_date('26-12-2013 16:25:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3942, 357, 'Кассир 4', 2, 'A', 787, to_date('26-12-2013 16:25:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3943, 358, 'Кассир 5', 2, 'A', 787, to_date('26-12-2013 16:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3944, 359, 'Кассир 6', 2, 'A', 787, to_date('26-12-2013 16:25:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3945, 360, 'Кассир 7', 2, 'A', 787, to_date('26-12-2013 16:25:53', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3946, 361, 'Кассир 8', 2, 'A', 787, to_date('26-12-2013 16:26:04', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3950, 362, 'Кассир 9', 2, 'A', 787, to_date('26-12-2013 16:26:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3951, 363, 'Кассир 10', 2, 'A', 787, to_date('26-12-2013 16:24:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3952, 364, 'Кассир 11', 2, 'A', 787, to_date('26-12-2013 16:25:03', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3953, 365, 'Кассир 12', 3, 'A', 787, to_date('26-02-2014 11:11:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3954, 366, 'Кассир 13', 3, 'A', 787, to_date('26-02-2014 11:11:46', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3955, 367, 'Кассир 14', 3, 'A', 787, to_date('26-02-2014 15:43:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3956, 368, 'Кассир 15', 3, 'A', 787, to_date('26-02-2014 15:43:28', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3959, 369, 'Кассир 16', 3, 'A', 787, to_date('26-02-2014 15:43:30', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3960, 370, 'Кассир 17', 3, 'A', 787, to_date('26-02-2014 15:43:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3961, 371, 'Кассир 18', 3, 'A', 787, to_date('26-02-2014 15:43:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3962, 372, 'Кассир 19', 3, 'A', 787, to_date('26-02-2014 15:43:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3984, 374, 'Омбор мудири', 2, 'A', 787, to_date('26-12-2013 16:15:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4002, 375, 'Бухгалтер назоратчи  12', 3, 'A', 787, to_date('26-02-2014 11:02:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4003, 376, 'Бухгалтер назоратчи  13', 3, 'A', 787, to_date('26-02-2014 11:02:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4004, 377, 'Бухгалтер назоратчи  14', 3, 'A', 787, to_date('26-02-2014 11:02:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4005, 378, 'Бухгалтер назоратчи  15', 3, 'A', 787, to_date('26-02-2014 11:02:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4006, 379, 'Бухгалтер назоратчи  16', 3, 'A', 787, to_date('26-02-2014 11:02:49', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4007, 380, 'Бухгалтер назоратчи  17', 3, 'A', 787, to_date('26-02-2014 11:02:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4008, 381, 'Бухгалтер назоратчи  18', 3, 'A', 787, to_date('26-02-2014 11:03:17', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4009, 382, 'Бухгалтер назоратчи  19', 3, 'A', 787, to_date('26-02-2014 11:03:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4010, 383, 'Бухгалтер назоратчи  20', 3, 'A', 787, to_date('26-02-2014 11:03:28', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4081, 432, 'Кассир (Узпайнет)', 3, 'A', 787, to_date('26-02-2014 11:11:17', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4121, 433, 'Бухгалтер-назоратчи 12', 2, 'A', 787, to_date('26-12-2013 16:21:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4122, 434, 'Бухгалтер-назоратчи 13', 2, 'A', 787, to_date('26-12-2013 16:21:20', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
commit;
prompt 300 records committed...
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4123, 435, 'Бухгалтер-назоратчи 14', 2, 'A', 787, to_date('26-12-2013 16:21:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4124, 436, 'Бухгалтер-назоратчи 15', 2, 'A', 787, to_date('26-12-2013 16:21:31', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4125, 437, 'Кассир 12', 2, 'A', 787, to_date('26-12-2013 16:25:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4126, 438, 'Кассир 13', 2, 'A', 787, to_date('26-12-2013 16:25:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4127, 439, 'Кассир 14', 2, 'A', 787, to_date('26-12-2013 16:25:18', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4128, 440, 'Кассир 15', 2, 'A', 787, to_date('26-12-2013 16:25:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4161, 443, 'Кассир 20', 3, 'A', 787, to_date('26-02-2014 15:43:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4182, 444, 'Кассир 21', 3, 'A', 787, to_date('26-02-2014 15:43:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4183, 445, 'Кассир 22', 3, 'A', 787, to_date('26-02-2014 15:43:51', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4184, 446, 'Кассир 23', 3, 'A', 787, to_date('26-02-2014 15:43:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4186, 447, 'Кассир 24', 3, 'A', 787, to_date('26-02-2014 15:44:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4187, 448, 'Кассир 25', 3, 'A', 787, to_date('26-02-2014 15:44:04', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4188, 449, 'Бухгалтер-назоратчи 21', 3, 'A', 787, to_date('26-02-2014 11:04:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4189, 450, 'Бухгалтер-назоратчи 22', 3, 'A', 787, to_date('26-02-2014 11:04:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4190, 451, 'Бухгалтер-назоратчи 23', 3, 'A', 787, to_date('26-02-2014 11:05:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4191, 452, 'Бухгалтер-назоратчи 24', 3, 'A', 787, to_date('26-02-2014 11:05:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4192, 453, 'Бухгалтер-назоратчи 25', 3, 'A', 787, to_date('26-02-2014 11:05:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4401, 464, 'Катта кассир (кирим касса)', 2, 'A', 787, to_date('26-12-2013 16:54:14', 'dd-mm-yyyy hh24:mi:ss'), 1, 27, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4422, 466, 'Хизмат кўрсатиш хоналари фарроши 1', 3, 'A', 787, to_date('06-01-2014 16:28:14', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4521, 472, 'Иш юритувчи', 1, 'A', 644, to_date('12-03-2014 11:08:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4721, 483, 'Техника хавф ва мех мухофаза кил ва ёнгин хавфсизлиги буйича етакчи мутахассиси', 1, 'A', 788, to_date('14-03-2014 11:16:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3801, 334, 'Бухгалтер-назоратчи 2', 3, 'A', 787, to_date('26-02-2014 11:04:27', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3821, 335, 'Бухгалтер-назоратчи 3', 3, 'A', 787, to_date('26-02-2014 11:05:37', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3822, 336, 'Бухгалтер-назоратчи 4', 3, 'A', 787, to_date('26-02-2014 11:05:41', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3823, 337, 'Бухгалтер-назоратчи 5', 3, 'A', 787, to_date('26-02-2014 11:05:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3825, 338, 'Бухгалтер-назоратчи 6', 3, 'A', 787, to_date('26-02-2014 11:05:55', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3826, 339, 'Бухгалтер-назоратчи 7', 3, 'A', 787, to_date('26-02-2014 11:06:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3881, 344, 'Бухгалтер-назоратчи  2', 2, 'A', 787, to_date('26-12-2013 16:20:08', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4021, 384, 'Бош юристконсульт', 3, 'A', 787, to_date('26-02-2014 11:01:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4022, 385, 'Етакчи юристконсульт', 3, 'A', 787, to_date('26-02-2014 11:09:06', 'dd-mm-yyyy hh24:mi:ss'), 1, 28, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4023, 386, 'Етакчи мутахассис (ички назорат буйича)', 3, 'A', 787, to_date('26-02-2014 11:08:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 28, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4242, 455, 'Бўлим бошлиги - банк операциялари бўлими бошлиги ўринбосари', 2, 'A', 788, to_date('24-03-2014 16:47:12', 'dd-mm-yyyy hh24:mi:ss'), 1, 23, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4025, 388, 'Кассир (кирим кассаси)', 3, 'A', 787, to_date('26-02-2014 11:10:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4026, 399, 'Кассир (махсус касса)', 3, 'A', 787, to_date('26-02-2014 11:10:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4027, 400, 'Кассир (кайта санок кассаси)', 3, 'A', 787, to_date('26-02-2014 11:10:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4028, 401, 'Кассир (чииким кассаси)', 3, 'A', 787, to_date('26-02-2014 11:11:20', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4281, 107, 'Шўъба мудири - филиал бошлиги ўринбосари', 2, 'A', 788, to_date('24-03-2014 16:51:49', 'dd-mm-yyyy hh24:mi:ss'), 1, 36, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4041, 402, '2-тоифали мутахассис (сўнги назоратчи)', 3, 'A', 787, to_date('26-02-2014 10:59:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4442, 467, 'Шўъба мудири (Тиббий)', 1, 'A', 787, to_date('13-01-2014 12:23:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 22, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4443, 468, 'Бош мутахассис (Тиббий)', 1, 'A', 787, to_date('13-01-2014 12:23:42', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4501, 471, 'Диспетчер', 1, 'A', 644, to_date('11-03-2014 17:22:16', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4561, 473, 'Архив мудири', 1, 'A', 644, to_date('13-03-2014 09:55:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2636, 76, 'Етакчи мутахассис (фукароларни кабул килиш буйича)', 1, 'A', 788, to_date('24-03-2014 17:19:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3721, 326, 'Кассир (чиким кассаси)', 1, 'A', 644, to_date('11-03-2014 17:00:03', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3722, 327, 'Кассир (кирим кассаси)', 1, 'A', 644, to_date('11-03-2014 16:59:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3723, 328, 'Кассир (валюта операциялари бўйича)', 1, 'A', 644, to_date('11-03-2014 16:59:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3861, 332, 'Бухгалтер-назоратчи', 2, 'A', 787, to_date('26-12-2013 16:20:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4061, 430, 'Бош мутахассис (сўнги назоратчи)', 2, 'A', 787, to_date('26-12-2013 16:19:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4062, 431, 'Етакчи мутахассис (сўнги назоратчи)', 2, 'A', 787, to_date('26-12-2013 16:23:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 25, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4141, 441, 'Етакчи мутахассис 1', 2, 'A', 787, to_date('26-12-2013 16:23:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 25, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4142, 442, 'Мутахассис 1', 2, 'A', 787, to_date('26-12-2013 16:12:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4201, 454, 'Назоратчи (кайта санаш кассаси)', 3, 'A', 787, to_date('26-02-2014 15:48:02', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4261, 456, 'Вилоят филиали маслахатчи', 2, 'A', 788, to_date('24-03-2014 16:52:04', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4321, 457, 'Етакчи мутахассис (назорат тафтиш бўйича)', 3, 'A', 787, to_date('26-02-2014 11:08:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 28, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4363, 460, 'Енгил автомобил хайдовчиси (двигател иш хажми - 1,8 литргача)', 2, 'A', 787, to_date('26-12-2013 15:50:03', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4361, 458, 'Енгил автомобил хайдовчиси (двигател иш хажми - 1,8 литргача)', 3, 'A', 787, to_date('26-02-2014 11:08:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4362, 459, 'Енгил автомобил хайдовчиси (двигател иш хажми - 1,8 дан 3,5 литргача)', 3, 'A', 787, to_date('17-12-2013 10:52:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 3, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4364, 461, 'Енгил автомобил хайдовчиси (двигател иш хажми - 1,8 дан 3,5 литргача)', 2, 'A', 787, to_date('26-12-2013 16:22:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 3, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4365, 462, 'Енгил автомобил хайдовчиси (двигател иш хажми - 1,8 литргача)', 1, 'A', 644, to_date('11-03-2014 16:59:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4366, 463, 'Енгил автомобил хайдовчиси (двигател иш хажми - 1,8 дан 3,5 литргача)', 1, 'A', 644, to_date('11-03-2014 16:59:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 3, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4461, 470, 'Пресс котиб', 1, 'A', 787, to_date('20-01-2014 09:50:41', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4581, 474, 'Автобус хайдовчиси', 1, 'A', 644, to_date('14-03-2014 09:10:11', 'dd-mm-yyyy hh24:mi:ss'), 1, 3, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4601, 475, 'Ховли супурувчи', 1, 'A', 644, to_date('14-03-2014 09:12:59', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4621, 476, 'Хизмат хоналари фарроши', 1, 'A', 644, to_date('14-03-2014 09:15:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4641, 477, 'Оператор-телефонист', 1, 'A', 644, to_date('14-03-2014 09:16:37', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4661, 478, 'Катта назоратчи', 1, 'A', 644, to_date('14-03-2014 09:17:46', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4681, 479, 'Катта бухгалтер-назоратчи (кайта санок кассаси)', 1, 'A', 644, to_date('14-03-2014 09:19:37', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4682, 480, 'Катта бухгалтер-назоратчи(кечки кассаси)', 1, 'A', 644, to_date('14-03-2014 09:20:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4683, 481, 'Катта бухгалтер-назоратчи', 1, 'A', 644, to_date('14-03-2014 09:21:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, 1);
commit;
prompt 369 records loaded
prompt Enabling triggers for SS_OK_POST...
alter table SS_OK_POST enable all triggers;
set feedback on
set define on
prompt Done.
