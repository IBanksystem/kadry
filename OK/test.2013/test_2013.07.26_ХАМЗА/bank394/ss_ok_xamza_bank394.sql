prompt PL/SQL Developer import file
prompt Created on 31 Июль 2013 г. by user
set feedback off
set define off
prompt Dropping SS_OK...
drop table SS_OK cascade constraints;
prompt Dropping SS_OK_ACADEMIC...
drop table SS_OK_ACADEMIC cascade constraints;
prompt Dropping SS_OK_ACTION_HIST...
drop table SS_OK_ACTION_HIST cascade constraints;
prompt Dropping SS_OK_ARMY...
drop table SS_OK_ARMY cascade constraints;
prompt Dropping SS_OK_ARMY_GROUP...
drop table SS_OK_ARMY_GROUP cascade constraints;
prompt Dropping SS_OK_ARTICLE...
drop table SS_OK_ARTICLE cascade constraints;
prompt Dropping SS_OK_BASE_MOVE...
drop table SS_OK_BASE_MOVE cascade constraints;
prompt Dropping SS_OK_BASIS...
drop table SS_OK_BASIS cascade constraints;
prompt Dropping SS_OK_CATEGORY...
drop table SS_OK_CATEGORY cascade constraints;
prompt Dropping SS_OK_CATEGORY_ARMY...
drop table SS_OK_CATEGORY_ARMY cascade constraints;
prompt Dropping SS_OK_CITY...
drop table SS_OK_CITY cascade constraints;
prompt Dropping SS_OK_COMMAND_PARAM...
drop table SS_OK_COMMAND_PARAM cascade constraints;
prompt Dropping SS_OK_COMMAND_TYPE...
drop table SS_OK_COMMAND_TYPE cascade constraints;
prompt Dropping SS_OK_DEGREE...
drop table SS_OK_DEGREE cascade constraints;
prompt Dropping SS_OK_DEPARTMENT...
drop table SS_OK_DEPARTMENT cascade constraints;
prompt Dropping SS_OK_DEPARTMENT_TYPE...
drop table SS_OK_DEPARTMENT_TYPE cascade constraints;
prompt Dropping SS_OK_DISTR...
drop table SS_OK_DISTR cascade constraints;
prompt Dropping SS_OK_DOSTUP...
drop table SS_OK_DOSTUP cascade constraints;
prompt Dropping SS_OK_EDUCATION...
drop table SS_OK_EDUCATION cascade constraints;
prompt Dropping SS_OK_EDUCATION_COUNT...
drop table SS_OK_EDUCATION_COUNT cascade constraints;
prompt Dropping SS_OK_EDUCATION_TITLE...
drop table SS_OK_EDUCATION_TITLE cascade constraints;
prompt Dropping SS_OK_ELECTION...
drop table SS_OK_ELECTION cascade constraints;
prompt Dropping SS_OK_FAMILY_STATUS...
drop table SS_OK_FAMILY_STATUS cascade constraints;
prompt Dropping SS_OK_FITNESS_ARMY...
drop table SS_OK_FITNESS_ARMY cascade constraints;
prompt Dropping SS_OK_GENDER...
drop table SS_OK_GENDER cascade constraints;
prompt Dropping SS_OK_GOSUBMIT...
drop table SS_OK_GOSUBMIT cascade constraints;
prompt Dropping SS_OK_GOSUBMIT_PROTOKOL...
drop table SS_OK_GOSUBMIT_PROTOKOL cascade constraints;
prompt Dropping SS_OK_HOSPITAL...
drop table SS_OK_HOSPITAL cascade constraints;
prompt Dropping SS_OK_INCREASE...
drop table SS_OK_INCREASE cascade constraints;
prompt Dropping SS_OK_INSTITUTION...
drop table SS_OK_INSTITUTION cascade constraints;
prompt Dropping SS_OK_KV_KURS...
drop table SS_OK_KV_KURS cascade constraints;
prompt Dropping SS_OK_LANGUAGE...
drop table SS_OK_LANGUAGE cascade constraints;
prompt Dropping SS_OK_LEAVE...
drop table SS_OK_LEAVE cascade constraints;
prompt Dropping SS_OK_LEVEL_BOSS...
drop table SS_OK_LEVEL_BOSS cascade constraints;
prompt Dropping SS_OK_LEVEL_DEPARTMENT...
drop table SS_OK_LEVEL_DEPARTMENT cascade constraints;
prompt Dropping SS_OK_LEVEL_LANGUAGE...
drop table SS_OK_LEVEL_LANGUAGE cascade constraints;
prompt Dropping SS_OK_MILITARY_RANK...
drop table SS_OK_MILITARY_RANK cascade constraints;
prompt Dropping SS_OK_MIN_ZP...
drop table SS_OK_MIN_ZP cascade constraints;
prompt Dropping SS_OK_MOTIVE_DISMISSIAL...
drop table SS_OK_MOTIVE_DISMISSIAL cascade constraints;
prompt Dropping SS_OK_NATIONALITY...
drop table SS_OK_NATIONALITY cascade constraints;
prompt Dropping SS_OK_NCI...
drop table SS_OK_NCI cascade constraints;
prompt Dropping SS_OK_ORG_BUSINESS_VOYAGE...
drop table SS_OK_ORG_BUSINESS_VOYAGE cascade constraints;
prompt Dropping SS_OK_PARTY...
drop table SS_OK_PARTY cascade constraints;
prompt Dropping SS_OK_PASSPORT_TYPE...
drop table SS_OK_PASSPORT_TYPE cascade constraints;
prompt Dropping SS_OK_PENALTY...
drop table SS_OK_PENALTY cascade constraints;
prompt Dropping SS_OK_PERS_COL_DFLT...
drop table SS_OK_PERS_COL_DFLT cascade constraints;
prompt Dropping SS_OK_PERS_QUERY...
drop table SS_OK_PERS_QUERY cascade constraints;
prompt Dropping SS_OK_PERS_QUERY_COL...
drop table SS_OK_PERS_QUERY_COL cascade constraints;
prompt Dropping SS_OK_POST...
drop table SS_OK_POST cascade constraints;
prompt Dropping SS_OK_POST_GROUP...
drop table SS_OK_POST_GROUP cascade constraints;
prompt Dropping SS_OK_PRIVILEGE...
drop table SS_OK_PRIVILEGE cascade constraints;
prompt Dropping SS_OK_PROFMEMBER...
drop table SS_OK_PROFMEMBER cascade constraints;
prompt Dropping SS_OK_QUALIFICATION...
drop table SS_OK_QUALIFICATION cascade constraints;
prompt Dropping SS_OK_REGION...
drop table SS_OK_REGION cascade constraints;
prompt Dropping SS_OK_REGPLACE...
drop table SS_OK_REGPLACE cascade constraints;
prompt Dropping SS_OK_REG_TYPE...
drop table SS_OK_REG_TYPE cascade constraints;
prompt Dropping SS_OK_RELATION...
drop table SS_OK_RELATION cascade constraints;
prompt Dropping SS_OK_REZERV...
drop table SS_OK_REZERV cascade constraints;
prompt Dropping SS_OK_REZERVE...
drop table SS_OK_REZERVE cascade constraints;
prompt Dropping SS_OK_SPECIAL...
drop table SS_OK_SPECIAL cascade constraints;
prompt Dropping SS_OK_STAFF...
drop table SS_OK_STAFF cascade constraints;
prompt Dropping SS_OK_STATUS...
drop table SS_OK_STATUS cascade constraints;
prompt Dropping SS_OK_STR...
drop table SS_OK_STR cascade constraints;
prompt Dropping SS_OK_TEMPLATE_COMMAND...
drop table SS_OK_TEMPLATE_COMMAND cascade constraints;
prompt Dropping SS_OK_THEME_BUSINESS_VOYAGE...
drop table SS_OK_THEME_BUSINESS_VOYAGE cascade constraints;
prompt Dropping SS_OK_TYPE_FORCE...
drop table SS_OK_TYPE_FORCE cascade constraints;
prompt Dropping SS_OK_TYPE_PERIOD...
drop table SS_OK_TYPE_PERIOD cascade constraints;
prompt Dropping SS_OK_VACANCY...
drop table SS_OK_VACANCY cascade constraints;
prompt Dropping SS_OK_VID_EDUCATION...
drop table SS_OK_VID_EDUCATION cascade constraints;
prompt Dropping SS_OK_YOUTH...
drop table SS_OK_YOUTH cascade constraints;
prompt Dropping SS_OK_ZP_RATE...
drop table SS_OK_ZP_RATE cascade constraints;
prompt Dropping SS_OK_ZP_RATE_TYPE...
drop table SS_OK_ZP_RATE_TYPE cascade constraints;
prompt Creating SS_OK...
create table SS_OK
(
  ID             NUMBER(6) not null,
  NCI_ID         CHAR(2) not null,
  SS_NAME        VARCHAR2(250),
  NCI_TBL_NAME   VARCHAR2(50),
  NCI_ID_NAME    VARCHAR2(50),
  NCI_NAME       VARCHAR2(50),
  SS_OK_TBL_NAME VARCHAR2(50),
  SS_OK_ID_NAME  VARCHAR2(50),
  SS_OK_NAME     VARCHAR2(50)
)
;
comment on table SS_OK
  is 'информация по справочникам в модуле кадры';
comment on column SS_OK.ID
  is 'код справочника в модуле кадры';
comment on column SS_OK.NCI_ID
  is 'код справочника цб';
comment on column SS_OK.SS_NAME
  is 'наименование справочника';
comment on column SS_OK.NCI_TBL_NAME
  is 'наименование таблицы справочника цб';
comment on column SS_OK.NCI_ID_NAME
  is 'наименование поля id в справочнике цб';
comment on column SS_OK.NCI_NAME
  is 'наименование поля name в справочнике цб';
comment on column SS_OK.SS_OK_TBL_NAME
  is 'наименование таблицы справочника в модуле кадры';
comment on column SS_OK.SS_OK_ID_NAME
  is 'наименование поля id в справочнике модуля кадры';
comment on column SS_OK.SS_OK_NAME
  is 'наименование поля name в справочнике модуля кадры';
alter table SS_OK
  add constraint SS_OK_PK primary key (NCI_ID);

prompt Creating SS_OK_ACADEMIC...
create table SS_OK_ACADEMIC
(
  ACADEMIC_ID   NUMBER(8) not null,
  ACADEMIC_CODE NUMBER(2) not null,
  ACADEMIC_NAME VARCHAR2(50) not null,
  STATE_NOTES   CHAR(1) not null,
  EMP_CODE      NUMBER(6) not null,
  INS_DATE      DATE not null
)
;
comment on table SS_OK_ACADEMIC
  is 'Справочник ученых званий';
comment on column SS_OK_ACADEMIC.ACADEMIC_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_ACADEMIC.ACADEMIC_CODE
  is 'Код ученого звания	Присваивается  начиная с "1" при вызове функции "Добавить", видимое поле, обязательное для заполнения';
comment on column SS_OK_ACADEMIC.ACADEMIC_NAME
  is 'Наименование ученого звания	Вводится с клавиатуры, видимое поле обязательное для заполнения';
comment on column SS_OK_ACADEMIC.STATE_NOTES
  is 'Признак активности: A - активная, P - пассивная.Вводится с клавиатуры, видимое поле, по умолчанию ставится признак А активная';
comment on column SS_OK_ACADEMIC.EMP_CODE
  is 'Имя пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, невидимое поле, обязательное для заполнения';
comment on column SS_OK_ACADEMIC.INS_DATE
  is 'Дата и время  ввода информации	SYSdate not null, невидимое поле обязательное для заполнения';
alter table SS_OK_ACADEMIC
  add constraint SS_OK_ACADEMIC_PK primary key (ACADEMIC_CODE, STATE_NOTES);
alter table SS_OK_ACADEMIC
  add constraint SS_OK_ACADEMIC_UK unique (ACADEMIC_CODE);
alter table SS_OK_ACADEMIC
  add constraint SS_OK_ACADEMIC_CHK_CODE
  check (ACADEMIC_code>0);

prompt Creating SS_OK_ACTION_HIST...
create table SS_OK_ACTION_HIST
(
  ACTION_HIST_ID   NUMBER(8) not null,
  ACTION_HIST_NAME VARCHAR2(50) not null
)
;
comment on table SS_OK_ACTION_HIST
  is 'Признак записи в истории';
alter table SS_OK_ACTION_HIST
  add constraint SS_OK_ACTION_HIST_PK primary key (ACTION_HIST_ID);

prompt Creating SS_OK_ARMY...
create table SS_OK_ARMY
(
  ARMY_ID   NUMBER(8) not null,
  ARMY_CODE NUMBER(1) not null,
  ARMY_TYPE VARCHAR2(30) not null
)
;
comment on table SS_OK_ARMY
  is 'Справочник Отношение к военной службе';
comment on column SS_OK_ARMY.ARMY_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_ARMY.ARMY_CODE
  is 'Код типа отношения	Присваивается  начиная с "1" при вызове функции "Добавить", видимое поле, обязательное для заполнения';
comment on column SS_OK_ARMY.ARMY_TYPE
  is 'Тип отношения 1 - военнообязанный2 - не военнообязанный	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
alter table SS_OK_ARMY
  add constraint SS_OK_ARMY_PK primary key (ARMY_ID);
alter table SS_OK_ARMY
  add constraint SS_OK_ARMY_UK unique (ARMY_CODE);
alter table SS_OK_ARMY
  add constraint SS_OK_ARMY_CHK_CODE
  check (ARMY_code>0);

prompt Creating SS_OK_ARMY_GROUP...
create table SS_OK_ARMY_GROUP
(
  ARMY_GROUP_ID   NUMBER(8) not null,
  ARMY_GROUP_CODE NUMBER(5) not null,
  ARMY_GROUP_NAME VARCHAR2(250) not null,
  STATE_NOTES     CHAR(1) not null,
  EMP_CODE        NUMBER(6) not null,
  INS_DATE        DATE not null
)
;
comment on table SS_OK_ARMY_GROUP
  is 'группа учета';
comment on column SS_OK_ARMY_GROUP.ARMY_GROUP_ID
  is 'id записи';
comment on column SS_OK_ARMY_GROUP.ARMY_GROUP_CODE
  is 'код ';
comment on column SS_OK_ARMY_GROUP.ARMY_GROUP_NAME
  is 'название';
comment on column SS_OK_ARMY_GROUP.STATE_NOTES
  is 'A-активная';
comment on column SS_OK_ARMY_GROUP.EMP_CODE
  is 'код сотрудника вводившиего записи';
comment on column SS_OK_ARMY_GROUP.INS_DATE
  is 'вермя ввода sysdate';
alter table SS_OK_ARMY_GROUP
  add constraint SS_OK_ARMY_GROUP_PK primary key (ARMY_GROUP_CODE, STATE_NOTES);
alter table SS_OK_ARMY_GROUP
  add constraint SS_OK_ARMY_GROUP_UK unique (ARMY_GROUP_CODE);
alter table SS_OK_ARMY_GROUP
  add constraint SS_OK_ARMY_GROUP_CHK_CODE
  check (army_group_code>0);

prompt Creating SS_OK_ARTICLE...
create table SS_OK_ARTICLE
(
  ARTICLE_ID        NUMBER(8) not null,
  ARTICLE_CODE      NUMBER(3) not null,
  ARTICLE_NUM       VARCHAR2(20) not null,
  ARTICLE_NAME      VARCHAR2(50) not null,
  ARTICLE_CHARACTER VARCHAR2(250) not null,
  STATE_NOTES       CHAR(1) not null,
  EMP_CODE          NUMBER(6) not null,
  INS_DATE          DATE not null
)
;
comment on table SS_OK_ARTICLE
  is 'Справочник статей КЗОТа';
comment on column SS_OK_ARTICLE.ARTICLE_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_ARTICLE.ARTICLE_CODE
  is 'Код статьи 	Присваивается  начиная с "1" при вызове функции "Добавить", видимое поле, обязательное для заполнения';
comment on column SS_OK_ARTICLE.ARTICLE_NUM
  is 'Номер статьи	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column SS_OK_ARTICLE.ARTICLE_NAME
  is 'Наименование статьи	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column SS_OK_ARTICLE.ARTICLE_CHARACTER
  is 'Описание статьи	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column SS_OK_ARTICLE.STATE_NOTES
  is 'Признак активности: A - активная, P - пассивная.Вводится с клавиатуры, видимое поле, по умолчанию ставится признак А активная';
comment on column SS_OK_ARTICLE.EMP_CODE
  is 'Имя пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, невидимое поле, обязательное для заполнения';
comment on column SS_OK_ARTICLE.INS_DATE
  is 'Дата и время  ввода информации	SYSdate not null, невидимое поле обязательное для заполнения';
alter table SS_OK_ARTICLE
  add constraint SS_OK_ARTICLE_PK primary key (ARTICLE_CODE, STATE_NOTES);
alter table SS_OK_ARTICLE
  add constraint SS_OK_ARTICLE_UK unique (ARTICLE_CODE);
alter table SS_OK_ARTICLE
  add constraint SS_OK_ARTICLE_CHK_CODE
  check (ARTICLE_code>0);

prompt Creating SS_OK_BASE_MOVE...
create table SS_OK_BASE_MOVE
(
  BASE_MOVE_ID   NUMBER(8) not null,
  BASE_MOVE_CODE NUMBER(3) not null,
  BASE_MOVE_NAME VARCHAR2(150) not null,
  STATE_NOTES    CHAR(1) not null,
  EMP_CODE       NUMBER(6) not null,
  INS_DATE       DATE not null
)
;
comment on table SS_OK_BASE_MOVE
  is 'причины перемещения';
comment on column SS_OK_BASE_MOVE.BASE_MOVE_ID
  is 'id';
comment on column SS_OK_BASE_MOVE.BASE_MOVE_CODE
  is 'код';
comment on column SS_OK_BASE_MOVE.BASE_MOVE_NAME
  is 'название';
comment on column SS_OK_BASE_MOVE.STATE_NOTES
  is 'A';
comment on column SS_OK_BASE_MOVE.EMP_CODE
  is '99';
comment on column SS_OK_BASE_MOVE.INS_DATE
  is 'sysdate';
alter table SS_OK_BASE_MOVE
  add constraint SS_OK_BASE_MOVE_PK primary key (BASE_MOVE_CODE, STATE_NOTES);
alter table SS_OK_BASE_MOVE
  add constraint SS_OK_BASE_MOVE_UK unique (BASE_MOVE_CODE);
alter table SS_OK_BASE_MOVE
  add constraint SS_OK_BASE_MOVE_CHK_CODE
  check (BASE_MOVE_code>0);

prompt Creating SS_OK_BASIS...
create table SS_OK_BASIS
(
  BASIS_ID   NUMBER(8) not null,
  BASIS_CODE NUMBER(1) not null,
  BASIS_NAME VARCHAR2(50) not null
)
;
comment on table SS_OK_BASIS
  is 'Системный справочник наличия вакансии';
comment on column SS_OK_BASIS.BASIS_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_BASIS.BASIS_CODE
  is 'Код  наличия базового  образования	1 - Базовое2 -  Другое';
comment on column SS_OK_BASIS.BASIS_NAME
  is 'Наименование кода наличия базового  образования	 Заполняется разработчиками 1 - Базовое2 -  Другое';
alter table SS_OK_BASIS
  add constraint SS_OK_BASIS_PK primary key (BASIS_ID);
alter table SS_OK_BASIS
  add constraint SS_OK_BASIS_UK unique (BASIS_CODE);
alter table SS_OK_BASIS
  add constraint SS_OK_BASIS_CHK_CODE
  check (BASIS_code>0);

prompt Creating SS_OK_CATEGORY...
create table SS_OK_CATEGORY
(
  CATEGORY_CODE NUMBER(2) not null,
  CATEGORY_NAME VARCHAR2(10) not null,
  CATEGORY_RATE NUMBER(9,3) not null,
  SALARY        NUMBER(15) not null,
  STATE_NOTES   CHAR(1),
  EMP_CODE      NUMBER(6),
  INS_DATE      DATE
)
;
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
  add constraint SS_OK_CATEGORY_PK primary key (CATEGORY_CODE);

prompt Creating SS_OK_CATEGORY_ARMY...
create table SS_OK_CATEGORY_ARMY
(
  CATEGORY_ARMY_ID   NUMBER(8) not null,
  CATEGORY_ARMY_CODE NUMBER(5) not null,
  CATEGORY_ARMY_NAME VARCHAR2(250) not null,
  STATE_NOTES        CHAR(1) not null,
  EMP_CODE           NUMBER(6) not null,
  INS_DATE           DATE not null
)
;
comment on table SS_OK_CATEGORY_ARMY
  is 'категория учета (МО)';
comment on column SS_OK_CATEGORY_ARMY.CATEGORY_ARMY_ID
  is 'id';
comment on column SS_OK_CATEGORY_ARMY.CATEGORY_ARMY_CODE
  is 'код';
comment on column SS_OK_CATEGORY_ARMY.CATEGORY_ARMY_NAME
  is 'название';
comment on column SS_OK_CATEGORY_ARMY.STATE_NOTES
  is 'A';
comment on column SS_OK_CATEGORY_ARMY.EMP_CODE
  is '99';
comment on column SS_OK_CATEGORY_ARMY.INS_DATE
  is 'sysdate';
alter table SS_OK_CATEGORY_ARMY
  add constraint SS_OK_CATEGORY_ARMY_PK primary key (CATEGORY_ARMY_CODE, STATE_NOTES);
alter table SS_OK_CATEGORY_ARMY
  add constraint SS_OK_CATEGORY_ARMY_UK unique (CATEGORY_ARMY_CODE);
alter table SS_OK_CATEGORY_ARMY
  add constraint SS_OK_CATEGORY_ARMY_CHK_CODE
  check (CATEGORY_ARMY_code>0);

prompt Creating SS_OK_CITY...
create table SS_OK_CITY
(
  CITY_CODE    NUMBER(9) not null,
  CITY_NAME    VARCHAR2(100),
  CITY_CAPITAL NUMBER(1),
  STATE_NOTES  CHAR(1),
  EMP_CODE     NUMBER(6),
  INS_DATE     DATE
)
;
comment on table SS_OK_CITY
  is 'справочник города';
comment on column SS_OK_CITY.CITY_CODE
  is 'код города';
comment on column SS_OK_CITY.CITY_NAME
  is 'название города';
comment on column SS_OK_CITY.CITY_CAPITAL
  is 'признак 1-столица 0-нет';
comment on column SS_OK_CITY.STATE_NOTES
  is 'A-активный';
comment on column SS_OK_CITY.EMP_CODE
  is 'код сотрудника ОК';
comment on column SS_OK_CITY.INS_DATE
  is 'дата вставки записи';
alter table SS_OK_CITY
  add constraint SS_OK_CITY_PK primary key (CITY_CODE);

prompt Creating SS_OK_COMMAND_PARAM...
create table SS_OK_COMMAND_PARAM
(
  COMMAND_PARAM_ID     NUMBER(8) not null,
  COMMAND_PARAM_CODE   NUMBER(2) not null,
  COMMAND_PARAM_NAME   VARCHAR2(20) not null,
  COMMAND_PARAM_SELECT VARCHAR2(200) not null
)
;
comment on table SS_OK_COMMAND_PARAM
  is 'системный справочник параметров приказов';
comment on column SS_OK_COMMAND_PARAM.COMMAND_PARAM_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_COMMAND_PARAM.COMMAND_PARAM_CODE
  is 'Код параметра  приказа	Присваивается начиная с "1" при вызове функции "Добавить", видимое поле, обязательное для заполнения';
comment on column SS_OK_COMMAND_PARAM.COMMAND_PARAM_NAME
  is 'Наименование параметра приказа 	Заполняется разработчиками';
comment on column SS_OK_COMMAND_PARAM.COMMAND_PARAM_SELECT
  is 'откуда возьмется значение параметра (select который выдаст список возможных значений)';
alter table SS_OK_COMMAND_PARAM
  add constraint SS_OK_COMMAND_PARAM_PK primary key (COMMAND_PARAM_ID);
alter table SS_OK_COMMAND_PARAM
  add constraint SS_OK_COMMAND_PARAM_UK unique (COMMAND_PARAM_CODE);
alter table SS_OK_COMMAND_PARAM
  add constraint SS_OK_COMMAND_PARAM_CHK_CODE
  check (COMMAND_PARAM_code>0);

prompt Creating SS_OK_COMMAND_TYPE...
create table SS_OK_COMMAND_TYPE
(
  COMMAND_TYPE_ID   NUMBER(8) not null,
  COMMAND_TYPE_CODE NUMBER(2) not null,
  COMMAND_TYPE_NAME VARCHAR2(250) not null,
  STATE_NOTES       CHAR(1) not null,
  EMP_CODE          NUMBER(6) not null,
  INS_DATE          DATE not null
)
;
comment on table SS_OK_COMMAND_TYPE
  is 'Справочник типов приказов';
comment on column SS_OK_COMMAND_TYPE.COMMAND_TYPE_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_COMMAND_TYPE.COMMAND_TYPE_CODE
  is 'Код типа приказа	Присваивается  начиная с "1" при вызове функции "Добавить", видимое поле, обязательное для заполнения';
comment on column SS_OK_COMMAND_TYPE.COMMAND_TYPE_NAME
  is 'Наименование Тип приказа (увольнение и т.д) not null, --	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column SS_OK_COMMAND_TYPE.STATE_NOTES
  is 'Признак активности: A - активная, P - пассивная.Вводится с клавиатуры, видимое поле, по умолчанию ставится признак А активная';
comment on column SS_OK_COMMAND_TYPE.EMP_CODE
  is 'Имя пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, невидимое поле, обязательное для заполнения';
comment on column SS_OK_COMMAND_TYPE.INS_DATE
  is 'Дата и время  ввода информации	SYSdate not null, невидимое поле обязательное для заполнения';
alter table SS_OK_COMMAND_TYPE
  add constraint SS_OK_COMMAND_TYPE_PK primary key (COMMAND_TYPE_CODE, STATE_NOTES);
alter table SS_OK_COMMAND_TYPE
  add constraint SS_OK_COMMAND_TYPE_UK unique (COMMAND_TYPE_CODE);
alter table SS_OK_COMMAND_TYPE
  add constraint SS_OK_COMMAND_TYPE_CHK_CODE
  check (COMMAND_TYPE_code>0);

prompt Creating SS_OK_DEGREE...
create table SS_OK_DEGREE
(
  DEGREE_ID   NUMBER(8) not null,
  DEGREE_CODE NUMBER(1) not null,
  DEGREE_NAME VARCHAR2(50) not null,
  STATE_NOTES CHAR(1) not null,
  EMP_CODE    NUMBER(6) not null,
  INS_DATE    DATE not null
)
;
comment on table SS_OK_DEGREE
  is 'Справочник ученых степеней';
comment on column SS_OK_DEGREE.DEGREE_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_DEGREE.DEGREE_CODE
  is 'Код ученой степени	Присваивается начиная с "1" при вызове функции "Добавить", видимое поле , обязательное для заполнения';
comment on column SS_OK_DEGREE.DEGREE_NAME
  is 'Наименование ученой степени	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column SS_OK_DEGREE.STATE_NOTES
  is 'Признак активности: A - активная, P - пассивная.Вводится с клавиатуры, видимое поле, по умолчанию ставится признак А активная';
comment on column SS_OK_DEGREE.EMP_CODE
  is 'Имя пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, невидимое поле, обязательное для заполнения';
comment on column SS_OK_DEGREE.INS_DATE
  is 'Дата и время  ввода информации	SYSdate not null, невидимое поле обязательное для заполнения';
alter table SS_OK_DEGREE
  add constraint SS_OK_DEGREE_PK primary key (DEGREE_CODE, STATE_NOTES);
alter table SS_OK_DEGREE
  add constraint SS_OK_DEGREE_UK unique (DEGREE_CODE);
alter table SS_OK_DEGREE
  add constraint SS_OK_DEGREE_CHK_CODE
  check (DEGREE_code>0);

prompt Creating SS_OK_DEPARTMENT...
create table SS_OK_DEPARTMENT
(
  DEPARTMENT_ID         NUMBER(8) not null,
  BRANCH                CHAR(5) not null,
  DEPARTMENT_CODE       NUMBER(9) not null,
  DEPARTMENT_NAME       VARCHAR2(250) not null,
  DEPARTMENT_NUM        NUMBER(9) not null,
  DEPARTMENT_TYPE_CODE  NUMBER(2) not null,
  HIGH_DEP_CODE         NUMBER(9),
  STATE_NOTES           CHAR(1) not null,
  EMP_CODE              NUMBER(6) not null,
  INS_DATE              DATE not null,
  LEVEL_DEPARTMENT_CODE NUMBER(1) not null
)
;
comment on table SS_OK_DEPARTMENT
  is 'Справочник отделов';
comment on column SS_OK_DEPARTMENT.DEPARTMENT_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_DEPARTMENT.BRANCH
  is 'МФО отделения	Выбирается из таблицы S_MFO поле BANK_ID, невидимое поле, обязательное для заполнения';
comment on column SS_OK_DEPARTMENT.DEPARTMENT_CODE
  is 'Код отдела	Присваивается  начиная с "1" при вызове функции "Добавить", видимое поле, обязательное для заполнения';
comment on column SS_OK_DEPARTMENT.DEPARTMENT_NAME
  is 'Наименование отдела 	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column SS_OK_DEPARTMENT.DEPARTMENT_NUM
  is 'Номер отдела	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column SS_OK_DEPARTMENT.DEPARTMENT_TYPE_CODE
  is 'Код типа  отдела	Выбирается из справочника SS_OK_DEPARTAMENT_TYPE, поле DEPARTAMENT_TYPE _CODE';
comment on column SS_OK_DEPARTMENT.HIGH_DEP_CODE
  is 'Код вышестоящего подразделения';
comment on column SS_OK_DEPARTMENT.STATE_NOTES
  is 'Признак активности: A - активная, P - пассивная.Вводится с клавиатуры, видимое поле, по умолчанию ставится признак А активная';
comment on column SS_OK_DEPARTMENT.EMP_CODE
  is 'Имя пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, невидимое поле, обязательное для заполнения';
comment on column SS_OK_DEPARTMENT.INS_DATE
  is 'Дата и время  ввода информации	SYSdate not null, невидимое поле обязательное для заполнения';
alter table SS_OK_DEPARTMENT
  add constraint SS_OK_DEPARTMENT_PK primary key (DEPARTMENT_CODE, STATE_NOTES);
alter table SS_OK_DEPARTMENT
  add constraint SS_OK_DEPARTMENT_UK unique (BRANCH, LEVEL_DEPARTMENT_CODE, DEPARTMENT_CODE);
alter table SS_OK_DEPARTMENT
  add constraint SS_OK_DEPARTMENT_CHK_CODE
  check (DEPARTMENT_code>0);

prompt Creating SS_OK_DEPARTMENT_TYPE...
create table SS_OK_DEPARTMENT_TYPE
(
  DEPARTMENT_TYPE_ID   NUMBER(8) not null,
  DEPARTMENT_TYPE_CODE NUMBER(2) not null,
  DEPARTMENT_TYPE_NAME VARCHAR2(50) not null,
  STATE_NOTES          CHAR(1) not null,
  EMP_CODE             NUMBER(6) not null,
  INS_DATE             DATE not null
)
;
comment on table SS_OK_DEPARTMENT_TYPE
  is 'Справочник й';
comment on column SS_OK_DEPARTMENT_TYPE.DEPARTMENT_TYPE_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_DEPARTMENT_TYPE.DEPARTMENT_TYPE_CODE
  is 'Код типа  отдела	Присваивается  начиная с "1" при вызове функции "Добавить", видимое поле, обязательное для заполнения';
comment on column SS_OK_DEPARTMENT_TYPE.DEPARTMENT_TYPE_NAME
  is 'Наименование  признака отдела (валютный пункт, филиал и т.д) not null, -- 	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column SS_OK_DEPARTMENT_TYPE.STATE_NOTES
  is 'Признак активности: A - активная, P - пассивная.Вводится с клавиатуры, видимое поле, по умолчанию ставится признак А активная';
comment on column SS_OK_DEPARTMENT_TYPE.EMP_CODE
  is 'Имя пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, невидимое поле, обязательное для заполнения';
comment on column SS_OK_DEPARTMENT_TYPE.INS_DATE
  is 'Дата и время  ввода информации	SYSdate not null, невидимое поле обязательное для заполнения';
alter table SS_OK_DEPARTMENT_TYPE
  add constraint SS_OK_DEPARTMENT_TYPE_PK primary key (DEPARTMENT_TYPE_CODE, STATE_NOTES);
alter table SS_OK_DEPARTMENT_TYPE
  add constraint SS_OK_DEPARTMENT_TYPE_UK unique (DEPARTMENT_TYPE_CODE);
alter table SS_OK_DEPARTMENT_TYPE
  add constraint SS_OK_DEPARTMENT_TYPE_CHK_CODE
  check (DEPARTMENT_TYPE_code>0);

prompt Creating SS_OK_DISTR...
create table SS_OK_DISTR
(
  REGION_ID  CHAR(2),
  DISTR      CHAR(3),
  DISTR_NAME VARCHAR2(30)
)
;
comment on table SS_OK_DISTR
  is 'справочник Районы';
comment on column SS_OK_DISTR.REGION_ID
  is 'код области или г.Ташкента';
comment on column SS_OK_DISTR.DISTR
  is 'код  района области или  г.Ташкента';
comment on column SS_OK_DISTR.DISTR_NAME
  is 'название района области или  г.Ташкента';

prompt Creating SS_OK_DOSTUP...
create table SS_OK_DOSTUP
(
  USER_NAME  VARCHAR2(50) not null,
  TABLE_NAME VARCHAR2(50) not null
)
;
create index SS_OK_DOSTUP_PK on SS_OK_DOSTUP (USER_NAME, TABLE_NAME);

prompt Creating SS_OK_EDUCATION...
create table SS_OK_EDUCATION
(
  EDUCATION_ID   NUMBER(8) not null,
  EDUCATION_CODE NUMBER(3) not null,
  EDUCATION_NAME VARCHAR2(20) not null,
  STATE_NOTES    CHAR(1) not null,
  EMP_CODE       NUMBER(6) not null,
  INS_DATE       DATE not null
)
;
comment on table SS_OK_EDUCATION
  is 'Справочник образований';
comment on column SS_OK_EDUCATION.EDUCATION_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_EDUCATION.EDUCATION_CODE
  is 'Код образования 	Присваивается начиная с "1" при вызове функции "Добавить"';
comment on column SS_OK_EDUCATION.EDUCATION_NAME
  is 'Наименование образования	Вводится с клавиатуры';
comment on column SS_OK_EDUCATION.STATE_NOTES
  is 'Признак активности записиA - активная записьP - пассивная запись	Вводится с клавиатуры, видимое поле, по умолчанию ставится признак  -А -активная запись';
comment on column SS_OK_EDUCATION.EMP_CODE
  is 'Код пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID';
comment on column SS_OK_EDUCATION.INS_DATE
  is 'Дата и время  ввода ин-и 	SYSdate not null';
alter table SS_OK_EDUCATION
  add constraint SS_OK_EDUCATION_PK primary key (EDUCATION_CODE, STATE_NOTES);
alter table SS_OK_EDUCATION
  add constraint SS_OK_EDUCATION_UK unique (EDUCATION_CODE);
alter table SS_OK_EDUCATION
  add constraint SS_OK_EDUCATION_CHK_CODE
  check (education_code>0);

prompt Creating SS_OK_EDUCATION_COUNT...
create table SS_OK_EDUCATION_COUNT
(
  EDUCATION_COUNT_CODE NUMBER(5),
  EDUCATION_COUNT_NAME VARCHAR2(50)
)
;

prompt Creating SS_OK_EDUCATION_TITLE...
create table SS_OK_EDUCATION_TITLE
(
  EDUCATION_TITLE_ID   NUMBER(8) not null,
  EDUCATION_TITLE_CODE NUMBER(3) not null,
  EDUCATION_TITLE_NAME VARCHAR2(80) not null,
  STATE_NOTES          CHAR(1) not null,
  EMP_CODE             NUMBER(6) not null,
  INS_DATE             DATE not null
)
;
comment on table SS_OK_EDUCATION_TITLE
  is 'справочник наименований образований';
comment on column SS_OK_EDUCATION_TITLE.EDUCATION_TITLE_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_EDUCATION_TITLE.EDUCATION_TITLE_CODE
  is 'Код Начинается с "1" при вызове функции "Добавить" видимое поле, обязательное для заполнения';
comment on column SS_OK_EDUCATION_TITLE.EDUCATION_TITLE_NAME
  is 'НаименованиеВводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column SS_OK_EDUCATION_TITLE.STATE_NOTES
  is 'Признак активности записиA - активная записьP - пассивная запись	Вводится с клавиатуры, видимое поле, по умолчанию ставится признак  -А -активная запись';
comment on column SS_OK_EDUCATION_TITLE.EMP_CODE
  is 'Код пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, не видимое поле, обязательное для заполнения';
comment on column SS_OK_EDUCATION_TITLE.INS_DATE
  is 'Дата и время  ввода информации 	SYSdate not null, не видимое поле, обязательное для заполнения';
alter table SS_OK_EDUCATION_TITLE
  add constraint SS_OK_EDUCATION_TITLE_PK primary key (EDUCATION_TITLE_CODE, STATE_NOTES);
alter table SS_OK_EDUCATION_TITLE
  add constraint SS_OK_EDUCATION_TITLE_UK unique (EDUCATION_TITLE_CODE);
alter table SS_OK_EDUCATION_TITLE
  add constraint SS_OK_EDUCATION_TITLE_CHK_CODE
  check (education_title_code>0);

prompt Creating SS_OK_ELECTION...
create table SS_OK_ELECTION
(
  ELECTION_ID      NUMBER(8) not null,
  ELECTION_CODE    NUMBER(3) not null,
  ELECTION_NAME    VARCHAR2(20) not null,
  ELECTION_ADDRESS VARCHAR2(250) not null,
  STATE_NOTES      CHAR(1) not null,
  EMP_CODE         NUMBER(6) not null,
  INS_DATE         DATE not null
)
;
comment on table SS_OK_ELECTION
  is 'Справочник исполнительных органов ';
comment on column SS_OK_ELECTION.ELECTION_ID
  is 'id';
comment on column SS_OK_ELECTION.ELECTION_CODE
  is 'код исполнительных органов ';
comment on column SS_OK_ELECTION.ELECTION_NAME
  is 'название исполнительных органов ';
comment on column SS_OK_ELECTION.ELECTION_ADDRESS
  is 'адрес исполнительных органов ';
comment on column SS_OK_ELECTION.STATE_NOTES
  is 'A';
comment on column SS_OK_ELECTION.EMP_CODE
  is '99';
comment on column SS_OK_ELECTION.INS_DATE
  is 'sysdate';
alter table SS_OK_ELECTION
  add constraint SS_OK_ELECTION_PK primary key (ELECTION_CODE, STATE_NOTES);
alter table SS_OK_ELECTION
  add constraint SS_OK_ELECTION_UK unique (ELECTION_CODE);
alter table SS_OK_ELECTION
  add constraint SS_OK_ELECTION_CHK_CODE
  check (ELECTION_code>0);

prompt Creating SS_OK_FAMILY_STATUS...
create table SS_OK_FAMILY_STATUS
(
  FAMILY_STATUS_CODE NUMBER(1) not null,
  GENDER_CODE        NUMBER(1) not null,
  FAMILY_STATUS_NAME VARCHAR2(50) not null
)
;
comment on table SS_OK_FAMILY_STATUS
  is 'Системный справочник "семейное положение"';
comment on column SS_OK_FAMILY_STATUS.FAMILY_STATUS_CODE
  is 'Код семейного положения	1 - женат2 - холост3 - замужем4 - незамужем';
comment on column SS_OK_FAMILY_STATUS.GENDER_CODE
  is 'Пол';
comment on column SS_OK_FAMILY_STATUS.FAMILY_STATUS_NAME
  is 'Наименование семейного положения	Заполняется разработчиками';
alter table SS_OK_FAMILY_STATUS
  add constraint SS_OK_FAMILY_STATUS_PK primary key (FAMILY_STATUS_CODE, GENDER_CODE);

prompt Creating SS_OK_FITNESS_ARMY...
create table SS_OK_FITNESS_ARMY
(
  FITNESS_ARMY_ID   NUMBER(8) not null,
  FITNESS_ARMY_CODE NUMBER(1) not null,
  FITNESS_ARMY_TYPE VARCHAR2(20) not null
)
;
comment on table SS_OK_FITNESS_ARMY
  is 'системный справочник пригодности к военной службе';
comment on column SS_OK_FITNESS_ARMY.FITNESS_ARMY_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_FITNESS_ARMY.FITNESS_ARMY_CODE
  is 'Код типа отношения	Присваивается  начиная с "1" при вызове функции "Добавить", видимое поле, обязательное для заполнения';
comment on column SS_OK_FITNESS_ARMY.FITNESS_ARMY_TYPE
  is 'Тип отношения 1 - годен 2 -не годен	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
alter table SS_OK_FITNESS_ARMY
  add constraint SS_OK_FITNESS_ARMY_PK primary key (FITNESS_ARMY_ID);
alter table SS_OK_FITNESS_ARMY
  add constraint SS_OK_FITNESS_ARMY_UK unique (FITNESS_ARMY_CODE);
alter table SS_OK_FITNESS_ARMY
  add constraint SS_OK_FITNESS_ARMY_CHK_CODE
  check (fitness_ARMY_code>0);

prompt Creating SS_OK_GENDER...
create table SS_OK_GENDER
(
  GENDER_ID   NUMBER(8) not null,
  GENDER_CODE NUMBER(1) not null,
  GENDER_NAME VARCHAR2(50) not null
)
;
comment on table SS_OK_GENDER
  is 'Справочник й';
comment on column SS_OK_GENDER.GENDER_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_GENDER.GENDER_CODE
  is 'Код  пола 	Жесткая привязка 1- муж 2-жен';
comment on column SS_OK_GENDER.GENDER_NAME
  is 'Наименование пола  	1 - муж2 - жен';
alter table SS_OK_GENDER
  add constraint SS_OK_GENDER_PK primary key (GENDER_ID);
alter table SS_OK_GENDER
  add constraint SS_OK_GENDER_UK unique (GENDER_CODE);
alter table SS_OK_GENDER
  add constraint SS_OK_GENDER_CHK_CODE
  check (GENDER_code>0);

prompt Creating SS_OK_GOSUBMIT...
create table SS_OK_GOSUBMIT
(
  GOSUBMIT_CODE NUMBER,
  GOSUBMIT_NAME VARCHAR2(50)
)
;

prompt Creating SS_OK_GOSUBMIT_PROTOKOL...
create table SS_OK_GOSUBMIT_PROTOKOL
(
  ID            NUMBER,
  BRANCH        VARCHAR2(5),
  PERSONAL_CODE NUMBER,
  V_DATE        DATE,
  V_SYSDATE     DATE,
  EMP_CODE      NUMBER
)
;

prompt Creating SS_OK_HOSPITAL...
create table SS_OK_HOSPITAL
(
  HOSPITAL_CODE    NUMBER(9) not null,
  HOSPITAL_NAME    VARCHAR2(50) not null,
  WORK_PERIOD_FROM NUMBER(3) not null,
  WORK_PERIOD_TO   NUMBER(3) not null,
  PERCENTAGE       NUMBER(5,2),
  STATE_NOTES      CHAR(1),
  EMP_CODE         NUMBER(6),
  INS_DATE         DATE
)
;
comment on table SS_OK_HOSPITAL
  is 'справочник «Виды Больничных»';
comment on column SS_OK_HOSPITAL.HOSPITAL_CODE
  is 'код ';
comment on column SS_OK_HOSPITAL.HOSPITAL_NAME
  is '1Больничный или 2Больничный по родам';
comment on column SS_OK_HOSPITAL.WORK_PERIOD_FROM
  is 'начало для Б 0 или 8 и для БпР 0';
comment on column SS_OK_HOSPITAL.WORK_PERIOD_TO
  is 'завершение для Б 8 или 999 и для БпР 999';
comment on column SS_OK_HOSPITAL.PERCENTAGE
  is ' для Б 0-8 до 8 лет =60, для Б 8-999 с 8 лет и выше =80, для декретных БпР =100';
comment on column SS_OK_HOSPITAL.STATE_NOTES
  is 'A-активный';
comment on column SS_OK_HOSPITAL.EMP_CODE
  is 'код сотрудника ОК';
comment on column SS_OK_HOSPITAL.INS_DATE
  is 'дата вставки записи';
alter table SS_OK_HOSPITAL
  add constraint SS_OK_HOSPITAL_PK primary key (HOSPITAL_CODE, WORK_PERIOD_FROM);
alter table SS_OK_HOSPITAL
  add constraint CHK_HOSPITAL_CODE
  check (HOSPITAL_CODE>1000);

prompt Creating SS_OK_INCREASE...
create table SS_OK_INCREASE
(
  INCREASE_CODE NUMBER(9) not null,
  INCREASE_NAME VARCHAR2(150)
)
;
comment on table SS_OK_INCREASE
  is 'справочник «надбавки»';
comment on column SS_OK_INCREASE.INCREASE_CODE
  is 'код Вид надбавки – 1Персональная надбавка, 2Надбавка за  совмещение';
comment on column SS_OK_INCREASE.INCREASE_NAME
  is 'Вид надбавки – 1Персональная надбавка, 2Надбавка за  совмещение';
alter table SS_OK_INCREASE
  add constraint SS_OK_INCREASE_PK primary key (INCREASE_CODE);

prompt Creating SS_OK_INSTITUTION...
create table SS_OK_INSTITUTION
(
  INSTITUTION_ID           NUMBER(8) not null,
  INSTITUTION_CODE         NUMBER(5) not null,
  INSTITUTION_NAME         VARCHAR2(100) not null,
  INSTITUTION_ABBREVIATION VARCHAR2(10) not null,
  INSTITUTION_PLACE        VARCHAR2(200) not null,
  EDUCATION_CODE           NUMBER(3) not null,
  STATE_NOTES              CHAR(1) not null,
  EMP_CODE                 NUMBER(6) not null,
  INS_DATE                 DATE not null
)
;
comment on table SS_OK_INSTITUTION
  is 'Справочник учебных заведений';
comment on column SS_OK_INSTITUTION.INSTITUTION_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_INSTITUTION.INSTITUTION_CODE
  is 'Код учебного заведения	Присваивается  начиная с "1" при вызове функции "Добавить"';
comment on column SS_OK_INSTITUTION.INSTITUTION_NAME
  is 'Полное наименование учебного заведения	Вводится с клавиатуры';
comment on column SS_OK_INSTITUTION.INSTITUTION_ABBREVIATION
  is 'Сокращенное наименование учебного заведения	Вводится с клавиатуры';
comment on column SS_OK_INSTITUTION.INSTITUTION_PLACE
  is 'место нахождения';
comment on column SS_OK_INSTITUTION.EDUCATION_CODE
  is 'Код  образования 	Выбирается из справочника SS_OK_EDUCATION, Поле   EDUCATION_CODE';
comment on column SS_OK_INSTITUTION.STATE_NOTES
  is 'Признак записи: A - активная, P - пассивная Вводится с клавиатуры, видимое поле, по умолчанию ставится признак  -А -активная запись';
comment on column SS_OK_INSTITUTION.EMP_CODE
  is 'Имя пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID';
comment on column SS_OK_INSTITUTION.INS_DATE
  is 'Дата и время ввода информации SYSdate not null';
alter table SS_OK_INSTITUTION
  add constraint SS_OK_INSTITUTION_PK primary key (INSTITUTION_CODE, STATE_NOTES);
alter table SS_OK_INSTITUTION
  add constraint SS_OK_INSTITUTION_UK unique (INSTITUTION_CODE);
alter table SS_OK_INSTITUTION
  add constraint SS_OK_INSTITUTION_CHK_CODE
  check (Institution_code>0);

prompt Creating SS_OK_KV_KURS...
create table SS_OK_KV_KURS
(
  KV_KURS_CODE               NUMBER(9) not null,
  KV_KURS_NAME               VARCHAR2(150),
  KV_ORGANIZER               VARCHAR2(150),
  KV_PLACE                   VARCHAR2(150),
  CODE_STR                   CHAR(3),
  KV_NUMBER_PERS             NUMBER(9),
  DATE_OPEN                  DATE,
  DATE_CLOSE                 DATE,
  NUMBER_DAY                 NUMBER(9),
  PAY_SUM                    NUMBER(15,2),
  PAY_SUM_TRENER             NUMBER(15,2),
  ORDER_NUM                  VARCHAR2(50),
  ORDER_DATE                 DATE,
  ORDER_BUSINESS_VOYAGE      NUMBER(1),
  ORG_BUSINESS_VOYAGE_CODE   NUMBER(9),
  THEME_BUSINESS_VOYAGE_CODE NUMBER(9),
  PRIM                       VARCHAR2(150),
  STATE_NOTES                CHAR(1),
  EMP_CODE                   NUMBER(6),
  INS_DATE                   DATE,
  CITY_CODE                  NUMBER(9)
)
;
comment on table SS_OK_KV_KURS
  is 'справочник Курсы повышения квалификации';
comment on column SS_OK_KV_KURS.KV_KURS_CODE
  is 'код';
comment on column SS_OK_KV_KURS.KV_KURS_NAME
  is 'наименование';
comment on column SS_OK_KV_KURS.KV_ORGANIZER
  is ' организатор';
comment on column SS_OK_KV_KURS.KV_PLACE
  is ' место проведения';
comment on column SS_OK_KV_KURS.CODE_STR
  is 'код страны s_str';
comment on column SS_OK_KV_KURS.KV_NUMBER_PERS
  is 'количество участников ';
comment on column SS_OK_KV_KURS.DATE_OPEN
  is 'дата начала ';
comment on column SS_OK_KV_KURS.DATE_CLOSE
  is 'дата завершения ';
comment on column SS_OK_KV_KURS.NUMBER_DAY
  is 'кол-во дней ';
comment on column SS_OK_KV_KURS.PAY_SUM
  is ' оплата за помещение или тренинг';
comment on column SS_OK_KV_KURS.PAY_SUM_TRENER
  is ' оплата тренерам ';
comment on column SS_OK_KV_KURS.ORDER_NUM
  is ' номер приказа';
comment on column SS_OK_KV_KURS.ORDER_DATE
  is 'дата приказа ';
comment on column SS_OK_KV_KURS.ORDER_BUSINESS_VOYAGE
  is ' командировка 1-да 2-нет ';
comment on column SS_OK_KV_KURS.ORG_BUSINESS_VOYAGE_CODE
  is 'код организатора командировки ss_org_business_voyage';
comment on column SS_OK_KV_KURS.THEME_BUSINESS_VOYAGE_CODE
  is 'код темы командировки ss_theme_business_voyage';
comment on column SS_OK_KV_KURS.PRIM
  is ' примечание ';
comment on column SS_OK_KV_KURS.STATE_NOTES
  is 'A-активный';
comment on column SS_OK_KV_KURS.EMP_CODE
  is 'код сотрудника ОК';
comment on column SS_OK_KV_KURS.INS_DATE
  is 'дата вставки записи';
comment on column SS_OK_KV_KURS.CITY_CODE
  is 'код города';
alter table SS_OK_KV_KURS
  add constraint SS_OK_KV_KURS_PK primary key (KV_KURS_CODE);

prompt Creating SS_OK_LANGUAGE...
create table SS_OK_LANGUAGE
(
  LANGUAGE_ID   NUMBER(8) not null,
  LANGUAGE_CODE NUMBER(3) not null,
  LANGUAGE_NAME VARCHAR2(20) not null,
  STATE_NOTES   CHAR(1) not null,
  EMP_CODE      NUMBER(6) not null,
  INS_DATE      DATE not null
)
;
comment on table SS_OK_LANGUAGE
  is 'Справочник языков';
comment on column SS_OK_LANGUAGE.LANGUAGE_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_LANGUAGE.LANGUAGE_CODE
  is 'Код иностранного языка 	Присваивается  начиная с "1" при вызове функции "Добавить", видимое поле обязательное для заполнения';
comment on column SS_OK_LANGUAGE.LANGUAGE_NAME
  is 'Наименование иностранного языка	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column SS_OK_LANGUAGE.STATE_NOTES
  is 'Признак активности: A - активная, P - пассивная.Вводится с клавиатуры, видимое поле, по умолчанию ставится признак А активная';
comment on column SS_OK_LANGUAGE.EMP_CODE
  is 'Имя пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, невидимое поле, обязательное для заполнения';
comment on column SS_OK_LANGUAGE.INS_DATE
  is 'Дата и время  ввода информации	SYSdate not null, невидимое поле обязательное для заполнения';
alter table SS_OK_LANGUAGE
  add constraint SS_OK_LANGUAGE_PK primary key (LANGUAGE_CODE, STATE_NOTES);
alter table SS_OK_LANGUAGE
  add constraint SS_OK_LANGUAGE_UK unique (LANGUAGE_CODE);
alter table SS_OK_LANGUAGE
  add constraint SS_OK_LANGUAGE_CHK_CODE
  check (LANGUAGE_code>0);

prompt Creating SS_OK_LEAVE...
create table SS_OK_LEAVE
(
  LEAVE_ID    NUMBER(8) not null,
  LEAVE_CODE  NUMBER(2) not null,
  LEAVE_NAME  VARCHAR2(50) not null,
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

prompt Creating SS_OK_LEVEL_BOSS...
create table SS_OK_LEVEL_BOSS
(
  LEVEL_DEPARTMENT_CODE NUMBER(1) not null
)
;

prompt Creating SS_OK_LEVEL_DEPARTMENT...
create table SS_OK_LEVEL_DEPARTMENT
(
  LEVEL_DEPARTMENT_CODE NUMBER(1) not null,
  LEVEL_DEPARTMENT_NAME VARCHAR2(50) not null
)
;
comment on table SS_OK_LEVEL_DEPARTMENT
  is 'Системный справочник "уровни подразделений"';
comment on column SS_OK_LEVEL_DEPARTMENT.LEVEL_DEPARTMENT_CODE
  is 'Код';
comment on column SS_OK_LEVEL_DEPARTMENT.LEVEL_DEPARTMENT_NAME
  is 'Наименование	 Заполняется разработчиками';
alter table SS_OK_LEVEL_DEPARTMENT
  add constraint SS_OK_LEVEL_DEPARTMENT_PK primary key (LEVEL_DEPARTMENT_CODE);
alter table SS_OK_LEVEL_DEPARTMENT
  add constraint SS_OK_LEVEL_DEP_CHK_CODE
  check (LEVEL_DEPARTMENT_code>0);

prompt Creating SS_OK_LEVEL_LANGUAGE...
create table SS_OK_LEVEL_LANGUAGE
(
  LEVEL_LANGUAGE_ID   NUMBER(8) not null,
  LEVEL_LANGUAGE_CODE NUMBER(1) not null,
  LEVEL_LANGUAGE_NAME VARCHAR2(40) not null,
  STATE_NOTES         CHAR(1) not null,
  EMP_CODE            NUMBER(6) not null,
  INS_DATE            DATE not null
)
;
comment on table SS_OK_LEVEL_LANGUAGE
  is 'Справочник знаний иностранных языков';
comment on column SS_OK_LEVEL_LANGUAGE.LEVEL_LANGUAGE_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_LEVEL_LANGUAGE.LEVEL_LANGUAGE_CODE
  is 'Код уровня знаний	Присваивается  начиная с "1" при вызове функции "Добавить", видимое поле обязательное для заполнения';
comment on column SS_OK_LEVEL_LANGUAGE.LEVEL_LANGUAGE_NAME
  is 'Наименование уровня знаний	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column SS_OK_LEVEL_LANGUAGE.STATE_NOTES
  is 'Признак активности: A - активная, P - пассивная.Вводится с клавиатуры, видимое поле, по умолчанию ставится признак А активная';
comment on column SS_OK_LEVEL_LANGUAGE.EMP_CODE
  is 'Имя пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, невидимое поле, обязательное для заполнения';
comment on column SS_OK_LEVEL_LANGUAGE.INS_DATE
  is 'Дата и время  ввода информации	SYSdate not null, невидимое поле обязательное для заполнения';
alter table SS_OK_LEVEL_LANGUAGE
  add constraint SS_OK_LEVEL_LANGUAGE_PK primary key (LEVEL_LANGUAGE_CODE, STATE_NOTES);
alter table SS_OK_LEVEL_LANGUAGE
  add constraint SS_OK_LEVEL_LANGUAGE_UK unique (LEVEL_LANGUAGE_CODE);
alter table SS_OK_LEVEL_LANGUAGE
  add constraint SS_OK_LEVEL_LANGUAGE_CHK_CODE
  check (LEVEL_LANGUAGE_code>0);

prompt Creating SS_OK_MILITARY_RANK...
create table SS_OK_MILITARY_RANK
(
  MILITARY_RANK_ID   NUMBER(8) not null,
  MILITARY_RANK_CODE NUMBER(5) not null,
  MILITARY_RANK_NAME VARCHAR2(250) not null,
  STATE_NOTES        CHAR(1) not null,
  EMP_CODE           NUMBER(6) not null,
  INS_DATE           DATE not null
)
;
comment on table SS_OK_MILITARY_RANK
  is 'воинские звания';
comment on column SS_OK_MILITARY_RANK.MILITARY_RANK_ID
  is 'id';
comment on column SS_OK_MILITARY_RANK.MILITARY_RANK_CODE
  is 'код';
comment on column SS_OK_MILITARY_RANK.MILITARY_RANK_NAME
  is 'название';
comment on column SS_OK_MILITARY_RANK.STATE_NOTES
  is 'A';
comment on column SS_OK_MILITARY_RANK.EMP_CODE
  is '99';
comment on column SS_OK_MILITARY_RANK.INS_DATE
  is 'sysdate';
alter table SS_OK_MILITARY_RANK
  add constraint SS_OK_MILITARY_RANK_PK primary key (MILITARY_RANK_CODE, STATE_NOTES);
alter table SS_OK_MILITARY_RANK
  add constraint SS_OK_MILITARY_RANK_UK unique (MILITARY_RANK_CODE);
alter table SS_OK_MILITARY_RANK
  add constraint SS_OK_MILITARY_RANK_CHK_CODE
  check (MILITARY_RANK_code>0);

prompt Creating SS_OK_MIN_ZP...
create table SS_OK_MIN_ZP
(
  SALARY               NUMBER(15) not null,
  RATE                 NUMBER(9,3) not null,
  CATEGORY_ZERO_SALARY NUMBER(15) not null,
  DATE_OPEN            DATE not null,
  DATE_CLOSE           DATE,
  STATE_NOTES          CHAR(1),
  EMP_CODE             NUMBER(6),
  INS_DATE             DATE
)
;
comment on table SS_OK_MIN_ZP
  is 'справочник «минимальная зарплата»';
comment on column SS_OK_MIN_ZP.SALARY
  is 'минимальная зарплата ';
comment on column SS_OK_MIN_ZP.RATE
  is ' кратность ';
comment on column SS_OK_MIN_ZP.CATEGORY_ZERO_SALARY
  is ' ставка нулевого разряда';
comment on column SS_OK_MIN_ZP.DATE_OPEN
  is ' начало ';
comment on column SS_OK_MIN_ZP.DATE_CLOSE
  is ' завершение';
comment on column SS_OK_MIN_ZP.STATE_NOTES
  is 'A-активный';
comment on column SS_OK_MIN_ZP.EMP_CODE
  is 'код сотрудника ОК';
comment on column SS_OK_MIN_ZP.INS_DATE
  is 'дата вставки записи';
alter table SS_OK_MIN_ZP
  add constraint SS_OK_MIN_ZP_PK primary key (DATE_OPEN);

prompt Creating SS_OK_MOTIVE_DISMISSIAL...
create table SS_OK_MOTIVE_DISMISSIAL
(
  MOTIVE_DISMISSIAL_ID   NUMBER(8) not null,
  MOTIVE_DISMISSIAL_CODE NUMBER(2) not null,
  MOTIVE_DISMISSIAL_NAME VARCHAR2(80) not null,
  STATE_NOTES            CHAR(1) not null,
  EMP_CODE               NUMBER(6) not null,
  INS_DATE               DATE not null
)
;
comment on table SS_OK_MOTIVE_DISMISSIAL
  is 'Справочник оснований причин увольнений';
comment on column SS_OK_MOTIVE_DISMISSIAL.MOTIVE_DISMISSIAL_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_MOTIVE_DISMISSIAL.MOTIVE_DISMISSIAL_CODE
  is 'Код причины увольнения	Присваивается  начиная с "1" при вызове функции "Добавить", видимое поле, обязательное для заполнения';
comment on column SS_OK_MOTIVE_DISMISSIAL.MOTIVE_DISMISSIAL_NAME
  is 'Текст   причины увольнения	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column SS_OK_MOTIVE_DISMISSIAL.STATE_NOTES
  is 'Признак активности: A - активная, P - пассивная.Вводится с клавиатуры, видимое поле, по умолчанию ставится признак А активная';
comment on column SS_OK_MOTIVE_DISMISSIAL.EMP_CODE
  is 'Имя пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, невидимое поле, обязательное для заполнения';
comment on column SS_OK_MOTIVE_DISMISSIAL.INS_DATE
  is 'Дата и время  ввода информации	SYSdate not null, невидимое поле обязательное для заполнения';
alter table SS_OK_MOTIVE_DISMISSIAL
  add constraint SS_OK_MOTIVE_DISMISSIAL_PK primary key (MOTIVE_DISMISSIAL_CODE, STATE_NOTES);
alter table SS_OK_MOTIVE_DISMISSIAL
  add constraint SS_OK_MOTIVE_DISMISSIAL_UK unique (MOTIVE_DISMISSIAL_CODE);
alter table SS_OK_MOTIVE_DISMISSIAL
  add constraint SS_OK_MOTIVE_DISMISS_CHK_CODE
  check (MOTIVE_DISMISSIAL_code>0);

prompt Creating SS_OK_NATIONALITY...
create table SS_OK_NATIONALITY
(
  NATIONALITY_ID   NUMBER(8) not null,
  NATIONALITY_CODE NUMBER(3) not null,
  NATIONALITY_NAME VARCHAR2(20) not null,
  STATE_NOTES      CHAR(1) not null,
  EMP_CODE         NUMBER(6) not null,
  INS_DATE         DATE not null
)
;
comment on table SS_OK_NATIONALITY
  is 'Справочник национальностей';
comment on column SS_OK_NATIONALITY.NATIONALITY_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_NATIONALITY.NATIONALITY_CODE
  is 'Код национальности 	Присваивается начиная с "1" при вызове функции "Добавить", видимое поле, обязательное для заполнения';
comment on column SS_OK_NATIONALITY.NATIONALITY_NAME
  is 'Наименование национальности	Вводится с клавиатуры, видимое поле , обязательное для заполнения';
comment on column SS_OK_NATIONALITY.STATE_NOTES
  is 'Признак активности A - активная P - пассивная Вводится с клавиатуры, видимое поле, по умолчанию ставится признак  -А -активная запись';
comment on column SS_OK_NATIONALITY.EMP_CODE
  is 'Код пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, невидимое поле, обязательное для заполнения';
comment on column SS_OK_NATIONALITY.INS_DATE
  is 'Дата и время  ввода информации 	SYSdate not null, невидимое поле , обязательное для заполнения';
alter table SS_OK_NATIONALITY
  add constraint SS_OK_NATIONALITY_PK primary key (NATIONALITY_CODE, STATE_NOTES);
alter table SS_OK_NATIONALITY
  add constraint SS_OK_NATIONALITY_UK unique (NATIONALITY_CODE);
alter table SS_OK_NATIONALITY
  add constraint SS_OK_NATIONALITY_CHK_CODE
  check (NATIONALITY_code>0);

prompt Creating SS_OK_NCI...
create table SS_OK_NCI
(
  NCI_ID      CHAR(2) not null,
  S_ID        VARCHAR2(5) not null,
  OK_ID       NUMBER(8) not null,
  STATE_NOTES CHAR(1),
  EMP_CODE    NUMBER(6),
  INS_DATE    DATE
)
;
comment on table SS_OK_NCI
  is 'справочник соответствия содержимого справочников ЦБ по кадрам';
comment on column SS_OK_NCI.NCI_ID
  is 'код справочника цб';
comment on column SS_OK_NCI.S_ID
  is 'уникальный код в справочнике цб';
comment on column SS_OK_NCI.OK_ID
  is 'уникальный код в справочнике модуля кадры';
comment on column SS_OK_NCI.STATE_NOTES
  is 'Признак активности записиA - активная записьP - пассивная запись	Вводится с клавиатуры, видимое поле, по умолчанию ставится признак  -А -активная запись';
comment on column SS_OK_NCI.EMP_CODE
  is 'Код пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, не видимое поле, обязательное для заполнения';
comment on column SS_OK_NCI.INS_DATE
  is 'Дата и время  ввода информации 	SYSdate, не видимое поле, обязательное для заполнения';
alter table SS_OK_NCI
  add constraint SS_OK_NCI_PK primary key (NCI_ID, OK_ID);
alter table SS_OK_NCI
  add constraint SS_OK_NCI_UK unique (NCI_ID, S_ID, OK_ID);

prompt Creating SS_OK_ORG_BUSINESS_VOYAGE...
create table SS_OK_ORG_BUSINESS_VOYAGE
(
  ORG_BUSINESS_VOYAGE_CODE NUMBER(9) not null,
  ORG_BUSINESS_VOYAGE_NAME VARCHAR2(150),
  STATE_NOTES              CHAR(1),
  EMP_CODE                 NUMBER(6),
  INS_DATE                 DATE
)
;
comment on table SS_OK_ORG_BUSINESS_VOYAGE
  is 'справочник «Организатор проведения командировки»';
comment on column SS_OK_ORG_BUSINESS_VOYAGE.ORG_BUSINESS_VOYAGE_CODE
  is 'код';
comment on column SS_OK_ORG_BUSINESS_VOYAGE.ORG_BUSINESS_VOYAGE_NAME
  is 'название';
comment on column SS_OK_ORG_BUSINESS_VOYAGE.STATE_NOTES
  is 'A-активный';
comment on column SS_OK_ORG_BUSINESS_VOYAGE.EMP_CODE
  is 'код сотрудника ОК';
comment on column SS_OK_ORG_BUSINESS_VOYAGE.INS_DATE
  is 'дата вставки записи';
alter table SS_OK_ORG_BUSINESS_VOYAGE
  add constraint SS_OK_ORG_BUSINESS_VOYAGE_PK primary key (ORG_BUSINESS_VOYAGE_CODE);

prompt Creating SS_OK_PARTY...
create table SS_OK_PARTY
(
  PARTY_ID           NUMBER(8) not null,
  PARTY_CODE         NUMBER(2) not null,
  PARTY_ABBREVIATION VARCHAR2(10) not null,
  PARTY_NAME         VARCHAR2(60) not null,
  STATE_NOTES        CHAR(1) not null,
  EMP_CODE           NUMBER(6) not null,
  INS_DATE           DATE not null
)
;
comment on table SS_OK_PARTY
  is 'Справочник зарегистрированных партий';
comment on column SS_OK_PARTY.PARTY_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_PARTY.PARTY_CODE
  is 'Код партийности	Присваивается начиная с "1" при вызове функции "Добавить", видимое поле обязательное для заполнения';
comment on column SS_OK_PARTY.PARTY_ABBREVIATION
  is 'Сокращенное название партии	Вводится с клавиатуры, видимое поле  необязательное для заполнения';
comment on column SS_OK_PARTY.PARTY_NAME
  is 'Полное наименование партии	Вводится с клавиатуры, видимое поле обязательное для заполнения';
comment on column SS_OK_PARTY.STATE_NOTES
  is 'Признак активности: A - активная, P - пассивная.Вводится с клавиатуры, видимое поле, по умолчанию ставится признак А активная';
comment on column SS_OK_PARTY.EMP_CODE
  is 'Имя пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, невидимое поле, обязательное для заполнения';
comment on column SS_OK_PARTY.INS_DATE
  is 'Дата и время  ввода информации	SYSdate not null, невидимое поле обязательное для заполнения';
alter table SS_OK_PARTY
  add constraint SS_OK_PARTY_PK primary key (PARTY_CODE, STATE_NOTES);
alter table SS_OK_PARTY
  add constraint SS_OK_PARTY_UK unique (PARTY_CODE);
alter table SS_OK_PARTY
  add constraint SS_OK_PARTY_CHK_CODE
  check (PARTY_code>0);

prompt Creating SS_OK_PASSPORT_TYPE...
create table SS_OK_PASSPORT_TYPE
(
  PASSPORT_TYPE_CODE NUMBER(9) not null,
  PASSPORT_TYPE_NAME VARCHAR2(50)
)
;
comment on column SS_OK_PASSPORT_TYPE.PASSPORT_TYPE_CODE
  is 'вид документа 1-паспорт 2-вид на жит-во 3-военбилет';
comment on column SS_OK_PASSPORT_TYPE.PASSPORT_TYPE_NAME
  is 'вид документа 1-паспорт 2-вид на жит-во 3-военбилет';
alter table SS_OK_PASSPORT_TYPE
  add constraint SS_OK_PASSPORT_TYPE_PK primary key (PASSPORT_TYPE_CODE);

prompt Creating SS_OK_PENALTY...
create table SS_OK_PENALTY
(
  PENALTY_ID   NUMBER(8) not null,
  PENALTY_CODE NUMBER(2) not null,
  PENALTY_NAME VARCHAR2(50) not null,
  STATE_NOTES  CHAR(1) not null,
  EMP_CODE     NUMBER(6) not null,
  INS_DATE     DATE not null
)
;
comment on table SS_OK_PENALTY
  is 'Справочник видов наказаний';
comment on column SS_OK_PENALTY.PENALTY_ID
  is 'Системный номер';
comment on column SS_OK_PENALTY.PENALTY_CODE
  is 'Код';
comment on column SS_OK_PENALTY.PENALTY_NAME
  is 'Наименование';
comment on column SS_OK_PENALTY.STATE_NOTES
  is 'Признак активности: A - активная, P - пассивная.Вводится с клавиатуры, видимое поле, по умолчанию ставится признак А активная';
comment on column SS_OK_PENALTY.EMP_CODE
  is 'Имя пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, невидимое поле, обязательное для заполнения';
comment on column SS_OK_PENALTY.INS_DATE
  is 'Дата и время  ввода информации	SYSdate not null, невидимое поле обязательное для заполнения';
alter table SS_OK_PENALTY
  add constraint SS_OK_PENALTY_PK primary key (PENALTY_CODE, STATE_NOTES);
alter table SS_OK_PENALTY
  add constraint SS_OK_PENALTY_UK unique (PENALTY_CODE);
alter table SS_OK_PENALTY
  add constraint SS_OK_PENALTY_CHK_CODE
  check (PENALTY_code>0);

prompt Creating SS_OK_PERS_COL_DFLT...
create table SS_OK_PERS_COL_DFLT
(
  CODE_TABLE   VARCHAR2(3) not null,
  CODE_NUM     VARCHAR2(2) not null,
  NAME         VARCHAR2(250) not null,
  COL_TYPE     VARCHAR2(2),
  NAME_DISPL   VARCHAR2(250),
  NAME_PAPER   VARCHAR2(250),
  LEN          NUMBER(4),
  CODE_LOOK_UP VARCHAR2(4),
  SEL_SQL      VARCHAR2(455),
  REAL_NAME    VARCHAR2(200)
)
;
alter table SS_OK_PERS_COL_DFLT
  add constraint SS_OK_PERS_COL_DFLT_PK primary key (CODE_TABLE, CODE_NUM);
create index SS_OK_PERS_COL_DFLT_IX on SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME);

prompt Creating SS_OK_PERS_QUERY...
create table SS_OK_PERS_QUERY
(
  CODE         NUMBER(4) not null,
  NAME         VARCHAR2(250),
  QUERY_TYPE   VARCHAR2(1),
  QUERY_TEXT   VARCHAR2(250),
  QUERY_CLAUSE VARCHAR2(250)
)
;
alter table SS_OK_PERS_QUERY
  add constraint SS_OK_PERS_QUERY_PK primary key (CODE);

prompt Creating SS_OK_PERS_QUERY_COL...
create table SS_OK_PERS_QUERY_COL
(
  CODE_QUERY   NUMBER(4),
  CODE_COL     NUMBER(4) not null,
  NAME         VARCHAR2(250),
  COL_TYPE     VARCHAR2(1),
  NAME_DISPL   VARCHAR2(100),
  NAME_PAPER   VARCHAR2(50),
  LEN          NUMBER(4),
  CODE_LOOK_UP VARCHAR2(4)
)
;
alter table SS_OK_PERS_QUERY_COL
  add constraint SS_OK_PERS_QUERY_COL_PK primary key (CODE_COL);

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
;
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
  add constraint SS_OK_POST_PK primary key (POST_CODE, STATE_NOTES);
alter table SS_OK_POST
  add constraint SS_OK_POST_UK unique (POST_CODE);
alter table SS_OK_POST
  add constraint SS_OK_POST_CHK_CODE
  check (post_code>0);

prompt Creating SS_OK_POST_GROUP...
create table SS_OK_POST_GROUP
(
  POST_GROUP_CODE NUMBER(5) not null,
  POST_GROUP_NAME VARCHAR2(200)
)
;
alter table SS_OK_POST_GROUP
  add constraint SS_OK_POST_GROUP_PK primary key (POST_GROUP_CODE);

prompt Creating SS_OK_PRIVILEGE...
create table SS_OK_PRIVILEGE
(
  PRIVILEGE_CODE NUMBER(9) not null,
  PRIVILEGE_NAME VARCHAR2(150),
  STATE_NOTES    CHAR(1),
  EMP_CODE       NUMBER(6),
  INS_DATE       DATE
)
;
comment on column SS_OK_PRIVILEGE.PRIVILEGE_CODE
  is 'код Вид льготы ss_ok_privilege';
comment on column SS_OK_PRIVILEGE.PRIVILEGE_NAME
  is 'наименование Вид льготы ss_ok_privilege';
comment on column SS_OK_PRIVILEGE.STATE_NOTES
  is 'A-активный';
comment on column SS_OK_PRIVILEGE.EMP_CODE
  is 'код сотрудника ОК';
comment on column SS_OK_PRIVILEGE.INS_DATE
  is 'дата вставки записи';
alter table SS_OK_PRIVILEGE
  add constraint SS_OK_PRIVILEGE_PK primary key (PRIVILEGE_CODE);

prompt Creating SS_OK_PROFMEMBER...
create table SS_OK_PROFMEMBER
(
  PROFMEMBER      NUMBER(1),
  PROFMEMBER_NAME VARCHAR2(250)
)
;
comment on table SS_OK_PROFMEMBER
  is 'профсоюз';
comment on column SS_OK_PROFMEMBER.PROFMEMBER
  is '0 йук нет          1-ха да';
comment on column SS_OK_PROFMEMBER.PROFMEMBER_NAME
  is '0 йук нет          1-ха да';

prompt Creating SS_OK_QUALIFICATION...
create table SS_OK_QUALIFICATION
(
  QUALIFICATION_ID   NUMBER(8) not null,
  QUALIFICATION_CODE NUMBER(2) not null,
  QUALIFICATION_NAME VARCHAR2(50) not null,
  STATE_NOTES        CHAR(1) not null,
  EMP_CODE           NUMBER(6) not null,
  INS_DATE           DATE not null
)
;
comment on table SS_OK_QUALIFICATION
  is 'Справочник Квалификаций';
comment on column SS_OK_QUALIFICATION.QUALIFICATION_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_QUALIFICATION.QUALIFICATION_CODE
  is 'Код квалификации	Присваивается  начиная с "1" при вызове функции "Добавить", видимое поле, обязательное для заполнения';
comment on column SS_OK_QUALIFICATION.QUALIFICATION_NAME
  is 'Наименование  квалификации (магистр и т.д) not null, --	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column SS_OK_QUALIFICATION.STATE_NOTES
  is 'Признак активности: A - активная, P - пассивная.Вводится с клавиатуры, видимое поле, по умолчанию ставится признак А активная';
comment on column SS_OK_QUALIFICATION.EMP_CODE
  is 'Имя пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, невидимое поле, обязательное для заполнения';
comment on column SS_OK_QUALIFICATION.INS_DATE
  is 'Дата и время  ввода информации	SYSdate not null, невидимое поле обязательное для заполнения';
alter table SS_OK_QUALIFICATION
  add constraint SS_OK_QUALIFICATION_PK primary key (QUALIFICATION_CODE, STATE_NOTES);
alter table SS_OK_QUALIFICATION
  add constraint SS_OK_QUALIFICATION_UK unique (QUALIFICATION_CODE);
alter table SS_OK_QUALIFICATION
  add constraint SS_OK_QUALIFICATION_CHK_CODE
  check (QUALIFICATION_code>0);

prompt Creating SS_OK_REGION...
create table SS_OK_REGION
(
  REGION_ID  CHAR(2),
  REGION_NAM VARCHAR2(30)
)
;
comment on table SS_OK_REGION
  is 'справочник областей';
comment on column SS_OK_REGION.REGION_ID
  is 'код области';
comment on column SS_OK_REGION.REGION_NAM
  is 'название области или г.Ташкент';

prompt Creating SS_OK_REGPLACE...
create table SS_OK_REGPLACE
(
  REGPLACE_CODE NUMBER(9) not null,
  REGPLACE_NAME VARCHAR2(100),
  STATE_NOTES   CHAR(1),
  EMP_CODE      NUMBER(6),
  INS_DATE      DATE
)
;
comment on table SS_OK_REGPLACE
  is 'справочник место регистрации';
comment on column SS_OK_REGPLACE.REGPLACE_CODE
  is 'код место регистрации';
comment on column SS_OK_REGPLACE.REGPLACE_NAME
  is 'название место регистрации';
comment on column SS_OK_REGPLACE.STATE_NOTES
  is 'A-активный';
comment on column SS_OK_REGPLACE.EMP_CODE
  is 'код сотрудника ОК';
comment on column SS_OK_REGPLACE.INS_DATE
  is 'дата вставки записи';
alter table SS_OK_REGPLACE
  add constraint SS_OK_REGPLACE_PK primary key (REGPLACE_CODE);

prompt Creating SS_OK_REG_TYPE...
create table SS_OK_REG_TYPE
(
  REG_TYPE_ID   NUMBER(8) not null,
  REG_TYPE_CODE NUMBER(1) not null,
  REG_TYPE_NAME VARCHAR2(50) not null
)
;
comment on table SS_OK_REG_TYPE
  is 'Системный справочник тип прописки "постоянная/временная"';
comment on column SS_OK_REG_TYPE.REG_TYPE_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_REG_TYPE.REG_TYPE_CODE
  is 'Код 	Присваивается  начиная с "1" при вызове функции "Добавить", видимое поле, обязательное для заполнения';
comment on column SS_OK_REG_TYPE.REG_TYPE_NAME
  is 'Наименование 	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
alter table SS_OK_REG_TYPE
  add constraint SS_OK_REG_TYPE_PK primary key (REG_TYPE_ID);
alter table SS_OK_REG_TYPE
  add constraint SS_OK_REG_TYPE_UK unique (REG_TYPE_CODE);
alter table SS_OK_REG_TYPE
  add constraint SS_OK_REG_TYPE_CHK_CODE
  check (REG_TYPE_code>0);

prompt Creating SS_OK_RELATION...
create table SS_OK_RELATION
(
  RELATION_ID   NUMBER(8) not null,
  RELATION_CODE NUMBER(2) not null,
  RELATION_NAME VARCHAR2(80) not null,
  STATE_NOTES   CHAR(1) not null,
  EMP_CODE      NUMBER(6) not null,
  INS_DATE      DATE not null
)
;
comment on table SS_OK_RELATION
  is 'Справочник родственных отношений';
comment on column SS_OK_RELATION.RELATION_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_RELATION.RELATION_CODE
  is 'Код родственного отношения	Присваивается  начиная с "1" при вызове функции "Добавить", видимое поле, обязательное для заполнения';
comment on column SS_OK_RELATION.RELATION_NAME
  is 'Наименование родственного отношения	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column SS_OK_RELATION.STATE_NOTES
  is 'Признак активности: A - активная, P - пассивная.Вводится с клавиатуры, видимое поле, по умолчанию ставится признак А активная';
comment on column SS_OK_RELATION.EMP_CODE
  is 'Имя пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, невидимое поле, обязательное для заполнения';
comment on column SS_OK_RELATION.INS_DATE
  is 'Дата и время  ввода информации	SYSdate not null, невидимое поле обязательное для заполнения';
alter table SS_OK_RELATION
  add constraint SS_OK_RELATION_PK primary key (RELATION_CODE, STATE_NOTES);
alter table SS_OK_RELATION
  add constraint SS_OK_RELATION_UK unique (RELATION_CODE);
alter table SS_OK_RELATION
  add constraint SS_OK_RELATION_UKUK unique (RELATION_NAME);
alter table SS_OK_RELATION
  add constraint SS_OK_RELATION_CHK_CODE
  check (RELATION_code>0);

prompt Creating SS_OK_REZERV...
create table SS_OK_REZERV
(
  REZERV_CODE NUMBER(1) not null,
  REZERV_NAME VARCHAR2(50) not null
)
;
comment on table SS_OK_REZERV
  is 'еще один Системный справочник наличия резерва для справочника должностей';
comment on column SS_OK_REZERV.REZERV_CODE
  is '	Код резерва	1 - для должности не требуется резерв  2 -  требуется резерв';
comment on column SS_OK_REZERV.REZERV_NAME
  is 'Наименование  кода резерва	 Заполняется разработчикам1 -  резерв отсутствует 2 -  Имеются документы';
alter table SS_OK_REZERV
  add constraint SS_OK_REZERV_PK primary key (REZERV_CODE);

prompt Creating SS_OK_REZERVE...
create table SS_OK_REZERVE
(
  REZERVE_ID   NUMBER(8) not null,
  REZERVE_CODE NUMBER(1) not null,
  REZERVE_NAME VARCHAR2(50) not null
)
;
comment on table SS_OK_REZERVE
  is 'Системный справочник наличия резерва';
comment on column SS_OK_REZERVE.REZERVE_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_REZERVE.REZERVE_CODE
  is '	Код резерва	1 -  резерв отсутствует 2 -  Имеются документы';
comment on column SS_OK_REZERVE.REZERVE_NAME
  is 'Наименование  кода резерва	 Заполняется разработчикам1 -  резерв отсутствует 2 -  Имеются документы';
alter table SS_OK_REZERVE
  add constraint SS_OK_REZERVE_PK primary key (REZERVE_ID);
alter table SS_OK_REZERVE
  add constraint SS_OK_REZERVE_UK unique (REZERVE_CODE);
alter table SS_OK_REZERVE
  add constraint SS_OK_REZERVE_CHK_CODE
  check (REZERVE_code>0);

prompt Creating SS_OK_SPECIAL...
create table SS_OK_SPECIAL
(
  SPECIAL_ID   NUMBER(8) not null,
  SPECIAL_CODE NUMBER(3) not null,
  SPECIAL_NAME VARCHAR2(250) not null,
  STATE_NOTES  CHAR(1) not null,
  EMP_CODE     NUMBER(6) not null,
  INS_DATE     DATE not null
)
;
comment on table SS_OK_SPECIAL
  is 'специализация';
comment on column SS_OK_SPECIAL.SPECIAL_ID
  is 'id';
comment on column SS_OK_SPECIAL.SPECIAL_CODE
  is 'код';
comment on column SS_OK_SPECIAL.SPECIAL_NAME
  is 'название';
comment on column SS_OK_SPECIAL.STATE_NOTES
  is 'A';
comment on column SS_OK_SPECIAL.EMP_CODE
  is '99';
comment on column SS_OK_SPECIAL.INS_DATE
  is 'sysdate';
alter table SS_OK_SPECIAL
  add constraint SS_OK_SPECIAL_PK primary key (SPECIAL_CODE, STATE_NOTES);
alter table SS_OK_SPECIAL
  add constraint SS_OK_SPECIAL_UK unique (SPECIAL_CODE);
alter table SS_OK_SPECIAL
  add constraint SS_OK_SPECIAL_CHK_CODE
  check (SPECIAL_code>0);

prompt Creating SS_OK_STAFF...
create table SS_OK_STAFF
(
  STAFF_ID    NUMBER(8) not null,
  STAFF_CODE  NUMBER(5) not null,
  STAFF_NAME  VARCHAR2(250) not null,
  STATE_NOTES CHAR(1) not null,
  EMP_CODE    NUMBER(6) not null,
  INS_DATE    DATE not null
)
;
comment on table SS_OK_STAFF
  is 'Вид состава (МО)';
comment on column SS_OK_STAFF.STAFF_ID
  is 'id';
comment on column SS_OK_STAFF.STAFF_CODE
  is 'код';
comment on column SS_OK_STAFF.STAFF_NAME
  is 'название';
comment on column SS_OK_STAFF.STATE_NOTES
  is 'A';
comment on column SS_OK_STAFF.EMP_CODE
  is '99';
comment on column SS_OK_STAFF.INS_DATE
  is 'sysdate';
alter table SS_OK_STAFF
  add constraint SS_OK_STAFF_PK primary key (STAFF_CODE, STATE_NOTES);
alter table SS_OK_STAFF
  add constraint SS_OK_STAFF_UK unique (STAFF_CODE);
alter table SS_OK_STAFF
  add constraint SS_OK_STAFF_CHK_CODE
  check (STAFF_code>0);

prompt Creating SS_OK_STATUS...
create table SS_OK_STATUS
(
  STATUS_CODE NUMBER(2) not null,
  STATUS_NAME VARCHAR2(50) not null
)
;
comment on table SS_OK_STATUS
  is 'Системный справочник "УРОВЕНЬ подразделения"';
comment on column SS_OK_STATUS.STATUS_CODE
  is 'Код';
comment on column SS_OK_STATUS.STATUS_NAME
  is 'Наименование	 Заполняется разработчиками';
alter table SS_OK_STATUS
  add constraint SS_OK_STATUS_PK primary key (STATUS_CODE);
alter table SS_OK_STATUS
  add constraint SS_OK_STATUS_CHK_CODE
  check (STATUS_code>0);

prompt Creating SS_OK_STR...
create table SS_OK_STR
(
  CODE_STR CHAR(3),
  NAME     VARCHAR2(60)
)
;
comment on table SS_OK_STR
  is 'Отношение к воинской службе';
comment on column SS_OK_STR.CODE_STR
  is 'код';
comment on column SS_OK_STR.NAME
  is 'название';

prompt Creating SS_OK_TEMPLATE_COMMAND...
create table SS_OK_TEMPLATE_COMMAND
(
  TEMPLATE_COMMAND_ID    NUMBER(8) not null,
  TEMPLATE_COMMAND_CODE  NUMBER(2) not null,
  TEMPLATE_COMMAND_NAME  VARCHAR2(250) not null,
  COMMAND_TYPE_CODE      NUMBER(2) not null,
  TEMPLATE_COMMAND_FNAME VARCHAR2(100) not null,
  STATE_NOTES            CHAR(1) not null,
  EMP_CODE               NUMBER(6) not null,
  INS_DATE               DATE not null
)
;
comment on table SS_OK_TEMPLATE_COMMAND
  is 'Справочник шаблонов приказов';
comment on column SS_OK_TEMPLATE_COMMAND.TEMPLATE_COMMAND_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_TEMPLATE_COMMAND.TEMPLATE_COMMAND_CODE
  is 'Код шаблона приказа 	Начинается с "1" при вызове функции "Добавить", видимое поле, обязательное для заполнения';
comment on column SS_OK_TEMPLATE_COMMAND.TEMPLATE_COMMAND_NAME
  is 'Наименование/характеристика приказа 	Вводится с клавиатуры, видимое поле , обязательное для заполнения';
comment on column SS_OK_TEMPLATE_COMMAND.COMMAND_TYPE_CODE
  is 'Код типа  приказа	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column SS_OK_TEMPLATE_COMMAND.TEMPLATE_COMMAND_FNAME
  is 'Имя файла с шаблоном приказа	Вводится с клавиатуры, видимое поле, обязательное для заполнения XXXXXXXX.doc';
comment on column SS_OK_TEMPLATE_COMMAND.STATE_NOTES
  is 'Признак активности: A - активная, P - пассивная.Вводится с клавиатуры, видимое поле, по умолчанию ставится признак А активная';
comment on column SS_OK_TEMPLATE_COMMAND.EMP_CODE
  is 'Имя пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, невидимое поле, обязательное для заполнения';
comment on column SS_OK_TEMPLATE_COMMAND.INS_DATE
  is 'Дата и время  ввода информации	SYSdate not null, невидимое поле обязательное для заполнения';
alter table SS_OK_TEMPLATE_COMMAND
  add constraint SS_OK_TEMPLATE_COMMAND_PK primary key (TEMPLATE_COMMAND_CODE, STATE_NOTES);
alter table SS_OK_TEMPLATE_COMMAND
  add constraint SS_OK_TEMPLATE_COMMAND_UK unique (TEMPLATE_COMMAND_CODE);
alter table SS_OK_TEMPLATE_COMMAND
  add constraint SS_OK_TEMPLATE_COMM_CHK_CODE
  check (TEMPLATE_COMMAND_code>0);

prompt Creating SS_OK_THEME_BUSINESS_VOYAGE...
create table SS_OK_THEME_BUSINESS_VOYAGE
(
  THEME_BUSINESS_VOYAGE_CODE NUMBER(9) not null,
  THEME_BUSINESS_VOYAGE_NAME VARCHAR2(150),
  STATE_NOTES                CHAR(1),
  EMP_CODE                   NUMBER(6),
  INS_DATE                   DATE
)
;
comment on table SS_OK_THEME_BUSINESS_VOYAGE
  is 'справочник «Тема командировки»';
comment on column SS_OK_THEME_BUSINESS_VOYAGE.THEME_BUSINESS_VOYAGE_CODE
  is 'код';
comment on column SS_OK_THEME_BUSINESS_VOYAGE.THEME_BUSINESS_VOYAGE_NAME
  is 'название';
comment on column SS_OK_THEME_BUSINESS_VOYAGE.STATE_NOTES
  is 'A-активный';
comment on column SS_OK_THEME_BUSINESS_VOYAGE.EMP_CODE
  is 'код сотрудника ОК';
comment on column SS_OK_THEME_BUSINESS_VOYAGE.INS_DATE
  is 'дата вставки записи';
alter table SS_OK_THEME_BUSINESS_VOYAGE
  add constraint SS_OK_THEME_BUSINESS_VOYAGE_PK primary key (THEME_BUSINESS_VOYAGE_CODE);

prompt Creating SS_OK_TYPE_FORCE...
create table SS_OK_TYPE_FORCE
(
  TYPE_FORCE_ID   NUMBER(8) not null,
  TYPE_FORCE_CODE NUMBER(5) not null,
  TYPE_FORCE_NAME VARCHAR2(250) not null,
  STATE_NOTES     CHAR(1) not null,
  EMP_CODE        NUMBER(6) not null,
  INS_DATE        DATE not null
)
;
comment on table SS_OK_TYPE_FORCE
  is 'Рода войск';
comment on column SS_OK_TYPE_FORCE.TYPE_FORCE_ID
  is 'id';
comment on column SS_OK_TYPE_FORCE.TYPE_FORCE_CODE
  is 'код';
comment on column SS_OK_TYPE_FORCE.TYPE_FORCE_NAME
  is 'название';
comment on column SS_OK_TYPE_FORCE.STATE_NOTES
  is 'A';
comment on column SS_OK_TYPE_FORCE.EMP_CODE
  is '99';
comment on column SS_OK_TYPE_FORCE.INS_DATE
  is 'sysdate';
alter table SS_OK_TYPE_FORCE
  add constraint SS_OK_TYPE_FORCE_PK primary key (TYPE_FORCE_CODE, STATE_NOTES);
alter table SS_OK_TYPE_FORCE
  add constraint SS_OK_TYPE_FORCE_UK unique (TYPE_FORCE_CODE);
alter table SS_OK_TYPE_FORCE
  add constraint SS_OK_TYPE_FORCE_CHK_CODE
  check (TYPE_FORCE_code>0);

prompt Creating SS_OK_TYPE_PERIOD...
create table SS_OK_TYPE_PERIOD
(
  TYPE_PERIOD_ID   NUMBER(8) not null,
  TYPE_PERIOD_CODE NUMBER(2) not null,
  TYPE_PERIOD_NAME VARCHAR2(80) not null,
  STATE_NOTES      CHAR(1) not null,
  EMP_CODE         NUMBER(6) not null,
  INS_DATE         DATE not null
)
;
comment on table SS_OK_TYPE_PERIOD
  is 'Справочник типов стажа';
comment on column SS_OK_TYPE_PERIOD.TYPE_PERIOD_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_TYPE_PERIOD.TYPE_PERIOD_CODE
  is 'Код типа стажа	Присваивается  начиная с "1" при вызове функции "Добавить", видимое поле, обязательное для заполнения';
comment on column SS_OK_TYPE_PERIOD.TYPE_PERIOD_NAME
  is 'Наименование стажа  (непрерывный и т.д.) not null, --	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column SS_OK_TYPE_PERIOD.STATE_NOTES
  is 'Признак активности: A - активная, P - пассивная.Вводится с клавиатуры, видимое поле, по умолчанию ставится признак А активная';
comment on column SS_OK_TYPE_PERIOD.EMP_CODE
  is 'Имя пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, невидимое поле, обязательное для заполнения';
comment on column SS_OK_TYPE_PERIOD.INS_DATE
  is 'Дата и время  ввода информации	SYSdate not null, невидимое поле обязательное для заполнения';
alter table SS_OK_TYPE_PERIOD
  add constraint SS_OK_TYPE_PERIOD_PK primary key (TYPE_PERIOD_CODE, STATE_NOTES);
alter table SS_OK_TYPE_PERIOD
  add constraint SS_OK_TYPE_PERIOD_UK unique (TYPE_PERIOD_CODE);
alter table SS_OK_TYPE_PERIOD
  add constraint SS_OK_TYPE_PERIOD_CHK_CODE
  check (TYPE_PERIOD_code>0);

prompt Creating SS_OK_VACANCY...
create table SS_OK_VACANCY
(
  VACANCY_ID   NUMBER(8) not null,
  VACANCY_CODE NUMBER(1) not null,
  VACANCY_NAME VARCHAR2(50) not null
)
;
comment on table SS_OK_VACANCY
  is 'Системный справочник наличия вакансии';
comment on column SS_OK_VACANCY.VACANCY_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_VACANCY.VACANCY_CODE
  is 'Код  вакансии	1 - Вакансия2 -  Есть документы';
comment on column SS_OK_VACANCY.VACANCY_NAME
  is 'Наименование кода вакансии	 Заполняется разработчиками 1 - Вакансия2 -  Есть документы';
alter table SS_OK_VACANCY
  add constraint SS_OK_VACANCY_PK primary key (VACANCY_ID);
alter table SS_OK_VACANCY
  add constraint SS_OK_VACANCY_UK unique (VACANCY_CODE);
alter table SS_OK_VACANCY
  add constraint SS_OK_VACANCY_CHK_CODE
  check (VACANCY_code>0);

prompt Creating SS_OK_VID_EDUCATION...
create table SS_OK_VID_EDUCATION
(
  VID_EDUCATION_CODE NUMBER(9) not null,
  VID_EDUCATION_NAME VARCHAR2(50) not null,
  STATE_NOTES        VARCHAR2(1)
)
;

prompt Creating SS_OK_YOUTH...
create table SS_OK_YOUTH
(
  YOUTH_ID    NUMBER(8) not null,
  YOUTH_CODE  NUMBER(2) not null,
  YOUTH_NAME  VARCHAR2(50) not null,
  STATE_NOTES CHAR(1) not null,
  EMP_CODE    NUMBER(6) not null,
  INS_DATE    DATE not null
)
;
comment on table SS_OK_YOUTH
  is 'Справочник й';
comment on column SS_OK_YOUTH.YOUTH_ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column SS_OK_YOUTH.YOUTH_CODE
  is 'Код организации 	Присваивается  начиная с "1" при вызове функции "Добавить", видимое поле, обязательное для заполнения';
comment on column SS_OK_YOUTH.YOUTH_NAME
  is 'Наименование организации	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column SS_OK_YOUTH.STATE_NOTES
  is 'Признак активности: A - активная, P - пассивная.Вводится с клавиатуры, видимое поле, по умолчанию ставится признак А активная';
comment on column SS_OK_YOUTH.EMP_CODE
  is 'Имя пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, невидимое поле, обязательное для заполнения';
comment on column SS_OK_YOUTH.INS_DATE
  is 'Дата и время  ввода информации	SYSdate not null, невидимое поле обязательное для заполнения';
alter table SS_OK_YOUTH
  add constraint SS_OK_YOUTH_PK primary key (YOUTH_CODE, STATE_NOTES);
alter table SS_OK_YOUTH
  add constraint SS_OK_YOUTH_UK unique (YOUTH_CODE);
alter table SS_OK_YOUTH
  add constraint SS_OK_YOUTH_CHK_CODE
  check (YOUTH_code>0);

prompt Creating SS_OK_ZP_RATE...
create table SS_OK_ZP_RATE
(
  ZP_RATE_CODE   NUMBER not null,
  ZP_RATE_SIMBOL VARCHAR2(5),
  ZP_RATE_NAME   VARCHAR2(150),
  ZP_RATE        NUMBER(3,2) not null,
  STATE_NOTES    CHAR(1),
  EMP_CODE       NUMBER(6),
  INS_DATE       DATE
)
;
comment on table SS_OK_ZP_RATE
  is 'справочник ставка рабочего времени';
comment on column SS_OK_ZP_RATE.ZP_RATE_CODE
  is 'время в часах 2 4 6 8';
comment on column SS_OK_ZP_RATE.ZP_RATE_SIMBOL
  is 'символ для заполнения табеля 2 4 6 8 ';
comment on column SS_OK_ZP_RATE.ZP_RATE_NAME
  is 'Название';
comment on column SS_OK_ZP_RATE.ZP_RATE
  is 'ставка 0.25 0.50 0.75 1.00';
comment on column SS_OK_ZP_RATE.STATE_NOTES
  is 'A-активный';
comment on column SS_OK_ZP_RATE.EMP_CODE
  is 'код сотрудника ОК';
comment on column SS_OK_ZP_RATE.INS_DATE
  is 'дата вставки записи';
alter table SS_OK_ZP_RATE
  add constraint SS_OK_ZP_RATE_PK primary key (ZP_RATE_CODE);

prompt Creating SS_OK_ZP_RATE_TYPE...
create table SS_OK_ZP_RATE_TYPE
(
  ZP_RATE_TYPE_CODE NUMBER not null,
  ZP_RATE_TYPE_NAME VARCHAR2(150),
  STATE_NOTES       CHAR(1),
  EMP_CODE          NUMBER(6),
  INS_DATE          DATE
)
;
comment on table SS_OK_ZP_RATE_TYPE
  is 'справочник ТИПЫ ставки рабочего времени';
comment on column SS_OK_ZP_RATE_TYPE.ZP_RATE_TYPE_CODE
  is 'код 1 2';
comment on column SS_OK_ZP_RATE_TYPE.ZP_RATE_TYPE_NAME
  is 'Название 1-Основная 2-По совместительству';
comment on column SS_OK_ZP_RATE_TYPE.STATE_NOTES
  is 'A-активный';
comment on column SS_OK_ZP_RATE_TYPE.EMP_CODE
  is 'код сотрудника ОК';
comment on column SS_OK_ZP_RATE_TYPE.INS_DATE
  is 'дата вставки записи';
alter table SS_OK_ZP_RATE_TYPE
  add constraint SS_OK_ZP_RATE_TYPE_PK primary key (ZP_RATE_TYPE_CODE);

prompt Loading SS_OK...
insert into SS_OK (ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME)
values (1, '72', 'Миллатлар-Национальности', 'S_NATION', 'NAT_ID', 'NAT_NAME', 'SS_OK_NATIONALITY', 'NATIONALITY_CODE', 'NATIONALITY_NAME');
insert into SS_OK (ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME)
values (2, '73', 'Партиялар-Партии', 'S_PARTY', 'PART_ID', 'PART_NAME', 'SS_OK_PARTY', 'PARTY_CODE', 'PARTY_NAME');
insert into SS_OK (ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME)
values (3, '74', 'Маълумот-Образование', 'S_OBRAZ', 'OBR_ID', 'OBR_NAME', 'SS_OK_EDUCATION_TITLE', 'EDUCATION_TITLE_CODE', 'EDUCATION_TITLE_NAME');
insert into SS_OK (ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME)
values (4, '75', 'Илмий даражалар-Ученые степени', 'S_UCH_STEP', 'ZVN_ID', 'ZVN_NAME', 'SS_OK_DEGREE', 'DEGREE_CODE', 'DEGREE_NAME');
insert into SS_OK (ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME)
values (5, '76', 'Илмий унвонлар-Ученые звания', 'S_UCH_ZVN', 'ZVN_ID', 'ZVN_NAME', 'SS_OK_ACADEMIC', 'ACADEMIC_CODE', 'ACADEMIC_NAME');
insert into SS_OK (ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME)
values (6, '77', 'Чет тиллари-Иностранные языки', 'S_LANGS', 'LANG_ID', 'LANG_NAME', 'SS_OK_LANGUAGE', 'LANGUAGE_CODE', 'LANGUAGE_NAME');
insert into SS_OK (ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME)
values (7, '78', 'Чет тилини билиш даражалари-Степень владения иностранными языками', 'S_LANG', 'UROV_ID', 'UROV_NAME', 'SS_OK_LEVEL_LANGUAGE', 'LEVEL_LANGUAGE_CODE', 'LEVEL_LANGUAGE_NAME');
insert into SS_OK (ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME)
values (8, '79', 'Лавозимлар-Должности', 'S_DOLJN', 'DOLJ_ID', 'DOLJ_NAME', 'SS_OK_POST', 'POST_CODE', 'POST_NAME');
insert into SS_OK (ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME)
values (9, '80', 'Укув юртлари-Учебные заведения', 'S_UCH_ZAV', 'ZAV_ID', 'ZAV_NAME', 'SS_OK_INSTITUTION', 'INSTITUTION_CODE', 'INSTITUTION_NAME');
insert into SS_OK (ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME)
values (10, '81', 'Кариндошлик мунособатлари-Родственные отношения', 'S_FAMILY', 'FAM_ID', 'FAM_NAME', 'SS_OK_RELATION', 'RELATION_CODE', 'RELATION_NAME');
commit;
prompt 10 records loaded
prompt Loading SS_OK_ACADEMIC...
insert into SS_OK_ACADEMIC (ACADEMIC_ID, ACADEMIC_CODE, ACADEMIC_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (281, 55, 'ооо', 'P', 114, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ACADEMIC (ACADEMIC_ID, ACADEMIC_CODE, ACADEMIC_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (282, 1, 'академик', 'A', 252, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ACADEMIC (ACADEMIC_ID, ACADEMIC_CODE, ACADEMIC_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (283, 2, 'доктор', 'A', 252, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ACADEMIC (ACADEMIC_ID, ACADEMIC_CODE, ACADEMIC_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (284, 3, 'профессор', 'A', 252, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ACADEMIC (ACADEMIC_ID, ACADEMIC_CODE, ACADEMIC_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (285, 4, 'доцент', 'A', 252, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ACADEMIC (ACADEMIC_ID, ACADEMIC_CODE, ACADEMIC_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (286, 5, 'йук', 'P', 313, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ACADEMIC (ACADEMIC_ID, ACADEMIC_CODE, ACADEMIC_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (287, 6, 'йук', 'A', 252, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 7 records loaded
prompt Loading SS_OK_ACTION_HIST...
insert into SS_OK_ACTION_HIST (ACTION_HIST_ID, ACTION_HIST_NAME)
values (0, 'Изменение паспорта');
insert into SS_OK_ACTION_HIST (ACTION_HIST_ID, ACTION_HIST_NAME)
values (1, 'Вставка');
insert into SS_OK_ACTION_HIST (ACTION_HIST_ID, ACTION_HIST_NAME)
values (2, 'Изменение');
insert into SS_OK_ACTION_HIST (ACTION_HIST_ID, ACTION_HIST_NAME)
values (3, 'Удаление');
commit;
prompt 4 records loaded
prompt Loading SS_OK_ARMY...
insert into SS_OK_ARMY (ARMY_ID, ARMY_CODE, ARMY_TYPE)
values (121, 1, 'Харбий хизматга мажбур');
insert into SS_OK_ARMY (ARMY_ID, ARMY_CODE, ARMY_TYPE)
values (122, 2, 'Харбий хизматга мажбур эмас');
commit;
prompt 2 records loaded
prompt Loading SS_OK_ARMY_GROUP...
insert into SS_OK_ARMY_GROUP (ARMY_GROUP_ID, ARMY_GROUP_CODE, ARMY_GROUP_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (221, 1, 'А', 'A', 138, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARMY_GROUP (ARMY_GROUP_ID, ARMY_GROUP_CODE, ARMY_GROUP_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (222, 2, 'ТК', 'A', 138, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARMY_GROUP (ARMY_GROUP_ID, ARMY_GROUP_CODE, ARMY_GROUP_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (223, 3, 'ВМФ', 'A', 138, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARMY_GROUP (ARMY_GROUP_ID, ARMY_GROUP_CODE, ARMY_GROUP_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (224, 4, 'СНБ', 'A', 138, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARMY_GROUP (ARMY_GROUP_ID, ARMY_GROUP_CODE, ARMY_GROUP_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (225, 5, 'МВД', 'A', 138, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARMY_GROUP (ARMY_GROUP_ID, ARMY_GROUP_CODE, ARMY_GROUP_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (226, 6, 'КОГГ', 'A', 138, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARMY_GROUP (ARMY_GROUP_ID, ARMY_GROUP_CODE, ARMY_GROUP_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (227, 7, 'ВС', 'A', 114, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARMY_GROUP (ARMY_GROUP_ID, ARMY_GROUP_CODE, ARMY_GROUP_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (228, 8, 'СА', 'A', 114, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARMY_GROUP (ARMY_GROUP_ID, ARMY_GROUP_CODE, ARMY_GROUP_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (229, 9, 'МПР', 'A', 114, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARMY_GROUP (ARMY_GROUP_ID, ARMY_GROUP_CODE, ARMY_GROUP_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (230, 10, 'Военная кафедра', 'A', 114, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 10 records loaded
prompt Loading SS_OK_ARTICLE...
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (253, 15, '106', 'Мехнат шартномасини бекор килиш', 'Ишга кабул килиш юзасидан белгиланган комдалар бузилганлиги муносабати билан', 'A', 313, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (254, 1, '97', 'Мехнат шартномасини бекор килиш', '1-банди: тарафлар келишувига кура', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (255, 2, '97', 'Мехнат шартномасини бекор килиш', '3-банди: муддатнинг тугаши билан (нафакага чикиши муносабати билан)', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (256, 3, '99', 'Мехнат шартномасини бекор килиш', 'Ўз хохишига кўра', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (257, 4, '100', 'Мехнат шартномасини бекор килиш', '1-банди: ходимлар сони (штати) ёки иш хусусиятининг ўзгаришига олиб келган ишлар хажми кискарганли ёхуд корхонанинг тугатитганлиги', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (258, 5, '100', 'Мехнат шартномасини бекор килиш', '2-банди: лавозимига малакаси етарли бўлмаганлиги', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (259, 6, '100', 'Мехнат шартномасини бекор килиш', '3-банди: ўз мехнат вазифаларини мунтазам равишда бузганлиги', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (260, 7, '100', 'Мехнат шартномасини бекор килиш', '4-банди: ўз мехнат вазифаларини бир марта кўпол равишда бузганлиги', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (261, 8, '105', 'Мехнат шартномасини бекор килиш', 'Муддатли мехнат шартномасини муддати тугаши билан', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (262, 9, '106', 'Мехнат шартномасини бекор килиш', '1-банди: ходим харбий ёки мукобил хизматга чакирилган такдирда', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (263, 10, '106', 'Мехнат шартномасини бекор килиш', '3-банди: ходимни жазога махкум этган суднинг хукми конуний кучга кирганлиги сабабли', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (264, 11, '106', 'Мехнат шартномасини бекор килиш', '5-банди: ходимнинг вафоти муносабати билан', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (265, 12, '113', 'Ишдан четлаштириш', 'Ходимни ишдан четлаштиришга, конунда назарда тутилган холлардан ташкари, йўл кўйилмайди.', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (266, 13, '92', 'Бошка доимий ишга утказиш', 'Ходимни бошка доимий ишга утказишга бошка мутахассислик, малака, лавозимга оид ишни топширишга факат унинг розилиги билан йул куйилиши мумкин.', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (267, 14, '82,83', 'Ишга кабул килиш', 'Ишга кабул килишга иш берувчининг буйруги, буйрук учун мехнат шартномаси асос булади. М/ш имзоланган пайтдан кучга киради', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 15 records loaded
prompt Loading SS_OK_BASE_MOVE...
insert into SS_OK_BASE_MOVE (BASE_MOVE_ID, BASE_MOVE_CODE, BASE_MOVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (241, 1, 'Мехнат шартномасига асосан', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_BASE_MOVE (BASE_MOVE_ID, BASE_MOVE_CODE, BASE_MOVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (242, 2, 'Бошликнинг хизмат хати, ходимнинг розилик аризаси, мехнат шартномасига кушимча', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_BASE_MOVE (BASE_MOVE_ID, BASE_MOVE_CODE, BASE_MOVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (243, 3, 'Бошликнинг хизмат хати, ходимнинг розилик аризаси, мехнат шартномаси', 'P', 313, to_date('05-11-2011 10:06:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_BASE_MOVE (BASE_MOVE_ID, BASE_MOVE_CODE, BASE_MOVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (244, 4, 'Ходимнинг аризаси, мехнат шартномаси', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 4 records loaded
prompt Loading SS_OK_BASIS...
insert into SS_OK_BASIS (BASIS_ID, BASIS_CODE, BASIS_NAME)
values (121, 1, 'Базовое');
insert into SS_OK_BASIS (BASIS_ID, BASIS_CODE, BASIS_NAME)
values (122, 2, 'Другое');
commit;
prompt 2 records loaded
prompt Loading SS_OK_CATEGORY...
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (1, '18', 8.522, 80000, 'A', 99, to_date('21-06-2013 15:04:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (2, '18.1', 7.95, 632741, 'A', 313, to_date('29-01-2013 10:15:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (3, '17', 8.106, 645157, 'A', 313, to_date('29-01-2013 10:15:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (4, '17.2', 7.393, 588409, 'A', 313, to_date('29-01-2013 10:15:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (5, '16', 7.697, 612604, 'A', 313, to_date('29-01-2013 10:15:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (6, '15', 7.292, 580370, 'A', 313, to_date('29-01-2013 10:15:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (7, '14', 6.893, 548614, 'A', 313, to_date('29-01-2013 10:15:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (8, '13', 6.503, 517574, 'A', 313, to_date('29-01-2013 10:15:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (9, '12', 6.115, 486693, 'A', 313, to_date('29-01-2013 10:15:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (10, '11', 5.733, 456289, 'A', 313, to_date('29-01-2013 10:15:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (11, '10', 5.362, 426762, 'A', 313, to_date('29-01-2013 10:15:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (12, '9', 4.997, 397711, 'A', 313, to_date('29-01-2013 10:15:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (13, '8', 4.64, 369298, 'A', 313, to_date('29-01-2013 10:15:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (14, '7', 4.284, 340964, 'A', 313, to_date('29-01-2013 10:15:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (15, '5', 3.612, 287479, 'A', 313, to_date('29-01-2013 10:15:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (16, '4', 3.297, 262408, 'A', 313, to_date('29-01-2013 10:15:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (17, '2', 2.725, 216883, 'A', 313, to_date('29-01-2013 10:15:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (18, '1', 2.476, 197065, 'A', 313, to_date('29-01-2013 10:15:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (19, '0', 1, 79590, 'A', 366, null);
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (20, '6', 3.941, 313664, 'A', 313, to_date('29-01-2013 10:15:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY (CATEGORY_CODE, CATEGORY_NAME, CATEGORY_RATE, SALARY, STATE_NOTES, EMP_CODE, INS_DATE)
values (21, '3', 2.998, 238611, 'A', 313, to_date('29-01-2013 10:15:44', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 21 records loaded
prompt Loading SS_OK_CATEGORY_ARMY...
insert into SS_OK_CATEGORY_ARMY (CATEGORY_ARMY_ID, CATEGORY_ARMY_CODE, CATEGORY_ARMY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (201, 1, 'I', 'A', 138, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_CATEGORY_ARMY (CATEGORY_ARMY_ID, CATEGORY_ARMY_CODE, CATEGORY_ARMY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (202, 2, 'II', 'A', 138, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 2 records loaded
prompt Loading SS_OK_CITY...
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (708, 'Чуст', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (707, 'Учкургон', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (706, 'Уйчи', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (705, 'Туракургон', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (704, 'Поп', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (703, 'Хакулобод', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (702, 'Косонсой', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (701, 'Жумашуй', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (710, 'Тошбулок', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (709, 'Янгикургон', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (13, 'Наманган', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (212, 'Хива', null, 'А', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (712, 'Чорток ш', null, 'A', null, null);
commit;
prompt 13 records loaded
prompt Loading SS_OK_COMMAND_PARAM...
prompt Table is empty
prompt Loading SS_OK_COMMAND_TYPE...
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (281, 1, 'ишга кабул килиш', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (282, 2, 'бўшатиш', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (283, 3, 'лавозимга тайинлаш', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (284, 4, 'лавозимидан четлатиш', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (285, 5, 'бола парваришлаш таътили', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (286, 6, 'мехнат таътили', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (287, 7, 'ўкув таътил', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (288, 8, 'иш хаки сакланмаган холда таътил', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (289, 9, 'бошка бошкармага ўтказиш', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (290, 10, 'бошка бўлимга ўтказиш', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (291, 11, 'масъул ходим вазифасини вактинча бошка ходимга юклатиш', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 11 records loaded
prompt Loading SS_OK_DEGREE...
insert into SS_OK_DEGREE (DEGREE_ID, DEGREE_CODE, DEGREE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (321, 4, 'иктисод фанлари номзоди', 'P', 313, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEGREE (DEGREE_ID, DEGREE_CODE, DEGREE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (322, 5, 'иктисод фанлари доктори', 'P', 313, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEGREE (DEGREE_ID, DEGREE_CODE, DEGREE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (323, 1, 'фан номзоди', 'A', 114, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEGREE (DEGREE_ID, DEGREE_CODE, DEGREE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (324, 2, 'фан доктори', 'A', 114, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEGREE (DEGREE_ID, DEGREE_CODE, DEGREE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (325, 3, 'магистр', 'A', 114, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEGREE (DEGREE_ID, DEGREE_CODE, DEGREE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (326, 6, 'техника фанлари номзоди', 'P', 313, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEGREE (DEGREE_ID, DEGREE_CODE, DEGREE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (327, 7, 'йук', 'A', 313, to_date('06-12-2011 15:02:43', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 7 records loaded
prompt Loading SS_OK_DEPARTMENT...
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8670, '00394', 618, 'Янгиер номли', 618, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8671, '00394', 619, 'Амударё номли', 619, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8672, '00394', 620, 'Коракалпогистон номли', 620, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8673, '00394', 621, 'Кунгирот номли', 621, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8674, '00394', 622, 'М.Жуманазаров номли', 622, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8675, '00394', 623, 'Б.Каримбердиев номли', 623, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8676, '00394', 624, 'Дарвозакум номли', 624, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8677, '00394', 625, 'М.Улугбек номли', 625, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8678, '00394', 626, 'К.Жуманиёзов номли ', 626, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8679, '00394', 627, 'Куралпа номли', 627, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8680, '00394', 628, 'К.Авезов номли', 628, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8681, '00394', 629, 'Я.Иламонов номли', 629, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8682, '00394', 630, 'Гулистон номли', 630, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8683, '00394', 631, 'Ал-Хоразмий номли ', 631, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8684, '00394', 632, 'А.Мусаев номли', 632, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8685, '00394', 633, 'Хоразм номли', 633, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8686, '00394', 634, 'Жайхун номли', 634, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8687, '00394', 635, 'Орол номли', 635, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8688, '00394', 636, 'Сариксув номли', 636, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8689, '00394', 637, 'Янгиобод номли', 638, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8690, '00394', 638, 'Мингчинор номли', 638, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8691, '00394', 639, 'Жалолкудук номли ', 639, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8692, '00394', 640, 'Пахтаобод номли', 640, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8693, '00394', 641, 'Ойим номли', 641, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8694, '00394', 642, 'Окёр номли', 642, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8695, '00394', 643, 'Навбахор номли', 643, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8696, '00394', 644, 'Амур Темур номли', 644, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8697, '00394', 645, 'Баликчи номли', 645, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8698, '00394', 646, 'Бустон номли', 646, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8699, '00394', 647, 'Гулистон номли', 647, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8700, '00394', 648, 'Янгихаёт номли', 648, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8701, '00394', 649, 'Янгиобод номли', 649, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8702, '00394', 650, 'Н.Мирзаахмедов номли', 650, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8703, '00394', 651, 'Овулмат номли', 651, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8704, '00394', 652, 'Истиклол номли', 652, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8705, '00394', 653, 'Ривож номли', 653, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8706, '00394', 654, 'Равнак номли ', 654, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8707, '00394', 655, 'Озод номли', 655, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8708, '00394', 656, 'Иттифок номли', 656, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8709, '00394', 657, 'Э.Хужаев номли', 657, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8710, '00394', 658, 'Ф.Курбонов номли', 658, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8711, '00394', 659, 'Кургон Ромитан', 659, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8712, '00394', 660, 'Куштепа номли', 660, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8713, '00394', 661, 'Ибн Сино номли', 661, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8714, '00394', 662, 'Ромитан номли', 662, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8715, '00394', 663, 'Челонгу номли', 663, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8716, '00394', 664, 'Дустлик номли', 664, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8717, '00394', 665, 'Чупонота номли', 665, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8718, '00394', 666, 'Ш.Рашидов номли', 666, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8719, '00394', 667, 'У.Асадов номли', 667, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8720, '00394', 668, 'Осиё номли', 668, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8721, '00394', 669, 'Чор-Бакр номли', 669, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8722, '00394', 670, 'Янги Турмуш номли', 670, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8723, '00394', 671, 'Лоша номли', 671, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8724, '00394', 672, 'Богикалон номли', 672, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8725, '00394', 673, 'Октош номли', 673, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8726, '00394', 674, 'Ок-олтин номли', 674, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8727, '00394', 675, 'Узбекистон номли', 675, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8728, '00394', 676, 'Зиёрат номли', 676, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8729, '00394', 677, 'Пайкент номли', 677, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8730, '00394', 678, 'К.Муртазоев номли ', 678, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8731, '00394', 679, 'Х.Хайитов номли', 679, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8732, '00394', 680, 'Андижон номли', 680, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8733, '00394', 681, 'Зарафшон номли', 681, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8734, '00394', 682, 'Й.Эргашев номли', 682, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8735, '00394', 683, 'Янгибозор номли', 683, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8736, '00394', 684, 'Ш.Эргашев номли', 684, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8737, '00394', 685, 'Учкора номли', 685, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8738, '00394', 686, 'А.Гиждувоний номли', 686, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8739, '00394', 687, 'Мехнат-рохат номли', 687, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8740, '00394', 688, 'А.Навоий номли', 688, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8741, '00394', 689, 'С.Жабборов номли', 689, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8742, '00394', 690, 'Халкобод номли', 690, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8743, '00394', 691, 'К.Рахимов номли', 691, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8744, '00394', 692, 'Манас номли', 692, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8745, '00394', 693, 'Галаба номли', 693, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8746, '00394', 694, 'Мирзачул номли ', 694, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8747, '00394', 695, 'Янги дала номли', 695, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8748, '00394', 696, 'Узбекситон номли', 696, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8749, '00394', 697, 'Галаба  номли', 697, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8750, '00394', 698, 'Окар номли', 698, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8751, '00394', 699, 'А.Тоиров номли', 699, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8752, '00394', 700, 'Чорвадор номли', 700, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8753, '00394', 701, 'С.Рахимов номли', 701, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8754, '00394', 702, 'Х.Олимжон номли', 702, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8755, '00394', 703, 'Й.Охунбобоев номли', 703, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8756, '00394', 704, 'Ф.Хужаев номли', 704, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8757, '00394', 705, 'Самарканд кудук номли', 705, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8758, '00394', 706, 'Самарканд номли', 706, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8759, '00394', 707, 'Б.Файзиев номли', 707, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8760, '00394', 708, 'Козокистон номли', 708, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8761, '00394', 709, 'Шарк Юлдузи номли', 709, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8762, '00394', 710, 'Олтинкул номли', 710, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8763, '00394', 711, 'Нурафшон номли', 711, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8764, '00394', 712, 'Юксалиш номли', 712, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8765, '00394', 713, 'Й.Курбонов номли ', 713, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8766, '00394', 714, 'А.Икромов номли ', 714, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8767, '00394', 715, 'М.Оролов номли', 715, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8768, '00394', 716, 'Ровот номли', 716, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8769, '00394', 717, 'Култепа номли', 717, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
commit;
prompt 100 records committed...
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8770, '00394', 718, 'Э.Холматов номли', 718, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8771, '00394', 719, 'Бешкуби номли', 719, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8772, '00394', 720, 'Еттикечув номли ', 720, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8773, '00394', 721, 'П.Умурзоков номли', 721, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8774, '00394', 722, 'Чимкургон', 722, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8775, '00394', 723, 'Гараша номли', 723, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8776, '00394', 724, 'Батош номли', 724, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8777, '00394', 725, 'М.Рахмонов номли', 725, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8778, '00394', 726, 'Мустакиллик номли', 726, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8779, '00394', 727, 'Окрабод номли', 727, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8780, '00394', 728, 'Коратепа номи', 728, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8781, '00394', 729, 'Чим номли', 729, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8782, '00394', 730, 'Гиштли номли', 730, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8783, '00394', 731, 'Галлакор номли', 731, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8784, '00394', 732, 'Шарк номли', 732, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8785, '00394', 733, 'Олтин тола номли', 733, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9484, '00394', 237, 'Омонатчилар  маблагларини мониторинг килиш бошкармаси', 237, 3, null, 'P', 364, to_date('23-01-2013 11:09:05', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9544, '00394', 567, 'Конверсион амалиётлар булими', 567, 4, 542, 'A', 313, to_date('30-01-2013 10:54:26', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9224, '00394', 520, 'Вилоят', 520, 4, null, 'A', 313, to_date('24-11-2011 11:55:00', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9226, '00394', 522, 'Инвестицион фаолиятини мувофиклаштириш ва мониторинг килиш бўлими', 522, 4, 520, 'A', 313, to_date('24-11-2011 12:05:21', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9228, '00394', 523, 'Жисмоний шахсларни кредитлаш бўлими', 523, 4, 520, 'A', 313, to_date('24-11-2011 12:15:26', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9230, '00394', 521, 'Устувор тармокларни кедитлаш бўлими', 521, 4, 520, 'A', 313, to_date('24-11-2011 12:17:31', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9232, '00394', 524, 'Ташки иктисодий фаолият ва валюта операциялари бўлими', 524, 4, 520, 'A', 313, to_date('24-11-2011 12:27:14', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9234, '00394', 525, 'Иктисодий тахлил бўлими', 525, 4, 520, 'A', 313, to_date('24-11-2011 12:31:27', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9236, '00394', 526, 'Актив ва пассивларни бошкариш бўлими', 526, 4, 520, 'A', 313, to_date('24-11-2011 12:36:45', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9238, '00394', 527, 'Пластик карталар бўлими', 527, 4, 520, 'A', 313, to_date('24-11-2011 12:38:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9240, '00394', 528, 'Кимматли когозлар бўлими', 528, 4, 520, 'A', 313, to_date('24-11-2011 12:42:39', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9242, '00394', 529, 'Кимматли когозлар шўъбаси', 529, 21, 520, 'A', 313, to_date('24-11-2011 12:44:22', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9244, '00394', 530, 'Информацион технологиялар бўлими', 530, 4, 520, 'A', 313, to_date('24-11-2011 12:45:48', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9246, '00394', 531, 'Информацион технологиялар шўъбаси', 531, 21, 520, 'A', 313, to_date('24-11-2011 12:47:16', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9248, '00394', 532, 'Ахоли омонатлари шўъбаси', 532, 21, 520, 'A', 313, to_date('24-11-2011 12:48:34', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9250, '00394', 533, ' Касса ишлари бўлими', 533, 4, 520, 'A', 313, to_date('24-11-2011 12:51:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9252, '00394', 534, 'Накд пул маблагларини берилишини мониторинг килиш шўъбаси', 534, 21, 520, 'A', 313, to_date('24-11-2011 12:54:12', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9254, '00394', 535, 'Ходимлар билан ишлаш бўлими', 535, 4, 520, 'A', 313, to_date('24-11-2011 12:56:00', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9256, '00394', 536, 'Юридик бўлим', 536, 4, 520, 'A', 313, to_date('24-11-2011 12:57:03', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9258, '00394', 537, 'Юридик шўъба', 537, 21, 520, 'A', 313, to_date('24-11-2011 12:58:37', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9260, '00394', 538, 'Хавфсизлик шўъбаси', 538, 21, 520, 'A', 313, to_date('24-11-2011 13:01:04', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9262, '00394', 539, 'Биринчи бўлим', 539, 4, 520, 'A', 313, to_date('24-11-2011 13:02:26', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9264, '00394', 540, 'Ички назорат бўлими', 540, 4, 520, 'A', 313, to_date('24-11-2011 13:03:30', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9464, '00394', 1077, 'Ташки иктисодий фаолият ва валюта операциялар шуъбаси', 1077, 6, 1061, 'A', 313, to_date('11-12-2012 15:01:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8343, '00394', 1, 'Рахбарият', 1, 4, null, 'A', 366, to_date('20-04-2012 10:07:51', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8344, '00394', 2, 'Банк аппарати', 2, 3, null, 'A', 364, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8345, '00394', 3, 'Хавфсизлик бошкармаси', 3, 3, null, 'A', 364, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8346, '00394', 4, 'Кенгаш котибияти', 4, 4, null, 'A', 364, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8347, '00394', 5, 'Ходимлар билан ишлаш департаменти', 5, 20, null, 'A', 364, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8348, '00394', 6, 'Юридик бошкарма', 6, 3, null, 'A', 364, to_date('25-10-2011 17:45:43', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8349, '00394', 7, 'Инвестицион лойихаларни молиялаштириш бошкармаси', 7, 4, 126, 'A', 364, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8350, '00394', 8, 'Банк методологияси ва трейнинги маркази', 8, 2, null, 'A', 364, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8351, '00394', 9, 'Трейнинг бўлими', 9, 4, 8, 'A', 364, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8352, '00394', 10, 'Турткул минтакалараро укув маркази', 10, 2, 8, 'P', 364, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8353, '00394', 11, 'Биринчи бўлим', 11, 4, null, 'A', 114, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8354, '00394', 12, 'Иккинчи бўлим', 12, 4, null, 'A', 114, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8355, '00394', 13, 'Маркетинг ва матбуот хизмати', 13, 4, null, 'A', 364, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8356, '00394', 14, 'Ички назоратни ташкил килиш ва мувофиклаштириш сектори', 14, 21, 300, 'P', 313, to_date('18-11-2011 16:36:52', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8357, '00394', 15, 'Инвестицион портфелини бошкариш бўлими', 15, 4, 90, 'A', 364, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8358, '00394', 16, 'Бошкарув раиси ва раис уринбосарлари кабулхоналари', 16, 7, 300, 'P', 252, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8359, '00394', 17, 'Методология бўлими', 17, 4, 8, 'A', 364, to_date('20-10-2011 10:28:11', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8360, '00394', 18, 'Бухгалтерия хисоботларини тахлил килиш бошкармаси', 18, 3, 33, 'A', 364, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8361, '00394', 19, 'Кимматли когозлар муомаласи бўлими', 19, 4, 90, 'A', 364, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8362, '00394', 20, 'Акциядорлар билан ишлаш шуъбаси', 20, 21, 90, 'A', 364, to_date('09-11-2012 12:04:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8363, '00394', 21, 'Лойихаларни миллий валютада кредитлаш бўлими', 21, 4, 7, 'A', 364, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8364, '00394', 22, 'Лойихаларни хорижий валютада кредитлаш бўлими', 22, 4, 7, 'A', 364, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8365, '00394', 23, 'Архив ишлари шуъбаси', 23, 21, 18, 'A', 364, to_date('23-10-2012 12:31:36', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8366, '00394', 24, 'Кредит кайтарувчанлигини  мониторинги бўлими', 24, 4, 127, 'A', 364, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8367, '00394', 25, 'Банк статистикаси  бўлими', 25, 4, 222, 'A', 364, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8368, '00394', 26, 'Банк инфратузилмасини мувофиклаштириш бўлими', 26, 4, 222, 'A', 364, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8369, '00394', 27, 'Валюта айирбошлаш шохобчалари фаолиятини мувофиклаштириш ва назорат килиш булими', 27, 4, 300, 'P', 252, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8370, '00394', 28, 'Стратегик режалаштириш бўлими', 28, 4, 128, 'A', 364, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8371, '00394', 29, 'Халкаро кредит линиялар ресурсларини бошкариш бўлими', 29, 4, 128, 'A', 364, to_date('15-01-2013 17:50:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8372, '00394', 30, 'Актив ва пассивларни бошкариш бўлими', 30, 4, 128, 'A', 364, to_date('20-10-2011 15:03:47', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8373, '00394', 31, 'Банк таваккалчилигини бошкариш бўлими', 31, 4, 128, 'A', 364, to_date('28-09-2011 15:13:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8374, '00394', 32, 'Захира таркиби билан ишлаш бўлими', 32, 4, 65, 'A', 364, to_date('08-11-2012 09:34:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8375, '00394', 33, 'Бухгалтерия хисоби ва хисоботи департаменти', 33, 20, null, 'A', 364, to_date('28-09-2011 15:13:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8376, '00394', 34, 'Бухгалтерия хисоботларини тахлил килиш бўлими', 34, 4, 18, 'A', 364, to_date('28-09-2011 15:13:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8377, '00394', 35, 'Банк балансини тайёрлаш бўлими', 35, 4, 18, 'A', 364, to_date('28-09-2011 15:13:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8378, '00394', 36, 'Тўлов маркази', 36, 2, 33, 'A', 364, to_date('28-09-2011 15:13:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8379, '00394', 37, 'Молия бошкармаси', 37, 3, 128, 'A', 364, to_date('28-09-2011 15:13:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8380, '00394', 38, 'Операцион харажатларни мониторинг килиш бўлими', 38, 4, 37, 'A', 364, to_date('16-01-2013 17:57:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8381, '00394', 39, 'Банк молиявий холатини мониторинги бўлими ', 39, 4, 37, 'A', 364, to_date('28-09-2011 15:13:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8382, '00394', 40, 'Донмахсулот тизимига хизмат кўрсатиш бўлими', 40, 3, 133, 'A', 364, to_date('28-09-2011 15:13:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8383, '00394', 41, 'Саноат корхоналарини кредитлаш бўлими', 41, 4, 133, 'A', 364, to_date('28-09-2011 15:13:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8384, '00394', 42, 'Документар операциялар бўлими', 42, 4, 188, 'A', 364, to_date('28-09-2011 15:13:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8385, '00394', 43, 'Омонатчилар ва кредиторларнинг маблагларини мониторинг килиш бошкармаси       ', 43, 3, null, 'A', 364, to_date('23-01-2013 11:11:54', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8386, '00394', 44, 'Ташки иктисодий фаолият ва валюта операциялари департаменти', 44, 20, null, 'A', 364, to_date('28-09-2011 15:13:26', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8387, '00394', 45, 'Омонатчилар маблагларини мониторинг килиш бўлими', 45, 4, 43, 'A', 364, to_date('23-01-2013 11:20:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8388, '00394', 46, 'Юридик шахслар маблагларини мониторинг килиш бўлими', 46, 4, 43, 'A', 364, to_date('23-01-2013 11:21:08', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8389, '00394', 47, 'СВИФТ тулов тизими булими', 47, 4, 300, 'P', 252, to_date('28-09-2011 15:13:26', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8390, '00394', 48, 'Экспорт-импорт шартномалари бўлими', 48, 4, 300, 'P', 364, to_date('28-09-2011 15:13:26', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8391, '00394', 49, 'Валюта айирбошлаш шохобчалари фаолиятини мувофиклаштириш бўлими', 49, 4, 130, 'A', 364, to_date('11-08-2012 11:40:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8392, '00394', 50, 'Халкаро пластик карталар бўлими', 50, 4, 178, 'A', 313, to_date('28-09-2011 15:13:26', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8393, '00394', 51, 'Ички аудит департаменти', 51, 20, null, 'A', 364, to_date('20-10-2011 16:56:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8394, '00394', 52, 'Молиявий аудит, аудит натижалари  тахлили ва мониторинг бўлими', 52, 4, 300, 'P', 114, to_date('28-09-2011 15:13:26', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8395, '00394', 53, 'Банк филиалларини операцион аудит килиш бошкармаси', 53, 3, 300, 'P', 313, to_date('28-09-2011 15:13:26', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8396, '00394', 54, 'Филиаллар фаолиятини операцион аудит килиш бўлими', 54, 4, 300, 'P', 114, to_date('28-09-2011 15:13:26', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8397, '00394', 55, 'Иктисодий ночор корхоналарни согломлаштириш бўлими', 55, 4, 126, 'A', 364, to_date('15-01-2013 17:39:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8398, '00394', 56, 'Инвестиция жараёнларини бошкариш бўлими', 56, 4, 126, 'A', 364, to_date('16-01-2013 14:33:56', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8399, '00394', 57, 'Муаммоли активлар билан ишлаш бўлими', 57, 4, 6, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8400, '00394', 58, 'Маънавият ва маърифат шуъбаси', 58, 21, 8, 'A', 364, to_date('23-10-2012 12:30:08', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8401, '00394', 59, 'Юридик хизмат бўлими', 59, 4, 6, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8402, '00394', 60, 'Шартномавий-хукукий муносабатлар бўлими', 60, 4, 6, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 200 records committed...
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8403, '00394', 61, 'Хавфсизлик ва тартибот бўлими', 61, 4, 3, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8404, '00394', 62, 'Ахборотларни химоя килиш бўлими', 62, 4, 3, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8405, '00394', 63, 'Филиаллар ходимлари билан ишлаш бўлими', 63, 4, 65, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8406, '00394', 64, 'Марказий аппарат ходимлари билан ишлаш бўлими', 64, 4, 5, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8407, '00394', 65, 'Филиаллар ходимлари билан ишлаш бошкармаси', 65, 3, 5, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8408, '00394', 66, 'Рахбар ходимлар билан ишлаш бўлими', 66, 4, 65, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8409, '00394', 67, 'Ижро назорати бўлими', 67, 4, 2, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8410, '00394', 68, 'Фукароларнинг мурожаатларини кўриб чикиш шўъбаси', 68, 21, 2, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8411, '00394', 69, 'Кишлок хўжалигини кредитлаш бошкармаси', 69, 3, 132, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8412, '00394', 70, 'Кишлок хўжалигини кредитлаш бўлими', 70, 4, 69, 'A', 364, to_date('28-09-2011 15:13:28', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8413, '00394', 71, 'Ишонч телефони шўъбаси', 71, 21, 2, 'A', 364, to_date('28-09-2011 15:13:28', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8414, '00394', 72, 'Кишлок хўжалиги кредитлари мониторинги бўлими', 72, 4, 69, 'P', 364, to_date('28-09-2011 15:13:28', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8415, '00394', 73, 'Кишлок хўжалигини имтиёзли кредитлаш бўлими', 73, 4, 69, 'P', 364, to_date('28-09-2011 15:13:28', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8416, '00394', 74, 'Пахтасаноат тизимига хизмат кўрсатиш бўлими', 74, 4, 133, 'A', 364, to_date('28-09-2011 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8417, '00394', 75, 'Таъминот корхоналарига хизмат кўрсатиш бўлими', 75, 4, 133, 'A', 364, to_date('28-09-2011 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8418, '00394', 76, 'Молия Вазирлиги хузуридаги жамгармалар билан ишлаш бошкармаси', 76, 3, 132, 'A', 364, to_date('28-09-2011 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8419, '00394', 77, 'Кишлок хужалик техникасини хисоб-китоб жамгармаси билан ишлаш бўлими', 77, 4, 76, 'A', 364, to_date('28-09-2011 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8420, '00394', 78, 'Кишлок хўжалик махсулотларини хисоб-китоб жамгармаси билан ишлаш бўлими', 78, 4, 76, 'A', 364, to_date('28-09-2011 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8421, '00394', 79, 'Савдони кредитлаш бўлими', 79, 4, null, 'A', 364, to_date('28-09-2011 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8422, '00394', 80, 'Кичик бизнес субъектларни кредитлаш бўлими', 80, 4, 134, 'A', 114, to_date('28-09-2011 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8423, '00394', 81, 'Кредитларни мониторинг килиш  бўлими', 81, 4, 134, 'A', 114, to_date('28-09-2011 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8424, '00394', 82, 'Микрокредитлаш бўлими', 82, 4, 134, 'A', 364, to_date('19-10-2011 18:16:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8425, '00394', 83, 'Ахолининг тадбиркорлик фаолиятини кредитлаш бўлими', 83, 4, 135, 'A', 364, to_date('28-09-2011 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8426, '00394', 84, 'Ипотека кредитлари ажратиш бўлими', 84, 4, 135, 'A', 364, to_date('28-09-2011 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8427, '00394', 85, 'Кишлок хўжалиги кредитларини тахлил ва мониторинг килиш бўлими', 1, 4, 69, 'A', 364, to_date('18-05-2012 15:12:06', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8428, '00394', 86, 'Кишлок хўжалиги корхоналарининг муаммоли кредитлари билан ишлаш бўлими', 86, 4, 69, 'A', 364, to_date('18-05-2012 15:24:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8429, '00394', 87, 'Имтиёзли кредитлаш бошкармаси', 87, 3, 132, 'A', 364, to_date('18-05-2012 15:26:20', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8430, '00394', 88, 'Пахта ва галла хосилини кредитлаш бўлими', 88, 4, 87, 'A', 364, to_date('18-05-2012 15:29:13', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8431, '00394', 89, 'Пахта ва галла хосилининг етиштирилишини мониторинг килиш бўлими', 89, 4, 87, 'A', 364, to_date('18-05-2012 15:31:28', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8432, '00394', 90, 'Кимматли когозлар  бошкармаси', 90, 3, null, 'A', 114, to_date('28-09-2011 15:13:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8433, '00394', 91, 'Кимматли когозлар билан пассив операциялар бўлими', 91, 4, 90, 'P', 114, to_date('28-09-2011 15:13:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8434, '00394', 92, 'Кимматли когозлар билан актив операциялар  булими', 92, 4, 90, 'P', 114, to_date('28-09-2011 15:13:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8435, '00394', 93, 'Касса операциялари бошкармаси', 93, 3, 300, 'P', 114, to_date('28-09-2011 15:13:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8436, '00394', 94, 'Касса ишини мувофиклаштириш бўлими', 94, 4, 137, 'A', 364, to_date('28-09-2011 15:13:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8437, '00394', 95, 'Касса ишини мониторинги бўлими', 95, 4, 137, 'A', 364, to_date('28-09-2011 15:13:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8438, '00394', 96, 'Ахборот технологиялари бош бошкармаси', 96, 8, 300, 'P', 364, to_date('28-09-2011 15:13:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8439, '00394', 97, 'Технологиялар ва дастурлаш бошкармаси', 97, 3, 138, 'A', 364, to_date('28-09-2011 15:13:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8440, '00394', 98, 'Банк амалиётларини автоматлаштириш бўлими', 98, 4, 97, 'A', 364, to_date('28-09-2011 15:13:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8441, '00394', 99, 'Телекоммуникациялар ва  техник хизмат бўлими', 99, 4, 97, 'A', 364, to_date('28-09-2011 15:13:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8442, '00394', 100, 'Янги дастур ва технологиялар бўлими', 100, 4, 97, 'A', 364, to_date('09-02-2012 11:24:56', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8443, '00394', 101, 'Кредитлаш бўлими', 101, 4, 111, 'A', 364, to_date('22-10-2011 13:45:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8444, '00394', 102, 'Пластик карталар билан ишлаш бошкармаси', 102, 3, null, 'A', 114, to_date('28-09-2011 15:13:31', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8445, '00394', 103, 'Клиринг бошкармаси', 103, 3, 138, 'A', 364, to_date('28-09-2011 15:13:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8446, '00394', 104, 'Эксплуатация бўлими', 104, 4, 103, 'A', 68, to_date('28-09-2011 15:13:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8447, '00394', 105, 'Тўлов маълумотлари бўлими', 105, 4, 103, 'P', 114, to_date('28-09-2011 15:13:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8448, '00394', 106, 'Тўлов тизими хавфсизлиги ва архивлаш бўлими', 106, 4, 103, 'P', 114, to_date('28-09-2011 15:13:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8449, '00394', 107, 'Курилиш комплексини кредитлаш, мониторинг килиш  ва лизинг хизматлари  бошкармаси', 107, 3, null, 'P', 114, to_date('28-09-2011 15:13:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8450, '00394', 108, 'Курилиш комплексини кредитлаш ва мониторинг килиш бўлими', 108, 4, 107, 'P', 114, to_date('28-09-2011 15:13:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8451, '00394', 109, 'Лизинг хизматларини курсатиш  бўлими', 109, 4, 107, 'P', 114, to_date('28-09-2011 15:13:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8452, '00394', 110, 'Халкаро пластик карталар (VIZA) шўъбаси', 110, 21, 117, 'A', 364, to_date('04-02-2012 13:24:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8453, '00394', 111, 'Банк операциялари  бошкармаси', 111, 3, null, 'A', 252, to_date('28-09-2011 15:13:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8454, '00394', 112, 'Жисмоний шахсларни кредитлаш бўлими', 112, 4, 111, 'A', 364, to_date('24-10-2011 17:31:28', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8455, '00394', 113, 'Пул муомаласи бўлими', 113, 4, 111, 'A', 114, to_date('28-09-2011 15:13:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8456, '00394', 114, 'Ахоли омонатлари бўлими', 114, 4, 111, 'A', 364, to_date('24-10-2011 16:59:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8457, '00394', 115, 'Банк ички хисоб-китоби бўлими', 115, 4, 111, 'A', 114, to_date('28-09-2011 15:13:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8458, '00394', 116, 'Бухгалтерия хисоби ва хисоботи бўлими', 116, 4, 111, 'A', 364, to_date('24-10-2011 12:06:09', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8459, '00394', 117, 'Пластик карталар бўлими', 117, 4, 111, 'A', 364, to_date('25-10-2011 10:13:58', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8460, '00394', 118, 'Бино ва транспорт эксплуатацияси бўлими', 118, 4, 211, 'A', 364, to_date('26-10-2011 11:25:14', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8461, '00394', 119, 'Хўжалик ва таъминот бўлими', 119, 4, 211, 'A', 364, to_date('26-10-2011 12:40:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8462, '00394', 120, 'Тиббий ёрдам шўъбаси', 120, 9, 211, 'A', 364, to_date('26-10-2011 16:56:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8463, '00394', 121, 'Паркент дам олиш  маскани ', 121, 10, 211, 'A', 364, to_date('26-10-2011 11:21:50', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8464, '00394', 122, 'Тиббий ёрдам кўрсатиш пункти', 122, 9, 211, 'P', 114, to_date('28-09-2011 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8465, '00394', 123, 'Кабулхоналар', 123, 7, 208, 'A', 364, to_date('28-09-2011 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8466, '00394', 124, 'Ахоли омонатлари билан ишлаш бошкармаси', 124, 3, null, 'A', 364, to_date('28-09-2011 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8467, '00394', 125, 'Информацион технологиялар бўлими', 125, 4, 111, 'A', 364, to_date('25-10-2011 14:59:31', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8468, '00394', 126, 'Инвестицион фаолиятини мувофиклаштириш ва мониторинг килиш департаменти', 126, 20, null, 'A', 364, to_date('25-10-2011 18:30:58', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8469, '00394', 127, 'Иктисодий тахлил департаменти', 127, 20, null, 'A', 364, to_date('28-09-2011 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8470, '00394', 128, 'Газначилик департаменти', 128, 20, null, 'A', 364, to_date('28-09-2011 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8471, '00394', 129, 'Ички назорат бошкармаси', 129, 3, null, 'A', 364, to_date('28-09-2011 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8472, '00394', 130, 'Валюта айирбошлаш операциялари махсус бошкармаси    ', 130, 3, null, 'A', 364, to_date('28-09-2011 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8473, '00394', 131, 'СВИФТ бўлими ', 131, 4, null, 'A', 364, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8474, '00394', 132, 'Кишлок хўжалигини кредитлаш департаменти ', 132, 20, null, 'A', 364, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8475, '00394', 133, 'Устувор тармокларни кредитлаш бошкармаси', 133, 3, null, 'A', 364, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8476, '00394', 134, 'Кичик бизнес субъектларини кредитлаш бошкармаси', 134, 3, null, 'A', 364, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8477, '00394', 135, 'Жисмоний шахсларни кредитлаш бошкармаси   ', 135, 3, null, 'A', 364, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8478, '00394', 136, 'Пул муомаласи департаменти', 136, 20, null, 'A', 364, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8479, '00394', 137, 'Касса ишлари бошкармаси', 137, 3, null, 'A', 364, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8480, '00394', 138, 'Информацион технологиялар департаменти', 138, 20, null, 'A', 364, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8481, '00394', 139, 'Капитал курилиш бошкармаси', 139, 3, null, 'A', 364, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8482, '00394', 143, 'Бош бошкарманинг Коракалпогистон Республикаси буйича булими', 143, 4, 51, 'A', 114, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8483, '00394', 144, 'Бош бошкарманинг Андижон вилояти буйича булими', 144, 4, 51, 'P', 114, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8484, '00394', 145, 'Собир Рахимов минибанки', 145, 15, 300, 'P', 364, to_date('28-11-2011 14:08:22', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8485, '00394', 146, 'Бош бошкарманинг Жиззах вилояти буйича булими', 146, 4, 51, 'P', 114, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8486, '00394', 147, 'Бош бошкарманинг Кашкадаре вилояти буйича булими', 147, 4, 51, 'P', 114, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8487, '00394', 148, 'Бош бошкарманинг Навоий вилояти буйича булими', 148, 4, 51, 'P', 114, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8488, '00394', 149, 'Бош бошкарманинг Наманган вилояти буйича булими ', 149, 4, 51, 'P', 114, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8489, '00394', 150, 'Бош бошкарманинг Самарканд вилояти буйича булими', 150, 4, 51, 'P', 114, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8490, '00394', 151, 'Бош бошкарманинг Сурхондаре вилояти буйича булими', 151, 4, 51, 'P', 114, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8491, '00394', 152, 'Бош бошкарманинг Сирдаре вилояти буйича булими', 152, 4, 300, 'P', 114, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8492, '00394', 153, 'Бош бошкарманинг Тошкент вилояти буйича булими', 153, 4, 51, 'P', 114, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8493, '00394', 154, 'Пластик карталардаги маблагларнинг сакланишини мониторинг бўлими', 154, 4, 102, 'P', 364, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8494, '00394', 155, 'Масофавий аудит килиш бўлими', 155, 4, 300, 'P', 313, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8495, '00394', 156, 'Омонат операциялари бўлими', 156, 4, 124, 'A', 364, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8496, '00394', 157, 'Интерактив хизматлар бўлими', 157, 4, 124, 'A', 364, to_date('20-12-2012 15:08:08', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8497, '00394', 158, 'Банк инфратузилмасини ташкил этиш сектори', 158, 6, 156, 'P', 114, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8498, '00394', 159, 'Ахолининг коммунал туловлари билан ишлаш булими', 159, 4, 86, 'P', 114, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8499, '00394', 160, '"On-line" тизими  билан ишлаш бўлими', 160, 4, 102, 'A', 364, to_date('16-01-2013 15:50:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8500, '00394', 161, 'Валюта операциялари хисобини юритиш маркази', 161, 4, 44, 'A', 364, to_date('21-10-2011 11:02:19', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8501, '00394', 162, 'Пластик карталар клиринги бўлими', 162, 4, 102, 'A', 364, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8502, '00394', 163, 'Банк карталари ва терминалларига хизмат кўрсатиш бўлими', 163, 4, 102, 'A', 364, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 300 records committed...
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8503, '00394', 164, 'Ахборот маркази', 164, 2, 111, 'A', 364, to_date('25-10-2011 15:08:09', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8504, '00394', 165, '"Олмазор" минибанк', 165, 15, 111, 'A', 364, to_date('25-10-2011 10:23:04', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8505, '00394', 166, 'Бешегоч  минибанк', 166, 15, 111, 'A', 252, to_date('28-09-2011 15:13:36', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8506, '00394', 167, '"Агро-Дон" минибанк', 167, 15, 111, 'A', 364, to_date('26-10-2011 10:08:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8507, '00394', 168, 'Валюта биржа амалиётлари бўлими', 168, 4, 172, 'A', 364, to_date('21-10-2011 10:55:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8508, '00394', 169, 'Ахолига истеъмол кредитини ажратиш булими', 169, 4, 300, 'P', 114, to_date('28-09-2011 15:13:36', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8509, '00394', 170, '"Мирзо Улугбек" номли минибанк', 170, 15, 111, 'A', 252, to_date('28-09-2011 15:13:36', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8510, '00394', 171, 'Накд пул маблагларини берилишини мониторинг килиш буйича махсус сектор', 171, 6, null, 'P', 114, to_date('28-09-2011 15:13:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9424, '00394', 250, 'Кредит кумитаси', 250, 4, 1, 'P', 366, to_date('20-04-2012 10:00:15', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9486, '00394', 238, 'Омонатчилар мониторинг килиш бўлими', 238, 4, 237, 'A', 364, to_date('23-01-2013 11:09:58', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8511, '00394', 172, 'Ташки савдо операциялар бошкармаси', 172, 3, 44, 'A', 364, to_date('25-10-2011 18:45:46', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8512, '00394', 173, 'Накд пул тушумларини мониторинг килиш булими', 173, 4, 195, 'A', 252, to_date('28-09-2011 15:13:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8513, '00394', 174, 'Накд пул тушумлари бўйича хисоботларни тахлил килиш бўлими', 174, 4, 195, 'A', 313, to_date('28-09-2011 15:13:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8514, '00394', 175, 'Бошкарув котибияти', 175, 7, 2, 'A', 252, to_date('28-09-2011 15:13:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8515, '00394', 176, 'Накд пул маблаглари тушуми ва берилишини назорат килиш махсус бошкармаси', 176, 3, 172, 'P', 114, to_date('28-09-2011 15:13:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8516, '00394', 177, 'Накд пулдаги тўловларни тахлил килиш бўлими', 177, 4, 189, 'A', 364, to_date('28-09-2011 15:13:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8517, '00394', 178, 'Носавдо амалиётлар бошкармаси', 178, 3, 44, 'A', 364, to_date('22-10-2011 15:20:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8518, '00394', 179, 'Экспорт-импорт шартномалари ва мажбурий сотувни мониторинг килиш бўлими', 179, 4, 172, 'A', 364, to_date('21-10-2011 10:37:01', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8519, '00394', 180, 'Кишлок хўжалиги корхоналари лойихаларини молиялаштириш бошкармаси', 180, 3, 126, 'A', 364, to_date('28-09-2011 15:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8520, '00394', 181, 'Кишлок хўжалиги корхоналарини миллий валютада кредитлаш бўлими', 181, 4, 180, 'A', 364, to_date('28-09-2011 15:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8521, '00394', 182, 'Кишлок хўжалиги корхоналарини хорижий валютада кредитлаш бўлими', 182, 4, 180, 'A', 364, to_date('28-09-2011 15:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8522, '00394', 183, 'Халкаро операциялар ва вакиллик муносабатлари бошкармаси', 183, 3, 44, 'P', 252, to_date('28-09-2011 15:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8523, '00394', 184, 'Хорижий валютадаги омонатлар  шъўбаси', 184, 4, 300, 'P', 364, to_date('28-09-2011 15:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8524, '00394', 185, 'Валюта айирбошлаш операцияларини тахлил килиш бўлими', 185, 4, 130, 'A', 364, to_date('20-10-2011 15:44:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8525, '00394', 186, 'Ахборотлаштириш булими', 186, 4, 300, 'P', 114, to_date('28-09-2011 15:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8526, '00394', 187, 'Истеъмол кредитлари ажратиш бўлими', 187, 4, 135, 'A', 364, to_date('28-09-2011 15:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8527, '00394', 188, 'Вакиллик муносабатлари ва документар операциялар бошкармаси', 188, 3, 44, 'A', 364, to_date('21-10-2011 10:46:20', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8528, '00394', 189, 'Накд пул маблаглари берилишини мониторинг килиш махсус бошкармаси ', 189, 3, 136, 'A', 114, to_date('28-09-2011 15:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8529, '00394', 190, 'Накд пул маблаглари берилишини мониторинг килиш бўлими', 190, 4, 189, 'A', 364, to_date('28-09-2011 15:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8530, '00394', 191, 'Архивлаштириш булими', 191, 4, 103, 'A', 364, to_date('28-09-2011 15:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8531, '00394', 192, 'Вакиллик муносабатлари бўлими', 192, 4, 188, 'A', 364, to_date('15-10-2012 12:14:39', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8532, '00394', 193, 'Банкнинг хусусий курилиш ва таъмирлаш бўлими', 193, 4, 139, 'A', 364, to_date('28-09-2011 15:13:39', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8533, '00394', 194, 'Техник назорат ва экспертиза бўлими', 194, 4, 139, 'A', 364, to_date('28-09-2011 15:13:39', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8534, '00394', 195, 'Накд пул тушумларини тахлил килиш бошкармаси', 195, 3, 136, 'A', 364, to_date('28-09-2011 15:13:39', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8535, '00394', 196, 'Cкоринг шуъбаси', 196, 21, 135, 'A', 364, to_date('23-10-2012 12:32:19', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8536, '00394', 197, 'Касса ишлари бўлими', 197, 4, 111, 'A', 364, to_date('22-10-2011 14:47:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8537, '00394', 198, 'Халкаро пул ўтказмалари тизимлари билан ишлаш бўлими', 198, 4, 178, 'A', 364, to_date('21-10-2011 10:42:10', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8538, '00394', 199, 'Махсус кассалар', 199, 22, 197, 'A', 364, to_date('22-10-2011 15:19:42', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8539, '00394', 200, 'Кредит тарихини ахборотлаштириш бўлими ', 200, 4, 222, 'A', 364, to_date('28-09-2011 15:13:39', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8540, '00394', 201, 'Филиаллар аудити бошкармаси', 201, 3, 51, 'A', 364, to_date('20-10-2011 16:59:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8541, '00394', 202, 'Аудит натижалари тахлили бўлими', 202, 4, 201, 'A', 364, to_date('20-10-2011 17:01:02', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8542, '00394', 203, 'Масофавий аудит ва мониторинг бошкармаси', 203, 3, 51, 'A', 364, to_date('20-10-2011 17:02:18', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8543, '00394', 204, 'Молиявий хисоботлар тахлили бўлими', 204, 4, 203, 'A', 364, to_date('20-10-2011 17:03:55', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8544, '00394', 205, 'Аудитни режалаштириш ва мониторинги бўлими', 205, 4, 203, 'A', 364, to_date('20-10-2011 17:05:10', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8545, '00394', 206, 'Банк муълумотлари билан ишлаш бўлими', 206, 4, 129, 'A', 364, to_date('28-09-2011 15:13:39', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8546, '00394', 207, 'Ички назоратни мувофиклаштириш бўлими', 207, 4, 129, 'A', 364, to_date('28-09-2011 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8547, '00394', 208, 'Девонхона', 208, 3, null, 'A', 114, to_date('28-09-2011 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8548, '00394', 209, 'Хатлар билан ишлаш булими', 209, 4, 208, 'A', 252, to_date('28-09-2011 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8549, '00394', 210, 'Экспедиция булими', 210, 4, 208, 'A', 252, to_date('28-09-2011 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8550, '00394', 211, 'Ишлар бошкармаси', 211, 3, null, 'A', 364, to_date('25-10-2011 18:34:02', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8551, '00394', 212, 'Кимматли когозлар портфелини бошкариш ва мониторинг килиш бўлими', 212, 4, 300, 'P', 252, to_date('28-09-2011 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8552, '00394', 213, 'Акциядорлар билан ишлаш, улар хисобини юритиш ва мониторинг килиш бўлими', 213, 4, 300, 'P', 114, to_date('28-09-2011 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8553, '00394', 214, 'Кимматли когозлар муомаласини ташкил этиш булими', 214, 4, 300, 'P', 252, to_date('28-09-2011 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8554, '00394', 215, 'Солик туловларини назорат килиш булими', 215, 4, 300, 'P', 252, to_date('28-09-2011 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8555, '00394', 216, 'Ички аудит бўлими', 216, 4, 111, 'A', 364, to_date('20-10-2011 17:35:49', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8556, '00394', 217, 'Юридик бўлими', 217, 4, 111, 'A', 313, to_date('28-09-2011 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8557, '00394', 218, 'Кимматли когозлар шўъбаси', 218, 6, 111, 'A', 364, to_date('22-10-2011 13:38:45', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8558, '00394', 219, 'Ташки иктисодий фаолият ва валюта операциялари бўлими', 219, 4, 111, 'A', 364, to_date('22-10-2011 15:33:14', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8559, '00394', 220, 'Халкаро пул ўтказмалари тизимлари билан ишлаш шўъбаси', 220, 21, 219, 'A', 364, to_date('22-10-2011 15:34:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8560, '00394', 222, 'Иктисодий тахлил ва статистика бошкармаси', 222, 3, 127, 'A', 252, to_date('28-09-2011 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8561, '00394', 223, 'Марказий аппарат ходимлари мониторинги сектори', 223, 6, 21, 'P', 252, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8562, '00394', 224, 'Валюта айирбошлаш шохобчалари фаолиятини мувофиклаштириш шуъбаси ', 224, 21, 219, 'A', 364, to_date('23-10-2012 12:29:52', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8563, '00394', 225, 'Кредит операцияларини аудит килиш бўлими', 225, 4, 300, 'P', 313, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8564, '00394', 226, 'Ташки аудит текширувларини мувофиклаштириш булими', 226, 4, 300, 'P', 252, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8565, '00394', 227, 'Ички аудит текшируви натижалари мониторинги бўлими', 277, 4, 300, 'P', 313, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8566, '00394', 228, 'Молиявий аудит килиш бўлими', 228, 4, 300, 'P', 313, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8567, '00394', 229, 'Марказий аппарат ходимлари билан ишлаш ва мониторинг бўлими', 229, 4, 300, 'P', 313, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8568, '00394', 230, 'Якуний назорат бошкармаси', 230, 3, null, 'A', 313, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8569, '00394', 231, 'Якуний назорат тизими билан ишлаш бўлими', 231, 4, 230, 'A', 364, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8570, '00394', 232, 'Якуний назорат хисоботларини тахлил килиш бўлими', 232, 4, 230, 'A', 364, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8571, '00394', 233, 'Ахоли депозитлари билан ишлаш  бош бошкармаси', 233, 8, 300, 'P', 313, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8572, '00394', 234, 'Ахоли омонатлари билан ишлаш бошкармаси', 234, 3, 300, 'P', 313, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8573, '00394', 235, 'Омонат операциялари бўлими', 235, 4, 234, 'P', 313, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8574, '00394', 236, 'Мониторинг ва статистика бўлими', 236, 4, null, 'P', 313, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8575, '00394', 300, 'СВОБОДНЫЕ', 300, 6, null, 'P', 364, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8576, '00394', 401, 'Рахбарият', 401, 1, 520, 'A', 114, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8577, '00394', 402, 'Кредитларнинг кайтарувчанлигини мониторинг килиш ва улардан максадли фойдаланилишини назорат килиш бўлими ', 402, 4, 542, 'A', 252, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8578, '00394', 403, 'Актив ва пассивларни бошкариш булими', 403, 4, 542, 'A', 114, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8579, '00394', 404, 'Киска муддатли кредитлаш ва мониторинг булими', 404, 4, null, 'A', 114, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8580, '00394', 405, 'Кишлок хужалигини кредитлаш ва мониторинг булими', 405, 4, null, 'A', 114, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8581, '00394', 406, 'Кичик бизнес субъектларини кредитлаш ва мониторинг булими', 406, 4, null, 'A', 114, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8582, '00394', 407, 'Худудий тузилмалар фаолиятини ташкил килиш  ва мониторинг сектори', 407, 4, null, 'A', 252, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8583, '00394', 408, 'Курилиш комплексини кредитлаш, мониторинг килиш ва лизинг хизматлари булими', 408, 4, null, 'A', 114, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8584, '00394', 409, 'Лойихаларни молиялаштириш буйича', 409, 6, null, 'A', 114, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8585, '00394', 410, 'Пул муомаласи булими', 410, 4, 520, 'A', 114, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8586, '00394', 411, 'Касса операциялари булими', 411, 4, null, 'A', 114, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8587, '00394', 412, 'Кредит таваккалчилигини бошкариш булими', 412, 4, null, 'A', 252, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8588, '00394', 413, 'Халкаро банк фаолияти булими', 413, 4, null, 'A', 114, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8589, '00394', 414, 'Кимматли когозлар билан ишлаш булими', 414, 4, null, 'A', 252, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8590, '00394', 415, 'Компьютер технологиялари булими', 415, 4, null, 'A', 252, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8591, '00394', 416, 'Кадрлар билан ишлаш булими', 416, 4, null, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8592, '00394', 417, 'Юридик булим', 417, 4, null, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8593, '00394', 418, 'Хавфсизлик ва ахборотларни химоялаш булими', 418, 4, null, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8594, '00394', 419, 'Биринчи булим', 419, 4, null, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8595, '00394', 420, 'Умумий булим', 420, 4, 520, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8596, '00394', 421, 'Вилоят худудий филиали', 421, 4, null, 'A', 302, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8597, '00394', 422, 'Кредитлаш ва иктисодий  тахлил булими', 422, 4, 421, 'A', 252, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8598, '00394', 423, 'Бухгалтерия хисоби ва хисоботи булими', 423, 4, 421, 'A', 252, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8599, '00394', 424, 'Ахборотлаштириш булими', 424, 4, 421, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8600, '00394', 425, 'Касса хизмати курсатиш булими', 425, 4, 421, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
commit;
prompt 400 records committed...
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8601, '00394', 426, 'Валюта айирбошлаш шахобчаси', 426, 16, 421, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8602, '00394', 427, 'Окёр номли ', 427, 15, 434, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8603, '00394', 428, 'Когон номли', 428, 15, 434, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8604, '00394', 429, 'Шахар номли', 429, 15, 434, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8605, '00394', 430, 'Тойлок номли', 430, 15, 434, 'A', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8606, '00394', 431, 'Булунгур номли', 431, 15, 434, 'A', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8607, '00394', 432, 'Дахбет номли', 432, 15, 434, 'A', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8608, '00394', 433, 'Дустлик номли', 433, 15, 434, 'A', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8609, '00394', 434, 'Мини банк', 434, 15, 520, 'A', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8610, '00394', 435, 'Рахбарият (БОБ)', 435, 1, 542, 'A', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8611, '00394', 436, 'Кредит таъминоти буйича', 436, 6, null, 'P', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8612, '00394', 437, 'Кредит инспекцияси буйича', 437, 6, null, 'P', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8613, '00394', 438, 'Лойихаларни молиялаштириш булими', 438, 4, null, 'P', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8614, '00394', 439, 'Микрокредитлаш ва мониторинг (ЕТТБ) булими', 439, 4, 421, 'A', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8615, '00394', 440, 'Накд пул маблаглари берилишини мониторинг килиш буйича махсус сектор', 440, 6, null, 'A', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8616, '00394', 441, 'Кредит таъминоти билан ишлаш бўлими', 441, 4, null, 'P', 114, to_date('28-09-2011 15:13:45', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8617, '00394', 442, 'Молиявий назорат махсус  сектори', 442, 6, 412, 'A', 114, to_date('28-09-2011 15:13:45', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8618, '00394', 443, 'Лизинг хизматлари курсатиш булими', 443, 4, null, 'P', 114, to_date('28-09-2011 15:13:45', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8619, '00394', 444, 'Кредит таъминоти билан ишлаш булими', 444, 4, null, 'P', 114, to_date('28-09-2011 15:13:45', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8620, '00394', 445, 'Лизинг хизматлари булими', 445, 4, null, 'P', 114, to_date('28-09-2011 15:13:45', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8621, '00394', 446, 'Дамарик', 446, 15, 434, 'A', 114, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8622, '00394', 447, 'Банк фаолиятини ташкил килиш ва мониторинг булими', 447, 4, null, 'P', 114, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8623, '00394', 448, 'Пластик карталар билан ишлаш булими', 448, 6, null, 'A', 252, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8624, '00394', 449, 'Банкнинг инвестицион фаолиятини мувофиклаштириш ва мониторинг килиш булими', 449, 4, null, 'A', 252, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8625, '00394', 450, 'Кичик бизнес субъектларини кредитлаш  бўлими', 450, 4, 520, 'A', 313, to_date('25-11-2011 09:25:01', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8626, '00394', 451, 'Ички назоратни мувофиклаштириш бўлими', 451, 4, null, 'A', 114, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8627, '00394', 452, 'Курилиш комплексини кредитлаш ва мониторинг килиш бўлими', 452, 4, null, 'P', 114, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8628, '00394', 453, 'Ккрилиш комплексини кредитлаш ва мониторинг килиш бўлими', 453, 4, null, 'P', 114, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8629, '00394', 454, 'Компьютер технологиялари булими', 454, 4, null, 'P', 252, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8630, '00394', 455, 'Пластик карточкалар билан ишлаш булими', 455, 4, null, 'P', 252, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8631, '00394', 500, 'Таъминот-таркатиш ва тайёролов ташкилотларини кредитлаш ва мониторинг бўлими', 500, 4, null, 'A', 252, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8632, '00394', 501, 'Саноат ва истеъмол бозорини кредитлаш ва мониторинг бўлими', 501, 4, null, 'A', 252, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8633, '00394', 502, 'Бухгалтерия хисоби ва хисоботи бўлими', 502, 4, 520, 'A', 252, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8634, '00394', 503, 'Накд пул маблагларини берилишини мониторинг килиш сетори', 503, 6, null, 'P', 252, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8635, '00394', 504, 'Хавфсизлик бўлими', 504, 4, 520, 'A', 313, to_date('28-11-2011 16:41:41', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8636, '00394', 505, 'Пластик караталар билан ишлаш сектори', 505, 6, 421, 'A', 252, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8637, '00394', 506, 'Худудий тузилмалар фаолиятини ташкил килишва мониторинг бўлими', 506, 4, null, 'A', 252, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8638, '00394', 507, 'Кредит тарихини ахборотлаштириш, ахборотни хисога олиш ва алмашиш сектори', 507, 6, null, 'A', 252, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8639, '00394', 508, 'Курилиш комплексини кредитлаш ва мониторинг килиш сектори', 508, 6, null, 'A', 252, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8640, '00394', 509, 'Кредит таъминоти буйича ишлаш булими', 509, 4, null, 'A', 252, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8641, '00394', 510, 'Пул муомаласи сектори', 510, 6, null, 'A', 302, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8642, '00394', 511, 'Компьютер технологиялари билан ишлаш сектори', 511, 6, 421, 'A', 302, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8643, '00394', 512, 'Пул муомаласи бўлими', 512, 4, 542, 'A', 302, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8644, '00394', 513, 'Микрокредитлаш бўлими', 513, 4, 421, 'A', 302, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8645, '00394', 514, 'Касса операциялар булими', 514, 4, 421, 'A', 302, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8646, '00394', 515, 'Якуний назорат бўлими', 515, 4, 520, 'A', 302, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8647, '00394', 516, 'Якуний назорат шўъбаси', 516, 21, 520, 'A', 313, to_date('24-11-2011 11:58:01', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8648, '00394', 595, 'Рахбарият (туман филиали)', 595, 1, 1061, 'A', 114, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8649, '00394', 596, 'Бухгалтерия хисоби ва хисоботи булими', 596, 4, 1061, 'A', 252, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8650, '00394', 597, 'Кимматбахо когозлар ва ташки иктисодиет булими', 597, 4, 1061, 'A', 114, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8651, '00394', 598, 'Пул муомаласи булими', 598, 4, 600, 'A', 252, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8652, '00394', 600, 'Рахбарият', 600, 1, 1061, 'A', 114, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8653, '00394', 601, 'Кредитлаш ва иктисодий тахлил килиш булими', 601, 4, 1061, 'A', 252, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8654, '00394', 602, 'Операциялар булими ', 602, 4, 595, 'A', 313, to_date('29-01-2013 14:54:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8655, '00394', 603, 'Ахборотлаштириш булими', 603, 4, null, 'A', 114, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8656, '00394', 604, 'Касса операциялари булими', 604, 4, null, 'A', 252, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8657, '00394', 605, 'Валюта айирбошлаш шохобчаси', 605, 4, 1061, 'A', 313, to_date('24-11-2011 14:39:29', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8658, '00394', 606, 'Умумий булим', 606, 4, null, 'A', 114, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8659, '00394', 607, 'Минибанк', 607, 15, 1061, 'A', 114, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8660, '00394', 608, 'Мискин номли', 608, 15, 607, 'A', 114, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8661, '00394', 609, 'Навруз номли', 609, 15, 607, 'A', 114, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8662, '00394', 610, 'К.Нуримбетов номли', 610, 15, 607, 'A', 114, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8663, '00394', 611, 'Ок олтин', 611, 15, 607, 'A', 114, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8664, '00394', 612, 'Й.Охунбобоев', 612, 15, 607, 'A', 114, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8665, '00394', 613, 'Киличбой номли', 613, 15, 607, 'A', 114, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8666, '00394', 614, 'Бердах номли', 614, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8667, '00394', 615, 'Марказ номли', 615, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8668, '00394', 616, 'Килчинок номли', 616, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8669, '00394', 617, 'Саробий номли', 617, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8786, '00394', 734, 'Хамкор номли', 734, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8787, '00394', 735, 'Чирокчи номли', 735, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8788, '00394', 736, 'А.Набиев номли', 735, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8789, '00394', 737, 'Темирхужа номли', 737, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8790, '00394', 738, 'Пистали номли', 738, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8791, '00394', 739, 'Гувалак номли', 739, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8792, '00394', 740, 'Кунгиртов номли ', 740, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8793, '00394', 741, 'Беруний номли', 741, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8794, '00394', 742, 'Гулбог номли', 742, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8795, '00394', 743, 'Чоршанбе номли', 743, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8796, '00394', 744, 'Хисор номли', 744, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8797, '00394', 745, 'Муминобод номли', 745, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8798, '00394', 746, 'Ж.Элбоев номли', 746, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8799, '00394', 747, 'Бешчашма номли', 747, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8800, '00394', 748, 'Мехнатобод номли', 748, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8801, '00394', 749, 'Чиял номли', 748, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8802, '00394', 750, 'Окчава номли', 750, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8803, '00394', 751, 'Хайиткул номли', 751, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8804, '00394', 752, 'Зарбдор номли', 752, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8805, '00394', 753, 'Талишбе номли', 753, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8806, '00394', 754, 'Денов номли', 754, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8807, '00394', 755, 'Х.Хужакулов  номли', 755, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8808, '00394', 756, 'Майманок  номли', 756, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8809, '00394', 757, 'Комилон номли', 757, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8810, '00394', 758, 'Пахтакор номли', 758, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8811, '00394', 759, 'Талимаржон номли', 759, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8812, '00394', 760, 'Туркманистон номли', 760, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8813, '00394', 761, 'Хамза номли', 761, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8814, '00394', 762, 'А.Кодирий номли', 762, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8815, '00394', 763, 'Нурли келажак номли', 763, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8816, '00394', 764, 'Ч.Бегимкулов номли', 764, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
commit;
prompt 500 records committed...
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8817, '00394', 765, 'Бекобод номли', 765, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8818, '00394', 766, 'Ойдин номли', 766, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8819, '00394', 767, 'Р.Гоибов номли', 767, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8820, '00394', 768, 'Махтумкули номли', 768, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8821, '00394', 769, 'Тошкент номли', 769, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8822, '00394', 770, 'Автономов номли', 770, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8823, '00394', 771, 'Чандир номли', 771, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8824, '00394', 772, 'Корабог номли', 772, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8825, '00394', 773, 'С.Муродов номли', 773, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8826, '00394', 774, 'Турна номли', 774, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8827, '00394', 775, 'К.Ашуров номли', 775, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8828, '00394', 776, 'Хакикат номли', 776, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8829, '00394', 777, 'Б.Худоёров номли', 777, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8830, '00394', 778, 'Турон номли', 778, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8831, '00394', 779, 'Ж.Турдиев  номли', 779, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8832, '00394', 780, 'Ш.Умаров номли', 780, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8833, '00394', 781, 'Ипак йули номли', 781, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8834, '00394', 782, 'Ю.Хушвактов номли', 782, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8835, '00394', 783, 'Гулбог номли ', 783, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8836, '00394', 784, 'Гурумсарой номли', 784, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8837, '00394', 785, 'Найман номли', 785, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8838, '00394', 786, 'Искавот  номли', 786, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8839, '00394', 787, 'Норхужаев номли', 787, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8840, '00394', 788, 'Кизилровот номли', 788, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8841, '00394', 789, 'Пешкургон номли', 789, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8842, '00394', 790, 'Норин номли', 790, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8843, '00394', 791, 'Туда номли', 791, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8844, '00394', 792, 'Водий номли', 792, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8845, '00394', 793, 'Кумушкон номли', 793, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8846, '00394', 794, 'Гигант номли', 794, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8847, '00394', 795, 'Янгикургон номли', 795, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8848, '00394', 796, 'Зарметан номли', 796, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8849, '00394', 797, 'Газгон', 797, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8850, '00394', 798, 'Куксарой номли', 798, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8851, '00394', 799, 'Жомбой номли', 799, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8852, '00394', 800, 'Жомбой-1 номли', 800, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8853, '00394', 801, 'Хончарбог номли', 801, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8854, '00394', 802, 'Катта Минг', 802, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8855, '00394', 803, 'Сиёб-1', 803, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8856, '00394', 804, 'Сиёб-2', 804, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8857, '00394', 805, 'Н.Азимов номли', 805, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8858, '00394', 806, 'Ал-Бухорий номли', 806, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8859, '00394', 807, 'Катта турк номли', 807, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8860, '00394', 808, 'Нурбулок номли', 808, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8861, '00394', 809, 'М.Бозоров номли', 809, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8862, '00394', 810, 'Р.Исломова номли', 810, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8863, '00394', 811, 'М.Дангалов номли', 811, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8864, '00394', 812, 'Нарпай  номли', 812, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8865, '00394', 813, 'Ургут номли', 813, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8866, '00394', 814, 'Озод  номли', 814, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8867, '00394', 815, 'Истара номли', 815, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8868, '00394', 816, 'Х.Эшонов номли ', 816, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8869, '00394', 817, 'Ш.Мирзаев номли', 817, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8870, '00394', 818, 'Х.Баратов номли', 818, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8871, '00394', 819, 'Алпомиш номли', 819, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8872, '00394', 820, 'Сурхон номли', 820, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8873, '00394', 821, 'Намуна номли', 821, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8874, '00394', 822, 'Боботог  номли', 822, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8875, '00394', 823, 'Мустакиллик 10 йиллиги номли', 823, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8876, '00394', 824, 'Оккургон номли', 824, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8877, '00394', 825, 'У.Юсупов номли', 825, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8878, '00394', 826, 'Хужамиёров номли', 826, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8879, '00394', 827, 'Кунчикиш номли', 827, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8880, '00394', 828, 'Узоков номли', 828, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8881, '00394', 829, 'Темур Малик номли', 829, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8882, '00394', 830, 'Боёвут номли', 830, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8883, '00394', 831, 'Ш.Рахимов номли', 831, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8884, '00394', 832, 'Дехконобод номли', 832, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8885, '00394', 833, 'С.Сиддиков номли', 833, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8886, '00394', 834, 'Бобур номли', 834, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8887, '00394', 835, 'Тоиров номли', 835, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8888, '00394', 836, 'Т.Ахмедов номли', 836, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8889, '00394', 837, 'Мирзачул номли', 837, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8890, '00394', 838, 'Э.Каххаров номли', 838, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8891, '00394', 839, 'Х.Норчаев номли', 839, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8892, '00394', 840, 'Синдоробод номли', 840, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8893, '00394', 841, 'Ж.Маманов номли', 841, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8894, '00394', 842, 'Кукорол тумани', 842, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8895, '00394', 843, 'Туркистон номли', 843, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8896, '00394', 844, 'Бахмал номли', 844, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8897, '00394', 845, 'Далварзин номли', 845, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8898, '00394', 846, 'Ойбек номли', 846, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8899, '00394', 847, 'Мавлонов номли', 847, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8900, '00394', 848, 'Олга  номли', 848, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8901, '00394', 849, 'Жамбул номли', 849, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8902, '00394', 850, 'Маданият номли', 850, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8903, '00394', 851, 'Алимкент номли', 851, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8904, '00394', 852, 'Узбекистон Мустакиллиги номли', 852, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8905, '00394', 853, 'Абай номли', 853, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8906, '00394', 854, 'Ниёзов номли', 854, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8907, '00394', 855, 'Риштон номли', 855, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8908, '00394', 856, 'Ёшлик номли', 856, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8909, '00394', 857, 'Кварц номли', 857, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8910, '00394', 858, 'Коракушчи номли', 858, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8911, '00394', 859, 'Солижонобод номли', 859, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8912, '00394', 860, 'Кизилтепа номли', 860, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8913, '00394', 861, 'Шамсиддинов номли', 861, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8914, '00394', 862, 'Оксув', 862, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8915, '00394', 863, 'Яккатут номли', 863, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8916, '00394', 864, 'Пахтакайнар номли', 864, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
commit;
prompt 600 records committed...
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8917, '00394', 865, 'Истикбол номли', 865, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8918, '00394', 866, 'Сирдарё номли', 866, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8919, '00394', 867, 'Катортол номли', 867, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8920, '00394', 868, 'Хонобод', 868, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8923, '00394', 871, 'Тонги отар', 871, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8921, '00394', 869, 'У.Тошбоев номли', 869, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8922, '00394', 870, 'Чорбогтуронги номли', 870, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8924, '00394', 872, 'Уч уй номли', 872, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8925, '00394', 873, 'Бувайда номли', 873, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8926, '00394', 874, 'Колгандарё номли', 874, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8927, '00394', 875, 'Чимён номли', 875, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8928, '00394', 876, 'Мелиев  номли', 876, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8929, '00394', 877, 'Усмонхужаев номли', 877, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8930, '00394', 878, 'А.Аликулов номли', 878, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8931, '00394', 879, 'Мулкобод номли', 879, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8932, '00394', 880, 'Т.Бобоев номли', 880, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8933, '00394', 881, 'М.Топиволдиев номли', 881, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8934, '00394', 882, 'Заркент  номли', 882, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8935, '00394', 883, 'Г.Гулом номли', 883, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8936, '00394', 884, 'Т.Назаров номли', 884, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8937, '00394', 885, 'Томоша номли', 885, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8938, '00394', 886, 'Найман номли ', 886, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8939, '00394', 887, 'Богот номли', 887, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8940, '00394', 888, 'Чоткупир номли', 888, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8941, '00394', 889, 'Юкори бог номли', 889, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8942, '00394', 890, 'Гойбу номли', 890, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8943, '00394', 891, 'Бузкалъа номли', 891, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8944, '00394', 892, 'Боголон номли', 892, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8945, '00394', 893, 'Уйгур номли', 893, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8946, '00394', 894, 'Сохибкор номли', 894, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8947, '00394', 895, 'Шовот номли', 895, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8948, '00394', 896, 'Сахтиён номли', 896, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8949, '00394', 897, 'Гандимён номли', 897, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8950, '00394', 898, 'Дашек номли', 898, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8951, '00394', 899, 'Коракум номли', 899, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8952, '00394', 900, 'Хадра номли', 900, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8953, '00394', 901, 'Кенагас номли', 901, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8954, '00394', 902, 'Ших номли', 902, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8955, '00394', 903, 'Ок-Мачит номли', 903, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8956, '00394', 904, 'Гулобод номли', 904, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8957, '00394', 905, 'Хоразм Шакар номли', 905, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8958, '00394', 906, 'Карвак номли', 906, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8959, '00394', 907, 'Олажа номли', 907, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8960, '00394', 908, 'Тупроккалъа номли', 908, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8961, '00394', 909, 'Дехконбозор номли', 909, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8962, '00394', 910, 'К.Дусов номли', 910, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8963, '00394', 911, 'И.Ибрагимов номли', 911, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8964, '00394', 912, 'И.Бекманов номли', 912, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8965, '00394', 913, 'Корамон номли', 913, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8966, '00394', 914, 'Обод номли', 914, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8967, '00394', 915, 'Р.Мадаминов номли', 915, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8968, '00394', 916, 'Ал-Хоразмий номли', 916, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8969, '00394', 917, 'Махсус кассалар', 917, 1, null, 'A', 252, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8970, '00394', 918, 'Шурахон', 918, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8971, '00394', 919, 'Г.Одилов', 919, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8972, '00394', 920, 'Хамза', 920, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8973, '00394', 921, 'Бешкупир', 921, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8974, '00394', 922, 'О.Куккозова', 922, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8975, '00394', 923, 'Кердер', 923, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8976, '00394', 924, 'Орнек', 924, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8977, '00394', 925, 'Боги Колон', 925, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8978, '00394', 926, 'О.Убайдов', 926, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8979, '00394', 927, 'Р.Хусейнов', 927, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8980, '00394', 928, 'Хайрабод', 928, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8981, '00394', 929, 'Варохша', 929, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8982, '00394', 930, 'Нурафшон', 930, 15, 607, 'A', 114, to_date('28-09-2011 15:14:12', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8983, '00394', 931, 'Халкаобод', 931, 15, 607, 'A', 114, to_date('28-09-2011 15:14:12', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8984, '00394', 932, 'С.Айний', 932, 15, 607, 'A', 114, to_date('28-09-2011 15:14:12', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8985, '00394', 933, 'Галаосиё', 933, 15, 607, 'A', 114, to_date('28-09-2011 15:14:12', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8986, '00394', 934, 'Намуна', 934, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8987, '00394', 935, 'У.Тошбоев', 935, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8988, '00394', 936, 'Мелиев номли', 936, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8989, '00394', 937, 'Э.Ганиев номли', 937, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8990, '00394', 938, 'Бешарик номли', 938, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8991, '00394', 939, 'М.Шербутаев номли', 939, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8992, '00394', 940, 'Ок буйра номли', 940, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8993, '00394', 941, 'Журак номли', 941, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8994, '00394', 942, 'Х.Марозиков номли', 942, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8995, '00394', 943, 'Укчи номли', 943, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8996, '00394', 944, 'Худойбердиев номли ', 944, 15, 652, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8997, '00394', 945, 'Мингдон номли', 945, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8998, '00394', 946, 'А.Икромов номли', 946, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8999, '00394', 947, 'Бехизор номли', 947, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9000, '00394', 948, 'Окарик номли', 948, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9001, '00394', 949, 'Узбекистон 5 йиллиги номли', 949, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9002, '00394', 950, 'Дардок номли', 950, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9003, '00394', 951, 'Шарк хакикати номли', 950, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9004, '00394', 952, 'А.Каюмов номли', 952, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9005, '00394', 953, 'Окер номли', 953, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9006, '00394', 954, 'И.Маматов номли', 954, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9007, '00394', 955, 'Халкобд номли', 955, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9008, '00394', 956, 'Даштобод номли', 956, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9009, '00394', 957, ' Яккабог номли', 957, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9010, '00394', 958, 'Нарпай номли', 958, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9011, '00394', 959, 'Тошработ номли', 959, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9012, '00394', 960, 'Газгон номли', 960, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9013, '00394', 961, ' Сирдарё номли', 961, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9014, '00394', 962, 'Поп номли', 962, 15, 607, 'A', 114, to_date('28-09-2011 15:14:16', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9015, '00394', 963, 'Чусти номли', 963, 15, 607, 'A', 114, to_date('28-09-2011 15:14:16', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9016, '00394', 964, 'Говасой номли', 964, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
commit;
prompt 700 records committed...
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9017, '00394', 965, 'Ж.Охунова', 965, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9018, '00394', 966, 'Нанай номли', 966, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9019, '00394', 967, 'Неъматов номли', 967, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9020, '00394', 968, 'Искавот номли', 968, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9021, '00394', 969, 'Каттатурк номли', 969, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9022, '00394', 970, ' М.Дангалов номли', 970, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9023, '00394', 971, 'Н.Примкулов номли', 971, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9024, '00394', 972, 'И.Шоир номли', 972, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9025, '00394', 973, 'Бердикулов номли', 973, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9026, '00394', 974, 'Азамат номли', 974, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9027, '00394', 975, 'Г.Кенжаев номли', 975, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9028, '00394', 976, 'Чимбойобод номли', 976, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9029, '00394', 977, 'Мевали номли', 977, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9030, '00394', 978, 'Сайрак номли', 978, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9031, '00394', 979, 'Сангардак номли', 979, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9032, '00394', 980, 'Серхаракат номли', 980, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9033, '00394', 981, 'Н.Мирзаев номли', 981, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9034, '00394', 982, 'Околтин номли', 982, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9035, '00394', 983, 'Сукок номли', 983, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9036, '00394', 984, 'Зангиота номли', 984, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9037, '00394', 985, 'Отажонова номли', 985, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9038, '00394', 986, 'Паркент номли', 986, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9039, '00394', 987, 'Тинчлик номли', 987, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9040, '00394', 988, 'Г.Охунова номли', 988, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9144, '00394', 517, 'Ички аудит бўлими', 517, 4, 520, 'A', 364, to_date('03-11-2011 12:55:38', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9164, '00394', 518, 'Капитал курилиш шўъбаси', 518, 21, 520, 'A', 364, to_date('04-11-2011 17:12:39', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9184, '00394', 519, 'Кишлок хўжалигини кредитлаш бўлими', 519, 4, 520, 'A', 364, to_date('08-11-2011 17:40:27', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9204, '00394', 1059, 'У.Джуманиязов', 1059, 15, 607, 'A', 313, to_date('18-11-2011 16:57:44', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9206, '00394', 1060, 'Беруний', 1060, 15, 607, 'A', 313, to_date('18-11-2011 17:01:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9266, '00394', 541, 'Ички назорат шўъбаси', 541, 21, 520, 'A', 313, to_date('24-11-2011 14:18:30', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9268, '00394', 1061, 'Туман', 1061, 4, null, 'A', 313, to_date('24-11-2011 14:30:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9270, '00394', 1062, 'Кредитлаш бўлими', 1062, 4, 1061, 'A', 313, to_date('24-11-2011 14:32:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9272, '00394', 1063, 'Кредитлаш шўъбаси', 1063, 21, 1061, 'A', 313, to_date('24-11-2011 14:34:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9274, '00394', 1064, 'Кишлок хўжалигини кредитлаш бўлими', 1064, 21, 1061, 'A', 313, to_date('24-11-2011 14:35:33', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9276, '00394', 1065, 'Кишлок хўжалигини кредитлаш шўъбаси', 1065, 21, 1061, 'A', 313, to_date('24-11-2011 14:36:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9278, '00394', 1066, 'Пул муомаласи бўлими', 1066, 4, 1061, 'A', 313, to_date('24-11-2011 14:36:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9280, '00394', 1067, 'Пул муомаласи шўъбаси', 1067, 21, 1061, 'A', 313, to_date('24-11-2011 14:37:30', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9282, '00394', 1068, 'Пластик карталар бўлими', 1068, 4, 1061, 'A', 313, to_date('24-11-2011 14:41:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9284, '00394', 1069, 'Пластик карталар шўъбаси', 1069, 21, 1061, 'A', 313, to_date('24-11-2011 14:38:47', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9286, '00394', 1070, 'Умумий бўлим', 1070, 4, 1061, 'A', 313, to_date('24-11-2011 14:40:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9288, '00394', 542, 'Худудий филиал', 542, 13, 520, 'A', 313, to_date('24-11-2011 15:29:28', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9290, '00394', 543, 'Кредитлаш  бўлими', 543, 4, 542, 'A', 313, to_date('24-11-2011 15:31:36', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9292, '00394', 544, 'Кредитлаш шўъбаси', 544, 21, 542, 'A', 313, to_date('24-11-2011 15:33:06', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9294, '00394', 546, 'Пул муомаласи шўъбаси', 546, 21, 542, 'A', 313, to_date('24-11-2011 15:36:40', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9296, '00394', 547, 'Кишлок хўжалигини кредитлаш бўлими (худудий)', 547, 4, 542, 'A', 313, to_date('24-11-2011 15:38:10', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9298, '00394', 548, 'Кишлок хўжалигини кредитлаш шўъбаси (худудий)', 548, 21, 542, 'A', 313, to_date('24-11-2011 15:38:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9300, '00394', 549, 'Пластик карталар шўъбаси ', 549, 21, 542, 'A', 313, to_date('24-11-2011 15:44:12', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9302, '00394', 550, 'Валюта айирбошлаш шохобчаси', 550, 21, 542, 'A', 313, to_date('24-11-2011 15:45:20', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9304, '00394', 551, 'Бухгалтерия хисоби ва хисоботи бўлими (худудий)', 551, 4, 542, 'A', 313, to_date('24-11-2011 15:46:15', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9306, '00394', 552, 'Касса ишлари бўлими (худудий)', 552, 4, 542, 'A', 313, to_date('24-11-2011 15:47:29', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9308, '00394', 553, 'Ахоли омонатлари шўъбаси (худудий)', 553, 21, 542, 'A', 313, to_date('24-11-2011 15:48:51', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9324, '00394', 554, 'Микрокредитлаш шўъбаси', 554, 21, 542, 'A', 313, to_date('25-11-2011 09:22:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9326, '00394', 1071, 'Касса ишлари бўлими', 1071, 4, 1061, 'A', 313, to_date('25-11-2011 09:28:32', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9384, '00394', 1075, 'Халкаро ўтказмалар бўйича', 1075, 21, null, 'A', 313, to_date('26-03-2012 11:46:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9404, '00394', 1076, 'Махсус касса', 1076, 21, null, 'A', 313, to_date('29-03-2012 17:03:44', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9444, '00394', 555, 'махсус касса', 555, 6, 542, 'A', 313, to_date('20-07-2012 17:33:00', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9041, '00394', 989, 'Ийк ота номли', 989, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9042, '00394', 990, 'А.Ортиков номли', 990, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9043, '00394', 991, 'М.Куванов номли', 991, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9044, '00394', 992, 'Обод номли ', 992, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9045, '00394', 993, 'Мадаминов номли', 993, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9046, '00394', 994, 'Вазир номли', 994, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9047, '00394', 995, 'Олтинсохил номли', 995, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9048, '00394', 996, 'А.Утар номли', 996, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9049, '00394', 997, 'Остона номли', 997, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9050, '00394', 998, 'Ал  Хоразмий номли', 998, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9051, '00394', 999, 'Дашнаобод номли', 999, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9052, '00394', 1000, 'Талашкон номли', 1000, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9053, '00394', 1001, 'Кукумбой номли', 1001, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9054, '00394', 1002, 'Яшикобод номли', 1002, 13, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9055, '00394', 1003, 'Паландара номли', 1003, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9056, '00394', 1004, 'Т.Гуломов номли', 1004, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9057, '00394', 1005, 'Окбуйра номли', 1005, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9058, '00394', 1006, 'Дамарик', 1005, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9059, '00394', 1007, 'Джурак номли', 1007, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9060, '00394', 1008, 'Полосон', 1008, 15, 607, 'A', 114, to_date('28-09-2011 15:14:20', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9061, '00394', 1009, 'Аль-Фаргони', 1009, 15, 607, 'A', 114, to_date('28-09-2011 15:14:20', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9062, '00394', 1010, 'Фаргона (БЖБ), Аввал кишлоги', 1010, 15, 607, 'A', 114, to_date('28-09-2011 15:14:20', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9063, '00394', 1011, 'З.М.Бобур номли (БЖБ) Урта Шура кишлоги', 1011, 15, 607, 'A', 114, to_date('28-09-2011 15:14:20', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9064, '00394', 1012, 'Полосон  номли (Фаргона вилояти , Олтиарик тумани , Полосон кишлоги) ', 1012, 15, 607, 'A', 114, to_date('28-09-2011 15:14:20', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9065, '00394', 1013, 'Ал-Фаргоний (Фаргона вилояти , Олтиарик тумани , Азимобод  кишлоги)', 1013, 15, 607, 'A', 114, to_date('28-09-2011 15:14:20', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9066, '00394', 1014, 'Водил номли (Фаргона тумани Водил кишлоги)', 1014, 15, 607, 'A', 114, to_date('28-09-2011 15:14:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9067, '00394', 1015, 'Ок олтин номли (Фаргона вилояти,Фаргона тумани,Гулшан  кишлоги)', 1015, 15, 607, 'A', 114, to_date('28-09-2011 15:14:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9068, '00394', 1016, 'Хонкиз номли (Фаргона вилояти,Фаргона тумани,Хонкиз кишлоги)', 1016, 15, 607, 'A', 114, to_date('28-09-2011 15:14:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9069, '00394', 1017, 'Кургонтепа номли (Фаргона тумани,Кургонтепа кишлоги)', 1017, 15, 607, 'A', 114, to_date('28-09-2011 15:14:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9070, '00394', 1018, 'Х.Хакимзода номли (Фаргона тумани Янгиобод кишлоги)', 1018, 15, 607, 'A', 114, to_date('28-09-2011 15:14:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9071, '00394', 1019, 'А.Навоий (Фаргона тумани Логон кишлоги)', 1019, 15, 607, 'A', 114, to_date('28-09-2011 15:14:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9072, '00394', 1020, 'Дангара (Дангара тумани, Чинобод кишлоги)', 1020, 15, 607, 'A', 114, to_date('28-09-2011 15:14:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9073, '00394', 1021, 'Найманча (Дангара тумани, Найманча кишлоги)', 1021, 15, 607, 'A', 114, to_date('28-09-2011 15:14:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9074, '00394', 1022, 'Учкуприк (Учкуприк тумани, Учкуприк кишлоги)', 1022, 15, 607, 'A', 114, to_date('28-09-2011 15:14:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9075, '00394', 1023, 'Дехконов (Учкуприк тумани, Янгиобод кишлоги)', 1023, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9076, '00394', 1024, 'Х.Хакимзода (Учкуприк тумани, Бекобод кишлоги)', 1024, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9077, '00394', 1025, 'Мадаминов (Бешарик)', 1025, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9078, '00394', 1026, 'Ниёзов (Лангар)', 1026, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9079, '00394', 1027, 'Мадалиев (Лангар)', 1027, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9080, '00394', 1028, 'Отабоев (Лангар)', 1028, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9081, '00394', 1029, 'Рахмонов (Лангар)', 1029, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9082, '00394', 1030, 'Кодиров (Лангар)', 1030, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9083, '00394', 1031, 'Навбахор (Тошлок)', 1031, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9084, '00394', 1032, 'Зардуст (Тошлок)', 1032, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
commit;
prompt 800 records committed...
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9085, '00394', 1033, 'Оккургон (Янгикургон)', 1033, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9086, '00394', 1034, 'Янгикадам (Янгикургон)', 1034, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9087, '00394', 1035, 'Аль-Фаргоний (Кува)', 1035, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9088, '00394', 1036, 'А.Навоий (Кува)', 1036, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9089, '00394', 1037, 'Рахматов (Кува)', 1037, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9090, '00394', 1038, 'Узбекистон (Кува)', 1038, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9091, '00394', 1039, 'Фуркат (Фуркат)', 1039, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9092, '00394', 1040, 'Кукон (Фуркат)', 1040, 15, 607, 'A', 114, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9093, '00394', 1041, 'Сохибкор (Кукон)', 1041, 15, 607, 'A', 114, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9094, '00394', 1042, 'Пластик карталар билан ишлаш сектори', 1042, 6, null, 'A', 252, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9095, '00394', 1043, 'Туркистон', 1043, 15, 607, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9096, '00394', 1044, 'Пластик карталар билан ишлаш бўлими', 1044, 4, 1042, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9097, '00394', 1045, 'Пластик картлар билан ишлаш бўлими', 1045, 4, null, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9098, '00394', 1046, 'ЕТТБ микрокредитлаш ва мониторинг килиш бўлими', 1046, 4, null, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9099, '00394', 1047, 'Валюта сектори', 1047, 6, 605, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9100, '00394', 1048, 'О.Йўлдошев', 1048, 15, 607, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9101, '00394', 1049, 'Кўк-орол', 1049, 15, 607, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9102, '00394', 1050, 'Пайнет', 1050, 18, 1061, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9103, '00394', 1051, 'Насаф номли', 1051, 15, 607, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9104, '00394', 1052, 'Майдаёбу номли', 1052, 15, 607, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9105, '00394', 1053, 'Косон номли', 1053, 15, 607, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9106, '00394', 1054, ' Ўзбекистон номли', 1054, 15, 607, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9107, '00394', 1055, 'С.Жўраев номли', 1055, 15, 607, 'A', 302, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9108, '00394', 1058, 'Якуний назорат бўйича', 1058, 1, null, 'A', 302, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9488, '00394', 239, 'Юридик шахслар маблагларини мониторинг бўлими', 239, 4, 237, 'A', 364, to_date('23-01-2013 11:10:12', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9504, '00394', 556, 'Турткул минтакалараро укув маркази', 556, 4, 520, 'A', 313, to_date('27-12-2012 18:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9524, '00394', 1078, 'Конверсион амалиётлар булими', 1078, 4, 1061, 'A', 313, to_date('29-01-2013 17:39:25', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9344, '00394', 1072, 'Микрокредитлаш бўлими', 1072, 4, null, 'A', 313, to_date('09-12-2011 15:28:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9364, '00394', 1073, 'Информацион технологиялар бўлими', 1073, 4, 1061, 'A', 313, to_date('14-03-2012 12:29:26', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9366, '00394', 1074, 'Информацион технологиялар шуъбаси', 1074, 6, 1061, 'A', 313, to_date('14-03-2012 12:32:32', 'dd-mm-yyyy hh24:mi:ss'), 3);
commit;
prompt 830 records loaded
prompt Loading SS_OK_DEPARTMENT_TYPE...
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (501, 22, 'махсус кассалар', 'A', 364, to_date('22-10-2011 15:15:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (461, 20, 'департамент', 'A', 364, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (462, 19, 'Пайнет махсус кассаси', 'A', 302, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (463, 21, 'шуъбаси', 'A', 364, to_date('09-11-2012 12:05:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (464, 18, 'Пайнет махсус шохобчаси', 'A', 302, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (465, 14, 'Коракалпогистон Республикаси бошкармаси', 'A', 114, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (466, 1, 'Рахбарият', 'A', 114, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (467, 2, 'Марказ', 'A', 114, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (468, 3, 'Бошкарма', 'A', 114, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (469, 4, 'Бўлим', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (470, 5, 'Кичик бўлим', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (471, 6, 'Сектор', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (472, 7, 'Котибият', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (473, 8, 'Бош бошкарма', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (474, 9, 'Тиббиёт пункти', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (475, 10, 'Дам олиш маскани', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (476, 11, 'Канцелярия', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (477, 12, 'Вилоят бошкармаси', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (478, 13, 'Филиал', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (479, 15, 'Минибанк', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (480, 16, 'Валюта айирбошлаш шахобчаси', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (481, 17, 'Гурух', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 22 records loaded
prompt Loading SS_OK_DISTR...
prompt Table is empty
prompt Loading SS_OK_DOSTUP...
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('F', 'SS_OK_CATEGORY');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('F', 'SS_OK_DEPARTMENT');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('F', 'SS_OK_DEPARTMENT_TYPE');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('F', 'SS_OK_MIN_ZP');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('F', 'SS_OK_POST');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_ACADEMIC');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_ACTION_HIST');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_ARMY');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_ARMY_GROUP');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_ARTICLE');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_BASE_MOVE');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_BASIS');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_CATEGORY_ARMY');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_CITY');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_COMMAND_PARAM');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_COMMAND_TYPE');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_DEGREE');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_DISTR');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_DOSTUP');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_EDUCATION');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_EDUCATION_COUNT');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_EDUCATION_TITLE');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_ELECTION');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_FAMILY_STATUS');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_FITNESS_ARMY');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_GENDER');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_GOSUBMIT');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_GOSUBMIT_PROTOKOL');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_HOSPITAL');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_INCREASE');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_INSTITUTION');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_KV_KURS');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_LANGUAGE');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_LEAVE');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_LEVEL_BOSS');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_LEVEL_DEPARTMENT');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_LEVEL_LANGUAGE');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_MILITARY_RANK');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_MOTIVE_DISMISSIAL');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_NATIONALITY');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_NCI');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_ORG_BUSINESS_VOYAGE');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_PARTY');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_PASSPORT_TYPE');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_PENALTY');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_PERS_COL_DFLT');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_PERS_QUERY');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_PERS_QUERY_COL');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_POST_GROUP');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_PRIVILEGE');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_PROFMEMBER');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_QUALIFICATION');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_REGION');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_REGPLACE');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_REG_TYPE');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_RELATION');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_REZERV');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_REZERVE');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_SPECIAL');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_STAFF');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_STATUS');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_STR');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_TEMPLATE_COMMAND');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_THEME_BUSINESS_VOYAGE');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_TYPE_FORCE');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_TYPE_PERIOD');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_VACANCY');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_VID_EDUCATION');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_YOUTH');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_ZP_RATE');
insert into SS_OK_DOSTUP (USER_NAME, TABLE_NAME)
values ('Q', 'SS_OK_ZP_RATE_TYPE');
commit;
prompt 72 records loaded
prompt Loading SS_OK_EDUCATION...
insert into SS_OK_EDUCATION (EDUCATION_ID, EDUCATION_CODE, EDUCATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (241, 1, 'касб-хунар мактаби', 'A', 114, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION (EDUCATION_ID, EDUCATION_CODE, EDUCATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (242, 2, 'коллеж, техникум', 'A', 114, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION (EDUCATION_ID, EDUCATION_CODE, EDUCATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (243, 3, 'институт', 'A', 114, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION (EDUCATION_ID, EDUCATION_CODE, EDUCATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (244, 4, 'университет', 'A', 114, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION (EDUCATION_ID, EDUCATION_CODE, EDUCATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (245, 5, 'академия', 'A', 252, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION (EDUCATION_ID, EDUCATION_CODE, EDUCATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (246, 6, '0', 'P', 114, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 6 records loaded
prompt Loading SS_OK_EDUCATION_COUNT...
insert into SS_OK_EDUCATION_COUNT (EDUCATION_COUNT_CODE, EDUCATION_COUNT_NAME)
values (0, '-');
insert into SS_OK_EDUCATION_COUNT (EDUCATION_COUNT_CODE, EDUCATION_COUNT_NAME)
values (1, 'Первое образование');
insert into SS_OK_EDUCATION_COUNT (EDUCATION_COUNT_CODE, EDUCATION_COUNT_NAME)
values (2, 'Второе образование');
commit;
prompt 3 records loaded
prompt Loading SS_OK_EDUCATION_TITLE...
insert into SS_OK_EDUCATION_TITLE (EDUCATION_TITLE_ID, EDUCATION_TITLE_CODE, EDUCATION_TITLE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (261, 1, 'олий', 'A', 252, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION_TITLE (EDUCATION_TITLE_ID, EDUCATION_TITLE_CODE, EDUCATION_TITLE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (262, 2, 'ўрта махсус', 'A', 252, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION_TITLE (EDUCATION_TITLE_ID, EDUCATION_TITLE_CODE, EDUCATION_TITLE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (263, 3, 'ўрта', 'A', 252, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION_TITLE (EDUCATION_TITLE_ID, EDUCATION_TITLE_CODE, EDUCATION_TITLE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (264, 4, 'бакалавр', 'A', 252, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION_TITLE (EDUCATION_TITLE_ID, EDUCATION_TITLE_CODE, EDUCATION_TITLE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (265, 5, 'магистр', 'A', 252, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION_TITLE (EDUCATION_TITLE_ID, EDUCATION_TITLE_CODE, EDUCATION_TITLE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (266, 6, 'тугалланмаган олий (институт талабаси)', 'A', 252, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION_TITLE (EDUCATION_TITLE_ID, EDUCATION_TITLE_CODE, EDUCATION_TITLE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (267, 7, 'тугалланмаган урта махсус (коллеж талабаси)', 'A', 252, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 7 records loaded
prompt Loading SS_OK_ELECTION...
insert into SS_OK_ELECTION (ELECTION_ID, ELECTION_CODE, ELECTION_NAME, ELECTION_ADDRESS, STATE_NOTES, EMP_CODE, INS_DATE)
values (141, 1, 'Олий Мажлис депутати', 'Узбекистон Республикаси', 'A', 114, to_date('28-09-2011 15:14:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ELECTION (ELECTION_ID, ELECTION_CODE, ELECTION_NAME, ELECTION_ADDRESS, STATE_NOTES, EMP_CODE, INS_DATE)
values (142, 2, 'Вилоят Кенгаши депут', 'Вилоят', 'A', 114, to_date('28-09-2011 15:14:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ELECTION (ELECTION_ID, ELECTION_CODE, ELECTION_NAME, ELECTION_ADDRESS, STATE_NOTES, EMP_CODE, INS_DATE)
values (143, 3, 'Туман Кенгаши депута', 'Туман', 'A', 114, to_date('28-09-2011 15:14:27', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 3 records loaded
prompt Loading SS_OK_FAMILY_STATUS...
insert into SS_OK_FAMILY_STATUS (FAMILY_STATUS_CODE, GENDER_CODE, FAMILY_STATUS_NAME)
values (1, 1, 'Женат');
insert into SS_OK_FAMILY_STATUS (FAMILY_STATUS_CODE, GENDER_CODE, FAMILY_STATUS_NAME)
values (2, 1, 'Холост');
insert into SS_OK_FAMILY_STATUS (FAMILY_STATUS_CODE, GENDER_CODE, FAMILY_STATUS_NAME)
values (3, 2, 'Замужем');
insert into SS_OK_FAMILY_STATUS (FAMILY_STATUS_CODE, GENDER_CODE, FAMILY_STATUS_NAME)
values (4, 2, 'Незамужем');
insert into SS_OK_FAMILY_STATUS (FAMILY_STATUS_CODE, GENDER_CODE, FAMILY_STATUS_NAME)
values (5, 1, 'Разведен');
insert into SS_OK_FAMILY_STATUS (FAMILY_STATUS_CODE, GENDER_CODE, FAMILY_STATUS_NAME)
values (6, 2, 'Разведена');
commit;
prompt 6 records loaded
prompt Loading SS_OK_FITNESS_ARMY...
insert into SS_OK_FITNESS_ARMY (FITNESS_ARMY_ID, FITNESS_ARMY_CODE, FITNESS_ARMY_TYPE)
values (141, 1, 'Годен');
insert into SS_OK_FITNESS_ARMY (FITNESS_ARMY_ID, FITNESS_ARMY_CODE, FITNESS_ARMY_TYPE)
values (142, 2, 'Не годен');
commit;
prompt 2 records loaded
prompt Loading SS_OK_GENDER...
insert into SS_OK_GENDER (GENDER_ID, GENDER_CODE, GENDER_NAME)
values (141, 1, 'Муж');
insert into SS_OK_GENDER (GENDER_ID, GENDER_CODE, GENDER_NAME)
values (142, 2, 'Жен');
commit;
prompt 2 records loaded
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
prompt 5 records loaded
prompt Loading SS_OK_GOSUBMIT_PROTOKOL...
prompt Table is empty
prompt Loading SS_OK_HOSPITAL...
insert into SS_OK_HOSPITAL (HOSPITAL_CODE, HOSPITAL_NAME, WORK_PERIOD_FROM, WORK_PERIOD_TO, PERCENTAGE, STATE_NOTES, EMP_CODE, INS_DATE)
values (1001, 'Больничный', 0, 8, 60, 'A', null, null);
insert into SS_OK_HOSPITAL (HOSPITAL_CODE, HOSPITAL_NAME, WORK_PERIOD_FROM, WORK_PERIOD_TO, PERCENTAGE, STATE_NOTES, EMP_CODE, INS_DATE)
values (1001, 'Больничный', 8, 999, 80, 'A', null, null);
insert into SS_OK_HOSPITAL (HOSPITAL_CODE, HOSPITAL_NAME, WORK_PERIOD_FROM, WORK_PERIOD_TO, PERCENTAGE, STATE_NOTES, EMP_CODE, INS_DATE)
values (1002, 'Больничный по родам', 0, 999, 100, 'A', null, null);
commit;
prompt 3 records loaded
prompt Loading SS_OK_INCREASE...
insert into SS_OK_INCREASE (INCREASE_CODE, INCREASE_NAME)
values (1, 'Персональная надбавка');
insert into SS_OK_INCREASE (INCREASE_CODE, INCREASE_NAME)
values (2, 'Надбавка за  совмещение');
commit;
prompt 2 records loaded
prompt Loading SS_OK_INSTITUTION...
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5955, 20009, 'Тошкент кино техникуми', ' ТошКинТех', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5956, 20010, 'Тошкент авиация техникуми', ' ТАТ', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5957, 20011, 'Тошкент банк коллежи', 'ТБК', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5958, 20012, 'Тошкент  геология ва кидирув техникуми', 'ТГКТ', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5959, 10002, 'Радиотехника касб хунар лицейи', 'РТкхЛ', 'Тошкент шахар', 1, 'A', 114, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5960, 20013, 'Тошкент совет савдо техникуми', 'ТССТ', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5961, 20014, 'Тошкент  туризм касб-хунар коллежи', 'ТТкхК', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5962, 20015, 'Тошкент  хисоб-кредит техникуми', 'ТХКТ', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5963, 20016, 'Тошкент  электромеханика техникуми', 'ТЭМТ', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5964, 20017, 'Тошкент индустриал техникуми', 'ТИТ', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5965, 20018, 'Тошкент туман кишлок хужалик касб-хунар коллежи', 'ТТКХкхК', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5966, 20019, 'Тошкент тиббиёт техникуми', 'ТТТ', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5967, 20020, 'Тошкент  юридик коллежи', 'ТЮК', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5968, 20021, 'Каттакургон  тижорат техникуми', 'КТТ', 'Самарканд вилояти Каттакургон шахар', 2, 'A', 313, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5969, 20022, 'Кемеров харбий алока билим юрти', 'КХАБЮ', 'Россия', 2, 'A', 313, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5970, 20023, 'Целиноград транспорт курилиш техникуми', 'Цел.ТКТ', 'Козокистон Республикаси', 2, 'A', 252, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5971, 20024, 'Самарканд  индустриал техникуми', 'СамИТ', 'Самарканд шахар', 2, 'A', 313, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5972, 20025, 'Турткул  банк коллежи', 'ТурткулБК', 'Коракалпогистон Республикаси Турткул шахар', 2, 'A', 252, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5973, 20026, 'Маргилон хисоб-кредит техникуми', 'МХКТ', 'Фаргона вилояти Маргилон шахар', 2, 'A', 313, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5974, 20027, 'Каланов номли олий хунар билим юрти', 'Калан.ОХБЮ', 'Тошкент шахар', 2, 'A', 114, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5975, 20028, 'Урганч  автомобил йуллари техникуми', 'УАЙТ', 'Хоразм вилояти Урганч шахар', 2, 'A', 252, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5976, 20029, 'Асака тижорат техникуми', 'АТТ', 'Андижон вилояти Асака шахар', 2, 'A', 313, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5977, 20030, 'Ангрен давлат техника коллежи', 'АДТТ', 'Тошкент вилояти Ангрен шахар', 2, 'A', 364, to_date('22-06-2012 12:42:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5978, 20031, 'Маргилон режа иктисод техникуми', 'МРИТ', 'Фаргона вилояти Маргилон шахар', 2, 'A', 313, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5979, 20032, 'Кўкон техника коллежи', 'КуконТК', 'Фаргона вилояти Кукон шахар', 2, 'A', 313, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5980, 20033, 'Галлаорол кишлок хужалик техникуми', 'ГКХТ', 'Жиззах вилояти Галлаорол шахар', 2, 'A', 313, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5981, 10003, 'Кизил ярим ой жамияти 2 йиллик хамширалар курси', 'КЯОЖ', 'Тошкент шахар', 1, 'A', 114, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5982, 20034, 'Навоий  техника коллежи', 'НТК', 'Навоий шахар', 2, 'A', 313, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5983, 20035, 'Навоий  тиббиёт техникуми', 'НТТ', 'Навоий шахар', 2, 'A', 313, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5984, 20036, 'Бухоро кооператив техникуми', 'БКТ', 'Бухоро шахар', 2, 'A', 313, to_date('28-09-2011 15:13:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5985, 20037, 'Навоий саноат техникуми', 'НСТ', 'Навоий шахар', 2, 'A', 313, to_date('28-09-2011 15:13:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5986, 20038, 'Самарканд  молия коллежи', 'СамМК', 'Самарканд шахар', 2, 'A', 313, to_date('28-09-2011 15:13:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5987, 20039, 'Самарканд  саноат иктисод коллежи', 'СамСИК', 'Самарканд шахар', 2, 'A', 313, to_date('28-09-2011 15:13:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5988, 20040, 'Самарканд тиббиёт техникуми', 'СамТТ', 'Самарканд шахар', 2, 'A', 313, to_date('28-09-2011 15:13:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5989, 30002, 'Тошкент молия институти', 'ТМИ', 'Тошкент шахар', 3, 'A', 252, to_date('28-09-2011 15:13:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5990, 30003, 'Тошкент халк хужалиги институти', 'ТХХИ', 'Тошкент шахар', 3, 'A', 364, to_date('22-11-2011 18:18:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5991, 30006, 'Тошкент давлат университети', 'ТДУ', 'Тошкент шахар', 3, 'A', 252, to_date('28-09-2011 15:13:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5992, 30007, 'Тошкент темир йуллари транспорти мухандислари институти', 'ТТЙТМИ', 'Тошкент шахар', 3, 'A', 252, to_date('28-09-2011 15:13:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5993, 30008, 'Тошкент электро-техника алока институти', ' ТЭТАИ', 'Тошкент шахар', 3, 'A', 252, to_date('28-09-2011 15:13:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5994, 30009, 'Тошкент давлат юридик институти', 'ТДЮИ', 'Тошкент шахар', 3, 'A', 364, to_date('22-06-2012 12:43:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5995, 30010, 'Тошкент давлат шаркшунослик институти', 'ТДШИ', 'Тошкент шахар', 3, 'A', 364, to_date('22-06-2012 12:44:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5996, 30011, 'Тошкент политехника институти', 'ТПИ', 'Тошкент шахар', 3, 'A', 252, to_date('28-09-2011 15:13:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5997, 30013, 'Тошкент ирригация ва кишлок хужалигини механизациялаш мухандислари институти', 'ТИКХММИ', 'Тошкент шахар', 3, 'A', 364, to_date('16-07-2012 13:06:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5998, 30014, 'Г.В.Плеханов номли Россия иктисодиёт академияси', 'ПРИА', 'Тошкент шахар', 3, 'A', 364, to_date('22-06-2012 12:44:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5999, 30017, 'Тошкент авиация институти', 'ТАИ', 'Тошкент шахар', 3, 'A', 252, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6000, 22000, 'Юнусобод машинасозлик касб-хунар коллежи', 'ЮМкхк', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6001, 20113, 'Урганч банк коллежи', 'УрганчБК', 'Урганч шахар', 2, 'A', 252, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6002, 20114, 'Урганч курилиш коллежи', 'Урганч КК', 'Урганч шахар', 2, 'A', 252, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6003, 20115, 'Наманган иктисодиет ва тадбиркорлик коллежи', 'НамИТК', 'Наманган шахри', 2, 'A', 313, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6004, 20116, 'Наманган кишлок хужалиги техникуми', 'НамКХТ', 'Наманган шахри', 2, 'A', 313, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6005, 20117, 'Наманган агро-тадбиркорлик коллежи', 'НамАТК', 'Наманган шахри', 2, 'A', 313, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6006, 20118, 'Наманган  тўкимачилик ва енгил саноат техникуми', 'НамТЕСТ', 'Наманган шахри', 2, 'A', 313, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6007, 20119, 'Наманган транспорт ва алока колледжи', 'Нам ТАК', 'Наманган', 2, 'A', 313, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6008, 20120, 'Наманган индустриал техникуми', 'Нам ИТ', 'Наманган шахри', 2, 'A', 313, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6009, 20121, 'Наманган саноат касб-хунар коллежи', 'Нам СКХК', 'Наманган шахри', 2, 'A', 313, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6010, 20122, 'Туракургон механика ва иктисодиет коллежи', 'Нам МИК', 'Наманган шахри', 2, 'A', 252, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6011, 20123, 'Учкургон  иктисодиет ва тадбиркорлик коллежи', 'Учкурган И', 'Учкургон тумани', 2, 'A', 252, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6012, 20124, 'Косонсой  технологик-иктисодиет коллежи', 'Косонсой Т', 'Косонсой тумани', 2, 'A', 313, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6013, 20125, 'Жийдакапа технология коллежи', 'Жийдакапа', 'наманган вилояти', 2, 'A', 313, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6014, 20126, 'Янгикургон агроиктисодиет коллежи', 'Янгикургон', 'Янгикургон тумани', 2, 'A', 252, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6015, 20127, 'Учкургон режа ва иктисод техникуми', 'Учкургон Р', 'Учкургон тумани', 2, 'A', 252, to_date('28-09-2011 15:13:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6016, 20128, 'Фаргона кооператив техникуми', 'ФКТ', 'Фаргона шахри', 2, 'A', 252, to_date('28-09-2011 15:13:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6017, 20129, 'Томск хисоб-кредит техникуми', 'Томск ХКТ', 'Томск шахри', 2, 'A', 114, to_date('28-09-2011 15:13:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6018, 40015, 'Урганч давлат университети', 'УДУ', 'Хоразм вилояти Урганч шахри', 4, 'A', 364, to_date('22-06-2012 12:52:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6019, 40016, 'Самарканд давлат университети', 'СамДУ', 'Самарканд шахри', 4, 'A', 364, to_date('22-06-2012 12:52:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6020, 40017, 'Бухоро давлат университети', 'БухДУ', 'Бухоро шахри', 4, 'A', 364, to_date('22-06-2012 12:52:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6021, 40018, 'Новосибирск давлат университети', 'НовосибДУ', 'Россия, Новосибирск шахри', 4, 'A', 364, to_date('22-06-2012 12:53:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6022, 40019, 'Саратов давлат университети', 'СаратовДУ', 'Россия: Саратов шахри', 4, 'A', 364, to_date('22-06-2012 12:53:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6023, 40020, 'Туркманистон давлат университети', 'ТуркманДУ', 'Туркманистон Республикаси: Ашхобод шахри', 4, 'A', 364, to_date('22-06-2012 12:53:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6024, 40021, 'Козокистон давлат университети', 'КозокДУ', 'Козокистон Республикаси,  Остона шахри', 4, 'A', 364, to_date('22-06-2012 12:53:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6025, 40022, 'Ауезов номли Жанубий Козокистон университети', 'АЖКУ', 'Козокистон Республикаси', 4, 'A', 252, to_date('28-09-2011 15:13:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6026, 40023, 'Бердак номли Коракалпок давлат университети', 'КДУ', 'Коракалпогистон Республикаси, Нукус шахри', 4, 'A', 364, to_date('22-06-2012 12:53:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6027, 40024, 'Тожикистон давлат университети', 'Тож.ДУ', 'Тожикистон Республикаси, Душанбе', 4, 'A', 364, to_date('22-06-2012 12:53:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6028, 40025, 'Белорусь давлат университети', 'БелорусДУ', 'Белорусия Республикаси', 4, 'A', 364, to_date('22-06-2012 12:53:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6029, 40026, 'Ужгород давлат университети', 'УжгородДУ', 'Россия: Ужгород шахри', 4, 'A', 364, to_date('22-06-2012 12:54:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6030, 40027, 'ТехасА*М университети', 'ТехасУнв.', 'АКШ', 4, 'A', 252, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6031, 40028, 'АКШ. Орегон университети', 'ОрегонУнв.', 'АКШ', 4, 'A', 252, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6032, 40029, 'Буюк Британия Миддлсекс университети', 'Мидл.Унв.', 'АКШ', 4, 'A', 252, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6033, 40030, 'Киргиз-Узбек университети', 'К-У.Унив.', 'Киргизистон Республикаси, Бишкек шахри', 4, 'A', 364, to_date('22-06-2012 12:54:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6034, 40031, 'АКШ. Аризона университети', 'АКШ Аризон', 'АКШ', 4, 'A', 252, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6035, 40032, 'АКШ Индиана университети', 'ИндианУнив', 'АКШ', 4, 'A', 252, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6036, 40033, 'ВУЗ Россия', 'Россия', 'Россия', 4, 'A', 114, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6319, 23057, 'Электротехника тиббиёт техникуми', 'ЭТТ', 'Тошкент шахри', 2, 'A', 364, to_date('27-12-2011 17:17:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6479, 50010, 'Москва Давлат жисмоний маданият академияси', 'МДЖМА', 'Москва шахри', 5, 'A', 364, to_date('11-04-2012 16:57:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6641, 23071, 'Тошкент иктисодиёт ва бизнес коллежи', 'ТИБК', 'Тошкент шахри', 2, 'A', 364, to_date('07-12-2012 12:09:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6179, 23045, 'Чирчик саноат касб-хунар коллежи', 'ЧСКХК', 'Тошкент вилояти Чирчик шахри', 2, 'A', 364, to_date('10-12-2011 11:02:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6180, 23046, 'Тахтакупир курилиш ва коммунал хўжалиги касб-хунар коллежи', 'ТККХКХК', 'Коракалпогистон Республикаси', 2, 'A', 364, to_date('10-12-2011 11:08:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6499, 23064, 'Тошкент тадбиркорлик коллежи', 'ТТК', 'Тошкент', 2, 'A', 313, to_date('25-04-2012 12:26:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6559, 23066, 'Термиз ижтимоий иктисодий касб-хунар коллежи', 'ТИИКХК', 'Термиз шахри', 2, 'A', 364, to_date('10-05-2012 14:52:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6561, 40061, 'Москва давлат сервис университети', 'МДСУ', 'Москва шахри', 4, 'A', 364, to_date('22-06-2012 12:57:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6079, 20187, 'Янгиер курилиш-иктисодиёт коллежи', 'ЯКИК', 'Сирдарё вилояти Янгиер ш.', 2, 'A', 364, to_date('27-10-2011 10:05:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5639, 50003, 'Россия иктисодиёт академияси', 'РосИА', 'Москва шахри', 5, 'A', 252, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5640, 50004, 'Г.В.Плеханов номли Россия иктисодиёт академияси', 'ПРИА', 'Тошкент шахри', 5, 'A', 364, to_date('22-06-2012 12:58:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5641, 20130, 'Гурумсарой агротадбиркорлик коллежи', 'Гурумсарой', 'Наманган вилояти', 2, 'A', 313, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5642, 20131, 'Киров политехника техникуми', 'Киров ПТ', 'Киров шахри', 2, 'A', 313, to_date('28-09-2011 15:12:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5643, 30100, 'Наманган мухандислик педагогика институти', 'НамМПИ', 'Наманган шахри', 3, 'A', 252, to_date('28-09-2011 15:12:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5644, 30101, 'Наманган саноат-технология институти', 'Нам СТИ', 'Наманган шахри', 3, 'A', 114, to_date('28-09-2011 15:12:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5645, 23000, 'Миробод саноат касб-хунар коллежи', 'МирСКХК', 'Тошкент шахар', 2, 'A', 313, to_date('28-09-2011 15:12:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5646, 20180, 'Тошкент мехмонхона хужалиги техникуми', 'ТМХТ', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:12:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5647, 20181, 'Андижон машинасозлик касб хунар коллежи', 'АнМаш к/х', 'Андижон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:42', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 100 records committed...
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5648, 30116, 'Андижон давлат педагогика институти', 'АДПИ', 'Андижон шахар', 3, 'A', 364, to_date('22-06-2012 12:48:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5649, 50007, 'Козок Давлат Бошкарув академияси', 'КДБА', 'Алма-Ата', 5, 'A', 252, to_date('28-09-2011 15:12:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5650, 20282, 'Жиззах вилояти Пахтакор кишлок хўжалик касб-хунар коллежи', 'ПахтаКХК', 'Пахтакор тумани', 2, 'A', 313, to_date('28-09-2011 15:12:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5651, 20283, 'Тошкент матбаа-ноширлик касб-хунар коллежи', 'ТошМНКХК', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:12:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5652, 10030, 'Тошкент педиатрия тиббиёт институти кошидаги академик лицейи', 'ТПТИЛ', 'Тошкент шахри', 1, 'A', 364, to_date('22-06-2012 12:41:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5653, 30117, 'Тошкент давлат маданият институти', 'ТДМИ', 'Тошкент шахар', 3, 'A', 364, to_date('22-06-2012 12:48:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5654, 40039, 'Наманган давлат университети', 'НамДУ', 'Наманган шахри', 4, 'A', 364, to_date('22-06-2012 12:55:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5655, 40040, 'Тошкент давлат аграр университети', 'ТДАУ', 'Тошкент шахри', 4, 'A', 364, to_date('22-06-2012 12:55:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5656, 40041, 'Андижон давлат университети', 'АндДУ', 'Андижон шахри', 4, 'A', 364, to_date('22-06-2012 12:55:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5657, 40042, 'Суррей университети', 'Суррей Ун', 'Буюк Британия', 4, 'A', 252, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5658, 40043, 'Тошкент давлат иктисодиёт университети', 'ТДИУ', 'Тошкент шахри', 4, 'A', 364, to_date('22-06-2012 12:55:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5659, 20133, 'Карши медицина билим юрти', 'КарМБЮ', 'Карши шахри', 2, 'A', 313, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5660, 20134, 'Карши банк коллежи', 'КарБК', 'Карши шахри', 2, 'A', 313, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5661, 30103, 'Карши мухандислик иктисодиет институти', 'КарМИИ', 'Карши шахри', 3, 'A', 252, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5662, 30105, 'Уфа юридик институти', 'Уфа ЮИ', 'Уфа шахри', 3, 'A', 114, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5663, 20136, 'Маргилон хисоб-кредит техникуми', 'Маргилон У', 'Маргилон шахри', 2, 'A', 313, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5664, 20135, 'Тожикистон кооператив техникуми', 'Тожикистон', 'Тожикистон Республикаси', 2, 'A', 252, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5665, 20137, 'Душанбе молия иктисод техникуми', 'Душанбе МИ', 'Душанбе шахри', 2, 'A', 313, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5666, 20138, 'Тошкент ижтимоий таъминот техникуми', 'Тошкент ИТ', 'Тошкент шахри', 2, 'A', 252, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5667, 20132, 'Юнусобод машинасозлик касб-хунар коллежи', 'ЮМКХК', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5668, 20141, 'Карши бизнес мактаби', 'КарБМ', 'Карши шахри', 2, 'A', 313, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5669, 20142, 'Сурхондаре матлуботсавдо техникуми', 'СурМАТСТ', 'Термез шахри', 2, 'A', 313, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5670, 20139, 'Кашкадаре агробизнес коллежи', 'КашАГК', 'Карши шахри', 2, 'A', 313, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5671, 20140, 'Карши агротадбиркорлик коллежи', 'КарАГТК', 'Карши шахри', 2, 'A', 313, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5672, 20143, 'Термез банк коллежи', 'ТерБК', 'Термез шахри', 2, 'A', 252, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5673, 20144, 'Термез агротадбиркорлик коллежи', 'ТерАГТК', 'Термез шахри', 2, 'A', 252, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5674, 20145, 'Термез кишлок хужалик техникуми', 'ТерКХТ', 'Термез шахри', 2, 'A', 252, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5675, 20146, 'Маргилон хисоб-кредит техникуми Термез филиали', 'МарХКТ фил', 'Термез шахри', 2, 'A', 313, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5676, 20147, 'Музробот кичик ва урта бизнес  коллежи', 'Музр КУБК', 'Музробот тумани', 2, 'A', 313, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5677, 20148, 'Кумкургон гидромелеоратив техникуми', 'КумГидМТ', 'Кумкургон тумани', 2, 'A', 313, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5678, 20149, 'Узун агро бизнес коллежи', 'УзунАБК', 'Узун тумани', 2, 'A', 252, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5679, 10009, 'Музробот касб-хунар мактаби', 'МузКХМ', 'Музробот тумани', 1, 'A', 114, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5680, 10010, 'Кизирик кишлок хужалиги касб хунар мактаби', 'КизКХКХМ', 'Кизирик тумани', 1, 'A', 114, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5681, 10011, 'Хазарбог кишлок хужалиги касб-хунар мактаби', 'ХазКХКХМ', 'Хазарбог тумани', 1, 'A', 114, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5682, 30104, 'Свердловск халк хужалиги институти', 'СвердХХИ', 'Свердловк', 3, 'A', 252, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5683, 30106, 'Тожикистон тадбиркорлик ва хизмат институти', 'ТожТХИ', 'Тожикистон Республикаси', 3, 'A', 252, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5684, 30107, 'Кашкадарё патентшунослик ва рационализаторлик институти', 'КашПРИ', 'Карши шахри', 3, 'A', 252, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5685, 30108, 'Термиз давлат педагогика институти', 'ТерПедИ', 'Термез шахри', 3, 'A', 364, to_date('22-06-2012 13:09:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5686, 40044, 'Ленинград давлат университети', 'ЛенДУ', 'Ленинград шахри', 4, 'A', 364, to_date('22-06-2012 12:55:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5687, 40045, 'Коракалпогистон давлат университети', 'Коракалпог', 'Нукус шахри', 4, 'A', 364, to_date('22-06-2012 12:56:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5688, 20150, 'Термез политехникуми', 'ТерПТ', 'Термез шахри', 2, 'A', 252, to_date('28-09-2011 15:12:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5689, 30109, 'Узбекистон Республикаси Ички ишлар бошкармаси Олий мактаби', 'УзРИИБ ОМ', 'Тошкент шахри', 3, 'A', 313, to_date('28-09-2011 15:12:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5690, 20151, 'Олмалик тог муталлургия техникуми', 'Олмалик ТМ', 'Олмалик шахри', 2, 'A', 313, to_date('28-09-2011 15:12:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5691, 30110, 'Тошкент педиатрия тиббиёт институти', 'ТПТИ', 'Тошкент шахри', 3, 'A', 114, to_date('28-09-2011 15:12:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5692, 10012, 'Фаргона давлат университети кошидаги бизнес мактаби', 'ФДУкБМ', 'Фаргона шахар', 1, 'A', 364, to_date('22-06-2012 12:41:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5693, 10013, 'Учкуприк касб хунар лицейи', 'УКХЛ', 'Фаргона вилояти Учкуприк тумани', 1, 'A', 114, to_date('28-09-2011 15:12:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5694, 10014, 'Андижон касб-хунар билим юрти', 'АКХБЮ', 'Андижон шахар', 1, 'A', 114, to_date('28-09-2011 15:12:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5695, 10015, 'Давлат укув маслахат муассаси Республика бизнес мактаби', 'ДавУММРесБ', 'Тошкент шахар', 1, 'A', 114, to_date('28-09-2011 15:12:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5696, 20152, 'Фаргона енгил саноат техникуми', 'ФарЕСТ', 'Фаргона шахар', 2, 'A', 252, to_date('28-09-2011 15:12:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5697, 20153, 'Дангара саноат касб хунар коллежи', 'ДанСКХК', 'Дангара тумани', 2, 'A', 313, to_date('28-09-2011 15:12:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5698, 20154, 'Дангара кишлок хужалиги касб хунар коллежи', 'ДанКХКХК', 'Дангара тумани', 2, 'A', 313, to_date('28-09-2011 15:12:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5699, 20155, 'Кукон нефть техникуми', 'Кукон НТ', 'Кукон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5700, 20156, 'Кукон автомобил йуллари  техникуми', 'КуконАЙТ', 'Кукон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5701, 20157, 'Кукон коммунал техникуми', 'КуконКТ', 'Кукон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5702, 20158, 'Кукон сервис ва тадбиркорлик коллежи', 'Кукон СТК', 'Кукон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5703, 20159, 'Кукон педагогика коллежи', 'Кукон ПК', 'Кукон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5704, 20160, 'Кукон политехника техникуми', 'Кукон ПТ', 'Кукон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5705, 20161, 'Фаргона кишлок хужалик техникуми', 'ФарКХТ', 'Фаргона шахар', 2, 'A', 252, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5706, 20162, 'Маргилон банк коллежи', 'МарБК', 'Маргилон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5707, 20163, 'Фаргона бизнес коллежи', 'ФарБК', 'Фаргона шахар', 2, 'A', 252, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5708, 20164, 'Ёзёвон кишлок хужалик техникуми', 'ЁКХТ', 'Фаргона вилояти Езёвон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5709, 20165, 'Маргилон тижорат техникуми', 'МарТТ', 'Фаргона вилояти Маргилон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5710, 20166, 'Бешарик агроиктисодиёт коллежи', 'Бешарик АИ', 'Фаргона вилояти Бешарик шахар', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5711, 20167, 'Маргилон курилиш техникуми', 'МарКТ', 'Фаргона вилояти Маргилон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5712, 20168, 'Шурсув кишлок хужалиги техникуми', 'Шурсув КХТ', 'Шурсув шахар', 2, 'A', 252, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5713, 20169, 'Андижон гидромелиорация техникуми', 'АГТ', 'Андижон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5714, 20170, 'Охангарон курилиш техникуми', 'ОКТ', 'Охангарон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5715, 30111, 'Кукон давлат педагогика институти', 'Кукон ДавП', 'Кукон шахар', 3, 'A', 364, to_date('22-06-2012 12:48:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5716, 40046, 'Тюмень давлат университети', 'ТДУ', 'Россия Тюмень шахар', 4, 'A', 364, to_date('22-06-2012 12:56:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5721, 20171, 'Карши политехникум техникуми', 'КПТ', 'Карши шахар', 2, 'A', 313, to_date('28-09-2011 15:12:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6080, 20188, 'Гулистон курилиш техникуми', 'ГКТ', 'Гулистон ш.', 2, 'A', 364, to_date('27-10-2011 12:04:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5717, 40047, 'Ош технология университети Кизилкия филиали', 'Кизилкия О', 'Кизилкия шахар', 4, 'A', 114, to_date('28-09-2011 15:12:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5718, 10018, 'Шахрисабз кишлок хўжалигини механизациялаш техникуми', 'ШКХМТ', 'Кашкадарё вилояти', 1, 'A', 302, to_date('28-09-2011 15:12:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5719, 40048, 'Баткент давлат университети', 'Баткент Да', 'Баткент шахар', 4, 'A', 364, to_date('22-06-2012 12:56:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5720, 30112, 'Андижон давлат медицина институти', 'АнДавМИ', 'Андижон шахар', 3, 'A', 364, to_date('22-06-2012 12:48:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5722, 20172, 'Тошкент мелиорация ва сув хужалиги коллежи', 'ТМСХК', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:12:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5723, 20173, 'Тошкент политехника касб-хунар коллежи', 'ТПКХК', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:12:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5724, 30113, 'Тошкент электротехника алока институти', 'ТЭАИ', 'Тошкент шахар', 3, 'A', 313, to_date('28-09-2011 15:12:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5725, 10016, 'Фаргона давлат университети кошидаги бизнес мактаби', 'Фаргона БМ', 'Фаргона шахри', 1, 'A', 364, to_date('22-06-2012 12:40:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5726, 10017, 'Милиция урта махсус мактаби', 'ММ', 'Тошкент шахри', 1, 'A', 114, to_date('28-09-2011 15:12:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5727, 10019, 'Шахрисабз кишлок хўжалиги касб-хунар коллежи', 'ШКХКХК', 'Кашкадарё вилояти', 1, 'A', 302, to_date('28-09-2011 15:12:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5728, 10020, 'Шахрисабз озик-овкат ва маиший хизмат кўрсатиш коллежи', 'ШООМХКК', 'Кашкадарё вилояти', 1, 'A', 302, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5729, 10021, 'Тошкент кимё технология институти', 'ТКТИ', 'Тошкент шахри', 1, 'P', 364, to_date('28-10-2011 14:58:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5730, 10022, 'Самарканд туман Окдарё бизнес мактаби', 'СТОБМ', 'Самарканд вилояти', 1, 'A', 302, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5731, 10023, 'Самарканд кооператив техникуми', 'СКТ', 'Самарканд вилояти', 1, 'A', 302, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5732, 10024, 'Коракалпок давлат университети кошидаги  бизнес мактаб', 'КДУБМ', 'Нукус т.', 1, 'A', 364, to_date('22-06-2012 12:40:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5733, 10025, 'Чимбой педагогика училишеси', 'ЧПУ', 'Чимбой т.', 1, 'A', 302, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5734, 10026, '0', '0', '0', 1, 'A', 313, to_date('09-12-2011 17:29:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5735, 20175, 'Фаргона политехникуми', 'Фаргона ПТ', 'Фаргона шахри', 2, 'A', 252, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5736, 40049, 'Буюк Британиядаги Рэдинг университети', 'Буюк Брита', 'Лондон шахри', 4, 'A', 252, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5737, 20177, 'Хива кишлок хужалик техникуми', 'Хива ККТ', 'Хива шахри', 2, 'A', 252, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5738, 20178, 'Пахтакор саноат касб-хунар коллежи', 'Пахтакор К', 'Пахтакор тумани', 2, 'A', 313, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5739, 20179, 'Урганч гидромелиорация техникуми', 'Урганч ГМТ', 'Урганч шахри', 2, 'A', 252, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5740, 30115, 'Уфа юридик институти', 'Уфа ЮИ', 'Россия, Уфа шахри', 3, 'A', 114, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5741, 50005, 'Халкаро экология академияси', 'ХЭА', 'Тошкент шахри', 5, 'A', 252, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5742, 50006, 'Тимирязов номли Москва кишлок хужалик академияси', 'МСКХК', 'Россия, Москва шахри', 5, 'A', 114, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5743, 10031, 'Тошкент тиббиет билим  юрти', 'ТТБЮ', 'Тошкент шахри', 1, 'A', 114, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5744, 30051, 'Анкара ГАЗИ иктисодий институти', 'ГАЗИ', 'Туркия. Анкара', 3, 'A', 114, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5745, 30056, 'Фаргона вилояти Кувасой тадбиркорлик укув илмий ишлаб чикариш Маркази', 'ФарКТУИИШМ', 'Фаргона  вилояти Кувасой шахар', 3, 'A', 114, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5746, 20041, 'Целиноград  курилиш техникуми', 'Цел.ТКТ', 'Козокистон Республикаси Целиноград шахар', 2, 'A', 114, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 200 records committed...
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5747, 30057, 'Козон молия иктисод институти', 'КозонМИИ', 'Татаристон', 3, 'A', 252, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5748, 30058, 'Москва иктисодиёт ва статистика институти', 'МИСИ', 'Москва', 3, 'A', 252, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5749, 20042, 'Тошкент молия коллежи', 'ТМК', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5750, 20043, 'Тошкент молия ва иктисодиёт коллежи', 'ТМИК', 'Тошкент шахар', 2, 'A', 364, to_date('03-08-2012 18:19:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5751, 20182, 'Ўзбекистон кизил ярим ой Жамиятининг шафкат коллежи', 'КЯОЖШК', 'Тошкент шахри', 2, 'A', 252, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5752, 20044, 'Тошкент педагогика билим юрти', 'ТПБЮ', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5753, 20045, 'Тошкент тижорат техникуми', 'Тош.тиж.те', 'тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5754, 20046, 'Пинск хисоб-кредит техникуми', 'ПХКТ', 'Россия', 2, 'A', 313, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5755, 20047, 'Борисогблекс  авиация билим юрти', 'БАБЮ', 'Россия', 2, 'A', 313, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5756, 20048, 'Бекобод  индустриал техникуми', 'БИТ', 'Тошкент вилояти Бекобод тумани', 2, 'A', 313, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5757, 20049, 'Ленинград енгил саноат техникуми', 'ЛЕСТ', 'Россия', 2, 'A', 313, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5758, 30063, 'Тошкент Олий милиция мактаби', 'ТОММ', 'Тошкент шахар', 3, 'A', 252, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5759, 20050, 'Бука  кишлок хужалигини механизациялаш техникуми', 'БКХМТ', 'Тошкент вилояти Бука тумани', 2, 'A', 313, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5760, 20051, 'Бука  агросервис коллежи', 'БАК', 'Тошкент вилояти Бука тумани', 2, 'A', 313, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5761, 20052, 'Ангрен  режа-иктисод техникуми', 'АРИТ', 'Тошкент вилояти Ангрен тумани', 2, 'A', 252, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5762, 20053, 'Тошкент савдо-сотик техникуми', 'ТССТ', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5763, 20054, 'Тошкент вилояти Ангрен туман билим юрти', 'АТБЮ', 'Тошкент вилояти Ангрен тумани', 2, 'A', 252, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5764, 20055, 'Чирчик тиббий билим юрти', 'ЧТБЮ', 'Тошкент вилояти Чирчик тумани', 2, 'A', 252, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5765, 30064, 'Куйбышев кишлок хужалик институти', 'КуйбышКХИ', 'Россия', 3, 'A', 364, to_date('22-11-2011 18:19:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5766, 20056, 'Тошкент радиотехника ва автоматика коллежи', 'ТРТАК', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5767, 20057, 'Тошкент туман кишлок хужалик касб хунар коллежи', 'Т.тум.КХкх', 'Тошкент вилояти Тошкент тумани', 2, 'A', 252, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5768, 20058, 'Ангрен политехникуми', 'АПТ', 'Тошкент вилояти Ангрен тумани', 2, 'A', 313, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5769, 20059, 'Тошкент автомобил ва йуллар техникуми', 'ТАЙТ', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5770, 20060, 'Тошкент кооператив техникуми', 'Тош.кооп.т', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5771, 30065, 'Кораганда кооператив институти', 'КораганКИ', 'Козокистон Республикаси', 3, 'A', 252, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5772, 20061, 'Зангиота кишлок хужалик коллежи', 'ЗКХК', 'Тошкент вилояти Зангиота тумани', 2, 'A', 313, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5773, 20062, 'Янгийул шахар технологик коллежи', 'ЯТК', 'Тошкент вилояти Янгийул шахар', 2, 'A', 114, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5774, 20063, 'Тошкент хукук ва ижтимоий таъминот техникуми', 'ТХИТТ', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5775, 20064, 'Бекобод  саноат техникуми', 'БСТ', 'Тошкент вилояти Бекобод тумани', 2, 'A', 313, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5776, 20065, 'Фаргона ахолига маиший хизмат курсатиш техникуми', 'ФарАМХКТ', 'Фаргона вилояти Фаргона шахар', 2, 'A', 252, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5777, 20066, 'Тошкент маданий окартув техникуми', 'ТМОТ', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5778, 20067, 'Тошкент типография техникуми', 'Тош.тип.те', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5779, 20068, 'Тюмень савдо-сотик техникуми', 'ТюменьССТ', 'Россия', 2, 'A', 252, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5780, 30066, 'Бухоро давлат педагогика институти', 'БДПИ', 'Бухоро шахари', 3, 'A', 364, to_date('22-06-2012 12:46:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5781, 20069, 'Харьков  индустриал педагогика техникуми', 'ХИПТ', 'Украина Республикаси', 2, 'A', 252, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5782, 20070, 'Бухоро нефть ва газ саноат техникуми', 'БухНГСТ', 'Бухоро шахар', 2, 'A', 313, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5783, 20071, 'Бухоро иктисодиёт ва банк коллежи', 'БухИБК', 'Бухоро шахар', 2, 'A', 313, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5784, 20072, 'Бухоро курилиш техникуми', 'Бух.КТ', 'Бухоро шахар', 2, 'A', 313, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5785, 20073, 'Бухоро  енгил-саноат техникуми', 'БухЕСТ', 'Бухоро шахар', 2, 'A', 364, to_date('22-06-2012 12:42:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5786, 20074, 'Бухоро режа иктисод техникуми', 'БухРИТ', 'Бухоро шахар', 2, 'A', 313, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5787, 30070, 'Бошкирдистон чет тиллар институти', 'БошкирЧТИ', 'Бошкирдистон', 3, 'A', 252, to_date('28-09-2011 15:12:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5788, 20075, 'Бухоро кишлок хужалик коллежи', 'БухКХК', 'Бухоро шахар', 2, 'A', 313, to_date('28-09-2011 15:12:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5789, 20076, 'Бухоро автойул курилиш техникуми', 'БАКТ', 'Бухоро шахар', 2, 'A', 313, to_date('28-09-2011 15:12:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5790, 30071, 'Тожикистон кишлок хужалик институти', 'ТожКХИ', 'Тожикистон Республикаси', 3, 'A', 252, to_date('28-09-2011 15:12:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5791, 10004, 'Бухоро енгилсаноат технологияси институти хузуридаги Бизнес мактаб', 'БЕСТИ-БМ', 'Бухоро шахар', 1, 'A', 114, to_date('28-09-2011 15:12:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5792, 20077, 'Бухоро тижорат коллежи', 'БухТК', 'Бухоро шахар', 2, 'A', 313, to_date('28-09-2011 15:12:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5793, 10005, 'Когон 23-сон урта билим юрти', '23-КУБЮ', 'Бухоро шахар', 1, 'A', 114, to_date('28-09-2011 15:12:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5794, 20078, 'Бухоро  агробизнес коллежи', 'БухАБК', 'Бухоро шахар', 2, 'A', 313, to_date('28-09-2011 15:12:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6040, 40037, 'ВУЗ АКШ', 'АКШ', 'АКШ', 4, 'A', 114, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5795, 20079, 'Бухоро  бизнес академия маркази', 'БухБАМ', 'Бухоро шахар', 2, 'A', 313, to_date('28-09-2011 15:12:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5796, 20080, 'Наманган режа иктисод техникуми', 'НРИТ', 'Наманган шахар', 2, 'A', 313, to_date('28-09-2011 15:12:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5797, 40001, 'Узбекистон миллий университети', 'УМУ', 'Тошкент шахри', 4, 'A', 364, to_date('30-11-2012 11:33:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5798, 40002, 'Тошкент давлат аграр университети', 'ТДАУ', 'Тошкент шахри', 4, 'A', 364, to_date('22-06-2012 12:50:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5799, 40003, 'Самарканд давлат университети', 'СамДУ', 'Самарканд шахри', 4, 'A', 364, to_date('22-06-2012 12:51:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5800, 40004, 'Карши давлат университети', 'КаршиДУ', 'Кашкадар. вилояти Карши шахри', 4, 'A', 364, to_date('22-06-2012 12:51:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5801, 40005, 'Фаргона давлат университети', 'ФарДУ', 'Фаргона шахри', 4, 'A', 364, to_date('22-06-2012 12:51:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5802, 40012, 'Тошкент давлат университети', 'ТошДУ', 'Тошкент шахри', 4, 'A', 364, to_date('22-06-2012 12:52:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5803, 30118, 'Тошкент кимё технология институти', 'ТКТИ', 'Тошкент шахри', 3, 'A', 252, to_date('28-09-2011 15:12:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5804, 40006, 'Термиз давлат университети', 'Термиз ДУ', 'Сурхондар. вилояти Термиз шахри', 4, 'A', 364, to_date('22-06-2012 12:51:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5805, 40007, 'Гулистон давлат университети', 'ГДУ', 'Сирдарё вилояти Гулистон шахри', 4, 'A', 364, to_date('22-06-2012 12:51:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5806, 40008, 'Тошкент ахборот технологиялари университети', 'ТАТУ', 'Тошкент шахри', 4, 'A', 313, to_date('28-09-2011 15:12:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5807, 40009, 'Тошкент давлат  иктисодиёт университети', 'ТДИУ', 'Тошкент шахри', 4, 'A', 364, to_date('22-06-2012 12:51:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5808, 40010, 'Тошкент давлат иктисодиёт университети', 'ТДИУ', 'Коракалпогистон Р. Турткул шахри', 4, 'A', 364, to_date('22-06-2012 12:52:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5809, 40011, 'Тошкент давлат техника университети', 'ТДТУ', 'Тошкент шахри', 4, 'A', 364, to_date('22-06-2012 12:52:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5810, 40013, 'Узбекистон  давлат жахон тиллари университети', 'УзбДЖТУ', 'Тошкент шахри', 4, 'A', 364, to_date('22-06-2012 12:52:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5811, 40014, 'Жахон иктисодиёти ва дипломатия университети', 'ЖИДУ', 'Тошкент шахри', 4, 'A', 252, to_date('28-09-2011 15:12:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5812, 20081, 'Тожикистон молия техникуми', 'ТожМТ', 'Тожикистон Республикаси', 2, 'A', 252, to_date('28-09-2011 15:12:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5813, 20082, 'Ромитан агроиктисодиёт коллежи', 'РАИК', 'Бухоро вилояти Ромитан шахар', 2, 'A', 313, to_date('28-09-2011 15:12:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5814, 20083, 'Бухоро бозор муносабатлари коллежи', 'ББМК', 'Бухоро шахар', 2, 'A', 313, to_date('28-09-2011 15:12:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5815, 20084, 'Когон саноат касб-хунар коллежи', 'КСк-х.кол.', 'Бухоро вилояти Когон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5816, 10006, 'Бухоро бизнес мактаби', 'ББМ', 'Бухоро шахар', 1, 'A', 114, to_date('28-09-2011 15:12:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5817, 20085, 'Андижон  курилиш техникуми', 'АКТ', 'Андижон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5818, 20086, 'Андижон  агробизнес коллежи', 'ААБК', 'Анджион шахар', 2, 'A', 313, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5819, 20087, 'Васильков авиация-техник билим юрти', 'ВАТБЮ', 'Россия', 2, 'A', 313, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5820, 30073, 'Андижон иктисодиёт ва бошкарув институти', 'АИБИ', 'Андижон шахар', 3, 'A', 313, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5821, 30074, 'Андижон пахтачилик институти', 'АПИ', 'Андижон шахар', 3, 'A', 252, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5822, 20088, 'Андижон  бухгалтерия техникуми', 'АндБТ', 'Андижон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5823, 20089, 'Андижон  молия ва иктисод коллежи', 'АМИК', 'Андижон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5824, 20090, 'Анджион  электрмеханик техникуми', 'АндЭМТ', 'Анджион шахар', 2, 'A', 313, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5825, 30076, 'Херсон давлат педагогика институти', 'ХерсонДПИ', 'Украина', 3, 'A', 364, to_date('22-06-2012 12:47:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5826, 20091, 'Езёвон агробизнес коллежи', 'ЕАБК', 'Фаргона вилояти Езёвон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5827, 20284, 'Сиргали тиббиёт коллежи', 'СТК', 'Тошкент шахри', 2, 'A', 252, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5828, 30012, 'Тошкент ирригация ва мелиорация институти', 'ТИМИ', 'Тошкент шахри', 3, 'A', 252, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5829, 40051, 'Самарканд давлат университети', 'СДУ', 'Самарканд шахри', 4, 'A', 364, to_date('22-06-2012 12:56:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5830, 30015, 'Самарканд иктисодиёт ва сервис институти', 'СИСИ', 'Самарканд шахар', 3, 'A', 252, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5831, 40052, 'Кемерово давлат университети', 'КДУ', 'Россия', 4, 'A', 364, to_date('22-06-2012 12:57:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5832, 20185, 'Шуманой кишлок хўжалик касб хунар коллежи', 'ШКХКХК', 'Шуманой тумани', 2, 'A', 302, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5833, 30119, 'Тошкент давлат чет тиллар педагогика институти', 'ТДЧТПИ', 'Тошкент шахар', 3, 'A', 364, to_date('22-06-2012 12:49:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5834, 10032, 'Тошкент педагогика билим юрти', 'ТПБЮ', 'Тошкент шахар', 1, 'A', 313, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5835, 20186, 'Домбробод маиший хизмат коллежи', 'ДМХК', 'Тошкент шахар', 2, 'A', 313, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5836, 2000, 'Кутангул кишлок хужалик коллежи', 'ККХК', 'Нукус тумани', 2, 'A', 302, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5837, 22001, 'Бустон агротадбиркорлик коллежи', 'БАК', 'Бустон тумани', 2, 'A', 302, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5838, 30120, 'Воронеж давлат педагогика институти', 'ВДПИ', 'Воронеж шахри', 3, 'A', 364, to_date('22-06-2012 12:49:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5839, 30121, 'Киев инженер-курилиш институти', 'КИКИ', 'Киев шахри', 3, 'A', 313, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5840, 30122, 'Ўзбекистон давлат жисмоний тарбия институти', 'ЎДЖТИ', 'Тошкент шахри', 3, 'A', 364, to_date('22-06-2012 12:49:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5841, 23001, 'Тўрткўл кишлок хўжалик касб хунар коллежи', 'ТКХК', 'Тўрткўл туман', 2, 'A', 302, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5842, 23003, 'Бустон ижтимоий иктисодиёт касб-хунар коллежи', 'БИИКХК', 'Бустон т.', 2, 'A', 302, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5843, 40054, 'Воронеж давлат университети', 'ВДУ', 'Россия', 4, 'A', 364, to_date('22-06-2012 12:57:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5844, 20190, 'Нукус курилиш касб - хунар коллежи', 'НККХК', 'Нукус ш.', 2, 'A', 302, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5845, 20200, 'Нукус курилиш ва комунал-хужалиги касб хунар коллежи', 'НККХКХК', 'Нукус ш.', 2, 'A', 302, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 300 records committed...
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5846, 23004, 'Нукус кишлок хужалик касб-хунар коллежи', 'НКХКХК', 'Нукус ш.', 2, 'A', 302, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5847, 23005, 'Нукус иктисодиёт касб-хунар коллежи', 'НИКХК', 'Нукус ш.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5848, 23006, 'Нукус кооператив тижорат коллежи', 'НКТК', 'Нукус ш.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5849, 23007, 'Нукус алока техникуми', 'НАТ', 'Нукус ш.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5850, 23008, 'Нукус автойул техникуми', 'НАТ', 'Нукус ш.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5851, 23009, 'Нукус молия техникуми', 'НМТ', 'Нукус ш.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5852, 23010, 'Нукус политехника коллежи', 'НПК', 'Нукус ш.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5853, 23011, 'Нукус кооператив тижорат коллежи', 'НКТК', 'Нукус ш.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5854, 23012, 'Нукус кооператив техникуми', 'НКТ', 'Нукус ш.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5855, 23013, 'Нукус шолигарчилик техникуми', 'НШТ', 'Нукус ш.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5856, 23014, 'Нукус индустриал техникуми', 'НИТ', 'Нукус ш.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5857, 23015, 'Нукус енгил ва озик-овкат саноати коллежи', 'НЕООСК', 'Нукус ш.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5858, 23016, 'Нукус компьютер ва ахборот технологиялари коллежи', 'НКАТК', 'Нукус ш.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5859, 23017, 'Нукус тижорат ва иктисодиёт коллежи', 'НТИК', 'Нукус ш.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5860, 23018, 'Коракалпок иктисодиёт ва тадбиркорлик коллежи', 'КИТК', 'Нукус ш.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5861, 23019, 'Муйнок саноат транспорт касб-хунар коллежи', 'МСТКХК', 'Муйнок т.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5862, 23020, 'Конликул саноат транспорт касб-хунар коллежи', 'КСТК', 'Конликул', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5863, 23021, 'Бустон агротадбиркорлик коллежи', 'БАК', 'Бустон т.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5864, 23022, 'Беруний кишлок хужалик касб-хунар коллежи', 'БИИКХК', 'Бустон т.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5865, 23023, 'Ташавуз кишлок хужалик техникуми', 'ТКХТ', 'Ташавуз т.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5866, 23024, 'Тошкент мева сабзавотчилик техникуми', 'ТМСТ', 'Тошкент ш.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5867, 23025, 'Тахиатош иктисодиёт коллежи', 'ТИК', 'Тахиатош т.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5868, 23026, 'Тахиатош савдо иктисодиёт техникуми', 'ТСИТ', 'Тахиатош т.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5869, 23027, 'Тахиатош иктисодиёт ва тадбиркорлик коллежи', 'ТИТК', 'Тахиатош т.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5870, 23028, 'Кегейли кишлок хужалик касб-хунар коллежи', 'ККХКХК', 'Кегейли т.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5871, 23029, 'Чимбой кишлок хужалик техникуми', 'ЧКХТ', 'Чимбой т.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5872, 23030, 'Чимбой иктисодиёт механика коллежи', 'ЧИМК', 'Чимбой т.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5873, 23031, 'Шуманой кишлок хужалик касб-хунар коллежи', 'ШКХКХК', 'Шуманой т.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5874, 23032, 'Шуманой агро-сервис коллежи', 'ШАСК', 'Шуманой т.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5875, 23033, 'Олмати хисоб кредит техникуми', 'ОХКТ', 'Шуманой т.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5876, 23034, 'ДСК Бухоро солик коллежи', 'ДСКБСК', 'Бухоро ш.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5877, 23035, 'Фаргона компьъютер технологиялари касб-хунар коллежи', 'ФКТКХК', 'Фаргона в.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5878, 23036, 'Тошкент кишлок хўжалик техникуми', 'ТКХТ', 'тошкент шахри', 2, 'A', 313, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5879, 23037, '"Ўзбекбирлашув"нинг Самарканд кооператив техникуми', 'СКТ', 'Самарканд шахри', 2, 'A', 313, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5880, 10033, 'Тошкент давлат иктисодиёт университети их-ган олий бизнес мактаби', 'ТДИУ ИОБМ', 'Тошкент шахар', 1, 'A', 364, to_date('22-06-2012 12:41:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5881, 23038, 'Ўзбекистон кичик ва ўрта бизнес коллежи', 'ЎзбКВЎБК', 'Тошкент', 2, 'A', 313, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5882, 30123, 'Тошкент шахридаги Сингапур менеджментни ривожлантириш институти', 'ТСМРИ', 'Тошкент шахри', 3, 'A', 313, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5883, 23039, 'Шахрисабз иктисодиёт касб-хунар коллежи', 'ШИКХК', 'Кашкадарё вилояти Шахрисабз тумани', 2, 'A', 313, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5884, 30124, 'Тошкент давлат иккинчи тиббиёт институти', 'ТДТИ-2', 'Тошкент шахри', 3, 'A', 364, to_date('22-06-2012 12:49:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5885, 10034, 'Тошкент шахар 14-касб-хунар мактаби', 'КХМ', 'Тошкент ш.', 1, 'A', 313, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5886, 10035, 'Метрочилар касб-хунар техник лицейи', 'МКХТЛ', 'Тошкент шахри', 1, 'A', 313, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5887, 20092, 'Сирдарё кишлок хўжалиги техникуми', 'СирКХТ', 'Сирдарё шахар', 2, 'A', 313, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5888, 30078, 'Жалолобод тижорат институти', 'ЖТИ', 'Тожикистон Республикаси', 3, 'A', 252, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5889, 30079, 'Майлисой халкаро иктисодиёт институти', 'МайлисоХИИ', 'Киргизистон Республикаси', 3, 'A', 364, to_date('22-11-2011 18:19:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5890, 30080, 'Наманган политехника институти', 'НамПИ', 'Наманган шахар', 3, 'A', 252, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5891, 20093, 'Андижон  енгилсаноат политехникуми', 'АндЕСПТ', 'Анджион шахар', 2, 'A', 313, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5892, 30081, 'Анджион енгилсаноат институти', 'АндЕСИ', 'Анджион шахар', 3, 'A', 364, to_date('22-11-2011 18:19:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5893, 20094, 'Анджион  банк коллежи', 'Анд.БК', 'Андижон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5894, 20095, 'Андижон  авиация техникуми', 'АндАТ', 'Андижон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5895, 20096, 'Линков  политехникуми', 'ЛинковПТ', 'Россия', 2, 'A', 313, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5896, 20097, 'Наманган аграр техникуми', 'НамАТ', 'Наманган шахар', 2, 'A', 313, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5897, 20098, 'Асака  савдо техникуми', 'АсакаСТ', 'Андижон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5898, 30082, 'Карши мухандислик иктисодиёт институти', 'КаришМИИ', 'Кашкадарё вилояти Карши шахар', 3, 'A', 313, to_date('07-02-2012 17:08:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5899, 30083, 'Киев давлат чет тиллар институти', 'КиевДЧТИ', 'Украина Киев шахар', 3, 'A', 364, to_date('22-06-2012 12:47:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5900, 20099, 'Муборак индустриал техникуми', 'МуборакИТ', 'Кашкадарё вилояти Муборак шахар', 2, 'A', 313, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5901, 20100, 'Козон хисоб-кредит техникуми', 'КозонХКТ', 'Татаристон. Козон шахар', 2, 'A', 313, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5902, 30084, 'Карши давлат педагогика институти', 'КаршиДПИ', 'Кашкадарё вилояти Карши шахар', 3, 'A', 364, to_date('22-06-2012 12:47:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5903, 20101, 'Карши кишлок хўжалик техникуми', 'Карши КХТ', 'Кашкадарё вилояти Карши шахар', 2, 'A', 313, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5904, 20102, 'Муборак техника иктисодиёт коллежи', 'МуборакТИК', 'Кашкадарё вилояти Муборак шахар', 2, 'A', 313, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5905, 20103, 'Уссурийск  харбий-сиёсий билим юрти', 'УссурХСБЮ', 'Уссурийск', 2, 'A', 252, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5906, 10007, '12-сон Карши касб хунар билим юрти', '12-КаршиКХ', 'Кашкадарё вилояти Карши шахар', 1, 'A', 114, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5907, 20104, 'Гузор технология иктисод коллежи', 'ГузорТИК', 'Кашкадарё вилояти Гузор шахар', 2, 'A', 313, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5908, 20105, 'Карши  кооператив техникуми', 'КаршиТТ', 'Кашкадарё вилояти Карши шахар', 2, 'A', 313, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5909, 20106, 'Карши кишлок хужалик касб хунар коллежи', 'КаршиКХкхК', 'Кашкадарё вилояти Карши шахар', 2, 'A', 313, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5910, 30085, 'Самарканд давлат меъморчилик ва курилиш институти', 'СамДМКИ', 'Самарканд шахар', 3, 'A', 364, to_date('22-06-2012 12:47:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5911, 10008, 'Карши шахар касб хунар мактаби', 'КаршиКХМ', 'Карши шахар', 1, 'A', 114, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5912, 20107, 'Карши иктисодиёт коллежи', 'КаршиИК', 'Кашкадарё вилояти Карши шахар', 2, 'A', 313, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5913, 40050, 'Тошкент давлат педагогика университети', 'ТДПУ', 'Тошкент шахри', 4, 'A', 364, to_date('22-06-2012 12:56:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5914, 20285, 'Тошкент алока касб-хунар коллежи', 'ТошАКХК', 'Тошкент шахар', 2, 'A', 313, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5915, 40053, 'ВУЗ Индии', 'Индия', 'Индия', 4, 'A', 313, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5916, 20108, 'Самарканд  банк коллежи', 'СамБК', 'Самарканд шахар', 2, 'A', 313, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5917, 20109, 'Камаши кишлок хўжалик техникуми', 'КамашиКХТ', 'Кашкадарё вилояти Камаши шахар', 2, 'A', 313, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5918, 20110, 'Нишон агроиктисодиёт коллежи', 'НишонАИК', 'Кашкадарё вилояти Нишон шахар', 2, 'A', 313, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5919, 20111, 'Шахрисабз  технология коллежи', 'Шах-зТК', 'Кашкадарё вилояти Шахрисабз шахар', 2, 'A', 252, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5920, 30087, 'Карши политехника касб-хунар коллежи', 'КаршиПкхК', 'Кашкадарё вилояти Карши шахар', 3, 'A', 313, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5921, 20112, 'Камаши  агробизнес коллежи', 'КамашиАБК', 'Кашкадарё вилояти Камаши шахар', 2, 'A', 313, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5922, 30088, 'Жиззах политехника институти', 'ЖизПолитИ', 'Жиззах шахар', 3, 'A', 313, to_date('28-09-2011 15:13:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5923, 30090, 'Узбекистон Республикаси Президенти хузуридаги Давлат ва жамият курилиш академияси', 'ЎР ПХДЖКА', 'Тошкент  шахар', 3, 'A', 114, to_date('28-09-2011 15:13:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5924, 30036, 'Бухоро озик-овкат ва енгил саноат технологияси институти', 'БООЕСТИ', 'Бухоро шахар', 3, 'A', 364, to_date('14-10-2011 10:52:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5925, 30038, 'Самарканд  кооператив институти', 'СамКИ', 'Самарканд шахар', 3, 'A', 252, to_date('28-09-2011 15:13:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5926, 30039, 'Фаргона политехника институти', 'ФарПИ', 'Фаргона шахар', 3, 'A', 252, to_date('28-09-2011 15:13:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5927, 30040, 'Термиз Давлат университети', 'ТермизДУ', 'Сурхондарё вилояти Термиз шахар', 3, 'A', 364, to_date('30-08-2012 12:28:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5928, 30042, 'Тошкент архитектура курилиш институти', 'ТАКИ', 'Тошкент шахар', 3, 'A', 252, to_date('28-09-2011 15:13:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5929, 30043, 'Москва Олий комсомол мактаби', 'МОКМ', 'Москва', 3, 'A', 114, to_date('28-09-2011 15:13:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5930, 30044, 'Москва шахар тадбиркорлик ва хукук институти', 'МоскваТХИ', 'Москва', 3, 'A', 114, to_date('28-09-2011 15:13:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5931, 30045, 'Навоий давлат педагогика институти', 'НДПИ', 'Навоий шахар', 3, 'A', 364, to_date('22-06-2012 12:46:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5932, 30046, 'Андижон кишлок хужалик институти', 'АКХИ', 'Андижон шахар', 3, 'A', 252, to_date('28-09-2011 15:13:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5933, 30047, 'Навоий давлат кончилик институти', 'НДКИ', 'Навоий шахар', 3, 'A', 364, to_date('22-06-2012 12:46:31', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5934, 30019, 'Тошкент тўкимачилик ва енгил саноат институти', 'ТТЕСИ', 'Тошкент шахар', 3, 'A', 252, to_date('28-09-2011 15:13:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5935, 30020, 'Тошкент давлат педагогика институти', 'ТДПИ', 'Тошкент шахар', 3, 'A', 364, to_date('22-06-2012 12:44:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5936, 30021, 'Тошкент автомобил ва йуллар институти', 'ТАЙИ', 'Тошкент шахар', 3, 'A', 313, to_date('28-09-2011 15:13:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5937, 30022, 'Тошкент кишлок хужалик институти', 'ТКХИ', 'Тошкент шахар', 3, 'A', 252, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5938, 30023, 'Тошкент тиббиёт институти', 'ТТИ', 'Тошкент шахар', 3, 'A', 364, to_date('22-11-2011 18:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5939, 30024, 'Республикаси рус тили ва адабиёти педагогика институти', 'РРТАПИ', 'Тошкент шахар', 3, 'A', 252, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5940, 30025, 'Андижон мухандислик-иктисодиёт институти', 'АМИИ', 'Тошкент шахар', 3, 'A', 252, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5941, 30026, 'Наманган мухандислик-иктисодиёт институти', 'НМИИ', 'Тошкент шахар', 3, 'A', 252, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5942, 30029, 'Самарканд давлат архитектура курилиш институти', 'СамДАКИ', 'Самарканд шахар', 3, 'A', 364, to_date('22-06-2012 12:45:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5943, 30031, 'Андижон давлат тиллари педагогика институти', 'АДТПИ', 'Андижон шахар', 3, 'A', 364, to_date('22-06-2012 12:45:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5944, 30032, 'Жиззах давлат педагогика институти', 'ЖДПИ', 'Жиззах шахар', 3, 'A', 364, to_date('22-06-2012 12:45:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5945, 30033, 'Самарканд кишлок хужалик институти', 'СКХИ', 'Самарканд шахар', 3, 'A', 252, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 400 records committed...
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5946, 10001, 'Тошкент шахар 18-касб-хунар мактаби', '18-КХМ', 'Тошкент шахар', 1, 'A', 114, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5947, 20001, 'Тошкент иктисодиёт коллежи', 'ТИК', 'Тошкент шахар', 2, 'A', 313, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5948, 20002, 'Тошкент банк хисоб-кредит коллежи', ' ТБХКК', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5949, 20003, 'Тошкент банк хисоб-кредит техникуми', 'ТХКТ', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5950, 20004, 'Тошкент курилиш техникуми', 'ТКТ', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5951, 20005, 'Крупская номли билим юрти', 'КБЮ', 'Тошкент шахар', 2, 'A', 114, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5952, 20006, 'Тошкент  хисоб-бухгалтерлик техникуми', ' ТХБТ', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5953, 20007, 'Тошкент транспорт касб-хунар коллежи', ' ТТкхК', 'Тошкент шахар', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5954, 20008, 'М.Улугбек номли информатика касб-хунар коллежи', ' ИкхК', 'Тошкент шахар', 2, 'A', 313, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6037, 40034, 'ВУЗ Австралии', 'Австралия', 'Австралия', 4, 'A', 114, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6038, 40035, 'ВУЗ Жанубий Корея', 'Жанубий Ко', 'Жанубий Корея', 4, 'A', 114, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6039, 40036, 'ВУЗ Буюк Британия', 'UК', 'Буюк Британия', 4, 'A', 114, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6041, 40038, 'ВУЗ Австрия', 'Австрия', 'Австрия', 4, 'A', 114, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6042, 50001, 'Узбекистон Республикаси Президенти хузуридаги Давлат ва жамият курилиши академияси', 'УзПХДЖКА', 'Тошкент шахри', 5, 'A', 364, to_date('28-09-2011 15:13:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6081, 20189, 'Гулистон компьютер ва ахборот технологиялари коллежи', 'ГКАТК', 'Гулистон ш.', 2, 'A', 364, to_date('27-10-2011 12:09:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6119, 23043, 'Тошкент солик коллежи', 'ТСК', 'Тошкент шахар', 2, 'A', 313, to_date('16-11-2011 11:42:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6139, 10038, 'Ўзбекистон Республика тиббиёт билим юрти', 'ЎРТБЮ', 'Тошкент шахри', 1, 'A', 364, to_date('17-11-2011 11:11:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6043, 60001, 'Узбекистон Республикаси Президенти хузуридаги Давлат ва жамият курилиш Академияси', 'УР ПХДЖКА', 'Тошкент шахри', 6, 'A', 114, to_date('28-09-2011 15:13:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6044, 50002, 'Узбекистон Республикаси Банк- молия академияси', 'БМА', 'Тошкент шахри', 5, 'A', 252, to_date('28-09-2011 15:13:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6045, 50008, 'Ўзбекистон Республикаси Президенти хузуридаги Давлат ва жамият курилиши академиясининг Олий бизнес м', 'ОБМ', 'Тошкент шахар', 5, 'A', 252, to_date('28-09-2011 15:13:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6046, 20183, 'Бўстон агротадбиркорлик коллежи', 'БАК', 'Бўстон тумани', 2, 'A', 313, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6047, 20184, 'Мўйнок саноат транспорт коллежи', 'МСТК', 'Мўйнок тумани', 2, 'A', 302, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6048, 10036, 'Жиззах тиббиёт билим юрти', 'ЖТБЮ', 'Жиззах шахри', 1, 'A', 313, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6049, 40055, 'Тулуза I университети', 'ТУ', 'Франция', 4, 'A', 313, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6050, 40056, 'Йокогама Миллий университети', 'ЙМУ', 'Япония', 4, 'A', 313, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6051, 23041, 'Тошкент политехникуми', 'ТПТ', 'Тошкент шахри', 2, 'A', 313, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6052, 23042, 'Маргилон хисоб-кредит коллежи Термиз филиали', 'МХКК', 'Термиз шахри', 2, 'A', 313, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6053, 40057, 'Тошкент шахридаги Халкаро Вестминстер университети', 'ТШХВУ', 'Тошкент шахри', 4, 'A', 313, to_date('17-11-2011 11:56:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6054, 10037, '22-касб-хунар мактаби', 'КХМ', 'Тошкент шахар', 1, 'A', 313, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6055, 23040, 'Тошкент менежмент ва технологиялар коллежи', 'ТМТ', 'Тошкент шахри', 2, 'A', 313, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6140, 40058, 'Нижегород давлат архитектура-курилиш университети', 'НДАКУ', 'Россия, Нижний Новгород шахри', 4, 'A', 364, to_date('22-06-2012 12:57:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6199, 23047, 'Янгибозор саноат касб-хунар коллежи', 'ЯСКХК', 'Хоразм вилояти Янгибозор шахарчаси', 2, 'A', 364, to_date('12-12-2011 10:52:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6219, 10039, 'Пскент тумани агросаноат ва иктисодиёт касб-хунат коллежи', 'ПАИКХК', 'Пскент тумани', 1, 'A', 313, to_date('13-12-2011 11:04:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6220, 10040, 'Бошка ўкув юртлари', 'БЎЮ', 'Барча', 1, 'A', 313, to_date('13-12-2011 11:05:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6239, 23049, 'Хазорасп иктисодиёт коллежи', 'ХИК', 'Хазорасп', 2, 'A', 313, to_date('16-12-2011 14:12:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6240, 23050, 'Хатирчи агроиктисодиёт коллежи', 'ХАИК', 'Навоий вилояти Хатирчи тумани', 2, 'A', 364, to_date('16-12-2011 17:14:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6259, 23051, 'Пахтаобод кишлок хўжалиги касб-хунар коллежи', 'ПКХКХК', 'Сирдарё вилояти Пахтаобод тумани', 2, 'A', 364, to_date('20-12-2011 09:20:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6281, 23054, 'Чирокчи кишлок хўжалик касб-хунар коллежи', 'ЧКХКХК', 'Кашкадарё вилояти Чирокчи тумани', 2, 'A', 364, to_date('20-12-2011 17:49:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6299, 23055, 'Тошкент молия техникуми', 'ТМТ', 'Тошкент', 2, 'A', 313, to_date('22-12-2011 11:15:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6300, 23056, 'Баликчи иктисодиёт коллежи', 'БИК', 'Тошкент', 2, 'A', 313, to_date('22-12-2011 11:11:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6339, 23058, 'Шофиркон туман иктисодиёт касб-хунар коллежи', 'ШИКХК', 'Бухоро вилояти Шофиркон тумани', 2, 'A', 364, to_date('21-02-2012 15:56:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6340, 23059, 'Пешку туман иктисодиёт касб-хунар коллежи', 'ПИКХК', 'Бухоро вилояти Пешку тумани', 2, 'A', 364, to_date('21-02-2012 15:57:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6359, 30127, 'Ажиниёз номли Нукус давлат педагогика институти', 'НДПИ', 'Нукус шахри', 3, 'A', 364, to_date('22-06-2012 12:50:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6379, 40059, 'Саратов иктисодиёт университети', 'СИУ', 'Россия', 4, 'A', 313, to_date('15-03-2012 17:05:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6419, 23060, 'Андижон иктисодиёт коллежи', 'АИК', 'Андижон шахри', 2, 'A', 313, to_date('30-03-2012 17:59:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6439, 23061, 'Мархамат кишлок ва сув хужалиги касб-хунар коллежи', 'МКСХКК', 'Андижон вилояти, Мархамат тумани', 2, 'A', 364, to_date('06-04-2012 09:46:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6459, 23062, 'Шахрисабз кишлок хужалигини мехенизациялаш техникуми', 'ШКХМТ', 'Кашкадарё вилояти', 2, 'A', 313, to_date('06-04-2012 14:49:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6460, 23063, 'Карши педогогика коллежи', 'КПК', 'Кашкадарё вилояти', 2, 'A', 313, to_date('06-04-2012 14:50:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6519, 40060, 'АКШ, Линколн университети', 'ЛУ', 'АКШ, Калифорния', 4, 'A', 364, to_date('02-05-2012 14:52:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6539, 23065, 'Кумкургон агросаноат касб-хунар коллежи', 'КАКХК', 'Сурхондарё вилояти', 2, 'A', 364, to_date('08-05-2012 12:22:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6601, 23069, 'Cамарканд кооператив тижорат коллежи', 'СКТК', 'Самарканд шахри', 2, 'A', 364, to_date('13-07-2012 12:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6621, 23070, 'Сирдарё механика иктисодиёт коллежи', 'СМИК', 'Сирдарё вилояти', 2, 'A', 364, to_date('23-08-2012 12:41:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6661, 30129, 'Ленинград политехника институти', 'ЛПИ', 'Россия', 3, 'A', 313, to_date('24-12-2012 10:40:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6581, 23068, 'Сирдарё педагогика коллежи', 'СПК', 'Гулистон шахри', 2, 'A', 313, to_date('10-07-2012 11:17:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6159, 23044, 'Фаргона хукукшунослик коллежи', 'ФХК', 'Фаргона шахар', 2, 'A', 313, to_date('09-12-2011 15:31:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6221, 23048, 'Бошка ўкув юртлари', 'Барча', 'Барча', 2, 'A', 313, to_date('13-12-2011 14:27:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6279, 23052, 'Гулистон педагогика коллежи', 'ГПК', 'Сирдарё вилояти Гулистон шахри', 2, 'A', 364, to_date('20-12-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6280, 23053, 'Жиззах транспорт ва алока коллежи', 'ЖТАК', 'Жиззах шахри', 2, 'A', 364, to_date('20-12-2011 15:14:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6399, 30128, 'Саратов иктисодиёт институти', 'СИИ', 'Россия', 3, 'A', 313, to_date('15-03-2012 17:06:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6059, 50009, 'СССР Ички Ишлар Вазирлиги академияси', 'ИИВА', 'Россия, Москва шахри', 5, 'A', 364, to_date('26-10-2011 17:51:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6060, 30125, 'Луцк давлат педагогика институти', 'ЛДПИ', 'Украина, Луцк шахри', 3, 'A', 364, to_date('22-06-2012 12:50:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6099, 30126, 'Тошкент давлат авиация институти', 'ТДАИ', 'Тошкент шахри', 3, 'A', 364, to_date('22-06-2012 12:50:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6560, 23067, 'Термиз кооператив техникуми', 'ТКТ', 'Термиз шахри', 2, 'A', 313, to_date('10-05-2012 15:37:24', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 463 records loaded
prompt Loading SS_OK_KV_KURS...
prompt Table is empty
prompt Loading SS_OK_LANGUAGE...
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (321, 20, 'поляк', 'A', 252, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (322, 1, 'рус', 'A', 114, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (323, 2, 'инглиз', 'A', 114, to_date('28-09-2011 15:13:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (324, 3, 'немис', 'A', 114, to_date('28-09-2011 15:13:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (325, 4, 'француз', 'A', 114, to_date('28-09-2011 15:13:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (326, 5, 'турк', 'A', 114, to_date('28-09-2011 15:13:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (327, 6, 'тожик', 'A', 114, to_date('28-09-2011 15:13:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (328, 7, 'форс', 'A', 114, to_date('28-09-2011 15:13:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (329, 8, 'араб', 'A', 114, to_date('28-09-2011 15:13:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (330, 9, 'испан', 'A', 114, to_date('28-09-2011 15:13:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (331, 10, 'ўзбек', 'A', 114, to_date('28-09-2011 15:13:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (332, 11, 'итальян', 'A', 114, to_date('28-09-2011 15:13:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (333, 12, 'козок', 'A', 114, to_date('28-09-2011 15:13:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (334, 13, 'киргиз', 'A', 114, to_date('28-09-2011 15:13:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (335, 14, 'уйгур', 'A', 114, to_date('28-09-2011 15:13:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (336, 15, 'япон', 'A', 114, to_date('28-09-2011 15:13:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (337, 16, 'корейс', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (338, 17, 'болгар', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (341, 21, 'хитой', 'A', 364, to_date('13-03-2012 09:20:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (342, 99, 'Бошка тиллар', 'A', 364, to_date('13-03-2012 09:20:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (339, 18, 'грузин', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (340, 19, 'туркман', 'A', 252, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 22 records loaded
prompt Loading SS_OK_LEAVE...
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (241, 5, 'Декрет', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (242, 1, 'Мехнат таътили', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (243, 2, 'Ўкув таътили', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (244, 3, 'Иш хаки сакланмаган', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (245, 4, 'Ижтимоий таътил', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 5 records loaded
prompt Loading SS_OK_LEVEL_BOSS...
insert into SS_OK_LEVEL_BOSS (LEVEL_DEPARTMENT_CODE)
values (1);
commit;
prompt 1 records loaded
prompt Loading SS_OK_LEVEL_DEPARTMENT...
insert into SS_OK_LEVEL_DEPARTMENT (LEVEL_DEPARTMENT_CODE, LEVEL_DEPARTMENT_NAME)
values (1, 'Республика, УБО');
insert into SS_OK_LEVEL_DEPARTMENT (LEVEL_DEPARTMENT_CODE, LEVEL_DEPARTMENT_NAME)
values (2, 'Область');
insert into SS_OK_LEVEL_DEPARTMENT (LEVEL_DEPARTMENT_CODE, LEVEL_DEPARTMENT_NAME)
values (3, 'Район');
insert into SS_OK_LEVEL_DEPARTMENT (LEVEL_DEPARTMENT_CODE, LEVEL_DEPARTMENT_NAME)
values (4, 'Все');
commit;
prompt 4 records loaded
prompt Loading SS_OK_LEVEL_LANGUAGE...
insert into SS_OK_LEVEL_LANGUAGE (LEVEL_LANGUAGE_ID, LEVEL_LANGUAGE_CODE, LEVEL_LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (241, 1, 'эркин', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEVEL_LANGUAGE (LEVEL_LANGUAGE_ID, LEVEL_LANGUAGE_CODE, LEVEL_LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (242, 2, 'лугат ёрдамида', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEVEL_LANGUAGE (LEVEL_LANGUAGE_ID, LEVEL_LANGUAGE_CODE, LEVEL_LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (243, 3, 'ўрта даражада', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 3 records loaded
prompt Loading SS_OK_MILITARY_RANK...
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (421, 1, 'оддий аскар', 'A', 138, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (422, 2, 'матрос', 'A', 138, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (423, 3, 'кичик сержант', 'A', 138, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (424, 4, 'сержант', 'A', 138, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (425, 5, 'катта сержант', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (426, 6, '2-даражадаги старшина', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (427, 7, '1-даражадаги старшина', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (428, 8, 'бош старшина', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (429, 9, 'лейтенант', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (430, 10, 'катта лейтенант', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (431, 11, 'капитан', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (432, 12, 'капитан-лейтенант', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (433, 13, 'майор', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (434, 14, 'подполковник', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (435, 15, 'полковник', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (436, 16, '3-даражадаги капитан', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (437, 17, '2-даражадаги капитан', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (438, 18, '1-даражадаги капитан', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (439, 19, 'генерал-майор', 'A', 138, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (440, 20, 'генерал-лейтенант', 'A', 138, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (441, 21, 'генерал-полковник', 'A', 138, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (442, 22, 'армия генерали', 'A', 138, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 22 records loaded
prompt Loading SS_OK_MIN_ZP...
insert into SS_OK_MIN_ZP (SALARY, RATE, CATEGORY_ZERO_SALARY, DATE_OPEN, DATE_CLOSE, STATE_NOTES, EMP_CODE, INS_DATE)
values (79590, 1, 79590, to_date('01-08-2011', 'dd-mm-yyyy'), to_date('31-12-2011', 'dd-mm-yyyy'), 'A', 99, to_date('21-06-2013 15:10:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MIN_ZP (SALARY, RATE, CATEGORY_ZERO_SALARY, DATE_OPEN, DATE_CLOSE, STATE_NOTES, EMP_CODE, INS_DATE)
values (79590, 1, 79590, to_date('01-01-2013', 'dd-mm-yyyy'), null, 'A', 99, to_date('21-06-2013 15:10:06', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 2 records loaded
prompt Loading SS_OK_MOTIVE_DISMISSIAL...
insert into SS_OK_MOTIVE_DISMISSIAL (MOTIVE_DISMISSIAL_ID, MOTIVE_DISMISSIAL_CODE, MOTIVE_DISMISSIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (241, 10, 'Куроллик кучлар сафига харбий хизматга', 'A', 313, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MOTIVE_DISMISSIAL (MOTIVE_DISMISSIAL_ID, MOTIVE_DISMISSIAL_CODE, MOTIVE_DISMISSIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (242, 1, 'Ўз хохишига кўра', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MOTIVE_DISMISSIAL (MOTIVE_DISMISSIAL_ID, MOTIVE_DISMISSIAL_CODE, MOTIVE_DISMISSIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (243, 2, 'Тарафлар келишувига кўра', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MOTIVE_DISMISSIAL (MOTIVE_DISMISSIAL_ID, MOTIVE_DISMISSIAL_CODE, MOTIVE_DISMISSIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (244, 3, 'Мехнат шартномаси муддати тугаши муносабати билан', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MOTIVE_DISMISSIAL (MOTIVE_DISMISSIAL_ID, MOTIVE_DISMISSIAL_CODE, MOTIVE_DISMISSIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (245, 4, 'ходимнинг вафоти муносабати билан', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MOTIVE_DISMISSIAL (MOTIVE_DISMISSIAL_ID, MOTIVE_DISMISSIAL_CODE, MOTIVE_DISMISSIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (246, 5, 'мехнат вазифасини бир марта кўпол равишда бузганлиги учун', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MOTIVE_DISMISSIAL (MOTIVE_DISMISSIAL_ID, MOTIVE_DISMISSIAL_CODE, MOTIVE_DISMISSIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (247, 6, 'нафакага чикиши муносабати билан', 'A', 114, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MOTIVE_DISMISSIAL (MOTIVE_DISMISSIAL_ID, MOTIVE_DISMISSIAL_CODE, MOTIVE_DISMISSIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (248, 7, 'суд хукмининг конуний кучга кирганлиги муносабати билан', 'A', 114, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MOTIVE_DISMISSIAL (MOTIVE_DISMISSIAL_ID, MOTIVE_DISMISSIAL_CODE, MOTIVE_DISMISSIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (249, 8, 'мехнат вазифасини мунтазам бузганлиги учун', 'A', 114, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MOTIVE_DISMISSIAL (MOTIVE_DISMISSIAL_ID, MOTIVE_DISMISSIAL_CODE, MOTIVE_DISMISSIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (250, 9, 'лавозимига малакаси етарли булмаганлиги сабабли', 'A', 114, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 10 records loaded
prompt Loading SS_OK_NATIONALITY...
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (561, 24, 'бошкирд', 'P', 313, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (562, 99, 'Бошка миллат', 'A', 313, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (563, 1, 'ўзбек', 'A', 114, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (564, 11, 'уйгур', 'A', 364, to_date('14-02-2012 16:31:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (565, 2, 'рус', 'A', 114, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (566, 3, 'тожик', 'A', 114, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (567, 4, 'татар', 'A', 114, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (568, 5, 'корейс', 'A', 114, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (569, 6, 'коракалпок', 'A', 302, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (570, 7, 'козок', 'A', 114, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (571, 8, 'турк', 'A', 114, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (572, 9, 'киргиз', 'A', 114, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (573, 10, 'озарбайжон', 'A', 364, to_date('14-02-2012 16:31:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (574, 12, 'украин', 'P', 313, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (575, 13, 'арман', 'A', 364, to_date('14-02-2012 16:31:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (576, 14, 'еврей', 'P', 313, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (577, 15, 'туркман', 'A', 114, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (578, 16, 'удмурт', 'A', 364, to_date('14-02-2012 16:31:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (579, 17, 'белорус', 'P', 313, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (580, 18, 'итальян', 'P', 313, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (581, 19, 'хитой', 'P', 313, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (582, 20, 'англичан', 'P', 313, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (583, 21, 'немис', 'P', 313, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (584, 22, 'болгар', 'P', 313, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (585, 23, 'грузин', 'P', 313, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 25 records loaded
prompt Loading SS_OK_NCI...
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '031', 30002, 'A', 364, to_date('06-04-2012 10:22:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23062, 'A', 313, to_date('06-04-2012 14:51:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23063, 'A', 313, to_date('06-04-2012 14:51:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 50010, 'A', 364, to_date('11-04-2012 16:57:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '009', 30036, 'A', 364, to_date('14-10-2011 14:47:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '002', 30032, 'A', 364, to_date('14-10-2011 14:48:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '203', 50004, 'A', 364, to_date('14-10-2011 14:48:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '010', 30088, 'A', 364, to_date('14-10-2011 14:49:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 10032, 'A', 364, to_date('14-10-2011 14:50:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '018', 30100, 'A', 364, to_date('14-10-2011 14:51:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20036, 'A', 364, to_date('14-10-2011 14:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20003, 'A', 364, to_date('18-10-2011 12:14:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20177, 'A', 364, to_date('18-10-2011 12:15:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23046, 'A', 364, to_date('10-12-2011 11:09:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20020, 'A', 364, to_date('20-10-2011 14:18:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30108, 'A', 364, to_date('20-10-2011 14:18:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30106, 'A', 364, to_date('20-10-2011 14:19:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20146, 'A', 364, to_date('20-10-2011 14:19:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '040', 30103, 'A', 364, to_date('22-10-2011 09:51:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20143, 'A', 364, to_date('22-10-2011 09:52:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20134, 'A', 364, to_date('22-10-2011 09:53:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20110, 'A', 364, to_date('22-10-2011 09:53:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20011, 'A', 364, to_date('22-10-2011 09:54:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20114, 'A', 364, to_date('22-10-2011 09:55:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30024, 'A', 364, to_date('22-10-2011 09:58:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '032', 30118, 'A', 364, to_date('22-10-2011 09:58:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '117', 40013, 'A', 364, to_date('22-10-2011 10:02:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20043, 'A', 364, to_date('26-10-2011 10:24:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20187, 'A', 364, to_date('27-10-2011 10:07:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23045, 'A', 364, to_date('10-12-2011 11:09:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20072, 'A', 313, to_date('14-12-2011 10:05:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23051, 'A', 364, to_date('20-12-2011 09:21:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '016', 30045, 'A', 313, to_date('16-12-2011 10:57:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23049, 'A', 313, to_date('16-12-2011 14:13:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23055, 'A', 313, to_date('22-12-2011 11:16:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23056, 'A', 313, to_date('22-12-2011 11:16:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '99', 6, 'A', 364, to_date('10-02-2012 12:11:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '99', 7, 'A', 364, to_date('10-02-2012 12:15:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '99', 16, 'A', 364, to_date('14-02-2012 16:33:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '99', 11, 'A', 364, to_date('14-02-2012 16:33:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '99', 10, 'A', 364, to_date('14-02-2012 16:34:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '99', 13, 'A', 364, to_date('14-02-2012 16:34:31', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23060, 'A', 313, to_date('30-03-2012 18:00:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23066, 'A', 364, to_date('10-05-2012 14:52:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40061, 'A', 364, to_date('23-05-2012 11:27:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '201', 243, 'A', 366, to_date('28-01-2013 14:02:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '203', 246, 'A', 366, to_date('28-01-2013 14:03:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40012, 'A', 364, to_date('13-10-2011 17:55:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '021', 30015, 'A', 364, to_date('14-10-2011 10:16:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '013', 30085, 'A', 364, to_date('14-10-2011 14:17:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20025, 'A', 364, to_date('13-10-2011 18:01:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30011, 'A', 364, to_date('13-10-2011 18:20:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '006', 30025, 'A', 364, to_date('14-10-2011 14:38:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40025, 'A', 364, to_date('19-10-2011 15:19:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20188, 'A', 364, to_date('27-10-2011 12:11:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20189, 'A', 364, to_date('27-10-2011 12:12:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23025, 'A', 364, to_date('28-10-2011 18:07:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30127, 'A', 313, to_date('27-02-2012 18:05:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40059, 'A', 313, to_date('14-03-2012 14:53:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40046, 'A', 313, to_date('29-03-2012 10:26:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20002, 'A', 313, to_date('09-04-2012 09:18:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30029, 'A', 364, to_date('11-04-2012 09:59:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23067, 'A', 313, to_date('10-05-2012 15:37:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23041, 'A', 364, to_date('12-10-2012 17:28:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '108', 194, 'A', 313, to_date('21-12-2012 16:21:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '023', 30021, 'A', 364, to_date('14-10-2011 09:17:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30020, 'A', 364, to_date('14-10-2011 09:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20027, 'A', 364, to_date('14-10-2011 09:19:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40052, 'A', 364, to_date('14-10-2011 09:20:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20032, 'A', 364, to_date('14-10-2011 09:20:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20028, 'A', 364, to_date('14-10-2011 09:22:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30013, 'A', 364, to_date('14-10-2011 09:27:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20282, 'A', 364, to_date('14-10-2011 09:29:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30073, 'A', 364, to_date('14-10-2011 09:30:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20021, 'A', 364, to_date('14-10-2011 09:30:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30121, 'A', 364, to_date('14-10-2011 09:31:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30124, 'A', 364, to_date('14-10-2011 09:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40055, 'A', 364, to_date('14-10-2011 09:48:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40056, 'A', 364, to_date('14-10-2011 09:48:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30119, 'A', 364, to_date('14-10-2011 09:50:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20039, 'A', 364, to_date('14-10-2011 14:00:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30051, 'A', 364, to_date('14-10-2011 14:01:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20038, 'A', 364, to_date('14-10-2011 14:04:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30038, 'A', 364, to_date('14-10-2011 14:06:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '101', 40051, 'A', 364, to_date('14-10-2011 14:09:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 50003, 'A', 364, to_date('24-10-2011 12:58:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 10023, 'A', 364, to_date('24-10-2011 12:59:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20006, 'A', 364, to_date('24-10-2011 13:04:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20113, 'A', 364, to_date('24-10-2011 16:55:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20099, 'A', 364, to_date('25-10-2011 16:18:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 50009, 'A', 364, to_date('26-10-2011 18:34:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30125, 'A', 364, to_date('26-10-2011 18:34:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20080, 'A', 364, to_date('28-10-2011 10:58:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20118, 'A', 364, to_date('28-10-2011 10:59:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20126, 'A', 364, to_date('28-10-2011 11:02:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30064, 'A', 364, to_date('28-10-2011 11:02:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20088, 'A', 364, to_date('28-10-2011 11:46:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20048, 'A', 364, to_date('28-10-2011 12:19:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30116, 'A', 364, to_date('28-10-2011 11:48:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30080, 'A', 364, to_date('28-10-2011 11:55:38', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 100 records committed...
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30101, 'A', 364, to_date('28-10-2011 11:57:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20097, 'A', 364, to_date('28-10-2011 11:58:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '015', 30047, 'A', 364, to_date('28-10-2011 12:05:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20098, 'A', 364, to_date('28-10-2011 12:08:28', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '007', 30046, 'A', 364, to_date('28-10-2011 12:09:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20037, 'A', 364, to_date('28-10-2011 12:10:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20185, 'A', 313, to_date('31-10-2011 15:35:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23043, 'A', 313, to_date('16-11-2011 11:45:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23044, 'A', 313, to_date('09-12-2011 15:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23052, 'A', 364, to_date('20-12-2011 15:17:28', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23053, 'A', 364, to_date('20-12-2011 15:18:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23054, 'A', 364, to_date('20-12-2011 17:49:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '99', 19, 'A', 313, to_date('17-02-2012 15:57:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23010, 'A', 313, to_date('13-03-2012 10:27:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23061, 'A', 364, to_date('06-04-2012 09:47:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23065, 'A', 364, to_date('08-05-2012 12:23:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23070, 'A', 364, to_date('23-08-2012 12:42:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30129, 'A', 313, to_date('24-12-2012 10:41:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '107', 245, 'A', 313, to_date('25-01-2013 10:26:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30003, 'A', 364, to_date('14-10-2011 10:11:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20026, 'A', 364, to_date('14-10-2011 10:20:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20029, 'A', 364, to_date('14-10-2011 10:21:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20094, 'A', 364, to_date('14-10-2011 10:21:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30074, 'A', 364, to_date('14-10-2011 10:22:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20089, 'A', 364, to_date('14-10-2011 10:22:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30022, 'A', 364, to_date('14-10-2011 10:23:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30111, 'A', 313, to_date('21-12-2012 11:52:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40054, 'A', 364, to_date('14-10-2011 10:24:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '01', 1, 'A', 313, to_date('08-02-2012 16:38:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '03', 3, 'A', 252, to_date('28-09-2011 15:12:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '04', 9, 'A', 252, to_date('28-09-2011 15:12:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '05', 15, 'A', 252, to_date('28-09-2011 15:12:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '06', 2, 'A', 252, to_date('28-09-2011 15:12:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30008, 'A', 364, to_date('14-10-2011 10:54:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30057, 'A', 364, to_date('14-10-2011 10:55:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20074, 'A', 364, to_date('14-10-2011 10:55:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20075, 'A', 364, to_date('14-10-2011 10:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20108, 'A', 364, to_date('14-10-2011 15:35:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40045, 'A', 364, to_date('19-10-2011 12:20:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20031, 'A', 364, to_date('19-10-2011 17:16:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20152, 'A', 364, to_date('19-10-2011 17:17:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20065, 'A', 364, to_date('19-10-2011 17:18:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20162, 'A', 364, to_date('19-10-2011 17:20:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '030', 30012, 'A', 364, to_date('19-10-2011 17:23:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20091, 'A', 364, to_date('19-10-2011 17:40:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30110, 'A', 364, to_date('21-10-2011 15:58:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30084, 'A', 364, to_date('21-10-2011 15:58:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30113, 'A', 364, to_date('21-10-2011 15:59:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30063, 'A', 364, to_date('21-10-2011 15:59:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20285, 'A', 364, to_date('21-10-2011 16:00:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23047, 'A', 364, to_date('12-12-2011 10:53:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23050, 'A', 364, to_date('16-12-2011 17:15:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '07', 4, 'A', 252, to_date('28-09-2011 15:12:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '08', 5, 'A', 252, to_date('28-09-2011 15:12:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '99', 99, 'A', 313, to_date('28-09-2011 15:12:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('73', '01', 7, 'A', 313, to_date('28-09-2011 15:12:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('73', '03', 1, 'A', 313, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('73', '04', 4, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('73', '05', 5, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('73', '06', 3, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('74', '1', 2, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('74', '2', 6, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('74', '3', 1, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('74', '4', 4, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('74', '5', 5, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('74', '6', 7, 'A', 313, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('74', '7', 3, 'A', 313, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('75', '1', 7, 'A', 252, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('75', '2', 3, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('75', '3', 1, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('75', '4', 2, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('76', '1', 6, 'A', 313, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('76', '2', 4, 'A', 313, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('76', '3', 3, 'A', 313, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('76', '4', 1, 'A', 252, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '01', 1, 'A', 252, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '02', 2, 'A', 252, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '03', 3, 'A', 252, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '04', 4, 'A', 252, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '05', 5, 'A', 252, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '06', 6, 'A', 252, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '07', 7, 'A', 252, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '08', 8, 'A', 252, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '10', 10, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '11', 11, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '12', 12, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '13', 13, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '14', 14, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '15', 15, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '16', 16, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '17', 17, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '99', 18, 'A', 313, to_date('17-02-2012 15:57:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('78', '1', 1, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('78', '3', 2, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '001', 1, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '002', 2, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '003', 88, 'A', 313, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '004', 3, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '007', 8, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '008', 10, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 200 records committed...
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '009', 89, 'A', 313, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '010', 23, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '011', 24, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '012', 12, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '014', 15, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '015', 86, 'A', 313, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '016', 87, 'A', 313, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '101', 101, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '102', 102, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '103', 103, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '104', 104, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '107', 105, 'A', 252, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '108', 144, 'A', 252, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '109', 116, 'A', 252, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '201', 200, 'A', 252, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '202', 201, 'A', 252, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '203', 204, 'A', 252, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '204', 214, 'A', 252, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '205', 203, 'A', 252, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '207', 233, 'A', 252, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '028', 30009, 'A', 364, to_date('14-10-2011 14:19:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '024', 30042, 'A', 364, to_date('14-10-2011 09:19:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '036', 30039, 'A', 114, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '037', 30031, 'A', 114, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '040', 30082, 'A', 114, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '100', 40011, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '101', 40003, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '101', 40016, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '102', 40015, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23058, 'A', 364, to_date('21-02-2012 15:58:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '104', 40017, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '105', 40007, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '106', 40014, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '107', 40041, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '108', 40001, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '109', 40039, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '111', 40006, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '112', 40008, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '113', 40002, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '114', 40009, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '114', 40010, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '114', 40043, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '116', 40005, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '119', 40004, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '200', 50001, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '201', 50002, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23059, 'A', 364, to_date('21-02-2012 15:58:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '01', 8, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '02', 7, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '03', 1, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '04', 2, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '05', 3, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '06', 5, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '07', 4, 'A', 114, to_date('28-09-2011 15:12:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20161, 'A', 313, to_date('22-02-2012 12:22:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30128, 'A', 313, to_date('15-03-2012 17:07:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20015, 'A', 364, to_date('09-04-2012 09:48:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23068, 'A', 313, to_date('10-07-2012 11:18:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20001, 'A', 313, to_date('30-08-2012 11:40:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23071, 'A', 364, to_date('07-12-2012 12:10:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '108', 267, 'A', 313, to_date('20-12-2012 15:50:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '007', 323, 'A', 364, to_date('25-01-2013 15:43:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '08', 6, 'A', 114, to_date('28-09-2011 15:12:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '09', 11, 'A', 114, to_date('28-09-2011 15:12:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '10', 12, 'A', 114, to_date('28-09-2011 15:12:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '11', 9, 'A', 114, to_date('28-09-2011 15:12:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '12', 10, 'A', 114, to_date('28-09-2011 15:12:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '017', 30026, 'A', 364, to_date('14-10-2011 10:08:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '027', 30010, 'A', 364, to_date('14-10-2011 09:27:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '022', 30033, 'A', 364, to_date('14-10-2011 09:24:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '033', 30019, 'A', 364, to_date('13-10-2011 18:45:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20136, 'A', 364, to_date('14-10-2011 10:37:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 50008, 'A', 364, to_date('14-10-2011 10:39:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40024, 'A', 364, to_date('14-10-2011 10:39:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30006, 'A', 364, to_date('14-10-2011 10:44:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40030, 'A', 364, to_date('14-10-2011 10:45:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20077, 'A', 364, to_date('14-10-2011 10:45:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20071, 'A', 364, to_date('14-10-2011 10:46:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '103', 40023, 'A', 364, to_date('19-10-2011 12:07:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30040, 'A', 364, to_date('28-10-2011 15:32:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20165, 'A', 364, to_date('26-10-2011 10:55:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '004', 30007, 'A', 364, to_date('26-10-2011 15:46:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23009, 'A', 364, to_date('26-10-2011 16:13:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20179, 'A', 364, to_date('27-10-2011 11:32:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40019, 'A', 313, to_date('28-10-2011 12:27:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 10033, 'A', 364, to_date('28-10-2011 15:32:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23019, 'A', 313, to_date('28-10-2011 17:22:31', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '026', 30126, 'A', 364, to_date('09-11-2011 09:41:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30017, 'A', 364, to_date('09-11-2011 09:43:28', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('78', '3', 3, 'A', 313, to_date('06-12-2011 15:57:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23064, 'A', 313, to_date('25-04-2012 12:27:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '016', 256, 'A', 313, to_date('22-05-2012 13:00:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '016', 257, 'A', 313, to_date('22-05-2012 13:00:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23069, 'A', 364, to_date('13-07-2012 12:13:34', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 294 records loaded
prompt Loading SS_OK_ORG_BUSINESS_VOYAGE...
prompt Table is empty
prompt Loading SS_OK_PARTY...
insert into SS_OK_PARTY (PARTY_ID, PARTY_CODE, PARTY_ABBREVIATION, PARTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (261, 7, 'йук', 'йўк', 'A', 313, to_date('30-01-2012 18:11:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_PARTY (PARTY_ID, PARTY_CODE, PARTY_ABBREVIATION, PARTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (262, 4, 'АСДП', 'Ўзбекистон Республикаси "Адолат" социал-демократик партияси', 'A', 114, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_PARTY (PARTY_ID, PARTY_CODE, PARTY_ABBREVIATION, PARTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (263, 1, 'ХДП', 'Ўзбекистон Республикаси Халк Демократик партияси', 'A', 114, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_PARTY (PARTY_ID, PARTY_CODE, PARTY_ABBREVIATION, PARTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (264, 2, 'ФДП', 'Ўзбекистон Республикаси Фидокорлар Демократик парияси', 'A', 114, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_PARTY (PARTY_ID, PARTY_CODE, PARTY_ABBREVIATION, PARTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (265, 3, 'ЛДП', 'Тадбиркорлар ва ишбилармонлар харакати Ўзбекистон ЛДП', 'A', 313, to_date('01-02-2012 12:59:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_PARTY (PARTY_ID, PARTY_CODE, PARTY_ABBREVIATION, PARTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (266, 5, 'МТДП', 'Ўзбекистон Республикаси "Миллий тикланиш" демократик партияс', 'A', 114, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_PARTY (PARTY_ID, PARTY_CODE, PARTY_ABBREVIATION, PARTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (267, 6, 'ВТП', 'Ўзбекистон Республикаси "Ватан тараккиёти" партияси', 'A', 114, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 7 records loaded
prompt Loading SS_OK_PASSPORT_TYPE...
insert into SS_OK_PASSPORT_TYPE (PASSPORT_TYPE_CODE, PASSPORT_TYPE_NAME)
values (1, 'Паспорт');
insert into SS_OK_PASSPORT_TYPE (PASSPORT_TYPE_CODE, PASSPORT_TYPE_NAME)
values (2, 'Вид На Жительство');
insert into SS_OK_PASSPORT_TYPE (PASSPORT_TYPE_CODE, PASSPORT_TYPE_NAME)
values (3, 'Военный Билет');
commit;
prompt 3 records loaded
prompt Loading SS_OK_PENALTY...
insert into SS_OK_PENALTY (PENALTY_ID, PENALTY_CODE, PENALTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (221, 1, 'Хайфсан', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_PENALTY (PENALTY_ID, PENALTY_CODE, PENALTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (222, 2, 'ўртача ойлик иш хакининг 30 фоиз микдорида жарима', 'A', 114, to_date('28-09-2011 15:14:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_PENALTY (PENALTY_ID, PENALTY_CODE, PENALTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (223, 3, 'уртача ойлик иш хакининг 50 фоиз микдорида жарима', 'A', 114, to_date('28-09-2011 15:14:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_PENALTY (PENALTY_ID, PENALTY_CODE, PENALTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (224, 4, 'Эгаллаган лавозимидан озод этиш', 'A', 114, to_date('28-09-2011 15:14:27', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 4 records loaded
prompt Loading SS_OK_PERS_COL_DFLT...
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '09', 'ED.COD_VUZ_PRIM', 'C', 'Примечание', 'Примечание', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '10', 'ED.CURS', 'C', 'Курс', 'Курс', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '11', 'ED.FAKULTET', 'C', 'Факультет', 'Факультет', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '01', 'PP.BRANCH', 'C', 'МФО', 'МФО', 5, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '02', 'OK_SERVICE.GET_STATUSNAME(PP.STATUS_CODE)', 'C', 'Статус', 'Статус', 6, null, 'select to_char(status_code) id, status_name name from ss_ok_status', 'PP.STATUS_CODE');
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '03', 'OK_SERVICE.GET_DEPARTMENTNAME(PP.DEPARTMENT_CODE)', 'C', 'Отдел', 'Отдел', 9, null, 'select to_char(department_code) id, department_name name from ss_ok_department where state_notes=''A'' ', 'PP.DEPARTMENT_CODE');
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '04', 'OK_SERVICE.GET_POSTNAME(PP.POST_CODE)', 'C', 'Должность', 'Должность', 9, null, null, 'PP.POST_CODE');
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '05', 'OK_SERVICE.GET_SPECIALNAME(PP.SPECIAL_CODE)', 'C', 'Специализация', 'Специализация', 13, null, null, 'PP.SPECIAL_CODE');
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '06', 'PP.FAMILY', 'C', 'Фамилия', 'Фамилия', 20, null, null, 'PP.FAMILY');
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '07', 'PP.FIRST_NAME', 'C', 'Имя', 'Имя', 20, null, null, 'PP.FIRST_NAME');
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '08', 'PP.PATRONYMIC', 'C', 'Отчество', 'Отчество', 20, null, null, 'PP.PATRONYMIC');
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '09', 'OK_SERVICE.GET_GENDERNAME(PP.GENDER_CODE)', 'C', 'Пол', 'Пол', 3, null, 'select to_char(gender_code) id,gender_name name from ss_ok_gender', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '10', 'PP.BIRTHDAY', 'D', 'День рождения', 'День рожд.', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '11', 'OK_SERVICE.GET_REGIONNAME(PP.REGION_ID)', 'C', 'Место рождения (область)', 'Место рождения (обл)', 20, null, 'select region_id id,region_nam name from s_region', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '12', 'OK_SERVICE.GET_DISTRNAME(PP.DISTR)', 'C', 'Место рождения (город)', 'Место рождения (город)', 20, null, 'select distr id, distr_name name from s_distr', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '13', 'OK_SERVICE.GET_BIRTHPLACE(PP.BIRTHPLACE,PP.REGION_ID,PP.DISTR)', 'C', 'Место рождения (обл,город или не Узбекистан)', 'Место рождения', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '14', 'PP.BIRTHPLACE', 'C', 'Место рождения (иностр)', 'Место рождения (иностр)', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '15', 'OK_SERVICE.GET_NATIONALITYNAME(PP.NATIONALITY_CODE)', 'C', 'Национальность', 'Национальность', 10, null, 'select to_char(nationality_code) id, nationality_name name from ss_ok_nationality where state_notes=''A'' ', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '16', 'OK_SERVICE.GET_FAMILYSTATUSNAME(PP.FAMILY_STATUS_CODE)', 'C', 'Семейное положение', 'Семейное положение', 10, null, 'select family_status_code id, family_status_name name from ss_ok_family_status', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '17', 'OK_SERVICE.GET_REGTYPENAME(PP.REG_TYPE_CODE)', 'C', 'Тип прописки', 'Прописка', 10, null, 'select reg_type_code id, reg_type_name name from ss_ok_reg_type', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '18', 'OK_SERVICE.GET_REGIONNAME(PP.HOME_ADDRESS_REGION_ID)||'' ''||OK_SERVICE.GET_DISTRNAME(PP.HOME_ADDRESS_DISTR)||'' ''||PP.HOME_ADDRESS', 'C', 'Полный домашний адрес (прописка)', 'Полный домашний адрес (прописка)', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '19', 'OK_SERVICE.GET_REGIONNAME(PP.HOME_ADDRESSFACT_REGION_ID)||'' ''||OK_SERVICE.GET_DISTRNAME(PP.HOME_ADDRESSFACT_DISTR)||'' ''||PP.HOME_ADDRESSFACT', 'C', 'Фактическое место проживания', 'Фактическое место проживания', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '20', 'PP.PASS_SERIYA', 'C', 'Серия паспорта', 'Серия паспорта', 2, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '21', 'PP.PASS_NUM', 'C', 'Номер паспорта', 'N паспорта', 7, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '22', 'PP.PASS_DATE', 'D', 'Дата выдачи паспорта', 'Дата выдачи паспорта', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '23', 'PP.PASS_REG', 'C', 'Место выдачи паспорта', 'Место выдачи паспорта', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '24', 'OK_SERVICE.GET_REGPLACENAME(PP.REGPLACE_CODE)', 'C', 'Место выдачи паспорта (спр)', 'Место выдачи паспорта', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '27', 'PP.RECORD_BOOK_SERIES', 'C', 'Серия трудовой книжки', 'Серия трудовой книжки', 5, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '28', 'PP.RECORD_BOOK_NUMBER', 'C', 'Номер трудовой книжки', 'N трудовой книжки', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '29', 'PP.TELEFON', 'C', 'Телефон', 'Телефон', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '30', 'OK_SERVICE.GET_PROFMEMBERNAME(PP.PROFMEMBER)', 'C', 'Профсоюз', 'Профсоюз', 3, null, 'select profmember_code id, profmember_name name from ss_ok_profmember', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '31', 'OK_SERVICE.GET_EDUCATIONTITLENAME(PP.EDUCATION_TITLE_CODE)', 'C', 'Образование', 'Образование', 10, null, 'select to_char (EDUCATION_TITLE_CODE) id, EDUCATION_TITLE_NAME name from SS_OK_EDUCATION_TITLE', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '32', 'PP.TABNO', 'C', 'Табельный номер', 'Табельный номер', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '33', 'PP.NPS_ID', 'C', 'Пенсионный ИН', 'Пенсионный ИН', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '34', 'PP.INN', 'C', 'ИНН', 'ИНН', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('002', '01', 'OK_SERVICE.GET_ACADEMICNAME(AC.ACADEMIC_CODE)', 'C', 'Ученое звание', 'Ученое звание', 15, null, 'select to_char(academic_code) id, academic_name name from ss_ok_academic where state_notes=''A'' ', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('002', '02', 'AC.ACADEMIC_DATE', 'D', 'Дата получения ученого звания', 'Дата получения ученого звания', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('003', '01', 'AD.CHARACTER_ADDINFORM', 'C', 'Дополнительные сведения', 'Доп.сведения', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('003', '02', 'AD.ADDINFORM_DATE', 'D', 'Дата ввода дополнительных сведений', 'Дата ввода доп.сведений', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '01', 'ok_service.get_armytype(AR.ARMY_CODE)', 'C', 'Отношение к военной службе', 'Отношение к ВС', 20, null, 'select to_char(ARMY_code) id,ARMY_TYPE name from SS_OK_ARMY', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '02', 'ok_service.get_fitnessarmytype(AR.FITNESS_ARMY_CODE)', 'C', 'Годность к службе', 'Годность к ВС', 8, null, 'select to_char(FITNESS_ARMY_code) id,FITNESS_ARMY_TYPE name from SS_OK_ARMY', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '03', 'ok_service.get_staffname(AR.STAFF_CODE)', 'C', 'Вид состава', 'Вид состава', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '04', 'ok_service.get_typeforcename(AR.TYPE_FORCE_CODE)', 'C', 'Род войск', 'Род войск', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '05', 'ok_service.get_armygroupname(AR.ARMY_GROUP_CODE)', 'C', 'Группа учета', 'Гр.учета', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '06', 'ok_service.get_categoryarmyname(AR.CATEGORY_ARMY_CODE)', 'C', 'Категория учета', 'Категория учета', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '07', 'AR.SPECIAL_ARMY', 'C', 'Воинская Специальность', 'Воинская Спец-ть', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '08', 'ok_service.get_militaryrankname(AR.MILITARY_RANK_CODE)', 'C', 'Воинское звание', 'Воинское звание', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '09', 'AR.NUMBER_VUS', 'C', 'Номер военной учетной специальности (ВУС)', 'N ВУС', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '10', 'AR.CODE_ARMY_POST', 'C', 'Код должности и особые признаки военной службы', 'Код должности и особые признаки военной службы', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '11', 'AR.NAME_ARMY_OFFICE', 'C', 'Военкомат', 'Военкомат', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '12', 'AR.SPECREG_NUMBER', 'C', 'Состоит на спецучете N', 'Состоит на спецучете N', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('005', '01', 'AA.NUM_ATTESTATION', 'C', 'Номер удостоверения аттестации', 'N уд-я атт', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('005', '02', 'AA.DATE_ATTESTATION', 'D', 'Дата прохождения аттестации', 'Дата прохождения аттестации', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('006', '01', 'AW.AWARD_DATE', 'N', 'Дата получения награды(год)', 'Дата получения награды(год)', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('006', '02', 'AW.AWARD_INFO', 'C', 'Сведения о наградах', 'Сведения о наградах', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('007', '01', 'CH.FAMILY', 'C', 'Фамилия сотрудника', 'Фамилия сотрудника', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('007', '02', 'CH.FIRST_NAME', 'C', 'Имя сотрудника', 'Имя сотрудника', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('007', '03', 'CH.PATRONYMIC', 'C', 'Отчество сотрудника', 'Отчество сотрудника', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('007', '04', 'CH.CHANGE_DATE', 'D', 'Дата изменения ФИО', 'Дата изм.ФИО', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('007', '05', 'CH.CHANGE_MOTIVE', 'C', 'Причина изменения ФИО', 'Причина изменения ФИО', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('008', '01', 'CO.CONVICTIONS_MOTIVE', 'C', 'Причина привлечения', 'Причина привлечения', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('008', '02', 'CO.CONVICTIONS_DATE', 'D', 'Дата привлечения', 'Дата привлечения', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('009', '01', 'OK_SERVICE.GET_DEGREENAME(DE.DEGREE_CODE)', 'C', 'Ученая степень', 'Ученая степень', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('009', '02', 'DE.DEGREE_DATE', 'D', 'Дата получения ученой степени', 'Дата получения ученой степени', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '01', 'OK_SERVICE.GET_EDUCATIONNAME(ED.EDUCATION_CODE)', 'C', 'Образование', 'Образование', 11, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '02', 'OK_SERVICE.GET_BASISNAME(ED.BASIS_CODE)', 'C', 'Базовое образование', 'Базовое образование', 11, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '03', 'OK_SERVICE.GET_INSTITUTIONNAME(ED.INSTITUTION_CODE)', 'C', 'Учебное заведение', 'Учебное заведение', 11, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '04', 'ED.BEGIN_DATE', 'C', 'Дата поступления в учебное заведение', 'Дата поступления в учебное заведение', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '05', 'ED.END_DATE', 'C', 'Дата окончания учебного заведения', 'Дата окончания учебного заведения', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '06', 'ED.PROFESSION_PERSONAL', 'C', 'Специальность по диплому', 'Специальность по диплому', 12, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '07', 'OK_SERVICE.GET_QUALIFICATIONNAME(ED.QUALIFICATION_CODE)', 'C', 'Квалификация', 'Квалификация', 12, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '08', 'ED.DIPLOM_NUM', 'C', 'Номер диплома или удостоверения', 'N диплома', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '01', 'KU.FIO', 'C', 'ФИО', 'ФИО', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '12', 'ED.NOSTRA', 'C', 'Ностра', 'Ностра', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('011', '01', 'OK_SERVICE.GET_ELECTIONADDRESS(EL.ELECTION_CODE)', 'C', 'Адрес исполнительного органа', 'Адрес исполнительного органа', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('011', '02', 'OK_SERVICE.GET_ELECTIONNAME(EL.ELECTION_CODE)', 'C', 'Наименование исполнительного органа', 'Наименование исполнительного органа', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('011', '03', 'EL.ELECTION_POST', 'C', 'Кем был избран', 'Кем был избран', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('011', '04', 'EL.ELECTION_DATE_BEGIN', 'C', 'Дата избрания', 'Дата избрания', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('011', '05', 'EL.ELECTION_DATE_END', 'C', 'Дата окончания срока избрания', 'Дата окончания срока избрания', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('012', '01', 'OK_SERVICE.GET_LANGUAGENAME(LA.LANGUAGE_CODE)', 'C', 'Ин.Яз.', 'Ин.Яз.', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('012', '02', 'OK_SERVICE.GET_LEVELNAME(LA.LEVEL_CODE)', 'C', 'Ур.знания Ин.Яз.', 'Ур.знания Ин.Яз.', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '01', 'OK_SERVICE.GET_LEAVENAME(LE.LEAVE_CODE)', 'C', 'Вид отпуска', 'Вид отпуска', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '02', 'LE.BEGIN_YEAR', 'D', 'Рабочий год-начало', 'Рабочий год-начало', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '03', 'LE.END_YEAR', 'D', 'Рабочий год-окончание', 'Рабочий год-окончание', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '04', 'LE.PERIOD_LEAVE', 'C', 'Количество дней отпуска', 'Количество дней отпуска', 3, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '05', 'LE.DATE_IN_LEAVE', 'D', 'Дата выхода в отпуск', 'Дата выхода в отпуск', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '06', 'LE.DATE_OUT_LEAVE', 'D', 'Дата выхода из отпуска', 'Дата выхода из отпуска', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '07', 'LE.MOTIVE_LEAVE', 'C', 'Причина/основание выхода в отпуск', 'Причина/основание выхода в отпуск', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '08', 'LE.NUM_BASIS', 'C', 'Номер приказа/основания', 'Номер приказа/основания', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '09', 'LE.DATE_BASIS', 'D', 'Дата приказа/основания', 'Дата приказа/основания', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '01', 'OK_SERVICE.GET_PARTYNAME(PA.PARTY_CODE)', 'C', 'Партия', 'Партия', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '02', 'PA.OUT_PARTY', 'C', 'Причина выхода из партии', 'Причина выхода из партии', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '03', 'PA.PARTY_DATE', 'C', 'Год вступления в партию', 'Год вступления в партию', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '04', 'PA.PARTY_OUTDATE', 'C', 'Год выхода из партии', 'Год выхода из партии', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '05', 'PA.PUNISHMENT_MOTIVE', 'C', 'Причина партийного наказания', 'Причина партийного наказания', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '06', 'PA.PUNISHMENT_DATE', 'C', 'Дата партийного наказания', 'Дата партийного наказания', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('015', '01', 'OK_SERVICE.GET_PENALTYNAME(PE.PENALTY_CODE)', 'C', 'Взыскание', 'Взыскание', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('015', '02', 'PE.PENALTY_MOTIVE', 'C', 'Причина Взыскания', 'Причина Взыскания', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('015', '03', 'PE.PENALTY_DATE', 'D', 'Дата получения Взыскания', 'Дата получения Взыскания', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('015', '04', 'PE.PENALTY_NUM', 'C', 'Номер протокола', 'N протокола', 5, null, null, null);
commit;
prompt 100 records committed...
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '01', 'PR.IN_OFFICE_DATE', 'D', 'Дата поступления', 'Дата поступления', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '02', 'PR.OUT_OFFICE_DATE', 'D', 'Дата увольнения', 'Дата увольнения', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '03', 'PR.OFFICE_NAME', 'C', 'Наименование организации', 'Наименование организации', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '04', 'PR.OFFICE_ADDRESS', 'C', 'Адрес организации', 'Адрес организации', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '05', 'PR.ESTABLISHED_POST', 'C', 'Занимаемая должность', 'Занимаемая должность', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '06', 'OK_SERVICE.GET_TYPEPERIODNAME(PR.TYPE_PERIOD_CODE)', 'C', 'Тип стажа', 'Тип стажа', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '07', 'OK_SERVICE.GET_ARTICLENAME(PR.ARTICLE_CODE)', 'C', 'Номер статьи', 'Номер статьи', 7, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '08', 'PR.BASIS_NUM', 'C', 'Номер приказа/основания', 'Номер приказа/основания', 7, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '09', 'PR.BASIS_DATE', 'D', 'Дата приказа/основания', 'Дата приказа/основания', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '10', 'OK_SERVICE.GET_BASEMOVENAME(PR.BASE_MOVE_CODE)', 'C', 'Причина перемещения', 'Причина перемещения', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '11', 'ESTABLISHED_DEPARTMENT', 'C', 'Наименование отдела', 'Наименование отдела', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('017', '01', 'OK_SERVICE.GET_YOUTHNAME(YO.YOUTH_CODE)', 'C', 'Молодежная организация', 'Молодежная организация', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('017', '02', 'YO.IN_DATE', 'D', 'Дата вступления', 'Дата вступления', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('017', '03', 'YO.OUT_DATE', 'D', 'Дата выхода', 'Дата выхода', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('018', '01', 'PM.PREMIUM_DATE', 'C', 'Дата получения премии', 'Дата получения премии', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('018', '02', 'PM.PREMIUM_NAME', 'C', 'Наименование премии', 'Наименование премии', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '01', 'OK_SERVICE.GET_RELATIONNAME(RE.RELATION_CODE)', 'C', 'Родственное отношение', 'Родственное отношение', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '02', 'RE.RELATION_FAMILY', 'C', 'Фамилия родственника', 'Фамилия родственника', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '03', 'RE.RELATION_NAME', 'C', 'Имя родственника', 'Имя родственника', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '04', 'RE.RELATION_PATRONYMIC', 'C', 'Отчество родственника', 'Отчество родственника', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '05', 'RE.RELATION_BIRTHDAY', 'C', 'Год рождения родственника', 'Год рождения родственника', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '06', 'RE.RELATION_BIRTHPLACE', 'C', 'Место рождения родственника', 'Место рождения родственника', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '07', 'RE.RELATION_OFFICE', 'C', 'Место работы родственника', 'Место работы родственника', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '08', 'RE.RELATION_POST', 'C', 'Занимаемая должность родственника', 'Занимаемая должность родственника', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '09', 'RE.RELATION_HOME_ADDRESS', 'C', 'Место жительства родственника', 'Место жительства родственника', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('020', '01', 'RI.RISE_DATE_YEAR', 'C', 'Год прохождения повышения квалификации', 'Год прохождения повышения квалификации', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('020', '02', 'RI.RISE_INFO', 'C', 'Сведения о повышении квалификации', 'Сведения о повышении квалификации', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('021', '01', 'SC.SCIENTIFIC_INFO', 'C', 'Сведения о научной работе', 'Сведения о научной работе', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('021', '02', 'SC.SCIENTIFIC_DATE', 'C', 'Дата написания н.р.(год)', 'Дата написания н.р.(год)', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('022', '01', 'VO.VOYAGE_DATE', 'C', 'Дата выезда(год)', 'Дата выезда(год)', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('022', '02', 'VO.VOYAGE_LAND', 'C', 'Страна выезда', 'Страна выезда', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('022', '03', 'VO.VOYAGE_INFO', 'C', 'Сведения о зарубежной поездке', 'Сведения о зарубежной поездке', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '02', 'KU.KV_KURS_CODE', 'N', 'Код курсов', 'Код курсов', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '03', 'KUKU.KV_KURS_NAME', 'C', 'Наименование', 'Наименование', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '04', 'KUKU.KV_ORGANIZER', 'C', 'Организатор', 'Организатор', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '05', 'KUKU.KV_PLACE', 'C', 'Место проведения', 'Место проведения', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '06', 'ok_service.GET_S_STR(KUKU.CODE_STR)', 'C', 'Страна', 'Страна', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '07', 'KUKU.KV_NUMBER_PERS', 'C', 'Количество участников', 'Количество участников', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '08', 'KUKU.DATE_OPEN', 'D', 'Начало', 'дата Начало', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '09', 'KUKU.DATE_CLOSE', 'D', 'Завершение', 'Завершение', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '10', 'KUKU.NUMBER_DAY', 'C', 'Кол-во дней', 'Кол-во дней', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '11', 'KUKU.PAY_SUM', 'C', 'Оплата за помещение или тренинг', 'Оплата за помещение или тренинг', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '12', 'KUKU.PAY_SUM_TRENER', 'C', 'Оплата тренерам', 'Оплата тренерам', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '13', 'KUKU.ORDER_NUM', 'C', 'Номер приказа', 'Номер приказа', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '14', 'KUKU.ORDER_DATE', 'D', 'Дата приказа', 'Дата приказа', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '15', 'ok_service.GET_PROFMEMBERNAME(KUKU.ORDER_BUSINESS_VOYAGE)', 'C', 'Командировка', 'Командировка', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '16', 'ok_service.GET_ORG_BUSINESS_VOYAGE(KUKU.ORG_BUSINESS_VOYAGE_CODE)', 'C', 'Организатор командировки', 'Организатор командировки', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '17', 'ok_service.GET_THEME_BUSINESS_VOYAGE(KUKU.THEME_BUSINESS_VOYAGE_CODE)', 'C', 'Тема командировки', 'Тема командировки', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '18', 'KUKU.PRIM', 'C', 'Примечание', 'Примечание', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '01', 'ok_service.get_hospital(HO.HOSPITAL_CODE)', 'C', 'Вид', 'Вид', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '02', 'HO.HOSPITAL_DOC', 'C', 'номер', 'номер', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '03', 'HO.DATE_OPEN', 'D', 'Дата открытия', 'Дата открытия', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '04', 'HO.DATE_CLOSE', 'D', 'Дата закрытия', 'Дата закрытия', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '05', 'HO.NUMBER_DAY', 'C', 'Кол-во дней', 'Кол-во дней', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '06', 'HO.WORK_PERIOD', 'C', 'стаж', 'стаж', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '07', 'HO.PERCENTAGE', 'C', 'Процент', 'Процент', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '08', 'HO.DIAGNOSIS', 'C', 'Диагноз', 'Диагноз', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '09', 'HO.DATE_HOSPITAL', 'D', 'дата выдачи больничного', 'дата выдачи больничного', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '10', 'HO.PRIM_HOSPITAL', 'C', 'место выдачи больничного', 'место выдачи больничного', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '11', 'HO.SHIFR', 'C', 'Шифр', 'Шифр', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '12', 'HO.PRIM', 'C', 'Примечание', 'Примечание', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('025', '01', 'OK_SERVICE.get_PRIVILEGE(PI.PRIVILEGE_CODE)', 'C', 'Вид льготы', 'Вид льготы', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('025', '02', 'PI.PRIVILEGE_DOC', 'C', 'Документ-основание льготы', 'Документ-основание льготы', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '03', 'II.RAZN', 'C', 'Сумма', 'Сумма', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '25', 'PP.PASS_DATE_END', 'D', 'Паспорт Действителен До', 'Паспорт Действителен До', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('025', '03', 'PI.DATE_OPEN', 'D', 'Дата начала действия', 'Дата начала действия', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('025', '04', 'PI.DATE_CLOSE', 'D', 'Дата завершения действия', 'Дата завершения действия', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('025', '05', 'PI.PRIM', 'C', 'Примечание', 'Примечание', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '01', 'ok_service.GET_INCREASE(II.INCREASE_CODE)', 'C', 'Вид надбавки', 'Вид надбавки', 100, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '02', 'II.INCREASE_PERCENTAGE', 'C', 'Процент', 'Процент', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '04', 'II.DATE_OPEN', 'D', 'Дата начала', 'Дата начала', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '05', 'II.DATE_CLOSE', 'D', 'Дата окончания', 'Дата окончания', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '06', 'II.ORDER_NUM', 'C', 'Номер приказа', 'Номер приказа', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '07', 'II.ORDER_DATE', 'D', 'Дата приказа', 'Дата приказа', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '08', 'II.PRIM', 'C', 'Примечание', 'Примечание', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '01', 'ok_service.GET_KV_KURS(BV.KV_KURS_CODE)', 'C', 'Курс', 'Курс', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '02', 'BV.DATE_OPEN', 'D', 'Дата открытия', 'Дата открытия', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '03', 'BV.DATE_CLOSE', 'D', 'Дата закрытия', 'Дата закрытия', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '04', 'BV.NUMBER_DAY', 'C', 'Кол-во дней', 'Кол-во дней', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '05', 'ok_service.GET_ORG_BUSINESS_VOYAGE(BV.ORG_BUSINESS_VOYAGE_CODE)', 'C', 'Организатор', 'Организатор', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '06', 'ok_service.GET_THEME_BUSINESS_VOYAGE(BV.THEME_BUSINESS_VOYAGE_CODE)', 'C', 'Тема', 'Тема', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '07', 'ok_service.GET_S_STR(BV.CODE_STR)', 'C', 'Страна', 'Страна', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '08', 'BV.ORDER_NUM', 'C', 'Номер приказа', 'Номер приказа', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '09', 'BV.ORDER_DATE', 'D', 'Дата приказа', 'Дата приказа', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '10', 'BV.PRIM', 'C', 'Примечание', 'Примечание', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '26', 'PP.PASS_DATE_END', 'D', 'Паспорт Действителен До', 'Паспорт Действителен До', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '13', 'ED.NOSTRA_SERIES', 'C', 'серия Ностра', 'серия Ностра', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '14', 'ED.NOSTRA_NUMBER', 'C', 'номер Ностра', 'номер Ностра', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '15', 'ED.NOSTRA_DATE', 'C', 'дата Ностра', 'дата Ностра', 10, null, null, null);
commit;
prompt 189 records loaded
prompt Loading SS_OK_PERS_QUERY...
prompt Table is empty
prompt Loading SS_OK_PERS_QUERY_COL...
prompt Table is empty
prompt Loading SS_OK_POST...
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3948, 319, '2-тоифали мутахассис-телефонист', 1, 'A', 364, to_date('28-01-2013 15:27:04', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3969, 320, 'шуъба мудири-врач', 1, 'A', 364, to_date('28-01-2013 15:28:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3970, 321, '1-тоифали мутахассис-хамшира', 1, 'A', 364, to_date('28-01-2013 15:28:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4071, 181, 'кассир в.б.', 2, 'A', 313, to_date('28-01-2013 17:14:59', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4141, 190, 'ички назорат бўйича етакчи мутахассиси', 2, 'A', 313, to_date('28-01-2013 17:16:12', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4142, 191, 'ички назорат бўйича бош мутахассиси', 2, 'A', 313, to_date('28-01-2013 17:16:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4143, 192, 'якуний назорат бўйича етакчи мутахассиси', 2, 'A', 313, to_date('28-01-2013 17:33:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4144, 193, 'якуний назорат бўйича бош мутахассиси', 2, 'A', 313, to_date('28-01-2013 17:33:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4208, 197, 'ўт ёкувчи', 2, 'A', 313, to_date('30-11-2011 12:06:52', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4308, 273, 'халкаро пул утказмалари буйича мутахассис', 3, 'A', 313, to_date('28-01-2013 18:14:42', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4330, 328, 'кредит кўмитаси котиби', 1, 'A', 364, to_date('28-01-2013 15:37:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4349, 198, 'назоратчи-кассири', 2, 'A', 313, to_date('28-01-2013 16:05:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4350, 199, 'назоратчи', 2, 'A', 313, to_date('28-01-2013 16:05:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4369, 274, 'назоратчи', 3, 'A', 313, to_date('28-01-2013 18:14:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4388, 275, 'юрисконсульти', 3, 'A', 313, to_date('28-01-2013 18:14:59', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4408, 276, 'ички назорат буйича бош мутахассиси', 3, 'A', 313, to_date('28-01-2013 18:15:08', 'dd-mm-yyyy hh24:mi:ss'), 2, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4409, 277, 'ички назорат буйича етакчи мутахассиси', 3, 'A', 313, to_date('28-01-2013 18:15:31', 'dd-mm-yyyy hh24:mi:ss'), 2, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3872, 310, 'иш юритувчи-оператор', 1, 'A', 364, to_date('28-01-2013 15:17:53', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3892, 315, 'кассир-кечки касса', 1, 'A', 364, to_date('28-01-2013 15:22:27', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4028, 173, 'бош бухгалтер в.б.', 2, 'A', 313, to_date('28-01-2013 17:13:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4029, 174, 'бош бухгалтер ўринбосари в.б.', 2, 'A', 313, to_date('28-01-2013 17:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4030, 175, 'бош мутахассис в.б.', 2, 'A', 313, to_date('28-01-2013 17:13:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4031, 176, 'етакчи мутахассис в.б.', 2, 'A', 313, to_date('28-01-2013 17:13:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4032, 177, '1-тоифали мутахассис в.б.', 2, 'A', 313, to_date('28-01-2013 17:14:07', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4034, 244, 'филиал бошкарувчи ўринбосари в.б.', 3, 'A', 313, to_date('28-01-2013 17:59:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4035, 245, 'бўлим бошлиги в.б.', 3, 'A', 313, to_date('28-01-2013 17:59:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4036, 246, 'бош бухгалтер в.б.', 3, 'A', 313, to_date('28-01-2013 18:00:02', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4038, 247, 'бош бухгалтер ўринбосари в.б.', 3, 'A', 313, to_date('28-01-2013 18:00:17', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4039, 248, 'минибанк мудири в.б.', 3, 'A', 313, to_date('28-01-2013 18:01:37', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4040, 178, 'минибанк мудири в.б.', 2, 'A', 313, to_date('28-01-2013 17:14:19', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4041, 249, 'бош мутахассиси в.б.', 3, 'A', 313, to_date('28-01-2013 17:38:30', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4042, 250, 'етакчи мутахассиси в.б.', 3, 'A', 313, to_date('28-01-2013 18:01:46', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4043, 251, '1- тоифали мутахассиси в.б.', 3, 'A', 313, to_date('28-01-2013 18:02:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4044, 252, 'шўъба мудири в.б.', 3, 'A', 313, to_date('28-01-2013 18:02:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4168, 195, 'бошкарувчи ўринбосари-бўлим бошлиги', 2, 'A', 313, to_date('28-01-2013 17:34:02', 'dd-mm-yyyy hh24:mi:ss'), 2, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4188, 196, 'юрисконсульт', 2, 'A', 364, to_date('29-11-2011 16:42:43', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4248, 327, 'Бошкарув раиси ўринбосари вазифасини бажарувчи', 1, 'P', 364, to_date('28-01-2013 15:37:00', 'dd-mm-yyyy hh24:mi:ss'), 2, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3988, 168, 'котиба-машинистка', 2, 'P', 313, to_date('28-01-2013 16:54:36', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4049, 179, 'мутахассис в.б.', 2, 'A', 313, to_date('28-01-2013 17:14:30', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4050, 180, 'валюта айирбошлаш шохобчаси кассири в.б.', 2, 'A', 313, to_date('28-01-2013 17:14:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4051, 253, 'валюта айирбошлаш шохобчаси кассири в.б.', 3, 'A', 313, to_date('28-01-2013 18:02:51', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4140, 189, 'пул муомаласи бўйича етакчи мутахассиси', 2, 'A', 313, to_date('28-01-2013 17:15:55', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4149, 267, 'шўъба мудири', 3, 'A', 313, to_date('28-01-2013 18:11:25', 'dd-mm-yyyy hh24:mi:ss'), 2, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4150, 194, 'шўъба мудири', 2, 'A', 313, to_date('28-01-2013 17:33:41', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4288, 269, 'юрисконсульт-1 тоифали мутахассиси', 3, 'A', 313, to_date('28-01-2013 18:13:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4289, 270, 'пул муомаласи бўйича бош мутахассиси', 3, 'A', 313, to_date('28-01-2013 18:14:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4290, 271, 'валюта айирбошлаш шохобчаси назоратчиси', 3, 'A', 313, to_date('28-01-2013 18:14:19', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4292, 272, 'назоратчи-кассири', 3, 'A', 313, to_date('28-01-2013 18:14:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4448, 400, 'хужалик мудири (етакчи мутахассис)', 2, 'A', 313, to_date('28-01-2013 17:36:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4449, 401, 'хужалик мудири (бош мутахассис)', 2, 'A', 313, to_date('28-01-2013 17:37:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4450, 278, 'бош мутахассис-булим бошлиги уринбосари', 3, 'A', 313, to_date('28-01-2013 18:17:32', 'dd-mm-yyyy hh24:mi:ss'), 2, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3888, 311, 'кассир (кирим)', 1, 'P', 364, to_date('28-01-2013 15:20:49', 'dd-mm-yyyy hh24:mi:ss'), 1, 19, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3889, 312, 'кассир (кирим омонат)', 1, 'A', 364, to_date('28-01-2013 15:19:16', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3890, 313, 'кассир (чиким)', 1, 'A', 364, to_date('28-01-2013 15:20:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3648, 1, 'Бошкарув раиси', 1, 'A', 313, to_date('28-01-2013 12:23:12', 'dd-mm-yyyy hh24:mi:ss'), 2, 1, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3649, 2, 'Бошкарув раиси биринчи  ўринбосари', 1, 'A', 313, to_date('28-01-2013 12:23:27', 'dd-mm-yyyy hh24:mi:ss'), 2, 3, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3650, 3, 'Бошкарув раиси ўринбосари', 1, 'A', 313, to_date('28-01-2013 12:23:37', 'dd-mm-yyyy hh24:mi:ss'), 2, 5, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3651, 4, 'раиc ёрдамчиси', 1, 'A', 313, to_date('28-01-2013 12:23:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3652, 5, 'банк Кенгаши котиби', 1, 'A', 313, to_date('28-01-2013 12:24:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3653, 6, 'раис котиби', 1, 'P', 364, to_date('28-01-2013 14:12:14', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3654, 7, 'марказ директори', 1, 'A', 364, to_date('28-01-2013 14:15:39', 'dd-mm-yyyy hh24:mi:ss'), 2, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3655, 8, 'бошкарма бошлиги', 1, 'A', 313, to_date('28-01-2013 12:25:02', 'dd-mm-yyyy hh24:mi:ss'), 2, 7, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3656, 9, 'бошкарма бошлиги-бош бухгалтер', 1, 'P', 364, to_date('28-01-2013 14:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2, 19, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3657, 10, 'бошкарма бошлиги  ўринбосари', 1, 'A', 313, to_date('28-01-2013 12:25:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3658, 11, 'бошкарма бошлиги-бўлим бошлиги', 1, 'P', 364, to_date('28-01-2013 14:14:26', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3659, 12, 'бўлим бошлиги', 1, 'A', 313, to_date('28-01-2013 12:25:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3660, 13, 'кичик бўлим бошлиги', 1, 'P', 364, to_date('28-01-2013 14:14:32', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3661, 14, 'сектор мудири', 1, 'P', 364, to_date('28-01-2013 14:17:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 19, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3662, 15, 'минибанк бошлиги', 1, 'P', 364, to_date('28-01-2013 14:15:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 19, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3663, 16, 'бош мутахассиси', 1, 'A', 313, to_date('28-01-2013 12:25:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3664, 17, 'етакчи мутахассиси', 1, 'A', 313, to_date('28-01-2013 12:26:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3665, 18, '1 тоифали мутахассиси', 1, 'A', 313, to_date('28-01-2013 12:26:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3666, 19, '2 тоифали мутахассиси', 1, 'P', 364, to_date('28-01-2013 14:21:06', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3667, 20, 'мутахассиси', 1, 'A', 313, to_date('28-01-2013 12:26:30', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3668, 21, 'шогирди', 1, 'P', 364, to_date('28-01-2013 14:21:16', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3669, 22, 'бўлим бошлиги-бош бухгалтер', 1, 'P', 364, to_date('28-01-2013 14:23:14', 'dd-mm-yyyy hh24:mi:ss'), 2, 19, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3670, 23, 'бош бухгалтер', 1, 'A', 364, to_date('28-01-2013 14:23:31', 'dd-mm-yyyy hh24:mi:ss'), 2, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3671, 24, 'бош бухгалтер ўринбосари', 1, 'A', 313, to_date('28-01-2013 12:27:20', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3672, 25, 'бўлим бошлиги - бош бухгалтер ўринбосари', 1, 'P', 364, to_date('28-01-2013 14:24:06', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3673, 26, 'бухгалтер-назоратчи', 1, 'A', 364, to_date('28-01-2013 14:25:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3674, 27, 'касса мудири', 1, 'A', 364, to_date('28-01-2013 14:26:19', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3675, 28, 'назоратчи-кассири', 1, 'A', 364, to_date('28-01-2013 14:27:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3676, 29, 'катта кассири', 1, 'A', 364, to_date('28-01-2013 14:29:04', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3677, 30, '1 тоифали  кассири', 1, 'P', 364, to_date('28-01-2013 14:29:09', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3678, 31, 'кассири', 1, 'A', 364, to_date('28-01-2013 14:29:28', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3679, 32, 'кечки касса кассири', 1, 'P', 364, to_date('28-01-2013 14:31:53', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3680, 33, 'экспедиция мудири', 1, 'P', 364, to_date('28-01-2013 14:31:57', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3681, 34, 'экспедитори', 1, 'P', 364, to_date('28-01-2013 14:32:03', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3682, 35, 'архивариуси', 1, 'P', 364, to_date('28-01-2013 14:32:07', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3683, 36, 'нусха кўчириш оператори', 1, 'P', 364, to_date('28-01-2013 14:32:51', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3684, 37, '1 даражали телетайписти', 1, 'P', 364, to_date('28-01-2013 14:33:06', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3685, 38, 'раис ўринбосари котибаси', 1, 'P', 364, to_date('28-01-2013 14:33:27', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3686, 39, 'котиба-иш юритувчи', 1, 'P', 364, to_date('28-01-2013 14:33:31', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3687, 40, 'курьер-иш юритувчи', 1, 'P', 364, to_date('28-01-2013 14:34:01', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3688, 41, '1 тоифали иш юритувчи котибаси', 1, 'P', 364, to_date('28-01-2013 14:34:06', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3689, 42, '1 тоифали машинистка', 1, 'P', 364, to_date('28-01-2013 14:34:09', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3690, 43, 'рухсатномалар бўйича мутахассиси', 1, 'A', 364, to_date('28-01-2013 14:35:14', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3691, 44, 'бош электрик', 1, 'P', 364, to_date('28-01-2013 14:35:36', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3692, 45, 'электрик', 1, 'A', 364, to_date('28-01-2013 14:36:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3693, 46, 'сантехник', 1, 'A', 364, to_date('28-01-2013 14:36:08', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
commit;
prompt 100 records committed...
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3694, 47, 'хайдовчи', 1, 'A', 364, to_date('28-01-2013 14:41:37', 'dd-mm-yyyy hh24:mi:ss'), 1, 17, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3695, 48, '1 тоифали алокачи-телефонист', 1, 'P', 364, to_date('28-01-2013 14:43:02', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3696, 49, 'фарроши', 1, 'A', 364, to_date('28-01-2013 14:44:10', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3697, 50, 'богбони', 1, 'A', 364, to_date('28-01-2013 14:44:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 17, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3698, 51, 'ёрдамчи ишчи', 1, 'A', 364, to_date('28-01-2013 14:45:02', 'dd-mm-yyyy hh24:mi:ss'), 1, 17, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3699, 52, 'пункт мудири', 1, 'P', 364, to_date('28-01-2013 14:45:06', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3700, 53, 'хамшираси', 1, 'P', 364, to_date('28-01-2013 15:29:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 19, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3701, 54, 'дам олиш маскани бошлиги', 1, 'A', 364, to_date('28-01-2013 14:47:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3702, 55, 'коровул', 1, 'A', 364, to_date('28-01-2013 14:47:27', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3703, 56, 'ишчи (мавсумий)', 1, 'A', 364, to_date('28-01-2013 14:48:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3704, 57, 'марказ бошлиги ўринбосари', 1, 'A', 364, to_date('28-01-2013 14:48:45', 'dd-mm-yyyy hh24:mi:ss'), 2, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3705, 58, 'кассир-инкассатор', 1, 'A', 364, to_date('28-01-2013 14:50:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3706, 59, 'бош бошкарма бошлиги', 1, 'P', 364, to_date('28-01-2013 14:50:36', 'dd-mm-yyyy hh24:mi:ss'), 2, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3707, 60, 'бош бошкарма бошлиги уринбосари-махсус бошкарма бошлиги', 1, 'P', 364, to_date('28-01-2013 14:50:42', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3708, 61, 'бухгалтер-кассири', 1, 'P', 364, to_date('28-01-2013 14:50:56', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3709, 62, '1  тоифали мутахассис-хукукшунос', 1, 'P', 364, to_date('28-01-2013 14:51:09', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3710, 63, 'нухса кўчирувчи-курьер', 4, 'A', 114, to_date('28-09-2011 15:12:21', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3711, 64, '1 тоифали иш юритувчи', 1, 'P', 364, to_date('28-01-2013 14:51:14', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3712, 65, '1 тоифали оператори', 1, 'P', 364, to_date('28-01-2013 14:51:19', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3713, 66, 'оператори', 1, 'P', 364, to_date('28-01-2013 14:51:24', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3714, 67, '1 тоифали телетайпист-иш юритувчи', 1, 'P', 364, to_date('28-01-2013 14:51:29', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3715, 68, 'иш юритувчи', 1, 'A', 364, to_date('28-01-2013 14:55:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3716, 69, 'бошкарма бошлиги-бўлим бошлиги', 1, 'P', 364, to_date('28-01-2013 14:55:06', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3717, 70, 'маънавият таргибот ишлари буйича бош мутахассиси', 1, 'P', 364, to_date('28-01-2013 14:55:12', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3718, 71, 'бош бошкарма бошлиги уринбосари-бошкарма бошлиги', 1, 'P', 364, to_date('28-01-2013 14:55:16', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3719, 72, 'директор ўринбосари', 1, 'P', 364, to_date('28-01-2013 14:57:16', 'dd-mm-yyyy hh24:mi:ss'), 2, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3720, 73, 'ўринбосари - бошкарма бошлиги', 1, 'P', 364, to_date('28-01-2013 14:59:06', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3721, 74, 'етакчи мутахассис-ахборот узатувчи', 1, 'P', 364, to_date('28-01-2013 15:00:10', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3722, 75, '1 тоифали мутахассис-ахборот узатувчи', 1, 'A', 364, to_date('30-11-2012 18:11:23', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3723, 76, 'бош бошкарма бошлиги ўринбосари', 1, 'P', 364, to_date('28-01-2013 15:00:28', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3724, 77, 'бош мухандиси', 1, 'P', 364, to_date('28-01-2013 15:00:31', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3725, 78, 'етакчи мухандиси', 1, 'P', 364, to_date('28-01-2013 15:00:40', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3726, 79, '1 тоифали мухандиси', 1, 'P', 364, to_date('28-01-2013 15:01:34', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3727, 80, 'мухандиси', 1, 'P', 364, to_date('28-01-2013 15:01:38', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3728, 81, 'микроавтобус хайдовчиси', 1, 'P', 364, to_date('28-01-2013 15:01:42', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3729, 82, 'автобус хайдовчиси', 1, 'P', 364, to_date('28-01-2013 15:01:46', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3730, 83, 'хайдовчи слесарь', 1, 'P', 364, to_date('28-01-2013 15:01:51', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3731, 84, '1 тоифали иш юритувчи-оператор', 1, 'P', 364, to_date('28-01-2013 15:02:05', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3732, 85, 'енгил автомобиль хайдовчиси', 1, 'P', 364, to_date('28-01-2013 15:02:47', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3733, 86, 'ички аудит хизмати бош мутахассиси', 1, 'A', 364, to_date('28-01-2013 15:08:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3734, 87, 'охирги назорат бўйича маъсул ходим', 1, 'P', 364, to_date('28-01-2013 15:05:39', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3735, 88, 'Амалиёт бошкармаси бошлиги', 1, 'A', 364, to_date('28-01-2013 15:05:49', 'dd-mm-yyyy hh24:mi:ss'), 2, 6, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3736, 89, 'Амалиёт бошкармаси бош бухгалтери', 1, 'A', 364, to_date('28-01-2013 15:05:59', 'dd-mm-yyyy hh24:mi:ss'), 2, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3737, 90, 'сектор мудири', 2, 'P', 313, to_date('28-01-2013 16:55:46', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3738, 91, 'ички назоратни мувофиклаштириш буйича бош мутахассиси', 3, 'A', 313, to_date('28-01-2013 17:38:43', 'dd-mm-yyyy hh24:mi:ss'), 2, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3739, 92, 'якуний назорат бўйича бош мутахассиси', 1, 'A', 364, to_date('28-01-2013 15:08:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3740, 93, 'кирим кассири (омонат)', 1, 'P', 364, to_date('28-01-2013 15:09:26', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3741, 94, 'кирим кассири', 1, 'P', 364, to_date('28-01-2013 15:09:33', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3742, 95, 'чиким кассири (омонат)', 1, 'P', 364, to_date('28-01-2013 15:09:59', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3743, 96, 'чиким кассири', 1, 'P', 364, to_date('28-01-2013 15:10:32', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3744, 97, 'махсус касса назоратчи-кассири', 1, 'A', 364, to_date('28-01-2013 15:11:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3745, 98, 'махсус касса кассири', 1, 'A', 364, to_date('28-01-2013 15:11:11', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3746, 99, 'ички назорат  бўйича бош мутахассиси', 1, 'A', 364, to_date('28-01-2013 15:11:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3747, 100, 'марказ бошлиги', 1, 'A', 364, to_date('28-01-2013 15:12:26', 'dd-mm-yyyy hh24:mi:ss'), 2, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3748, 101, 'бошкарма бошлиги', 2, 'A', 313, to_date('28-01-2013 12:30:12', 'dd-mm-yyyy hh24:mi:ss'), 2, 6, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3749, 102, 'бошкарма бошлиги ўринбосари', 2, 'A', 313, to_date('28-01-2013 12:30:18', 'dd-mm-yyyy hh24:mi:ss'), 2, 7, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3750, 103, 'бош бухгалтер', 2, 'A', 313, to_date('28-01-2013 12:30:25', 'dd-mm-yyyy hh24:mi:ss'), 2, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3751, 104, 'бош бухгалтер ўринбосари', 2, 'A', 313, to_date('28-01-2013 12:30:34', 'dd-mm-yyyy hh24:mi:ss'), 2, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3752, 105, 'бўлим бошлиги', 2, 'A', 313, to_date('28-01-2013 12:30:48', 'dd-mm-yyyy hh24:mi:ss'), 2, 10, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3753, 106, 'бош мутахассиси', 2, 'A', 313, to_date('28-01-2013 12:31:12', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3754, 112, 'етакчи мутахассиси', 2, 'A', 313, to_date('28-01-2013 12:31:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3755, 113, '1 тоифали мутахассиси', 2, 'A', 313, to_date('28-01-2013 12:31:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3756, 114, '2 тоифали мутахассиси', 2, 'A', 313, to_date('28-01-2013 17:00:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3757, 115, 'мутахассиси', 2, 'A', 313, to_date('28-01-2013 16:04:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3758, 116, 'минибанк мудири', 2, 'A', 313, to_date('28-01-2013 12:31:19', 'dd-mm-yyyy hh24:mi:ss'), 2, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3759, 117, 'касса мудири', 2, 'A', 313, to_date('28-01-2013 12:30:54', 'dd-mm-yyyy hh24:mi:ss'), 2, 10, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3760, 118, 'катта кассир-назоратчи', 2, 'P', 313, to_date('28-01-2013 16:53:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3761, 119, 'катта кассири', 2, 'A', 313, to_date('28-01-2013 17:01:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3762, 120, 'кассир-назоратчи', 2, 'A', 313, to_date('28-01-2013 17:01:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3763, 121, '1 тоифали кассири', 2, 'P', 313, to_date('28-01-2013 16:49:50', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3891, 314, 'кассир (чиким омонат)', 1, 'P', 364, to_date('28-01-2013 15:21:06', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4008, 169, 'бошкарма бошлиги в.б.', 2, 'A', 313, to_date('28-01-2013 17:06:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4108, 182, 'ижро назорати бўйича 1 тоифали мутахассиси', 2, 'A', 313, to_date('28-01-2013 17:15:14', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4109, 183, 'ижро назорати бўйича етакчи мутахассиси', 2, 'A', 313, to_date('28-01-2013 17:15:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4110, 184, 'ижро назорати бўйича бош мутахассиси', 2, 'A', 313, to_date('28-01-2013 17:15:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4111, 254, 'якуний назорат бўйича етакчи мутахассиси', 3, 'A', 313, to_date('28-01-2013 18:04:17', 'dd-mm-yyyy hh24:mi:ss'), 2, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3908, 316, '1 тоифали мутахассиси (валюта бўйича)', 1, 'P', 364, to_date('28-01-2013 15:22:32', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3909, 317, 'мутахассиси (валюта бўйича)', 1, 'P', 364, to_date('28-01-2013 15:25:17', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3928, 318, 'бош мутахассис-минибанк мудири', 1, 'A', 364, to_date('28-01-2013 15:25:28', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4009, 170, 'бошкарма бошлиги ўринбосари в.б.', 2, 'A', 313, to_date('28-01-2013 17:06:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4010, 171, 'бўлим бошлиги в.б.', 2, 'A', 313, to_date('28-01-2013 17:13:06', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4012, 172, 'шўъба мудири в.б.', 2, 'A', 313, to_date('28-01-2013 17:13:18', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4014, 243, 'филиал бошкарувчиси в.б.', 3, 'A', 313, to_date('28-01-2013 17:59:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4068, 322, 'департамент бошлиги вазифасини бажарувчи', 1, 'A', 364, to_date('28-01-2013 15:30:28', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4069, 323, 'бошкарма бошлиги вазифасини бажарувчи', 1, 'A', 364, to_date('28-01-2013 15:30:37', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4070, 324, 'бўлим бошлиги вазифасини бажарувчи', 1, 'A', 364, to_date('28-01-2013 15:31:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4088, 325, 'курьер', 1, 'A', 364, to_date('28-01-2013 15:32:04', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4112, 255, 'якуний назорат бўйича бош мутахассиси', 3, 'A', 313, to_date('28-01-2013 18:08:48', 'dd-mm-yyyy hh24:mi:ss'), 2, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4113, 256, 'ички назорат бўйича етакчи мутахассиси', 3, 'A', 313, to_date('28-01-2013 18:08:55', 'dd-mm-yyyy hh24:mi:ss'), 2, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4114, 257, 'ички назорат бўйича бош мутахассиси', 3, 'A', 313, to_date('28-01-2013 18:09:03', 'dd-mm-yyyy hh24:mi:ss'), 2, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4115, 258, 'ходимлар билан ишлаш бўйича мутахассиси', 3, 'A', 313, to_date('28-01-2013 18:09:17', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4116, 259, 'ходимлар билан ишлаш бўйича 1 тоифали мутахассиси', 3, 'A', 313, to_date('28-01-2013 18:09:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4117, 260, 'ходимлар билан ишлаш бўйича етакчи мутахассиси', 3, 'A', 313, to_date('28-01-2013 18:09:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4118, 261, 'етакчи юрисконсульти', 3, 'A', 313, to_date('28-01-2013 18:10:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4119, 262, 'бош юрисконсульт', 3, 'A', 313, to_date('28-01-2013 18:10:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4120, 263, 'информацион технологиялар бўйича мутахассиси', 3, 'A', 313, to_date('28-01-2013 18:10:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4121, 264, 'информацион технологиялар бўйича 1 тоифали мутахассиси', 3, 'A', 313, to_date('28-01-2013 18:10:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4122, 265, 'информацион технологиялар бўйича етакчи мутахассиси', 3, 'A', 313, to_date('28-01-2013 18:10:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3764, 122, 'кассири', 2, 'A', 313, to_date('28-01-2013 17:01:21', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3765, 126, 'котиба-иш юритувчи', 2, 'A', 313, to_date('28-01-2013 12:34:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
commit;
prompt 200 records committed...
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3766, 127, 'котиба', 2, 'P', 313, to_date('28-01-2013 16:54:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3767, 128, 'архивариуси', 2, 'A', 313, to_date('28-01-2013 12:34:42', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3768, 129, 'нусха кучириш оператори', 2, 'A', 313, to_date('28-01-2013 12:34:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3769, 130, 'богбон', 2, 'A', 313, to_date('28-01-2013 12:36:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 17, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3770, 131, 'ёрдамчи ишчи', 2, 'A', 313, to_date('28-01-2013 12:36:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 17, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3771, 132, 'сантехник', 2, 'A', 313, to_date('28-01-2013 12:40:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3772, 133, 'хайдовчи', 2, 'A', 313, to_date('28-01-2013 12:41:28', 'dd-mm-yyyy hh24:mi:ss'), 1, 17, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3773, 134, 'курьер-иш  юритувчи', 2, 'P', 313, to_date('28-01-2013 16:54:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3774, 135, 'коровул', 2, 'A', 313, to_date('28-01-2013 12:42:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3775, 136, 'фарроши', 2, 'A', 313, to_date('28-01-2013 17:00:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3776, 138, 'бошкарма бошлиги ўринбосари-бўлим бошлиги', 2, 'P', 313, to_date('28-01-2013 17:02:12', 'dd-mm-yyyy hh24:mi:ss'), 2, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3777, 139, 'иш юритувчи', 2, 'A', 313, to_date('28-01-2013 12:43:11', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3778, 140, 'курьер', 2, 'A', 313, to_date('28-01-2013 12:43:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3779, 141, 'хўжалик мудири', 2, 'A', 313, to_date('28-01-2013 17:02:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3780, 142, 'бўлим бошлиги ўринбосари', 2, 'P', 313, to_date('28-01-2013 17:32:28', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3781, 143, 'электрик', 2, 'A', 313, to_date('28-01-2013 16:49:12', 'dd-mm-yyyy hh24:mi:ss'), 1, 21, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3782, 144, 'сектор мудири', 2, 'P', 313, to_date('28-01-2013 16:55:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3783, 145, 'бўлим бошлиги-бош бухгалтер', 2, 'A', 313, to_date('28-01-2013 17:03:35', 'dd-mm-yyyy hh24:mi:ss'), 2, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3784, 146, 'телефонист', 2, 'A', 313, to_date('15-02-2012 17:39:52', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3785, 147, 'кассир-инкассатор', 2, 'P', 313, to_date('28-01-2013 16:53:27', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3786, 148, 'рухсатномалар билан ишлаш буйича мутахассиси', 2, 'P', 313, to_date('28-01-2013 16:55:34', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3787, 149, 'юрист-маслахатчи', 2, 'P', 313, to_date('28-01-2013 16:56:26', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3788, 150, 'бошкарувчи ўринбосари', 2, 'A', 313, to_date('28-01-2013 17:32:53', 'dd-mm-yyyy hh24:mi:ss'), 2, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3789, 151, 'бошкарувчи', 2, 'A', 313, to_date('28-01-2013 17:32:58', 'dd-mm-yyyy hh24:mi:ss'), 2, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3790, 152, 'иктисодий масалалар бўйича маслахатчи', 2, 'A', 313, to_date('28-01-2013 17:28:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3791, 153, 'ички назоратни мувофиклаштириш бўлими бошлиги', 2, 'P', 313, to_date('28-01-2013 16:52:49', 'dd-mm-yyyy hh24:mi:ss'), 2, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3792, 154, 'вилоят худудий филиали бошкарувчиси', 2, 'A', 313, to_date('28-01-2013 17:04:26', 'dd-mm-yyyy hh24:mi:ss'), 2, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3793, 155, 'вилоят худудий филиали бошкарувчиси ўринбосари', 2, 'A', 313, to_date('28-01-2013 17:04:42', 'dd-mm-yyyy hh24:mi:ss'), 2, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3794, 156, '1 тоифали мутахассис - иш юритувчи', 2, 'P', 313, to_date('28-01-2013 16:49:56', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3795, 157, 'иш юритувчи-котиба', 2, 'P', 313, to_date('28-01-2013 16:53:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3796, 158, 'котиб-иш юритувчи', 2, 'P', 313, to_date('28-01-2013 16:54:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3797, 159, 'кечки касса кассири', 2, 'A', 313, to_date('28-01-2013 17:05:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3798, 160, 'кечки касса кассири (кассир-инкассатор)', 2, 'P', 313, to_date('28-01-2013 16:54:10', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3799, 161, 'кирим касса кассири', 2, 'A', 313, to_date('28-01-2013 17:06:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3800, 162, 'чиким касса кассири', 2, 'A', 313, to_date('28-01-2013 17:05:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3801, 163, 'бош кассир- назоратчи', 2, 'P', 313, to_date('28-01-2013 16:50:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3802, 164, '1 тоифали иш юритувчи', 2, 'P', 313, to_date('28-01-2013 16:49:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3803, 165, 'махсус касса назоратчи-кассири', 2, 'A', 313, to_date('28-01-2013 14:13:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3804, 166, 'махсус касса кассири', 2, 'A', 313, to_date('28-01-2013 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3805, 167, 'банк омборчиси', 2, 'P', 313, to_date('28-01-2013 16:50:12', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3806, 200, 'филиал бошкарувчиси', 3, 'A', 313, to_date('28-01-2013 17:39:05', 'dd-mm-yyyy hh24:mi:ss'), 2, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3807, 201, 'филиал бошкарувчиси ўринбосари', 3, 'A', 313, to_date('28-01-2013 17:39:12', 'dd-mm-yyyy hh24:mi:ss'), 2, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3808, 202, 'филиал бошкарувчиси ўринбосари-бўлим бошлиги', 3, 'A', 313, to_date('28-01-2013 17:49:56', 'dd-mm-yyyy hh24:mi:ss'), 2, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3809, 203, 'бўлим бошлиги', 3, 'A', 313, to_date('28-01-2013 17:50:14', 'dd-mm-yyyy hh24:mi:ss'), 2, 11, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3810, 204, 'бош бухгалтер', 3, 'A', 313, to_date('28-01-2013 17:50:21', 'dd-mm-yyyy hh24:mi:ss'), 2, 10, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3811, 205, 'бош мутахассиси', 3, 'A', 313, to_date('28-01-2013 17:50:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3812, 206, 'етакчи мутахассиси', 3, 'A', 313, to_date('28-01-2013 17:50:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3813, 207, '1 тоифали мутахассиси', 3, 'A', 313, to_date('28-01-2013 17:50:49', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3814, 208, '2 тоифали мутахассиси', 3, 'A', 313, to_date('28-01-2013 17:50:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3815, 209, 'мутахассиси', 3, 'A', 313, to_date('28-01-2013 17:51:10', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3816, 210, 'касса мудири', 3, 'A', 313, to_date('28-01-2013 17:51:17', 'dd-mm-yyyy hh24:mi:ss'), 2, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3817, 211, 'бош кассир-назоратчи', 3, 'A', 313, to_date('28-01-2013 18:15:51', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3818, 212, 'кассир-назоратчи', 3, 'A', 313, to_date('28-01-2013 17:51:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3819, 213, 'кассири', 3, 'A', 313, to_date('28-01-2013 17:51:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3820, 214, 'бош бухгалтер ўринбосари', 3, 'A', 313, to_date('28-01-2013 17:51:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3821, 215, 'котиба-иш юритувчи', 3, 'P', 313, to_date('28-01-2013 16:58:28', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3822, 216, 'котиба-архивариус', 3, 'P', 313, to_date('28-01-2013 16:58:23', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3823, 217, 'курьер-иш юритувчи', 3, 'P', 313, to_date('28-01-2013 16:58:37', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3824, 218, 'ёрдамчи ишчи', 3, 'A', 313, to_date('28-01-2013 17:57:16', 'dd-mm-yyyy hh24:mi:ss'), 1, 17, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3825, 219, 'сантехник', 3, 'A', 313, to_date('28-01-2013 17:55:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3826, 220, 'хайдовчиси', 3, 'A', 313, to_date('28-01-2013 17:55:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 17, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3827, 221, 'богбони', 3, 'A', 313, to_date('28-01-2013 17:57:08', 'dd-mm-yyyy hh24:mi:ss'), 1, 17, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3828, 222, 'коровули', 3, 'A', 313, to_date('28-01-2013 17:55:59', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3829, 223, 'фарроши', 3, 'A', 313, to_date('28-01-2013 17:56:06', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3830, 228, 'хўжалик мудири', 3, 'P', 313, to_date('28-01-2013 17:57:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3831, 229, 'архивариус', 3, 'A', 313, to_date('28-01-2013 17:57:03', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3832, 230, 'курьер', 3, 'A', 313, to_date('28-01-2013 17:58:04', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3833, 231, 'котиба', 3, 'P', 313, to_date('28-01-2013 16:58:19', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3834, 232, 'иш юритувчи', 3, 'A', 313, to_date('28-01-2013 17:58:14', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3835, 233, 'минибанк мудири', 3, 'A', 313, to_date('28-01-2013 17:58:25', 'dd-mm-yyyy hh24:mi:ss'), 2, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3836, 234, 'электрик', 3, 'A', 313, to_date('28-01-2013 17:58:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 21, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3837, 235, 'кассир-инкассатор', 3, 'P', 313, to_date('28-01-2013 16:58:05', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3838, 236, 'хукукшунос', 3, 'A', 313, to_date('28-01-2013 17:58:59', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3839, 237, 'кадрлар билан ишлаш буйича мутахассиси', 3, 'A', 313, to_date('28-01-2013 17:59:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3840, 238, 'сектор мудири', 3, 'P', 313, to_date('28-01-2013 16:58:54', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3841, 239, 'котиб-иш юритувчи', 3, 'P', 313, to_date('28-01-2013 16:58:31', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3842, 240, 'кирим касса кассири', 3, 'A', 313, to_date('28-01-2013 17:59:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3843, 241, 'чиким касса кассири', 3, 'A', 313, to_date('28-01-2013 17:59:18', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3844, 242, 'кечки касса кассири', 3, 'A', 313, to_date('28-01-2013 17:59:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3845, 300, 'махсус касса 1 тоифали кассири', 1, 'P', 364, to_date('28-01-2013 15:12:31', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3846, 301, 'бош бошкарма бошлиги ўринбосари-бошкарма бошлиги', 1, 'P', 364, to_date('28-01-2013 15:13:11', 'dd-mm-yyyy hh24:mi:ss'), 2, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3847, 302, 'Бошкарма бошлиги-аппарат бошлиги', 1, 'A', 364, to_date('28-01-2013 15:13:21', 'dd-mm-yyyy hh24:mi:ss'), 2, 7, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3848, 303, 'Бошкарма бошлиги-марказ бошлиги', 1, 'A', 364, to_date('28-01-2013 15:13:26', 'dd-mm-yyyy hh24:mi:ss'), 2, 7, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3849, 304, 'департамент бошлиги', 1, 'A', 364, to_date('28-01-2013 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 2, 6, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3850, 305, 'департамент бошлиги ўринбосари - бошкарма бошлиги', 1, 'A', 364, to_date('28-01-2013 15:14:20', 'dd-mm-yyyy hh24:mi:ss'), 2, 7, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3851, 306, 'департамент бошлиги ўринбосари', 1, 'A', 364, to_date('28-01-2013 15:14:42', 'dd-mm-yyyy hh24:mi:ss'), 2, 7, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3852, 307, 'бўлим бошлиги-Кенгаш котиби', 1, 'A', 364, to_date('28-01-2013 15:15:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3853, 308, 'шуъба мудири', 1, 'A', 364, to_date('28-01-2013 15:16:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3854, 309, 'халкаро протоколлар бўйича бош мутахассис', 1, 'P', 364, to_date('28-01-2013 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4123, 266, 'информацион технологиялар бўйича бош мутахассиси', 3, 'A', 313, to_date('28-01-2013 18:11:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4124, 185, 'етакчи юрисконсульти', 2, 'P', 313, to_date('28-01-2013 16:52:17', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4125, 186, 'бош юрисконсульти', 2, 'P', 313, to_date('28-01-2013 16:50:59', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4126, 187, 'пул муомаласи бўйича 1 тоифали мутахассиси', 2, 'A', 313, to_date('28-01-2013 17:15:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4127, 188, 'пул муомаласи бўйича етакчи мутахассиси', 3, 'A', 313, to_date('28-01-2013 17:38:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4228, 326, 'шуъба мудири', 1, 'P', 364, to_date('28-01-2013 15:36:45', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4268, 268, 'кишлок хўжалигини кредитлаш бўйича бош мутахассиси', 3, 'A', 313, to_date('28-01-2013 18:13:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
commit;
prompt 296 records loaded
prompt Loading SS_OK_POST_GROUP...
insert into SS_OK_POST_GROUP (POST_GROUP_CODE, POST_GROUP_NAME)
values (1, 'Руководство');
insert into SS_OK_POST_GROUP (POST_GROUP_CODE, POST_GROUP_NAME)
values (2, 'Специалисты');
insert into SS_OK_POST_GROUP (POST_GROUP_CODE, POST_GROUP_NAME)
values (3, 'Работники касс');
insert into SS_OK_POST_GROUP (POST_GROUP_CODE, POST_GROUP_NAME)
values (4, 'Младший обслужив. персонал');
commit;
prompt 4 records loaded
prompt Loading SS_OK_PRIVILEGE...
insert into SS_OK_PRIVILEGE (PRIVILEGE_CODE, PRIVILEGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (20, '110', 'A', 109, to_date('02-08-2010 12:37:04', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 1 records loaded
prompt Loading SS_OK_PROFMEMBER...
insert into SS_OK_PROFMEMBER (PROFMEMBER, PROFMEMBER_NAME)
values (0, 'НЕТ');
insert into SS_OK_PROFMEMBER (PROFMEMBER, PROFMEMBER_NAME)
values (1, 'ДА');
commit;
prompt 2 records loaded
prompt Loading SS_OK_QUALIFICATION...
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (721, 38, 'информатика', 'A', 313, to_date('16-12-2011 10:49:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (722, 39, 'программист', 'A', 313, to_date('16-12-2011 10:50:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (701, 36, 'магистр', 'A', 313, to_date('04-11-2011 10:58:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (702, 37, 'юрист', 'P', 313, to_date('04-11-2011 10:59:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (661, 34, 'кутубхоначи библиограф', 'A', 313, to_date('28-09-2011 15:13:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (662, 35, 'технолог', 'A', 313, to_date('28-09-2011 15:13:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (663, 33, 'бухгалтер-аудитор', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (664, 11, 'инженер системотехник', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (665, 12, 'радиотехник', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (666, 13, 'Сиесий фанлар бакалаври', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (667, 14, 'Бакалавр', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (668, 15, 'Техник', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (669, 16, 'Молиячи', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (670, 17, 'Бухгалтерия хисоби', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (671, 18, 'Акушерлик', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (672, 19, 'Техник-механик', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (673, 20, 'Банк хизматчиси', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (674, 1, 'Иктисодчи', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (675, 2, 'Бухгалтер', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (676, 3, 'Банк ходими', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (677, 4, 'Хукукшунос', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (678, 5, 'Товаршунос', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (679, 6, 'Инженер', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (680, 7, 'Шифокор', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (681, 8, 'Тиббий хамшира', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (682, 9, 'Укитувчи', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (683, 10, 'Журналист', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (684, 21, 'Банк иктисодчиси', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (685, 22, 'Кредит инспектори', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (686, 23, 'Молиялаштириш ва кредит бериш инспектори', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (687, 24, 'Бухгалтерия хисоби молия буйича иктисодчи', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (688, 25, 'Врач-педиатр', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (689, 26, 'Математик', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (690, 27, 'Банк иши мутахассиси', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (691, 28, 'Менежер', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (692, 29, 'Инженер-техник', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (693, 30, 'Оператор', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (694, 31, 'Агроном', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (695, 32, 'Банкир', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 39 records loaded
prompt Loading SS_OK_REGION...
prompt Table is empty
prompt Loading SS_OK_REGPLACE...
insert into SS_OK_REGPLACE (REGPLACE_CODE, REGPLACE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (1, 'Янгикургон т   ИИБ', 'А', null, null);
insert into SS_OK_REGPLACE (REGPLACE_CODE, REGPLACE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (7, 'Хива т ИИБ', 'А', null, null);
insert into SS_OK_REGPLACE (REGPLACE_CODE, REGPLACE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (2, 'Пайарик тумани ИИБ', 'А', null, null);
insert into SS_OK_REGPLACE (REGPLACE_CODE, REGPLACE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (3, 'Челак ИИБ', 'А', null, null);
insert into SS_OK_REGPLACE (REGPLACE_CODE, REGPLACE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (4, 'Самарканд шахар ИИБ', 'А', null, null);
insert into SS_OK_REGPLACE (REGPLACE_CODE, REGPLACE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (5, 'Сурхондарё вилоят Кумкургон туман ИИБ', 'А', null, null);
insert into SS_OK_REGPLACE (REGPLACE_CODE, REGPLACE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (6, 'Сурхондарё вилоят Жаркургон туман ИИБ', 'А', null, null);
commit;
prompt 7 records loaded
prompt Loading SS_OK_REG_TYPE...
insert into SS_OK_REG_TYPE (REG_TYPE_ID, REG_TYPE_CODE, REG_TYPE_NAME)
values (141, 1, 'Постоянная');
insert into SS_OK_REG_TYPE (REG_TYPE_ID, REG_TYPE_CODE, REG_TYPE_NAME)
values (142, 2, 'Временная');
commit;
prompt 2 records loaded
prompt Loading SS_OK_RELATION...
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (281, 1, 'Отаси', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (282, 2, 'Онаси', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (283, 3, 'Акаси', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (284, 4, 'Опаси', 'A', 114, to_date('28-09-2011 15:13:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (285, 5, 'Укаси', 'A', 114, to_date('28-09-2011 15:13:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (286, 6, 'Синглиси', 'A', 114, to_date('28-09-2011 15:13:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (287, 7, 'Турмуш ўртоги (эри)', 'A', 313, to_date('27-04-2012 17:07:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (288, 8, 'Турмуш уртоги (хотини)', 'A', 313, to_date('27-04-2012 17:07:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (289, 9, 'Кайнотаси', 'A', 114, to_date('28-09-2011 15:13:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (290, 10, 'Кайнонаси', 'A', 114, to_date('28-09-2011 15:13:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (291, 11, 'Угли', 'A', 114, to_date('28-09-2011 15:13:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (292, 12, 'Кизи', 'A', 114, to_date('28-09-2011 15:13:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (293, 13, 'Собик турмуш уртоги(Эри)', 'A', 313, to_date('26-03-2012 18:10:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (294, 14, 'Собик турмуш уртоги(Хотини)', 'A', 313, to_date('26-03-2012 18:10:56', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 14 records loaded
prompt Loading SS_OK_REZERV...
insert into SS_OK_REZERV (REZERV_CODE, REZERV_NAME)
values (1, 'Нет');
insert into SS_OK_REZERV (REZERV_CODE, REZERV_NAME)
values (2, 'Требуется');
commit;
prompt 2 records loaded
prompt Loading SS_OK_REZERVE...
insert into SS_OK_REZERVE (REZERVE_ID, REZERVE_CODE, REZERVE_NAME)
values (141, 1, 'Резерв отсутствует');
insert into SS_OK_REZERVE (REZERVE_ID, REZERVE_CODE, REZERVE_NAME)
values (142, 2, 'Имеются документы');
commit;
prompt 2 records loaded
prompt Loading SS_OK_SPECIAL...
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (761, 44, 'Иктисодий тахлил бўйича', 'A', 313, to_date('24-11-2011 18:22:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (781, 45, 'Кредит таваккалчилиги бўйича', 'A', 313, to_date('25-11-2011 09:51:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (801, 46, 'Халкаро пул утказмалари буйича', 'A', 313, to_date('31-03-2012 16:30:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (701, 1, 'Рахбарият', 'A', 114, to_date('28-09-2011 15:12:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (702, 2, 'Ижро назорати буйича', 'A', 114, to_date('28-09-2011 15:12:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (703, 3, 'Кредит инспекцияси буйича', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (704, 4, 'Кредит таъминоти буйича', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (705, 5, 'Хавфсизлик хизмати буйича', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (706, 6, 'Кредитлаш буйича', 'A', 313, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (707, 7, 'Бухгалтерия буйича', 'A', 313, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (708, 8, 'Пул муомаласи буйича', 'A', 313, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (709, 9, 'Кимматбахо когозлар буйича', 'A', 313, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (710, 10, 'Халкаро банк фаолияти буйича', 'A', 313, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (711, 11, 'Компьютер', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (712, 12, 'Пластик карталар билан ишлаш буйича', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (713, 13, 'Касса буйича', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (714, 14, 'Кассирлар', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (715, 15, 'Валюта айирбошлаш кассаси', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (716, 16, 'Махсус касса', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (717, 17, 'Кадрлар билан ишлаш буйича', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (718, 18, 'Маънавият буйича', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (719, 19, 'Хукукшунос', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (720, 20, 'Ички назорат буйича', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (721, 21, 'Микрокредитлаш (ЕТТБ) буйича', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (722, 22, 'Бошка мутахассислар', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (723, 23, 'Кичик хизмат курсатиш ходимлари', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (724, 24, 'Навбатчи', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (725, 25, 'Ахборот-узатувчи', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (726, 26, 'Ички назорат бўйича', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (727, 27, 'Газначилик (актив-пассив)', 'A', 364, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (728, 28, 'Молия буйича', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (729, 29, 'Мини банк', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (730, 30, 'Аудиторлар', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (731, 31, 'Сигнализация буйича', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (732, 32, 'Накд пул буйича', 'A', 313, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (733, 33, 'Пул муомаласини ташкил этиш ва накд пул маблагларини берилишини мониторинг килиш бўйича', 'A', 252, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (734, 34, 'Кредит тарихини ахборотлаштириш, ахборотни хисобга олиш ва алмашиш бўйича', 'A', 252, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (735, 35, 'Комунал тўловлар бўйича', 'A', 252, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (736, 36, 'Кабулхона навбатчиси', 'A', 252, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (737, 37, 'Якуний назорат бўйича', 'A', 313, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (738, 38, 'Омонат', 'A', 313, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (739, 39, 'Курилиш комплексини кредитлаш ва мониторинг килиш бўйича', 'A', 313, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (740, 40, 'Ахборотлаштириш бўйича', 'A', 313, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (741, 41, 'Хўжалик ишлари бўйича', 'A', 313, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (742, 42, 'Инвестицион фаолияти бўйича', 'A', 364, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (743, 43, 'Валюта операциялари бўйича', 'A', 364, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 46 records loaded
prompt Loading SS_OK_STAFF...
insert into SS_OK_STAFF (STAFF_ID, STAFF_CODE, STAFF_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (201, 1, 'солдатлар', 'A', 138, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_STAFF (STAFF_ID, STAFF_CODE, STAFF_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (202, 2, 'сержантлар', 'A', 138, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_STAFF (STAFF_ID, STAFF_CODE, STAFF_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (203, 3, 'офицерлар', 'A', 138, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 3 records loaded
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
prompt 9 records loaded
prompt Loading SS_OK_STR...
prompt Table is empty
prompt Loading SS_OK_TEMPLATE_COMMAND...
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (326, 1, 'ходимни ишга кабул килиш', 1, '6.doc', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (327, 2, 'ходимни бошка лавозимга тайинлаш', 3, '1.doc', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (328, 3, 'номенклатурадаги ходимни лавозимидан озод этиш ва мехнат шартномасини бекор килиш', 2, '15.doc', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (329, 4, 'ходимни лавозимидан четлаштириш', 4, '4.doc', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (330, 5, 'ходимга мехнат таътили бериш', 6, '8.doc', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (331, 6, 'ходимга ўкув таътили бериш', 7, '9.doc', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (332, 7, 'ходим бошка ишга ўтиши муносабати билан лавозимидан озод этиш', 2, '15.doc', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (333, 8, 'ходимни бошка бошкармага ўтказиш', 9, '2.doc', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (334, 9, 'ходимни бошка бўлимга ўтказиш', 10, '9', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (335, 10, 'ходимга бола парваришлаш таътили бериш', 5, '6', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (336, 11, 'бола парваришлаш таътилида бўлган ходиим ўринига вактинча янги ходимни ишга кабул килиш', 1, '5.doc', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (337, 12, 'ходимни лавозимидан озод этиш', 2, '7.doc', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (338, 13, 'бола парваришлаш таътилида бўлган ходим ўрнига вактинча бошка ходига вазифасини юклаш', 11, '3.doc', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 13 records loaded
prompt Loading SS_OK_THEME_BUSINESS_VOYAGE...
prompt Table is empty
prompt Loading SS_OK_TYPE_FORCE...
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (241, 1, 'Артиллерия кушинлари', 'A', 114, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (242, 2, 'Курукликдаги кушинлар', 'A', 114, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (243, 3, 'Махсус кушинлар (алока, химиявий)', 'A', 114, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (244, 4, 'Мото укчилар кушинлари', 'A', 114, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (245, 5, 'Мухандислик кушинлари', 'A', 114, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (246, 6, 'Танк кушинлари', 'A', 114, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (247, 7, 'Тезкор харакат килувчи кушинлар', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (248, 8, 'Хаво десант кушинлари', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (249, 9, 'Хаво хужумидан мудофаа кушинлари', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (250, 10, 'Харбий Денгиз Флоти кушинлари', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (251, 11, 'Харбий Хаво кучлари', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (252, 12, 'Строительные войска', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (253, 13, 'Железнодорожные войска', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (254, 14, 'Радиотехнические войска', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (255, 15, 'Мукобил хизмат', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 15 records loaded
prompt Loading SS_OK_TYPE_PERIOD...
insert into SS_OK_TYPE_PERIOD (TYPE_PERIOD_ID, TYPE_PERIOD_CODE, TYPE_PERIOD_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (244, 1, 'Бошка тизимида', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_PERIOD (TYPE_PERIOD_ID, TYPE_PERIOD_CODE, TYPE_PERIOD_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (245, 2, 'Банк тизимида', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_PERIOD (TYPE_PERIOD_ID, TYPE_PERIOD_CODE, TYPE_PERIOD_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (246, 3, 'Шу банкда', 'A', 99, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 3 records loaded
prompt Loading SS_OK_VACANCY...
insert into SS_OK_VACANCY (VACANCY_ID, VACANCY_CODE, VACANCY_NAME)
values (121, 1, 'Вакансия');
insert into SS_OK_VACANCY (VACANCY_ID, VACANCY_CODE, VACANCY_NAME)
values (122, 2, 'Есть документы');
commit;
prompt 2 records loaded
prompt Loading SS_OK_VID_EDUCATION...
insert into SS_OK_VID_EDUCATION (VID_EDUCATION_CODE, VID_EDUCATION_NAME, STATE_NOTES)
values (1, '(кундузги)', 'A');
insert into SS_OK_VID_EDUCATION (VID_EDUCATION_CODE, VID_EDUCATION_NAME, STATE_NOTES)
values (2, '(сиртки)', 'A');
insert into SS_OK_VID_EDUCATION (VID_EDUCATION_CODE, VID_EDUCATION_NAME, STATE_NOTES)
values (3, '(кечки)', 'A');
insert into SS_OK_VID_EDUCATION (VID_EDUCATION_CODE, VID_EDUCATION_NAME, STATE_NOTES)
values (4, '(масофавий)', 'A');
commit;
prompt 4 records loaded
prompt Loading SS_OK_YOUTH...
insert into SS_OK_YOUTH (YOUTH_ID, YOUTH_CODE, YOUTH_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (221, 1, 'Ешлар иттифоки', 'A', 114, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 1 records loaded
prompt Loading SS_OK_ZP_RATE...
insert into SS_OK_ZP_RATE (ZP_RATE_CODE, ZP_RATE_SIMBOL, ZP_RATE_NAME, ZP_RATE, STATE_NOTES, EMP_CODE, INS_DATE)
values (2, '2', '0.25', .25, 'A', 99, to_date('17-12-2009 18:28:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ZP_RATE (ZP_RATE_CODE, ZP_RATE_SIMBOL, ZP_RATE_NAME, ZP_RATE, STATE_NOTES, EMP_CODE, INS_DATE)
values (4, '4', '0.50', .5, 'A', 99, to_date('17-12-2009 18:28:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ZP_RATE (ZP_RATE_CODE, ZP_RATE_SIMBOL, ZP_RATE_NAME, ZP_RATE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6, '6', '0.75', .75, 'A', 99, to_date('17-12-2009 18:28:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ZP_RATE (ZP_RATE_CODE, ZP_RATE_SIMBOL, ZP_RATE_NAME, ZP_RATE, STATE_NOTES, EMP_CODE, INS_DATE)
values (8, '8', '1.00', 1, 'A', 99, to_date('17-12-2009 18:28:02', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 4 records loaded
prompt Loading SS_OK_ZP_RATE_TYPE...
insert into SS_OK_ZP_RATE_TYPE (ZP_RATE_TYPE_CODE, ZP_RATE_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (1, 'Основная', 'A', 99, to_date('17-12-2009 18:28:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ZP_RATE_TYPE (ZP_RATE_TYPE_CODE, ZP_RATE_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (2, 'По совместительству', 'A', 99, to_date('17-12-2009 18:28:02', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 2 records loaded
set feedback on
set define on
prompt Done.
