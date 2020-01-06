prompt PL/SQL Developer import file
prompt Created on 31 ���� 2013 �. by user
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
  is '���������� �� ������������ � ������ �����';
comment on column SS_OK.ID
  is '��� ����������� � ������ �����';
comment on column SS_OK.NCI_ID
  is '��� ����������� ��';
comment on column SS_OK.SS_NAME
  is '������������ �����������';
comment on column SS_OK.NCI_TBL_NAME
  is '������������ ������� ����������� ��';
comment on column SS_OK.NCI_ID_NAME
  is '������������ ���� id � ����������� ��';
comment on column SS_OK.NCI_NAME
  is '������������ ���� name � ����������� ��';
comment on column SS_OK.SS_OK_TBL_NAME
  is '������������ ������� ����������� � ������ �����';
comment on column SS_OK.SS_OK_ID_NAME
  is '������������ ���� id � ����������� ������ �����';
comment on column SS_OK.SS_OK_NAME
  is '������������ ���� name � ����������� ������ �����';
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
  is '���������� ������ ������';
comment on column SS_OK_ACADEMIC.ACADEMIC_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_ACADEMIC.ACADEMIC_CODE
  is '��� ������� ������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_ACADEMIC.ACADEMIC_NAME
  is '������������ ������� ������	�������� � ����������, ������� ���� ������������ ��� ����������';
comment on column SS_OK_ACADEMIC.STATE_NOTES
  is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_ACADEMIC.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_ACADEMIC.INS_DATE
  is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';
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
  is '������� ������ � �������';
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
  is '���������� ��������� � ������� ������';
comment on column SS_OK_ARMY.ARMY_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_ARMY.ARMY_CODE
  is '��� ���� ���������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_ARMY.ARMY_TYPE
  is '��� ��������� 1 - ���������������2 - �� ���������������	�������� � ����������, ������� ����, ������������ ��� ����������';
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
  is '������ �����';
comment on column SS_OK_ARMY_GROUP.ARMY_GROUP_ID
  is 'id ������';
comment on column SS_OK_ARMY_GROUP.ARMY_GROUP_CODE
  is '��� ';
comment on column SS_OK_ARMY_GROUP.ARMY_GROUP_NAME
  is '��������';
comment on column SS_OK_ARMY_GROUP.STATE_NOTES
  is 'A-��������';
comment on column SS_OK_ARMY_GROUP.EMP_CODE
  is '��� ���������� ����������� ������';
comment on column SS_OK_ARMY_GROUP.INS_DATE
  is '����� ����� sysdate';
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
  is '���������� ������ �����';
comment on column SS_OK_ARTICLE.ARTICLE_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_ARTICLE.ARTICLE_CODE
  is '��� ������ 	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_ARTICLE.ARTICLE_NUM
  is '����� ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_ARTICLE.ARTICLE_NAME
  is '������������ ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_ARTICLE.ARTICLE_CHARACTER
  is '�������� ������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column SS_OK_ARTICLE.STATE_NOTES
  is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_ARTICLE.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_ARTICLE.INS_DATE
  is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';
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
  is '������� �����������';
comment on column SS_OK_BASE_MOVE.BASE_MOVE_ID
  is 'id';
comment on column SS_OK_BASE_MOVE.BASE_MOVE_CODE
  is '���';
comment on column SS_OK_BASE_MOVE.BASE_MOVE_NAME
  is '��������';
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
  is '��������� ���������� ������� ��������';
comment on column SS_OK_BASIS.BASIS_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_BASIS.BASIS_CODE
  is '���  ������� ��������  �����������	1 - �������2 -  ������';
comment on column SS_OK_BASIS.BASIS_NAME
  is '������������ ���� ������� ��������  �����������	 ����������� �������������� 1 - �������2 -  ������';
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
  is '���������� "�������"';
comment on column SS_OK_CATEGORY.CATEGORY_CODE
  is '����� � �������� �����';
comment on column SS_OK_CATEGORY.CATEGORY_NAME
  is '������ ������ �����';
comment on column SS_OK_CATEGORY.CATEGORY_RATE
  is '�������� ������������';
comment on column SS_OK_CATEGORY.SALARY
  is '�����';
comment on column SS_OK_CATEGORY.STATE_NOTES
  is 'A-��������';
comment on column SS_OK_CATEGORY.EMP_CODE
  is '��� ���������� ��';
comment on column SS_OK_CATEGORY.INS_DATE
  is '���� ������� ������';
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
  is '��������� ����� (��)';
comment on column SS_OK_CATEGORY_ARMY.CATEGORY_ARMY_ID
  is 'id';
comment on column SS_OK_CATEGORY_ARMY.CATEGORY_ARMY_CODE
  is '���';
comment on column SS_OK_CATEGORY_ARMY.CATEGORY_ARMY_NAME
  is '��������';
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
  is '���������� ������';
comment on column SS_OK_CITY.CITY_CODE
  is '��� ������';
comment on column SS_OK_CITY.CITY_NAME
  is '�������� ������';
comment on column SS_OK_CITY.CITY_CAPITAL
  is '������� 1-������� 0-���';
comment on column SS_OK_CITY.STATE_NOTES
  is 'A-��������';
comment on column SS_OK_CITY.EMP_CODE
  is '��� ���������� ��';
comment on column SS_OK_CITY.INS_DATE
  is '���� ������� ������';
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
  is '��������� ���������� ���������� ��������';
comment on column SS_OK_COMMAND_PARAM.COMMAND_PARAM_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_COMMAND_PARAM.COMMAND_PARAM_CODE
  is '��� ���������  �������	������������� ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_COMMAND_PARAM.COMMAND_PARAM_NAME
  is '������������ ��������� ������� 	����������� ��������������';
comment on column SS_OK_COMMAND_PARAM.COMMAND_PARAM_SELECT
  is '������ ��������� �������� ��������� (select ������� ������ ������ ��������� ��������)';
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
  is '���������� ����� ��������';
comment on column SS_OK_COMMAND_TYPE.COMMAND_TYPE_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_COMMAND_TYPE.COMMAND_TYPE_CODE
  is '��� ���� �������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_COMMAND_TYPE.COMMAND_TYPE_NAME
  is '������������ ��� ������� (���������� � �.�) not null, --	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_COMMAND_TYPE.STATE_NOTES
  is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_COMMAND_TYPE.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_COMMAND_TYPE.INS_DATE
  is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';
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
  is '���������� ������ ��������';
comment on column SS_OK_DEGREE.DEGREE_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_DEGREE.DEGREE_CODE
  is '��� ������ �������	������������� ������� � "1" ��� ������ ������� "��������", ������� ���� , ������������ ��� ����������';
comment on column SS_OK_DEGREE.DEGREE_NAME
  is '������������ ������ �������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_DEGREE.STATE_NOTES
  is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_DEGREE.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_DEGREE.INS_DATE
  is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';
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
  is '���������� �������';
comment on column SS_OK_DEPARTMENT.DEPARTMENT_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_DEPARTMENT.BRANCH
  is '��� ���������	���������� �� ������� S_MFO ���� BANK_ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_DEPARTMENT.DEPARTMENT_CODE
  is '��� ������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_DEPARTMENT.DEPARTMENT_NAME
  is '������������ ������ 	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_DEPARTMENT.DEPARTMENT_NUM
  is '����� ������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column SS_OK_DEPARTMENT.DEPARTMENT_TYPE_CODE
  is '��� ����  ������	���������� �� ����������� SS_OK_DEPARTAMENT_TYPE, ���� DEPARTAMENT_TYPE _CODE';
comment on column SS_OK_DEPARTMENT.HIGH_DEP_CODE
  is '��� ������������ �������������';
comment on column SS_OK_DEPARTMENT.STATE_NOTES
  is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_DEPARTMENT.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_DEPARTMENT.INS_DATE
  is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';
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
  is '���������� �';
comment on column SS_OK_DEPARTMENT_TYPE.DEPARTMENT_TYPE_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_DEPARTMENT_TYPE.DEPARTMENT_TYPE_CODE
  is '��� ����  ������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_DEPARTMENT_TYPE.DEPARTMENT_TYPE_NAME
  is '������������  �������� ������ (�������� �����, ������ � �.�) not null, -- 	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_DEPARTMENT_TYPE.STATE_NOTES
  is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_DEPARTMENT_TYPE.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_DEPARTMENT_TYPE.INS_DATE
  is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';
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
  is '���������� ������';
comment on column SS_OK_DISTR.REGION_ID
  is '��� ������� ��� �.��������';
comment on column SS_OK_DISTR.DISTR
  is '���  ������ ������� ���  �.��������';
comment on column SS_OK_DISTR.DISTR_NAME
  is '�������� ������ ������� ���  �.��������';

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
  is '���������� �����������';
comment on column SS_OK_EDUCATION.EDUCATION_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_EDUCATION.EDUCATION_CODE
  is '��� ����������� 	������������� ������� � "1" ��� ������ ������� "��������"';
comment on column SS_OK_EDUCATION.EDUCATION_NAME
  is '������������ �����������	�������� � ����������';
comment on column SS_OK_EDUCATION.STATE_NOTES
  is '������� ���������� ������A - �������� ������P - ��������� ������	�������� � ����������, ������� ����, �� ��������� �������� �������  -� -�������� ������';
comment on column SS_OK_EDUCATION.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID';
comment on column SS_OK_EDUCATION.INS_DATE
  is '���� � �����  ����� ��-� 	SYSdate not null';
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
  is '���������� ������������ �����������';
comment on column SS_OK_EDUCATION_TITLE.EDUCATION_TITLE_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_EDUCATION_TITLE.EDUCATION_TITLE_CODE
  is '��� ���������� � "1" ��� ������ ������� "��������" ������� ����, ������������ ��� ����������';
comment on column SS_OK_EDUCATION_TITLE.EDUCATION_TITLE_NAME
  is '�������������������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_EDUCATION_TITLE.STATE_NOTES
  is '������� ���������� ������A - �������� ������P - ��������� ������	�������� � ����������, ������� ����, �� ��������� �������� �������  -� -�������� ������';
comment on column SS_OK_EDUCATION_TITLE.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, �� ������� ����, ������������ ��� ����������';
comment on column SS_OK_EDUCATION_TITLE.INS_DATE
  is '���� � �����  ����� ���������� 	SYSdate not null, �� ������� ����, ������������ ��� ����������';
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
  is '���������� �������������� ������� ';
comment on column SS_OK_ELECTION.ELECTION_ID
  is 'id';
comment on column SS_OK_ELECTION.ELECTION_CODE
  is '��� �������������� ������� ';
comment on column SS_OK_ELECTION.ELECTION_NAME
  is '�������� �������������� ������� ';
comment on column SS_OK_ELECTION.ELECTION_ADDRESS
  is '����� �������������� ������� ';
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
  is '��������� ���������� "�������� ���������"';
comment on column SS_OK_FAMILY_STATUS.FAMILY_STATUS_CODE
  is '��� ��������� ���������	1 - �����2 - ������3 - �������4 - ���������';
comment on column SS_OK_FAMILY_STATUS.GENDER_CODE
  is '���';
comment on column SS_OK_FAMILY_STATUS.FAMILY_STATUS_NAME
  is '������������ ��������� ���������	����������� ��������������';
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
  is '��������� ���������� ����������� � ������� ������';
comment on column SS_OK_FITNESS_ARMY.FITNESS_ARMY_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_FITNESS_ARMY.FITNESS_ARMY_CODE
  is '��� ���� ���������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_FITNESS_ARMY.FITNESS_ARMY_TYPE
  is '��� ��������� 1 - ����� 2 -�� �����	�������� � ����������, ������� ����, ������������ ��� ����������';
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
  is '���������� �';
comment on column SS_OK_GENDER.GENDER_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_GENDER.GENDER_CODE
  is '���  ���� 	������� �������� 1- ��� 2-���';
comment on column SS_OK_GENDER.GENDER_NAME
  is '������������ ����  	1 - ���2 - ���';
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
  is '���������� ����� �����������';
comment on column SS_OK_HOSPITAL.HOSPITAL_CODE
  is '��� ';
comment on column SS_OK_HOSPITAL.HOSPITAL_NAME
  is '1���������� ��� 2���������� �� �����';
comment on column SS_OK_HOSPITAL.WORK_PERIOD_FROM
  is '������ ��� � 0 ��� 8 � ��� ��� 0';
comment on column SS_OK_HOSPITAL.WORK_PERIOD_TO
  is '���������� ��� � 8 ��� 999 � ��� ��� 999';
comment on column SS_OK_HOSPITAL.PERCENTAGE
  is ' ��� � 0-8 �� 8 ��� =60, ��� � 8-999 � 8 ��� � ���� =80, ��� ��������� ��� =100';
comment on column SS_OK_HOSPITAL.STATE_NOTES
  is 'A-��������';
comment on column SS_OK_HOSPITAL.EMP_CODE
  is '��� ���������� ��';
comment on column SS_OK_HOSPITAL.INS_DATE
  is '���� ������� ������';
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
  is '���������� ���������';
comment on column SS_OK_INCREASE.INCREASE_CODE
  is '��� ��� �������� � 1������������ ��������, 2�������� ��  ����������';
comment on column SS_OK_INCREASE.INCREASE_NAME
  is '��� �������� � 1������������ ��������, 2�������� ��  ����������';
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
  is '���������� ������� ���������';
comment on column SS_OK_INSTITUTION.INSTITUTION_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_INSTITUTION.INSTITUTION_CODE
  is '��� �������� ���������	�������������  ������� � "1" ��� ������ ������� "��������"';
comment on column SS_OK_INSTITUTION.INSTITUTION_NAME
  is '������ ������������ �������� ���������	�������� � ����������';
comment on column SS_OK_INSTITUTION.INSTITUTION_ABBREVIATION
  is '����������� ������������ �������� ���������	�������� � ����������';
comment on column SS_OK_INSTITUTION.INSTITUTION_PLACE
  is '����� ����������';
comment on column SS_OK_INSTITUTION.EDUCATION_CODE
  is '���  ����������� 	���������� �� ����������� SS_OK_EDUCATION, ����   EDUCATION_CODE';
comment on column SS_OK_INSTITUTION.STATE_NOTES
  is '������� ������: A - ��������, P - ��������� �������� � ����������, ������� ����, �� ��������� �������� �������  -� -�������� ������';
comment on column SS_OK_INSTITUTION.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID';
comment on column SS_OK_INSTITUTION.INS_DATE
  is '���� � ����� ����� ���������� SYSdate not null';
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
  is '���������� ����� ��������� ������������';
comment on column SS_OK_KV_KURS.KV_KURS_CODE
  is '���';
comment on column SS_OK_KV_KURS.KV_KURS_NAME
  is '������������';
comment on column SS_OK_KV_KURS.KV_ORGANIZER
  is ' �����������';
comment on column SS_OK_KV_KURS.KV_PLACE
  is ' ����� ����������';
comment on column SS_OK_KV_KURS.CODE_STR
  is '��� ������ s_str';
comment on column SS_OK_KV_KURS.KV_NUMBER_PERS
  is '���������� ���������� ';
comment on column SS_OK_KV_KURS.DATE_OPEN
  is '���� ������ ';
comment on column SS_OK_KV_KURS.DATE_CLOSE
  is '���� ���������� ';
comment on column SS_OK_KV_KURS.NUMBER_DAY
  is '���-�� ���� ';
comment on column SS_OK_KV_KURS.PAY_SUM
  is ' ������ �� ��������� ��� �������';
comment on column SS_OK_KV_KURS.PAY_SUM_TRENER
  is ' ������ �������� ';
comment on column SS_OK_KV_KURS.ORDER_NUM
  is ' ����� �������';
comment on column SS_OK_KV_KURS.ORDER_DATE
  is '���� ������� ';
comment on column SS_OK_KV_KURS.ORDER_BUSINESS_VOYAGE
  is ' ������������ 1-�� 2-��� ';
comment on column SS_OK_KV_KURS.ORG_BUSINESS_VOYAGE_CODE
  is '��� ������������ ������������ ss_org_business_voyage';
comment on column SS_OK_KV_KURS.THEME_BUSINESS_VOYAGE_CODE
  is '��� ���� ������������ ss_theme_business_voyage';
comment on column SS_OK_KV_KURS.PRIM
  is ' ���������� ';
comment on column SS_OK_KV_KURS.STATE_NOTES
  is 'A-��������';
comment on column SS_OK_KV_KURS.EMP_CODE
  is '��� ���������� ��';
comment on column SS_OK_KV_KURS.INS_DATE
  is '���� ������� ������';
comment on column SS_OK_KV_KURS.CITY_CODE
  is '��� ������';
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
  is '���������� ������';
comment on column SS_OK_LANGUAGE.LANGUAGE_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_LANGUAGE.LANGUAGE_CODE
  is '��� ������������ ����� 	�������������  ������� � "1" ��� ������ ������� "��������", ������� ���� ������������ ��� ����������';
comment on column SS_OK_LANGUAGE.LANGUAGE_NAME
  is '������������ ������������ �����	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_LANGUAGE.STATE_NOTES
  is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_LANGUAGE.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_LANGUAGE.INS_DATE
  is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';
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
  is '���������� ����� ��������';
comment on column SS_OK_LEAVE.LEAVE_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_LEAVE.LEAVE_CODE
  is '��� ���� �������	�������������  ������� � "1" ��� ������ ������� "��������",  ������� ����, ������������ ��� ����������';
comment on column SS_OK_LEAVE.LEAVE_NAME
  is '��� ���������������, ������� � �.�.	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_LEAVE.STATE_NOTES
  is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_LEAVE.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_LEAVE.INS_DATE
  is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';
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
  is '��������� ���������� "������ �������������"';
comment on column SS_OK_LEVEL_DEPARTMENT.LEVEL_DEPARTMENT_CODE
  is '���';
comment on column SS_OK_LEVEL_DEPARTMENT.LEVEL_DEPARTMENT_NAME
  is '������������	 ����������� ��������������';
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
  is '���������� ������ ����������� ������';
comment on column SS_OK_LEVEL_LANGUAGE.LEVEL_LANGUAGE_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_LEVEL_LANGUAGE.LEVEL_LANGUAGE_CODE
  is '��� ������ ������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ���� ������������ ��� ����������';
comment on column SS_OK_LEVEL_LANGUAGE.LEVEL_LANGUAGE_NAME
  is '������������ ������ ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_LEVEL_LANGUAGE.STATE_NOTES
  is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_LEVEL_LANGUAGE.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_LEVEL_LANGUAGE.INS_DATE
  is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';
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
  is '�������� ������';
comment on column SS_OK_MILITARY_RANK.MILITARY_RANK_ID
  is 'id';
comment on column SS_OK_MILITARY_RANK.MILITARY_RANK_CODE
  is '���';
comment on column SS_OK_MILITARY_RANK.MILITARY_RANK_NAME
  is '��������';
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
  is '���������� ������������ ��������';
comment on column SS_OK_MIN_ZP.SALARY
  is '����������� �������� ';
comment on column SS_OK_MIN_ZP.RATE
  is ' ��������� ';
comment on column SS_OK_MIN_ZP.CATEGORY_ZERO_SALARY
  is ' ������ �������� �������';
comment on column SS_OK_MIN_ZP.DATE_OPEN
  is ' ������ ';
comment on column SS_OK_MIN_ZP.DATE_CLOSE
  is ' ����������';
comment on column SS_OK_MIN_ZP.STATE_NOTES
  is 'A-��������';
comment on column SS_OK_MIN_ZP.EMP_CODE
  is '��� ���������� ��';
comment on column SS_OK_MIN_ZP.INS_DATE
  is '���� ������� ������';
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
  is '���������� ��������� ������ ����������';
comment on column SS_OK_MOTIVE_DISMISSIAL.MOTIVE_DISMISSIAL_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_MOTIVE_DISMISSIAL.MOTIVE_DISMISSIAL_CODE
  is '��� ������� ����������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_MOTIVE_DISMISSIAL.MOTIVE_DISMISSIAL_NAME
  is '�����   ������� ����������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_MOTIVE_DISMISSIAL.STATE_NOTES
  is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_MOTIVE_DISMISSIAL.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_MOTIVE_DISMISSIAL.INS_DATE
  is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';
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
  is '���������� ���������������';
comment on column SS_OK_NATIONALITY.NATIONALITY_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_NATIONALITY.NATIONALITY_CODE
  is '��� �������������� 	������������� ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_NATIONALITY.NATIONALITY_NAME
  is '������������ ��������������	�������� � ����������, ������� ���� , ������������ ��� ����������';
comment on column SS_OK_NATIONALITY.STATE_NOTES
  is '������� ���������� A - �������� P - ��������� �������� � ����������, ������� ����, �� ��������� �������� �������  -� -�������� ������';
comment on column SS_OK_NATIONALITY.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_NATIONALITY.INS_DATE
  is '���� � �����  ����� ���������� 	SYSdate not null, ��������� ���� , ������������ ��� ����������';
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
  is '���������� ������������ ����������� ������������ �� �� ������';
comment on column SS_OK_NCI.NCI_ID
  is '��� ����������� ��';
comment on column SS_OK_NCI.S_ID
  is '���������� ��� � ����������� ��';
comment on column SS_OK_NCI.OK_ID
  is '���������� ��� � ����������� ������ �����';
comment on column SS_OK_NCI.STATE_NOTES
  is '������� ���������� ������A - �������� ������P - ��������� ������	�������� � ����������, ������� ����, �� ��������� �������� �������  -� -�������� ������';
comment on column SS_OK_NCI.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, �� ������� ����, ������������ ��� ����������';
comment on column SS_OK_NCI.INS_DATE
  is '���� � �����  ����� ���������� 	SYSdate, �� ������� ����, ������������ ��� ����������';
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
  is '���������� ������������ ���������� ������������';
comment on column SS_OK_ORG_BUSINESS_VOYAGE.ORG_BUSINESS_VOYAGE_CODE
  is '���';
comment on column SS_OK_ORG_BUSINESS_VOYAGE.ORG_BUSINESS_VOYAGE_NAME
  is '��������';
comment on column SS_OK_ORG_BUSINESS_VOYAGE.STATE_NOTES
  is 'A-��������';
comment on column SS_OK_ORG_BUSINESS_VOYAGE.EMP_CODE
  is '��� ���������� ��';
comment on column SS_OK_ORG_BUSINESS_VOYAGE.INS_DATE
  is '���� ������� ������';
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
  is '���������� ������������������ ������';
comment on column SS_OK_PARTY.PARTY_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_PARTY.PARTY_CODE
  is '��� �����������	������������� ������� � "1" ��� ������ ������� "��������", ������� ���� ������������ ��� ����������';
comment on column SS_OK_PARTY.PARTY_ABBREVIATION
  is '����������� �������� ������	�������� � ����������, ������� ����  �������������� ��� ����������';
comment on column SS_OK_PARTY.PARTY_NAME
  is '������ ������������ ������	�������� � ����������, ������� ���� ������������ ��� ����������';
comment on column SS_OK_PARTY.STATE_NOTES
  is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_PARTY.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_PARTY.INS_DATE
  is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';
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
  is '��� ��������� 1-������� 2-��� �� ���-�� 3-���������';
comment on column SS_OK_PASSPORT_TYPE.PASSPORT_TYPE_NAME
  is '��� ��������� 1-������� 2-��� �� ���-�� 3-���������';
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
  is '���������� ����� ���������';
comment on column SS_OK_PENALTY.PENALTY_ID
  is '��������� �����';
comment on column SS_OK_PENALTY.PENALTY_CODE
  is '���';
comment on column SS_OK_PENALTY.PENALTY_NAME
  is '������������';
comment on column SS_OK_PENALTY.STATE_NOTES
  is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_PENALTY.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_PENALTY.INS_DATE
  is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';
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
  is '���������� ����������';
comment on column SS_OK_POST.POST_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_POST.POST_CODE
  is '��� ���������	���������� � "1" ��� ������ ������� "��������" ������� ����, ������������ ��� ����������';
comment on column SS_OK_POST.POST_NAME
  is '������������ ���������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_POST.LEVEL_DEPARTMENT_CODE
  is '��� ������� �������������';
comment on column SS_OK_POST.STATE_NOTES
  is '������� ���������� ������A - �������� ������P - ��������� ������	�������� � ����������, ������� ����, �� ��������� �������� �������  -� -�������� ������';
comment on column SS_OK_POST.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, �� ������� ����, ������������ ��� ����������';
comment on column SS_OK_POST.INS_DATE
  is '���� � �����  ����� ���������� 	SYSdate not null, �� ������� ����, ������������ ��� ����������';
comment on column SS_OK_POST.CATEGORY_CODE
  is '��� ������� ������ ����� ���������� ss_ok_category';
comment on column SS_OK_POST.POST_GROUP_CODE
  is '��� ����������� ������ ss_ok_post_group ';
comment on column SS_OK_POST.EDUCATION_TITLE_CODE
  is '����������� ����������� ��� ������ ���������';
comment on column SS_OK_POST.CONFIRM_CODE
  is '��������� �������������� � ���������� ��� � ������� ��� � ������';
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
  is '��� ��� ������ ss_ok_privilege';
comment on column SS_OK_PRIVILEGE.PRIVILEGE_NAME
  is '������������ ��� ������ ss_ok_privilege';
comment on column SS_OK_PRIVILEGE.STATE_NOTES
  is 'A-��������';
comment on column SS_OK_PRIVILEGE.EMP_CODE
  is '��� ���������� ��';
comment on column SS_OK_PRIVILEGE.INS_DATE
  is '���� ������� ������';
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
  is '��������';
comment on column SS_OK_PROFMEMBER.PROFMEMBER
  is '0 ��� ���          1-�� ��';
comment on column SS_OK_PROFMEMBER.PROFMEMBER_NAME
  is '0 ��� ���          1-�� ��';

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
  is '���������� ������������';
comment on column SS_OK_QUALIFICATION.QUALIFICATION_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_QUALIFICATION.QUALIFICATION_CODE
  is '��� ������������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_QUALIFICATION.QUALIFICATION_NAME
  is '������������  ������������ (������� � �.�) not null, --	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_QUALIFICATION.STATE_NOTES
  is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_QUALIFICATION.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_QUALIFICATION.INS_DATE
  is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';
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
  is '���������� ��������';
comment on column SS_OK_REGION.REGION_ID
  is '��� �������';
comment on column SS_OK_REGION.REGION_NAM
  is '�������� ������� ��� �.�������';

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
  is '���������� ����� �����������';
comment on column SS_OK_REGPLACE.REGPLACE_CODE
  is '��� ����� �����������';
comment on column SS_OK_REGPLACE.REGPLACE_NAME
  is '�������� ����� �����������';
comment on column SS_OK_REGPLACE.STATE_NOTES
  is 'A-��������';
comment on column SS_OK_REGPLACE.EMP_CODE
  is '��� ���������� ��';
comment on column SS_OK_REGPLACE.INS_DATE
  is '���� ������� ������';
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
  is '��������� ���������� ��� �������� "����������/���������"';
comment on column SS_OK_REG_TYPE.REG_TYPE_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_REG_TYPE.REG_TYPE_CODE
  is '��� 	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_REG_TYPE.REG_TYPE_NAME
  is '������������ 	�������� � ����������, ������� ����, ������������ ��� ����������';
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
  is '���������� ����������� ���������';
comment on column SS_OK_RELATION.RELATION_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_RELATION.RELATION_CODE
  is '��� ������������ ���������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_RELATION.RELATION_NAME
  is '������������ ������������ ���������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_RELATION.STATE_NOTES
  is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_RELATION.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_RELATION.INS_DATE
  is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';
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
  is '��� ���� ��������� ���������� ������� ������� ��� ����������� ����������';
comment on column SS_OK_REZERV.REZERV_CODE
  is '	��� �������	1 - ��� ��������� �� ��������� ������  2 -  ��������� ������';
comment on column SS_OK_REZERV.REZERV_NAME
  is '������������  ���� �������	 ����������� �������������1 -  ������ ����������� 2 -  ������� ���������';
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
  is '��������� ���������� ������� �������';
comment on column SS_OK_REZERVE.REZERVE_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_REZERVE.REZERVE_CODE
  is '	��� �������	1 -  ������ ����������� 2 -  ������� ���������';
comment on column SS_OK_REZERVE.REZERVE_NAME
  is '������������  ���� �������	 ����������� �������������1 -  ������ ����������� 2 -  ������� ���������';
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
  is '�������������';
comment on column SS_OK_SPECIAL.SPECIAL_ID
  is 'id';
comment on column SS_OK_SPECIAL.SPECIAL_CODE
  is '���';
comment on column SS_OK_SPECIAL.SPECIAL_NAME
  is '��������';
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
  is '��� ������� (��)';
comment on column SS_OK_STAFF.STAFF_ID
  is 'id';
comment on column SS_OK_STAFF.STAFF_CODE
  is '���';
comment on column SS_OK_STAFF.STAFF_NAME
  is '��������';
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
  is '��������� ���������� "������� �������������"';
comment on column SS_OK_STATUS.STATUS_CODE
  is '���';
comment on column SS_OK_STATUS.STATUS_NAME
  is '������������	 ����������� ��������������';
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
  is '��������� � �������� ������';
comment on column SS_OK_STR.CODE_STR
  is '���';
comment on column SS_OK_STR.NAME
  is '��������';

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
  is '���������� �������� ��������';
comment on column SS_OK_TEMPLATE_COMMAND.TEMPLATE_COMMAND_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_TEMPLATE_COMMAND.TEMPLATE_COMMAND_CODE
  is '��� ������� ������� 	���������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_TEMPLATE_COMMAND.TEMPLATE_COMMAND_NAME
  is '������������/�������������� ������� 	�������� � ����������, ������� ���� , ������������ ��� ����������';
comment on column SS_OK_TEMPLATE_COMMAND.COMMAND_TYPE_CODE
  is '��� ����  �������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_TEMPLATE_COMMAND.TEMPLATE_COMMAND_FNAME
  is '��� ����� � �������� �������	�������� � ����������, ������� ����, ������������ ��� ���������� XXXXXXXX.doc';
comment on column SS_OK_TEMPLATE_COMMAND.STATE_NOTES
  is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_TEMPLATE_COMMAND.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_TEMPLATE_COMMAND.INS_DATE
  is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';
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
  is '���������� ����� ������������';
comment on column SS_OK_THEME_BUSINESS_VOYAGE.THEME_BUSINESS_VOYAGE_CODE
  is '���';
comment on column SS_OK_THEME_BUSINESS_VOYAGE.THEME_BUSINESS_VOYAGE_NAME
  is '��������';
comment on column SS_OK_THEME_BUSINESS_VOYAGE.STATE_NOTES
  is 'A-��������';
comment on column SS_OK_THEME_BUSINESS_VOYAGE.EMP_CODE
  is '��� ���������� ��';
comment on column SS_OK_THEME_BUSINESS_VOYAGE.INS_DATE
  is '���� ������� ������';
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
  is '���� �����';
comment on column SS_OK_TYPE_FORCE.TYPE_FORCE_ID
  is 'id';
comment on column SS_OK_TYPE_FORCE.TYPE_FORCE_CODE
  is '���';
comment on column SS_OK_TYPE_FORCE.TYPE_FORCE_NAME
  is '��������';
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
  is '���������� ����� �����';
comment on column SS_OK_TYPE_PERIOD.TYPE_PERIOD_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_TYPE_PERIOD.TYPE_PERIOD_CODE
  is '��� ���� �����	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_TYPE_PERIOD.TYPE_PERIOD_NAME
  is '������������ �����  (����������� � �.�.) not null, --	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_TYPE_PERIOD.STATE_NOTES
  is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_TYPE_PERIOD.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_TYPE_PERIOD.INS_DATE
  is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';
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
  is '��������� ���������� ������� ��������';
comment on column SS_OK_VACANCY.VACANCY_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_VACANCY.VACANCY_CODE
  is '���  ��������	1 - ��������2 -  ���� ���������';
comment on column SS_OK_VACANCY.VACANCY_NAME
  is '������������ ���� ��������	 ����������� �������������� 1 - ��������2 -  ���� ���������';
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
  is '���������� �';
comment on column SS_OK_YOUTH.YOUTH_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_YOUTH.YOUTH_CODE
  is '��� ����������� 	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_YOUTH.YOUTH_NAME
  is '������������ �����������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_YOUTH.STATE_NOTES
  is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_YOUTH.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_YOUTH.INS_DATE
  is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';
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
  is '���������� ������ �������� �������';
comment on column SS_OK_ZP_RATE.ZP_RATE_CODE
  is '����� � ����� 2 4 6 8';
comment on column SS_OK_ZP_RATE.ZP_RATE_SIMBOL
  is '������ ��� ���������� ������ 2 4 6 8 ';
comment on column SS_OK_ZP_RATE.ZP_RATE_NAME
  is '��������';
comment on column SS_OK_ZP_RATE.ZP_RATE
  is '������ 0.25 0.50 0.75 1.00';
comment on column SS_OK_ZP_RATE.STATE_NOTES
  is 'A-��������';
comment on column SS_OK_ZP_RATE.EMP_CODE
  is '��� ���������� ��';
comment on column SS_OK_ZP_RATE.INS_DATE
  is '���� ������� ������';
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
  is '���������� ���� ������ �������� �������';
comment on column SS_OK_ZP_RATE_TYPE.ZP_RATE_TYPE_CODE
  is '��� 1 2';
comment on column SS_OK_ZP_RATE_TYPE.ZP_RATE_TYPE_NAME
  is '�������� 1-�������� 2-�� ����������������';
comment on column SS_OK_ZP_RATE_TYPE.STATE_NOTES
  is 'A-��������';
comment on column SS_OK_ZP_RATE_TYPE.EMP_CODE
  is '��� ���������� ��';
comment on column SS_OK_ZP_RATE_TYPE.INS_DATE
  is '���� ������� ������';
alter table SS_OK_ZP_RATE_TYPE
  add constraint SS_OK_ZP_RATE_TYPE_PK primary key (ZP_RATE_TYPE_CODE);

prompt Loading SS_OK...
insert into SS_OK (ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME)
values (1, '72', '���������-��������������', 'S_NATION', 'NAT_ID', 'NAT_NAME', 'SS_OK_NATIONALITY', 'NATIONALITY_CODE', 'NATIONALITY_NAME');
insert into SS_OK (ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME)
values (2, '73', '���������-������', 'S_PARTY', 'PART_ID', 'PART_NAME', 'SS_OK_PARTY', 'PARTY_CODE', 'PARTY_NAME');
insert into SS_OK (ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME)
values (3, '74', '��������-�����������', 'S_OBRAZ', 'OBR_ID', 'OBR_NAME', 'SS_OK_EDUCATION_TITLE', 'EDUCATION_TITLE_CODE', 'EDUCATION_TITLE_NAME');
insert into SS_OK (ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME)
values (4, '75', '����� ���������-������ �������', 'S_UCH_STEP', 'ZVN_ID', 'ZVN_NAME', 'SS_OK_DEGREE', 'DEGREE_CODE', 'DEGREE_NAME');
insert into SS_OK (ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME)
values (5, '76', '����� ��������-������ ������', 'S_UCH_ZVN', 'ZVN_ID', 'ZVN_NAME', 'SS_OK_ACADEMIC', 'ACADEMIC_CODE', 'ACADEMIC_NAME');
insert into SS_OK (ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME)
values (6, '77', '��� �������-����������� �����', 'S_LANGS', 'LANG_ID', 'LANG_NAME', 'SS_OK_LANGUAGE', 'LANGUAGE_CODE', 'LANGUAGE_NAME');
insert into SS_OK (ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME)
values (7, '78', '��� ������ ����� ����������-������� �������� ������������ �������', 'S_LANG', 'UROV_ID', 'UROV_NAME', 'SS_OK_LEVEL_LANGUAGE', 'LEVEL_LANGUAGE_CODE', 'LEVEL_LANGUAGE_NAME');
insert into SS_OK (ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME)
values (8, '79', '����������-���������', 'S_DOLJN', 'DOLJ_ID', 'DOLJ_NAME', 'SS_OK_POST', 'POST_CODE', 'POST_NAME');
insert into SS_OK (ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME)
values (9, '80', '���� �������-������� ���������', 'S_UCH_ZAV', 'ZAV_ID', 'ZAV_NAME', 'SS_OK_INSTITUTION', 'INSTITUTION_CODE', 'INSTITUTION_NAME');
insert into SS_OK (ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME)
values (10, '81', '����������� �������������-����������� ���������', 'S_FAMILY', 'FAM_ID', 'FAM_NAME', 'SS_OK_RELATION', 'RELATION_CODE', 'RELATION_NAME');
commit;
prompt 10 records loaded
prompt Loading SS_OK_ACADEMIC...
insert into SS_OK_ACADEMIC (ACADEMIC_ID, ACADEMIC_CODE, ACADEMIC_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (281, 55, '���', 'P', 114, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ACADEMIC (ACADEMIC_ID, ACADEMIC_CODE, ACADEMIC_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (282, 1, '��������', 'A', 252, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ACADEMIC (ACADEMIC_ID, ACADEMIC_CODE, ACADEMIC_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (283, 2, '������', 'A', 252, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ACADEMIC (ACADEMIC_ID, ACADEMIC_CODE, ACADEMIC_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (284, 3, '���������', 'A', 252, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ACADEMIC (ACADEMIC_ID, ACADEMIC_CODE, ACADEMIC_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (285, 4, '������', 'A', 252, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ACADEMIC (ACADEMIC_ID, ACADEMIC_CODE, ACADEMIC_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (286, 5, '���', 'P', 313, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ACADEMIC (ACADEMIC_ID, ACADEMIC_CODE, ACADEMIC_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (287, 6, '���', 'A', 252, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 7 records loaded
prompt Loading SS_OK_ACTION_HIST...
insert into SS_OK_ACTION_HIST (ACTION_HIST_ID, ACTION_HIST_NAME)
values (0, '��������� ��������');
insert into SS_OK_ACTION_HIST (ACTION_HIST_ID, ACTION_HIST_NAME)
values (1, '�������');
insert into SS_OK_ACTION_HIST (ACTION_HIST_ID, ACTION_HIST_NAME)
values (2, '���������');
insert into SS_OK_ACTION_HIST (ACTION_HIST_ID, ACTION_HIST_NAME)
values (3, '��������');
commit;
prompt 4 records loaded
prompt Loading SS_OK_ARMY...
insert into SS_OK_ARMY (ARMY_ID, ARMY_CODE, ARMY_TYPE)
values (121, 1, '������ �������� ������');
insert into SS_OK_ARMY (ARMY_ID, ARMY_CODE, ARMY_TYPE)
values (122, 2, '������ �������� ������ ����');
commit;
prompt 2 records loaded
prompt Loading SS_OK_ARMY_GROUP...
insert into SS_OK_ARMY_GROUP (ARMY_GROUP_ID, ARMY_GROUP_CODE, ARMY_GROUP_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (221, 1, '�', 'A', 138, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARMY_GROUP (ARMY_GROUP_ID, ARMY_GROUP_CODE, ARMY_GROUP_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (222, 2, '��', 'A', 138, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARMY_GROUP (ARMY_GROUP_ID, ARMY_GROUP_CODE, ARMY_GROUP_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (223, 3, '���', 'A', 138, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARMY_GROUP (ARMY_GROUP_ID, ARMY_GROUP_CODE, ARMY_GROUP_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (224, 4, '���', 'A', 138, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARMY_GROUP (ARMY_GROUP_ID, ARMY_GROUP_CODE, ARMY_GROUP_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (225, 5, '���', 'A', 138, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARMY_GROUP (ARMY_GROUP_ID, ARMY_GROUP_CODE, ARMY_GROUP_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (226, 6, '����', 'A', 138, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARMY_GROUP (ARMY_GROUP_ID, ARMY_GROUP_CODE, ARMY_GROUP_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (227, 7, '��', 'A', 114, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARMY_GROUP (ARMY_GROUP_ID, ARMY_GROUP_CODE, ARMY_GROUP_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (228, 8, '��', 'A', 114, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARMY_GROUP (ARMY_GROUP_ID, ARMY_GROUP_CODE, ARMY_GROUP_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (229, 9, '���', 'A', 114, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARMY_GROUP (ARMY_GROUP_ID, ARMY_GROUP_CODE, ARMY_GROUP_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (230, 10, '������� �������', 'A', 114, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 10 records loaded
prompt Loading SS_OK_ARTICLE...
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (253, 15, '106', '������ ������������ ����� �����', '���� ����� ����� �������� ����������� �������� ������������ ���������� �����', 'A', 313, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (254, 1, '97', '������ ������������ ����� �����', '1-�����: �������� ���������� ����', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (255, 2, '97', '������ ������������ ����� �����', '3-�����: ���������� ������ ����� (�������� ������ ���������� �����)', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (256, 3, '99', '������ ������������ ����� �����', '�� �������� ���', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (257, 4, '100', '������ ������������ ����� �����', '1-�����: �������� ���� (�����) ��� �� ������������� ���������� ���� ������ ����� ����� ����������� ���� ����������� ��������������', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (258, 5, '100', '������ ������������ ����� �����', '2-�����: ���������� �������� ������ �����������', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (259, 6, '100', '������ ������������ ����� �����', '3-�����: �� ������ ������������ �������� ������� ����������', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (260, 7, '100', '������ ������������ ����� �����', '4-�����: �� ������ ������������ ��� ����� ���� ������� ����������', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (261, 8, '105', '������ ������������ ����� �����', '�������� ������ ������������ ������� ������ �����', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (262, 9, '106', '������ ������������ ����� �����', '1-�����: ����� ������ ��� ������� �������� ���������� ��������', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (263, 10, '106', '������ ������������ ����� �����', '3-�����: ������� ������ ������ ����� ������� ����� ������� ����� ���������� �������', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (264, 11, '106', '������ ������������ ����� �����', '5-�����: ��������� ������ ���������� �����', 'A', 114, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (265, 12, '113', '����� �����������', '������� ����� �������������, ������� ������� �������� ��������� �������, �� ���������.', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (266, 13, '92', '����� ������ ���� �������', '������� ����� ������ ���� ��������� ����� �������������, ������, ��������� ��� ���� ���������� ����� ����� �������� ����� ��� �������� ������.', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ARTICLE (ARTICLE_ID, ARTICLE_CODE, ARTICLE_NUM, ARTICLE_NAME, ARTICLE_CHARACTER, STATE_NOTES, EMP_CODE, INS_DATE)
values (267, 14, '82,83', '���� ����� �����', '���� ����� ������� �� ����������� �������, ������ ���� ������ ���������� ���� ������. �/� ���������� ������� ����� ������', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 15 records loaded
prompt Loading SS_OK_BASE_MOVE...
insert into SS_OK_BASE_MOVE (BASE_MOVE_ID, BASE_MOVE_CODE, BASE_MOVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (241, 1, '������ ������������ ������', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_BASE_MOVE (BASE_MOVE_ID, BASE_MOVE_CODE, BASE_MOVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (242, 2, '���������� ������ ����, ��������� ������� �������, ������ ������������ �������', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_BASE_MOVE (BASE_MOVE_ID, BASE_MOVE_CODE, BASE_MOVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (243, 3, '���������� ������ ����, ��������� ������� �������, ������ ����������', 'P', 313, to_date('05-11-2011 10:06:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_BASE_MOVE (BASE_MOVE_ID, BASE_MOVE_CODE, BASE_MOVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (244, 4, '��������� �������, ������ ����������', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 4 records loaded
prompt Loading SS_OK_BASIS...
insert into SS_OK_BASIS (BASIS_ID, BASIS_CODE, BASIS_NAME)
values (121, 1, '�������');
insert into SS_OK_BASIS (BASIS_ID, BASIS_CODE, BASIS_NAME)
values (122, 2, '������');
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
values (708, '����', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (707, '��������', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (706, '����', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (705, '����������', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (704, '���', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (703, '���������', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (702, '��������', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (701, '�������', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (710, '��������', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (709, '����������', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (13, '��������', null, 'A', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (212, '����', null, '�', null, null);
insert into SS_OK_CITY (CITY_CODE, CITY_NAME, CITY_CAPITAL, STATE_NOTES, EMP_CODE, INS_DATE)
values (712, '������ �', null, 'A', null, null);
commit;
prompt 13 records loaded
prompt Loading SS_OK_COMMAND_PARAM...
prompt Table is empty
prompt Loading SS_OK_COMMAND_TYPE...
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (281, 1, '���� ����� �����', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (282, 2, '������', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (283, 3, '��������� ��������', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (284, 4, '����������� ��������', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (285, 5, '���� ����������� �������', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (286, 6, '������ �������', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (287, 7, '���� ������', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (288, 8, '�� ���� ����������� ����� ������', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (289, 9, '����� ���������� �������', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (290, 10, '����� ������ �������', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_COMMAND_TYPE (COMMAND_TYPE_ID, COMMAND_TYPE_CODE, COMMAND_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (291, 11, '������ ����� ���������� �������� ����� ������� �������', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 11 records loaded
prompt Loading SS_OK_DEGREE...
insert into SS_OK_DEGREE (DEGREE_ID, DEGREE_CODE, DEGREE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (321, 4, '������� ������� �������', 'P', 313, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEGREE (DEGREE_ID, DEGREE_CODE, DEGREE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (322, 5, '������� ������� �������', 'P', 313, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEGREE (DEGREE_ID, DEGREE_CODE, DEGREE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (323, 1, '��� �������', 'A', 114, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEGREE (DEGREE_ID, DEGREE_CODE, DEGREE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (324, 2, '��� �������', 'A', 114, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEGREE (DEGREE_ID, DEGREE_CODE, DEGREE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (325, 3, '�������', 'A', 114, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEGREE (DEGREE_ID, DEGREE_CODE, DEGREE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (326, 6, '������� ������� �������', 'P', 313, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEGREE (DEGREE_ID, DEGREE_CODE, DEGREE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (327, 7, '���', 'A', 313, to_date('06-12-2011 15:02:43', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 7 records loaded
prompt Loading SS_OK_DEPARTMENT...
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8670, '00394', 618, '������ �����', 618, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8671, '00394', 619, '������ �����', 619, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8672, '00394', 620, '��������������� �����', 620, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8673, '00394', 621, '�������� �����', 621, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8674, '00394', 622, '�.����������� �����', 622, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8675, '00394', 623, '�.������������ �����', 623, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8676, '00394', 624, '���������� �����', 624, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8677, '00394', 625, '�.������� �����', 625, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8678, '00394', 626, '�.��������� ����� ', 626, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8679, '00394', 627, '������� �����', 627, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8680, '00394', 628, '�.������ �����', 628, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8681, '00394', 629, '�.�������� �����', 629, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8682, '00394', 630, '�������� �����', 630, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8683, '00394', 631, '��-�������� ����� ', 631, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8684, '00394', 632, '�.������ �����', 632, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8685, '00394', 633, '������ �����', 633, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8686, '00394', 634, '������ �����', 634, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8687, '00394', 635, '���� �����', 635, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8688, '00394', 636, '�������� �����', 636, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8689, '00394', 637, '�������� �����', 638, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8690, '00394', 638, '��������� �����', 638, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8691, '00394', 639, '���������� ����� ', 639, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8692, '00394', 640, '��������� �����', 640, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8693, '00394', 641, '���� �����', 641, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8694, '00394', 642, '��� �����', 642, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8695, '00394', 643, '�������� �����', 643, 15, 607, 'A', 114, to_date('28-09-2011 15:13:50', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8696, '00394', 644, '���� ����� �����', 644, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8697, '00394', 645, '������� �����', 645, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8698, '00394', 646, '������ �����', 646, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8699, '00394', 647, '�������� �����', 647, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8700, '00394', 648, '������� �����', 648, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8701, '00394', 649, '�������� �����', 649, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8702, '00394', 650, '�.������������ �����', 650, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8703, '00394', 651, '������� �����', 651, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8704, '00394', 652, '�������� �����', 652, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8705, '00394', 653, '����� �����', 653, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8706, '00394', 654, '������ ����� ', 654, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8707, '00394', 655, '���� �����', 655, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8708, '00394', 656, '������� �����', 656, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8709, '00394', 657, '�.������ �����', 657, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8710, '00394', 658, '�.�������� �����', 658, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8711, '00394', 659, '������ �������', 659, 15, 607, 'A', 114, to_date('28-09-2011 15:13:51', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8712, '00394', 660, '������� �����', 660, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8713, '00394', 661, '��� ���� �����', 661, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8714, '00394', 662, '������� �����', 662, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8715, '00394', 663, '������� �����', 663, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8716, '00394', 664, '������� �����', 664, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8717, '00394', 665, '�������� �����', 665, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8718, '00394', 666, '�.������� �����', 666, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8719, '00394', 667, '�.������ �����', 667, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8720, '00394', 668, '��� �����', 668, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8721, '00394', 669, '���-���� �����', 669, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8722, '00394', 670, '���� ������ �����', 670, 15, 607, 'A', 114, to_date('28-09-2011 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8723, '00394', 671, '���� �����', 671, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8724, '00394', 672, '��������� �����', 672, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8725, '00394', 673, '����� �����', 673, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8726, '00394', 674, '��-����� �����', 674, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8727, '00394', 675, '���������� �����', 675, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8728, '00394', 676, '����� �����', 676, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8729, '00394', 677, '������� �����', 677, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8730, '00394', 678, '�.��������� ����� ', 678, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8731, '00394', 679, '�.������� �����', 679, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8732, '00394', 680, '������� �����', 680, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8733, '00394', 681, '�������� �����', 681, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8734, '00394', 682, '�.������� �����', 682, 15, 607, 'A', 114, to_date('28-09-2011 15:13:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8735, '00394', 683, '��������� �����', 683, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8736, '00394', 684, '�.������� �����', 684, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8737, '00394', 685, '������ �����', 685, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8738, '00394', 686, '�.���������� �����', 686, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8739, '00394', 687, '������-����� �����', 687, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8740, '00394', 688, '�.������ �����', 688, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8741, '00394', 689, '�.�������� �����', 689, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8742, '00394', 690, '�������� �����', 690, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8743, '00394', 691, '�.������� �����', 691, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8744, '00394', 692, '����� �����', 692, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8745, '00394', 693, '������ �����', 693, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8746, '00394', 694, '�������� ����� ', 694, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8747, '00394', 695, '���� ���� �����', 695, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8748, '00394', 696, '���������� �����', 696, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8749, '00394', 697, '������  �����', 697, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8750, '00394', 698, '���� �����', 698, 15, 607, 'A', 114, to_date('28-09-2011 15:13:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8751, '00394', 699, '�.������ �����', 699, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8752, '00394', 700, '�������� �����', 700, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8753, '00394', 701, '�.������� �����', 701, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8754, '00394', 702, '�.������� �����', 702, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8755, '00394', 703, '�.���������� �����', 703, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8756, '00394', 704, '�.������ �����', 704, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8757, '00394', 705, '��������� ����� �����', 705, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8758, '00394', 706, '��������� �����', 706, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8759, '00394', 707, '�.������� �����', 707, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8760, '00394', 708, '���������� �����', 708, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8761, '00394', 709, '���� ������ �����', 709, 15, 607, 'A', 114, to_date('28-09-2011 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8762, '00394', 710, '�������� �����', 710, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8763, '00394', 711, '�������� �����', 711, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8764, '00394', 712, '������� �����', 712, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8765, '00394', 713, '�.�������� ����� ', 713, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8766, '00394', 714, '�.������� ����� ', 714, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8767, '00394', 715, '�.������ �����', 715, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8768, '00394', 716, '����� �����', 716, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8769, '00394', 717, '������� �����', 717, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
commit;
prompt 100 records committed...
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8770, '00394', 718, '�.�������� �����', 718, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8771, '00394', 719, '������� �����', 719, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8772, '00394', 720, '��������� ����� ', 720, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8773, '00394', 721, '�.��������� �����', 721, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8774, '00394', 722, '���������', 722, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8775, '00394', 723, '������ �����', 723, 15, 607, 'A', 114, to_date('28-09-2011 15:13:56', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8776, '00394', 724, '����� �����', 724, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8777, '00394', 725, '�.�������� �����', 725, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8778, '00394', 726, '����������� �����', 726, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8779, '00394', 727, '������� �����', 727, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8780, '00394', 728, '�������� ����', 728, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8781, '00394', 729, '��� �����', 729, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8782, '00394', 730, '������ �����', 730, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8783, '00394', 731, '�������� �����', 731, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8784, '00394', 732, '���� �����', 732, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8785, '00394', 733, '����� ���� �����', 733, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9484, '00394', 237, '�����������  ������������ ���������� ����� ����������', 237, 3, null, 'P', 364, to_date('23-01-2013 11:09:05', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9544, '00394', 567, '���������� ��������� ������', 567, 4, 542, 'A', 313, to_date('30-01-2013 10:54:26', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9224, '00394', 520, '������', 520, 4, null, 'A', 313, to_date('24-11-2011 11:55:00', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9226, '00394', 522, '����������� ���������� ��������������� �� ���������� ����� �����', 522, 4, 520, 'A', 313, to_date('24-11-2011 12:05:21', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9228, '00394', 523, '�������� ��������� ��������� �����', 523, 4, 520, 'A', 313, to_date('24-11-2011 12:15:26', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9230, '00394', 521, '������� ����������� �������� �����', 521, 4, 520, 'A', 313, to_date('24-11-2011 12:17:31', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9232, '00394', 524, '����� ��������� ������� �� ������ ������������ �����', 524, 4, 520, 'A', 313, to_date('24-11-2011 12:27:14', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9234, '00394', 525, '��������� ������ �����', 525, 4, 520, 'A', 313, to_date('24-11-2011 12:31:27', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9236, '00394', 526, '����� �� ����������� �������� �����', 526, 4, 520, 'A', 313, to_date('24-11-2011 12:36:45', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9238, '00394', 527, '������� �������� �����', 527, 4, 520, 'A', 313, to_date('24-11-2011 12:38:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9240, '00394', 528, '�������� �������� �����', 528, 4, 520, 'A', 313, to_date('24-11-2011 12:42:39', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9242, '00394', 529, '�������� �������� �������', 529, 21, 520, 'A', 313, to_date('24-11-2011 12:44:22', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9244, '00394', 530, '����������� ������������� �����', 530, 4, 520, 'A', 313, to_date('24-11-2011 12:45:48', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9246, '00394', 531, '����������� ������������� �������', 531, 21, 520, 'A', 313, to_date('24-11-2011 12:47:16', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9248, '00394', 532, '����� ���������� �������', 532, 21, 520, 'A', 313, to_date('24-11-2011 12:48:34', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9250, '00394', 533, ' ����� ������ �����', 533, 4, 520, 'A', 313, to_date('24-11-2011 12:51:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9252, '00394', 534, '���� ��� ������������ ���������� ���������� ����� �������', 534, 21, 520, 'A', 313, to_date('24-11-2011 12:54:12', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9254, '00394', 535, '�������� ����� ����� �����', 535, 4, 520, 'A', 313, to_date('24-11-2011 12:56:00', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9256, '00394', 536, '������ ����', 536, 4, 520, 'A', 313, to_date('24-11-2011 12:57:03', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9258, '00394', 537, '������ �����', 537, 21, 520, 'A', 313, to_date('24-11-2011 12:58:37', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9260, '00394', 538, '���������� �������', 538, 21, 520, 'A', 313, to_date('24-11-2011 13:01:04', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9262, '00394', 539, '������� ����', 539, 4, 520, 'A', 313, to_date('24-11-2011 13:02:26', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9264, '00394', 540, '���� ������� �����', 540, 4, 520, 'A', 313, to_date('24-11-2011 13:03:30', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9464, '00394', 1077, '����� ��������� ������� �� ������ ����������� �������', 1077, 6, 1061, 'A', 313, to_date('11-12-2012 15:01:54', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8343, '00394', 1, '���������', 1, 4, null, 'A', 366, to_date('20-04-2012 10:07:51', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8344, '00394', 2, '���� ��������', 2, 3, null, 'A', 364, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8345, '00394', 3, '���������� ����������', 3, 3, null, 'A', 364, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8346, '00394', 4, '������ ���������', 4, 4, null, 'A', 364, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8347, '00394', 5, '�������� ����� ����� ������������', 5, 20, null, 'A', 364, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8348, '00394', 6, '������ ��������', 6, 3, null, 'A', 364, to_date('25-10-2011 17:45:43', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8349, '00394', 7, '����������� ����������� ������������� ����������', 7, 4, 126, 'A', 364, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8350, '00394', 8, '���� ������������� �� ��������� �������', 8, 2, null, 'A', 364, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8351, '00394', 9, '�������� �����', 9, 4, 8, 'A', 364, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8352, '00394', 10, '������� ������������� ���� �������', 10, 2, 8, 'P', 364, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8353, '00394', 11, '������� ����', 11, 4, null, 'A', 114, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8354, '00394', 12, '������� ����', 12, 4, null, 'A', 114, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8355, '00394', 13, '��������� �� ������� �������', 13, 4, null, 'A', 364, to_date('28-09-2011 15:13:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8356, '00394', 14, '���� ��������� ������ ����� �� ��������������� �������', 14, 21, 300, 'P', 313, to_date('18-11-2011 16:36:52', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8357, '00394', 15, '����������� ���������� �������� �����', 15, 4, 90, 'A', 364, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8358, '00394', 16, '�������� ����� �� ���� ������������� �������������', 16, 7, 300, 'P', 252, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8359, '00394', 17, '����������� �����', 17, 4, 8, 'A', 364, to_date('20-10-2011 10:28:11', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8360, '00394', 18, '����������� ������������� ������ ����� ����������', 18, 3, 33, 'A', 364, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8361, '00394', 19, '�������� �������� ��������� �����', 19, 4, 90, 'A', 364, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8362, '00394', 20, '����������� ����� ����� �������', 20, 21, 90, 'A', 364, to_date('09-11-2012 12:04:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8363, '00394', 21, '����������� ������ �������� ��������� �����', 21, 4, 7, 'A', 364, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8364, '00394', 22, '����������� ������� �������� ��������� �����', 22, 4, 7, 'A', 364, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8365, '00394', 23, '����� ������ �������', 23, 21, 18, 'A', 364, to_date('23-10-2012 12:31:36', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8366, '00394', 24, '������ �����������������  ����������� �����', 24, 4, 127, 'A', 364, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8367, '00394', 25, '���� ������������  �����', 25, 4, 222, 'A', 364, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8368, '00394', 26, '���� ���������������� ��������������� �����', 26, 4, 222, 'A', 364, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8369, '00394', 27, '������ ���������� ����������� ���������� ��������������� �� ������� ����� ������', 27, 4, 300, 'P', 252, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8370, '00394', 28, '��������� ������������ �����', 28, 4, 128, 'A', 364, to_date('28-09-2011 15:13:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8371, '00394', 29, '������� ������ �������� ������������ �������� �����', 29, 4, 128, 'A', 364, to_date('15-01-2013 17:50:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8372, '00394', 30, '����� �� ����������� �������� �����', 30, 4, 128, 'A', 364, to_date('20-10-2011 15:03:47', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8373, '00394', 31, '���� ���������������� �������� �����', 31, 4, 128, 'A', 364, to_date('28-09-2011 15:13:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8374, '00394', 32, '������ ������� ����� ����� �����', 32, 4, 65, 'A', 364, to_date('08-11-2012 09:34:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8375, '00394', 33, '����������� ������ �� �������� ������������', 33, 20, null, 'A', 364, to_date('28-09-2011 15:13:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8376, '00394', 34, '����������� ������������� ������ ����� �����', 34, 4, 18, 'A', 364, to_date('28-09-2011 15:13:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8377, '00394', 35, '���� ��������� ������� �����', 35, 4, 18, 'A', 364, to_date('28-09-2011 15:13:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8378, '00394', 36, 'Ң��� �������', 36, 2, 33, 'A', 364, to_date('28-09-2011 15:13:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8379, '00394', 37, '����� ����������', 37, 3, 128, 'A', 364, to_date('28-09-2011 15:13:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8380, '00394', 38, '��������� ������������ ���������� ����� �����', 38, 4, 37, 'A', 364, to_date('16-01-2013 17:57:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8381, '00394', 39, '���� �������� �������� ����������� ����� ', 39, 4, 37, 'A', 364, to_date('28-09-2011 15:13:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8382, '00394', 40, '����������� �������� ������ ������� �����', 40, 3, 133, 'A', 364, to_date('28-09-2011 15:13:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8383, '00394', 41, '������ ������������� ��������� �����', 41, 4, 133, 'A', 364, to_date('28-09-2011 15:13:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8384, '00394', 42, '���������� ����������� �����', 42, 4, 188, 'A', 364, to_date('28-09-2011 15:13:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8385, '00394', 43, '����������� �� ��������������� ������������ ���������� ����� ����������       ', 43, 3, null, 'A', 364, to_date('23-01-2013 11:11:54', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8386, '00394', 44, '����� ��������� ������� �� ������ ������������ ������������', 44, 20, null, 'A', 364, to_date('28-09-2011 15:13:26', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8387, '00394', 45, '����������� ������������ ���������� ����� �����', 45, 4, 43, 'A', 364, to_date('23-01-2013 11:20:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8388, '00394', 46, '������ ������� ������������ ���������� ����� �����', 46, 4, 43, 'A', 364, to_date('23-01-2013 11:21:08', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8389, '00394', 47, '����� ����� ������ ������', 47, 4, 300, 'P', 252, to_date('28-09-2011 15:13:26', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8390, '00394', 48, '�������-������ ������������ �����', 48, 4, 300, 'P', 364, to_date('28-09-2011 15:13:26', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8391, '00394', 49, '������ ���������� ����������� ���������� ��������������� �����', 49, 4, 130, 'A', 364, to_date('11-08-2012 11:40:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8392, '00394', 50, '������� ������� �������� �����', 50, 4, 178, 'A', 313, to_date('28-09-2011 15:13:26', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8393, '00394', 51, '���� ����� ������������', 51, 20, null, 'A', 364, to_date('20-10-2011 16:56:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8394, '00394', 52, '�������� �����, ����� ����������  ������� �� ���������� �����', 52, 4, 300, 'P', 114, to_date('28-09-2011 15:13:26', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8395, '00394', 53, '���� ������������ ��������� ����� ����� ����������', 53, 3, 300, 'P', 313, to_date('28-09-2011 15:13:26', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8396, '00394', 54, '��������� ���������� ��������� ����� ����� �����', 54, 4, 300, 'P', 114, to_date('28-09-2011 15:13:26', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8397, '00394', 55, '��������� ����� ������������ �������������� �����', 55, 4, 126, 'A', 364, to_date('15-01-2013 17:39:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8398, '00394', 56, '���������� ����������� �������� �����', 56, 4, 126, 'A', 364, to_date('16-01-2013 14:33:56', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8399, '00394', 57, '�������� �������� ����� ����� �����', 57, 4, 6, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8400, '00394', 58, '��������� �� �������� �������', 58, 21, 8, 'A', 364, to_date('23-10-2012 12:30:08', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8401, '00394', 59, '������ ������ �����', 59, 4, 6, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8402, '00394', 60, '�����������-������� ������������ �����', 60, 4, 6, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 200 records committed...
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8403, '00394', 61, '���������� �� �������� �����', 61, 4, 3, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8404, '00394', 62, '������������ ����� ����� �����', 62, 4, 3, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8405, '00394', 63, '��������� ��������� ����� ����� �����', 63, 4, 65, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8406, '00394', 64, '�������� ������� ��������� ����� ����� �����', 64, 4, 5, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8407, '00394', 65, '��������� ��������� ����� ����� ����������', 65, 3, 5, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8408, '00394', 66, '������ �������� ����� ����� �����', 66, 4, 65, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8409, '00394', 67, '���� �������� �����', 67, 4, 2, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8410, '00394', 68, '������������� �������������� ���� ����� �������', 68, 21, 2, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8411, '00394', 69, '������ ���������� ��������� ����������', 69, 3, 132, 'A', 364, to_date('28-09-2011 15:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8412, '00394', 70, '������ ���������� ��������� �����', 70, 4, 69, 'A', 364, to_date('28-09-2011 15:13:28', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8413, '00394', 71, '����� �������� �������', 71, 21, 2, 'A', 364, to_date('28-09-2011 15:13:28', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8414, '00394', 72, '������ �������� ���������� ����������� �����', 72, 4, 69, 'P', 364, to_date('28-09-2011 15:13:28', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8415, '00394', 73, '������ ���������� ������� ��������� �����', 73, 4, 69, 'P', 364, to_date('28-09-2011 15:13:28', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8416, '00394', 74, '����������� �������� ������ ������� �����', 74, 4, 133, 'A', 364, to_date('28-09-2011 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8417, '00394', 75, '�������� ������������� ������ ������� �����', 75, 4, 133, 'A', 364, to_date('28-09-2011 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8418, '00394', 76, '����� ��������� ���������� ����������� ����� ����� ����������', 76, 3, 132, 'A', 364, to_date('28-09-2011 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8419, '00394', 77, '������ ������� ����������� �����-����� ���������� ����� ����� �����', 77, 4, 76, 'A', 364, to_date('28-09-2011 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8420, '00394', 78, '������ ������� �������������� �����-����� ���������� ����� ����� �����', 78, 4, 76, 'A', 364, to_date('28-09-2011 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8421, '00394', 79, '������� ��������� �����', 79, 4, null, 'A', 364, to_date('28-09-2011 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8422, '00394', 80, '����� ������ ������������ ��������� �����', 80, 4, 134, 'A', 114, to_date('28-09-2011 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8423, '00394', 81, '����������� ���������� �����  �����', 81, 4, 134, 'A', 114, to_date('28-09-2011 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8424, '00394', 82, '�������������� �����', 82, 4, 134, 'A', 364, to_date('19-10-2011 18:16:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8425, '00394', 83, '��������� ������������ ���������� ��������� �����', 83, 4, 135, 'A', 364, to_date('28-09-2011 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8426, '00394', 84, '������� ���������� ������� �����', 84, 4, 135, 'A', 364, to_date('28-09-2011 15:13:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8427, '00394', 85, '������ �������� ������������ ������ �� ���������� ����� �����', 1, 4, 69, 'A', 364, to_date('18-05-2012 15:12:06', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8428, '00394', 86, '������ �������� ��������������� �������� ���������� ����� ����� �����', 86, 4, 69, 'A', 364, to_date('18-05-2012 15:24:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8429, '00394', 87, '������� ��������� ����������', 87, 3, 132, 'A', 364, to_date('18-05-2012 15:26:20', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8430, '00394', 88, '����� �� ����� �������� ��������� �����', 88, 4, 87, 'A', 364, to_date('18-05-2012 15:29:13', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8431, '00394', 89, '����� �� ����� ���������� �������������� ���������� ����� �����', 89, 4, 87, 'A', 364, to_date('18-05-2012 15:31:28', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8432, '00394', 90, '�������� ��������  ����������', 90, 3, null, 'A', 114, to_date('28-09-2011 15:13:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8433, '00394', 91, '�������� �������� ����� ������ ����������� �����', 91, 4, 90, 'P', 114, to_date('28-09-2011 15:13:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8434, '00394', 92, '�������� �������� ����� ����� �����������  ������', 92, 4, 90, 'P', 114, to_date('28-09-2011 15:13:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8435, '00394', 93, '����� ������������ ����������', 93, 3, 300, 'P', 114, to_date('28-09-2011 15:13:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8436, '00394', 94, '����� ����� ��������������� �����', 94, 4, 137, 'A', 364, to_date('28-09-2011 15:13:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8437, '00394', 95, '����� ����� ����������� �����', 95, 4, 137, 'A', 364, to_date('28-09-2011 15:13:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8438, '00394', 96, '������� �������������� ��� ����������', 96, 8, 300, 'P', 364, to_date('28-09-2011 15:13:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8439, '00394', 97, '������������� �� ��������� ����������', 97, 3, 138, 'A', 364, to_date('28-09-2011 15:13:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8440, '00394', 98, '���� ������������ ��������������� �����', 98, 4, 97, 'A', 364, to_date('28-09-2011 15:13:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8441, '00394', 99, '������������������� ��  ������ ������ �����', 99, 4, 97, 'A', 364, to_date('28-09-2011 15:13:30', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8442, '00394', 100, '���� ������ �� ������������� �����', 100, 4, 97, 'A', 364, to_date('09-02-2012 11:24:56', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8443, '00394', 101, '��������� �����', 101, 4, 111, 'A', 364, to_date('22-10-2011 13:45:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8444, '00394', 102, '������� �������� ����� ����� ����������', 102, 3, null, 'A', 114, to_date('28-09-2011 15:13:31', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8445, '00394', 103, '������� ����������', 103, 3, 138, 'A', 364, to_date('28-09-2011 15:13:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8446, '00394', 104, '������������ �����', 104, 4, 103, 'A', 68, to_date('28-09-2011 15:13:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8447, '00394', 105, 'Ң��� ������������ �����', 105, 4, 103, 'P', 114, to_date('28-09-2011 15:13:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8448, '00394', 106, 'Ң��� ������ ����������� �� �������� �����', 106, 4, 103, 'P', 114, to_date('28-09-2011 15:13:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8449, '00394', 107, '������� ����������� ���������, ���������� �����  �� ������ ����������  ����������', 107, 3, null, 'P', 114, to_date('28-09-2011 15:13:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8450, '00394', 108, '������� ����������� ��������� �� ���������� ����� �����', 108, 4, 107, 'P', 114, to_date('28-09-2011 15:13:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8451, '00394', 109, '������ ������������ ��������  �����', 109, 4, 107, 'P', 114, to_date('28-09-2011 15:13:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8452, '00394', 110, '������� ������� �������� (VIZA) �������', 110, 21, 117, 'A', 364, to_date('04-02-2012 13:24:24', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8453, '00394', 111, '���� ������������  ����������', 111, 3, null, 'A', 252, to_date('28-09-2011 15:13:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8454, '00394', 112, '�������� ��������� ��������� �����', 112, 4, 111, 'A', 364, to_date('24-10-2011 17:31:28', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8455, '00394', 113, '��� ��������� �����', 113, 4, 111, 'A', 114, to_date('28-09-2011 15:13:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8456, '00394', 114, '����� ���������� �����', 114, 4, 111, 'A', 364, to_date('24-10-2011 16:59:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8457, '00394', 115, '���� ���� �����-������ �����', 115, 4, 111, 'A', 114, to_date('28-09-2011 15:13:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8458, '00394', 116, '����������� ������ �� �������� �����', 116, 4, 111, 'A', 364, to_date('24-10-2011 12:06:09', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8459, '00394', 117, '������� �������� �����', 117, 4, 111, 'A', 364, to_date('25-10-2011 10:13:58', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8460, '00394', 118, '���� �� ��������� �������������� �����', 118, 4, 211, 'A', 364, to_date('26-10-2011 11:25:14', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8461, '00394', 119, 'բ����� �� �������� �����', 119, 4, 211, 'A', 364, to_date('26-10-2011 12:40:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8462, '00394', 120, '������ ����� �������', 120, 9, 211, 'A', 364, to_date('26-10-2011 16:56:44', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8463, '00394', 121, '������� ��� ����  ������� ', 121, 10, 211, 'A', 364, to_date('26-10-2011 11:21:50', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8464, '00394', 122, '������ ����� ������� ������', 122, 9, 211, 'P', 114, to_date('28-09-2011 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8465, '00394', 123, '������������', 123, 7, 208, 'A', 364, to_date('28-09-2011 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8466, '00394', 124, '����� ���������� ����� ����� ����������', 124, 3, null, 'A', 364, to_date('28-09-2011 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8467, '00394', 125, '����������� ������������� �����', 125, 4, 111, 'A', 364, to_date('25-10-2011 14:59:31', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8468, '00394', 126, '����������� ���������� ��������������� �� ���������� ����� ������������', 126, 20, null, 'A', 364, to_date('25-10-2011 18:30:58', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8469, '00394', 127, '��������� ������ ������������', 127, 20, null, 'A', 364, to_date('28-09-2011 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8470, '00394', 128, '���������� ������������', 128, 20, null, 'A', 364, to_date('28-09-2011 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8471, '00394', 129, '���� ������� ����������', 129, 3, null, 'A', 364, to_date('28-09-2011 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8472, '00394', 130, '������ ���������� ������������ ������ ����������    ', 130, 3, null, 'A', 364, to_date('28-09-2011 15:13:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8473, '00394', 131, '����� ����� ', 131, 4, null, 'A', 364, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8474, '00394', 132, '������ ���������� ��������� ������������ ', 132, 20, null, 'A', 364, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8475, '00394', 133, '������� ����������� ��������� ����������', 133, 3, null, 'A', 364, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8476, '00394', 134, '����� ������ ������������� ��������� ����������', 134, 3, null, 'A', 364, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8477, '00394', 135, '�������� ��������� ��������� ����������   ', 135, 3, null, 'A', 364, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8478, '00394', 136, '��� ��������� ������������', 136, 20, null, 'A', 364, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8479, '00394', 137, '����� ������ ����������', 137, 3, null, 'A', 364, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8480, '00394', 138, '����������� ������������� ������������', 138, 20, null, 'A', 364, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8481, '00394', 139, '������� ������� ����������', 139, 3, null, 'A', 364, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8482, '00394', 143, '��� ������������ ��������������� ������������ ������ ������', 143, 4, 51, 'A', 114, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8483, '00394', 144, '��� ������������ ������� ������� ������ ������', 144, 4, 51, 'P', 114, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8484, '00394', 145, '����� ������� ���������', 145, 15, 300, 'P', 364, to_date('28-11-2011 14:08:22', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8485, '00394', 146, '��� ������������ ������ ������� ������ ������', 146, 4, 51, 'P', 114, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8486, '00394', 147, '��� ������������ ��������� ������� ������ ������', 147, 4, 51, 'P', 114, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8487, '00394', 148, '��� ������������ ������ ������� ������ ������', 148, 4, 51, 'P', 114, to_date('28-09-2011 15:13:34', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8488, '00394', 149, '��� ������������ �������� ������� ������ ������ ', 149, 4, 51, 'P', 114, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8489, '00394', 150, '��� ������������ ��������� ������� ������ ������', 150, 4, 51, 'P', 114, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8490, '00394', 151, '��� ������������ ���������� ������� ������ ������', 151, 4, 51, 'P', 114, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8491, '00394', 152, '��� ������������ ������� ������� ������ ������', 152, 4, 300, 'P', 114, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8492, '00394', 153, '��� ������������ ������� ������� ������ ������', 153, 4, 51, 'P', 114, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8493, '00394', 154, '������� ������������ ������������� ����������� ���������� �����', 154, 4, 102, 'P', 364, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8494, '00394', 155, '��������� ����� ����� �����', 155, 4, 300, 'P', 313, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8495, '00394', 156, '������ ������������ �����', 156, 4, 124, 'A', 364, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8496, '00394', 157, '���������� ��������� �����', 157, 4, 124, 'A', 364, to_date('20-12-2012 15:08:08', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8497, '00394', 158, '���� ���������������� ������ ���� �������', 158, 6, 156, 'P', 114, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8498, '00394', 159, '��������� �������� ��������� ����� ����� ������', 159, 4, 86, 'P', 114, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8499, '00394', 160, '"On-line" ������  ����� ����� �����', 160, 4, 102, 'A', 364, to_date('16-01-2013 15:50:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8500, '00394', 161, '������ ������������ �������� ������ �������', 161, 4, 44, 'A', 364, to_date('21-10-2011 11:02:19', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8501, '00394', 162, '������� �������� �������� �����', 162, 4, 102, 'A', 364, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8502, '00394', 163, '���� ��������� �� �������������� ������ ������� �����', 163, 4, 102, 'A', 364, to_date('28-09-2011 15:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 300 records committed...
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8503, '00394', 164, '������� �������', 164, 2, 111, 'A', 364, to_date('25-10-2011 15:08:09', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8504, '00394', 165, '"�������" ��������', 165, 15, 111, 'A', 364, to_date('25-10-2011 10:23:04', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8505, '00394', 166, '�������  ��������', 166, 15, 111, 'A', 252, to_date('28-09-2011 15:13:36', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8506, '00394', 167, '"����-���" ��������', 167, 15, 111, 'A', 364, to_date('26-10-2011 10:08:23', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8507, '00394', 168, '������ ����� ���������� �����', 168, 4, 172, 'A', 364, to_date('21-10-2011 10:55:32', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8508, '00394', 169, '������� �������� ��������� ������� ������', 169, 4, 300, 'P', 114, to_date('28-09-2011 15:13:36', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8509, '00394', 170, '"����� �������" ����� ��������', 170, 15, 111, 'A', 252, to_date('28-09-2011 15:13:36', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8510, '00394', 171, '���� ��� ������������ ���������� ���������� ����� ������ ������ ������', 171, 6, null, 'P', 114, to_date('28-09-2011 15:13:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9424, '00394', 250, '������ ��������', 250, 4, 1, 'P', 366, to_date('20-04-2012 10:00:15', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9486, '00394', 238, '����������� ���������� ����� �����', 238, 4, 237, 'A', 364, to_date('23-01-2013 11:09:58', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8511, '00394', 172, '����� ����� ����������� ����������', 172, 3, 44, 'A', 364, to_date('25-10-2011 18:45:46', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8512, '00394', 173, '���� ��� ����������� ���������� ����� ������', 173, 4, 195, 'A', 252, to_date('28-09-2011 15:13:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8513, '00394', 174, '���� ��� ��������� ����� ������������ ������ ����� �����', 174, 4, 195, 'A', 313, to_date('28-09-2011 15:13:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8514, '00394', 175, '�������� ���������', 175, 7, 2, 'A', 252, to_date('28-09-2011 15:13:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8515, '00394', 176, '���� ��� ���������� ������ �� ���������� ������� ����� ������ ����������', 176, 3, 172, 'P', 114, to_date('28-09-2011 15:13:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8516, '00394', 177, '���� ������� ��������� ������ ����� �����', 177, 4, 189, 'A', 364, to_date('28-09-2011 15:13:37', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8517, '00394', 178, '������� ��������� ����������', 178, 3, 44, 'A', 364, to_date('22-10-2011 15:20:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8518, '00394', 179, '�������-������ ������������ �� �������� ������� ���������� ����� �����', 179, 4, 172, 'A', 364, to_date('21-10-2011 10:37:01', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8519, '00394', 180, '������ �������� ����������� ������������ ������������� ����������', 180, 3, 126, 'A', 364, to_date('28-09-2011 15:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8520, '00394', 181, '������ �������� ������������� ������ �������� ��������� �����', 181, 4, 180, 'A', 364, to_date('28-09-2011 15:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8521, '00394', 182, '������ �������� ������������� ������� �������� ��������� �����', 182, 4, 180, 'A', 364, to_date('28-09-2011 15:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8522, '00394', 183, '������� ����������� �� �������� ������������� ����������', 183, 3, 44, 'P', 252, to_date('28-09-2011 15:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8523, '00394', 184, '������� ���������� ���������  �������', 184, 4, 300, 'P', 364, to_date('28-09-2011 15:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8524, '00394', 185, '������ ���������� �������������� ������ ����� �����', 185, 4, 130, 'A', 364, to_date('20-10-2011 15:44:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8525, '00394', 186, '��������������� ������', 186, 4, 300, 'P', 114, to_date('28-09-2011 15:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8526, '00394', 187, '�������� ���������� ������� �����', 187, 4, 135, 'A', 364, to_date('28-09-2011 15:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8527, '00394', 188, '�������� ������������� �� ���������� ����������� ����������', 188, 3, 44, 'A', 364, to_date('21-10-2011 10:46:20', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8528, '00394', 189, '���� ��� ���������� ���������� ���������� ����� ������ ���������� ', 189, 3, 136, 'A', 114, to_date('28-09-2011 15:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8529, '00394', 190, '���� ��� ���������� ���������� ���������� ����� �����', 190, 4, 189, 'A', 364, to_date('28-09-2011 15:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8530, '00394', 191, '������������� ������', 191, 4, 103, 'A', 364, to_date('28-09-2011 15:13:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8531, '00394', 192, '�������� ������������� �����', 192, 4, 188, 'A', 364, to_date('15-10-2012 12:14:39', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8532, '00394', 193, '�������� ������� ������� �� ��������� �����', 193, 4, 139, 'A', 364, to_date('28-09-2011 15:13:39', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8533, '00394', 194, '������ ������� �� ���������� �����', 194, 4, 139, 'A', 364, to_date('28-09-2011 15:13:39', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8534, '00394', 195, '���� ��� ����������� ������ ����� ����������', 195, 3, 136, 'A', 364, to_date('28-09-2011 15:13:39', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8535, '00394', 196, 'C������ �������', 196, 21, 135, 'A', 364, to_date('23-10-2012 12:32:19', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8536, '00394', 197, '����� ������ �����', 197, 4, 111, 'A', 364, to_date('22-10-2011 14:47:29', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8537, '00394', 198, '������� ��� ����������� ��������� ����� ����� �����', 198, 4, 178, 'A', 364, to_date('21-10-2011 10:42:10', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8538, '00394', 199, '������ ��������', 199, 22, 197, 'A', 364, to_date('22-10-2011 15:19:42', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8539, '00394', 200, '������ �������� ��������������� ����� ', 200, 4, 222, 'A', 364, to_date('28-09-2011 15:13:39', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8540, '00394', 201, '��������� ������ ����������', 201, 3, 51, 'A', 364, to_date('20-10-2011 16:59:25', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8541, '00394', 202, '����� ���������� ������� �����', 202, 4, 201, 'A', 364, to_date('20-10-2011 17:01:02', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8542, '00394', 203, '��������� ����� �� ���������� ����������', 203, 3, 51, 'A', 364, to_date('20-10-2011 17:02:18', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8543, '00394', 204, '�������� ���������� ������� �����', 204, 4, 203, 'A', 364, to_date('20-10-2011 17:03:55', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8544, '00394', 205, '������� ������������ �� ����������� �����', 205, 4, 203, 'A', 364, to_date('20-10-2011 17:05:10', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8545, '00394', 206, '���� ������������ ����� ����� �����', 206, 4, 129, 'A', 364, to_date('28-09-2011 15:13:39', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8546, '00394', 207, '���� ��������� ��������������� �����', 207, 4, 129, 'A', 364, to_date('28-09-2011 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8547, '00394', 208, '���������', 208, 3, null, 'A', 114, to_date('28-09-2011 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8548, '00394', 209, '������ ����� ����� ������', 209, 4, 208, 'A', 252, to_date('28-09-2011 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8549, '00394', 210, '���������� ������', 210, 4, 208, 'A', 252, to_date('28-09-2011 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8550, '00394', 211, '����� ����������', 211, 3, null, 'A', 364, to_date('25-10-2011 18:34:02', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8551, '00394', 212, '�������� �������� ���������� �������� �� ���������� ����� �����', 212, 4, 300, 'P', 252, to_date('28-09-2011 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8552, '00394', 213, '����������� ����� �����, ���� �������� ������ �� ���������� ����� �����', 213, 4, 300, 'P', 114, to_date('28-09-2011 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8553, '00394', 214, '�������� �������� ����������� ������ ���� ������', 214, 4, 300, 'P', 252, to_date('28-09-2011 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8554, '00394', 215, '����� ����������� ������� ����� ������', 215, 4, 300, 'P', 252, to_date('28-09-2011 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8555, '00394', 216, '���� ����� �����', 216, 4, 111, 'A', 364, to_date('20-10-2011 17:35:49', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8556, '00394', 217, '������ �����', 217, 4, 111, 'A', 313, to_date('28-09-2011 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8557, '00394', 218, '�������� �������� �������', 218, 6, 111, 'A', 364, to_date('22-10-2011 13:38:45', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8558, '00394', 219, '����� ��������� ������� �� ������ ������������ �����', 219, 4, 111, 'A', 364, to_date('22-10-2011 15:33:14', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8559, '00394', 220, '������� ��� ����������� ��������� ����� ����� �������', 220, 21, 219, 'A', 364, to_date('22-10-2011 15:34:38', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8560, '00394', 222, '��������� ������ �� ���������� ����������', 222, 3, 127, 'A', 252, to_date('28-09-2011 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8561, '00394', 223, '�������� ������� ��������� ����������� �������', 223, 6, 21, 'P', 252, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8562, '00394', 224, '������ ���������� ����������� ���������� ��������������� ������� ', 224, 21, 219, 'A', 364, to_date('23-10-2012 12:29:52', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8563, '00394', 225, '������ �������������� ����� ����� �����', 225, 4, 300, 'P', 313, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8564, '00394', 226, '����� ����� �������������� ��������������� ������', 226, 4, 300, 'P', 252, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8565, '00394', 227, '���� ����� ��������� ���������� ����������� �����', 277, 4, 300, 'P', 313, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8566, '00394', 228, '�������� ����� ����� �����', 228, 4, 300, 'P', 313, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8567, '00394', 229, '�������� ������� ��������� ����� ����� �� ���������� �����', 229, 4, 300, 'P', 313, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8568, '00394', 230, '������ ������� ����������', 230, 3, null, 'A', 313, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8569, '00394', 231, '������ ������� ������ ����� ����� �����', 231, 4, 230, 'A', 364, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8570, '00394', 232, '������ ������� ������������� ������ ����� �����', 232, 4, 230, 'A', 364, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8571, '00394', 233, '����� ����������� ����� �����  ��� ����������', 233, 8, 300, 'P', 313, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8572, '00394', 234, '����� ���������� ����� ����� ����������', 234, 3, 300, 'P', 313, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8573, '00394', 235, '������ ������������ �����', 235, 4, 234, 'P', 313, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8574, '00394', 236, '���������� �� ���������� �����', 236, 4, null, 'P', 313, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8575, '00394', 300, '���������', 300, 6, null, 'P', 364, to_date('28-09-2011 15:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8576, '00394', 401, '���������', 401, 1, 520, 'A', 114, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8577, '00394', 402, '������������� ����������������� ���������� ����� �� ������� �������� ��������������� ������� ����� ����� ', 402, 4, 542, 'A', 252, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8578, '00394', 403, '����� �� ����������� �������� ������', 403, 4, 542, 'A', 114, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8579, '00394', 404, '����� �������� ��������� �� ���������� ������', 404, 4, null, 'A', 114, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8580, '00394', 405, '������ ���������� ��������� �� ���������� ������', 405, 4, null, 'A', 114, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8581, '00394', 406, '����� ������ ������������� ��������� �� ���������� ������', 406, 4, null, 'A', 114, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8582, '00394', 407, '������� ���������� ���������� ������ �����  �� ���������� �������', 407, 4, null, 'A', 252, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8583, '00394', 408, '������� ����������� ���������, ���������� ����� �� ������ ���������� ������', 408, 4, null, 'A', 114, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8584, '00394', 409, '����������� ������������� ������', 409, 6, null, 'A', 114, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8585, '00394', 410, '��� ��������� ������', 410, 4, 520, 'A', 114, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8586, '00394', 411, '����� ������������ ������', 411, 4, null, 'A', 114, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8587, '00394', 412, '������ ���������������� �������� ������', 412, 4, null, 'A', 252, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8588, '00394', 413, '������� ���� �������� ������', 413, 4, null, 'A', 114, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8589, '00394', 414, '�������� �������� ����� ����� ������', 414, 4, null, 'A', 252, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8590, '00394', 415, '��������� �������������� ������', 415, 4, null, 'A', 252, to_date('28-09-2011 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8591, '00394', 416, '������� ����� ����� ������', 416, 4, null, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8592, '00394', 417, '������ �����', 417, 4, null, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8593, '00394', 418, '���������� �� ������������ �������� ������', 418, 4, null, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8594, '00394', 419, '������� �����', 419, 4, null, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8595, '00394', 420, '������ �����', 420, 4, 520, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8596, '00394', 421, '������ ������� �������', 421, 4, null, 'A', 302, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8597, '00394', 422, '��������� �� ���������  ������ ������', 422, 4, 421, 'A', 252, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8598, '00394', 423, '����������� ������ �� �������� ������', 423, 4, 421, 'A', 252, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8599, '00394', 424, '��������������� ������', 424, 4, 421, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8600, '00394', 425, '����� ������� �������� ������', 425, 4, 421, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
commit;
prompt 400 records committed...
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8601, '00394', 426, '������ ���������� ���������', 426, 16, 421, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8602, '00394', 427, '��� ����� ', 427, 15, 434, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8603, '00394', 428, '����� �����', 428, 15, 434, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8604, '00394', 429, '����� �����', 429, 15, 434, 'A', 114, to_date('28-09-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8605, '00394', 430, '������ �����', 430, 15, 434, 'A', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8606, '00394', 431, '�������� �����', 431, 15, 434, 'A', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8607, '00394', 432, '������ �����', 432, 15, 434, 'A', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8608, '00394', 433, '������� �����', 433, 15, 434, 'A', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8609, '00394', 434, '���� ����', 434, 15, 520, 'A', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8610, '00394', 435, '��������� (���)', 435, 1, 542, 'A', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8611, '00394', 436, '������ ��������� ������', 436, 6, null, 'P', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8612, '00394', 437, '������ ����������� ������', 437, 6, null, 'P', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8613, '00394', 438, '����������� ������������� ������', 438, 4, null, 'P', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8614, '00394', 439, '�������������� �� ���������� (����) ������', 439, 4, 421, 'A', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8615, '00394', 440, '���� ��� ���������� ���������� ���������� ����� ������ ������ ������', 440, 6, null, 'A', 114, to_date('28-09-2011 15:13:44', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8616, '00394', 441, '������ ��������� ����� ����� �����', 441, 4, null, 'P', 114, to_date('28-09-2011 15:13:45', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8617, '00394', 442, '�������� ������� ������  �������', 442, 6, 412, 'A', 114, to_date('28-09-2011 15:13:45', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8618, '00394', 443, '������ ���������� �������� ������', 443, 4, null, 'P', 114, to_date('28-09-2011 15:13:45', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8619, '00394', 444, '������ ��������� ����� ����� ������', 444, 4, null, 'P', 114, to_date('28-09-2011 15:13:45', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8620, '00394', 445, '������ ���������� ������', 445, 4, null, 'P', 114, to_date('28-09-2011 15:13:45', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8621, '00394', 446, '�������', 446, 15, 434, 'A', 114, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8622, '00394', 447, '���� ���������� ������ ����� �� ���������� ������', 447, 4, null, 'P', 114, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8623, '00394', 448, '������� �������� ����� ����� ������', 448, 6, null, 'A', 252, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8624, '00394', 449, '�������� ����������� ���������� ��������������� �� ���������� ����� ������', 449, 4, null, 'A', 252, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8625, '00394', 450, '����� ������ ������������� ���������  �����', 450, 4, 520, 'A', 313, to_date('25-11-2011 09:25:01', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8626, '00394', 451, '���� ��������� ��������������� �����', 451, 4, null, 'A', 114, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8627, '00394', 452, '������� ����������� ��������� �� ���������� ����� �����', 452, 4, null, 'P', 114, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8628, '00394', 453, '������� ����������� ��������� �� ���������� ����� �����', 453, 4, null, 'P', 114, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8629, '00394', 454, '��������� �������������� ������', 454, 4, null, 'P', 252, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8630, '00394', 455, '������� ����������� ����� ����� ������', 455, 4, null, 'P', 252, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8631, '00394', 500, '��������-�������� �� �������� �������������� ��������� �� ���������� �����', 500, 4, null, 'A', 252, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8632, '00394', 501, '������ �� �������� �������� ��������� �� ���������� �����', 501, 4, null, 'A', 252, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8633, '00394', 502, '����������� ������ �� �������� �����', 502, 4, 520, 'A', 252, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8634, '00394', 503, '���� ��� ������������ ���������� ���������� ����� ������', 503, 6, null, 'P', 252, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8635, '00394', 504, '���������� �����', 504, 4, 520, 'A', 313, to_date('28-11-2011 16:41:41', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8636, '00394', 505, '������� ��������� ����� ����� �������', 505, 6, 421, 'A', 252, to_date('28-09-2011 15:13:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8637, '00394', 506, '������� ���������� ���������� ������ ������� ���������� �����', 506, 4, null, 'A', 252, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8638, '00394', 507, '������ �������� ���������������, ��������� ������ ���� �� ������� �������', 507, 6, null, 'A', 252, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8639, '00394', 508, '������� ����������� ��������� �� ���������� ����� �������', 508, 6, null, 'A', 252, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8640, '00394', 509, '������ ��������� ������ ����� ������', 509, 4, null, 'A', 252, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8641, '00394', 510, '��� ��������� �������', 510, 6, null, 'A', 302, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8642, '00394', 511, '��������� �������������� ����� ����� �������', 511, 6, 421, 'A', 302, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8643, '00394', 512, '��� ��������� �����', 512, 4, 542, 'A', 302, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8644, '00394', 513, '�������������� �����', 513, 4, 421, 'A', 302, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8645, '00394', 514, '����� ����������� ������', 514, 4, 421, 'A', 302, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8646, '00394', 515, '������ ������� �����', 515, 4, 520, 'A', 302, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8647, '00394', 516, '������ ������� �������', 516, 21, 520, 'A', 313, to_date('24-11-2011 11:58:01', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8648, '00394', 595, '��������� (����� �������)', 595, 1, 1061, 'A', 114, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8649, '00394', 596, '����������� ������ �� �������� ������', 596, 4, 1061, 'A', 252, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8650, '00394', 597, '���������� �������� �� ����� ���������� ������', 597, 4, 1061, 'A', 114, to_date('28-09-2011 15:13:47', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8651, '00394', 598, '��� ��������� ������', 598, 4, 600, 'A', 252, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8652, '00394', 600, '���������', 600, 1, 1061, 'A', 114, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8653, '00394', 601, '��������� �� ��������� ������ ����� ������', 601, 4, 1061, 'A', 252, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8654, '00394', 602, '����������� ������ ', 602, 4, 595, 'A', 313, to_date('29-01-2013 14:54:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8655, '00394', 603, '��������������� ������', 603, 4, null, 'A', 114, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8656, '00394', 604, '����� ������������ ������', 604, 4, null, 'A', 252, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8657, '00394', 605, '������ ���������� ���������', 605, 4, 1061, 'A', 313, to_date('24-11-2011 14:39:29', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8658, '00394', 606, '������ �����', 606, 4, null, 'A', 114, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8659, '00394', 607, '��������', 607, 15, 1061, 'A', 114, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8660, '00394', 608, '������ �����', 608, 15, 607, 'A', 114, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8661, '00394', 609, '������ �����', 609, 15, 607, 'A', 114, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8662, '00394', 610, '�.���������� �����', 610, 15, 607, 'A', 114, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8663, '00394', 611, '�� �����', 611, 15, 607, 'A', 114, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8664, '00394', 612, '�.����������', 612, 15, 607, 'A', 114, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8665, '00394', 613, '�������� �����', 613, 15, 607, 'A', 114, to_date('28-09-2011 15:13:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8666, '00394', 614, '������ �����', 614, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8667, '00394', 615, '������ �����', 615, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8668, '00394', 616, '�������� �����', 616, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8669, '00394', 617, '������� �����', 617, 15, 607, 'A', 114, to_date('28-09-2011 15:13:49', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8786, '00394', 734, '������ �����', 734, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8787, '00394', 735, '������� �����', 735, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8788, '00394', 736, '�.������ �����', 735, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8789, '00394', 737, '��������� �����', 737, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8790, '00394', 738, '������� �����', 738, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8791, '00394', 739, '������� �����', 739, 15, 607, 'A', 114, to_date('28-09-2011 15:13:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8792, '00394', 740, '��������� ����� ', 740, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8793, '00394', 741, '������� �����', 741, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8794, '00394', 742, '������ �����', 742, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8795, '00394', 743, '�������� �����', 743, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8796, '00394', 744, '����� �����', 744, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8797, '00394', 745, '��������� �����', 745, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8798, '00394', 746, '�.������ �����', 746, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8799, '00394', 747, '�������� �����', 747, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8800, '00394', 748, '���������� �����', 748, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8801, '00394', 749, '���� �����', 748, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8802, '00394', 750, '������ �����', 750, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8803, '00394', 751, '�������� �����', 751, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8804, '00394', 752, '������� �����', 752, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8805, '00394', 753, '������� �����', 753, 15, 607, 'A', 114, to_date('28-09-2011 15:13:58', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8806, '00394', 754, '����� �����', 754, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8807, '00394', 755, '�.���������  �����', 755, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8808, '00394', 756, '��������  �����', 756, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8809, '00394', 757, '������� �����', 757, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8810, '00394', 758, '�������� �����', 758, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8811, '00394', 759, '���������� �����', 759, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8812, '00394', 760, '������������ �����', 760, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8813, '00394', 761, '����� �����', 761, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8814, '00394', 762, '�.������� �����', 762, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8815, '00394', 763, '����� ������� �����', 763, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8816, '00394', 764, '�.���������� �����', 764, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
commit;
prompt 500 records committed...
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8817, '00394', 765, '������� �����', 765, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8818, '00394', 766, '����� �����', 766, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8819, '00394', 767, '�.������ �����', 767, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8820, '00394', 768, '���������� �����', 768, 15, 607, 'A', 114, to_date('28-09-2011 15:13:59', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8821, '00394', 769, '������� �����', 769, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8822, '00394', 770, '��������� �����', 770, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8823, '00394', 771, '������ �����', 771, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8824, '00394', 772, '������� �����', 772, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8825, '00394', 773, '�.������� �����', 773, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8826, '00394', 774, '����� �����', 774, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8827, '00394', 775, '�.������ �����', 775, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8828, '00394', 776, '������� �����', 776, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8829, '00394', 777, '�.������� �����', 777, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8830, '00394', 778, '����� �����', 778, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8831, '00394', 779, '�.�������  �����', 779, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8832, '00394', 780, '�.������ �����', 780, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8833, '00394', 781, '���� ���� �����', 781, 15, 607, 'A', 114, to_date('28-09-2011 15:14:00', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8834, '00394', 782, '�.��������� �����', 782, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8835, '00394', 783, '������ ����� ', 783, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8836, '00394', 784, '���������� �����', 784, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8837, '00394', 785, '������ �����', 785, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8838, '00394', 786, '�������  �����', 786, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8839, '00394', 787, '��������� �����', 787, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8840, '00394', 788, '���������� �����', 788, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8841, '00394', 789, '��������� �����', 789, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8842, '00394', 790, '����� �����', 790, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8843, '00394', 791, '���� �����', 791, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8844, '00394', 792, '����� �����', 792, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8845, '00394', 793, '�������� �����', 793, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8846, '00394', 794, '������ �����', 794, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8847, '00394', 795, '���������� �����', 795, 15, 607, 'A', 114, to_date('28-09-2011 15:14:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8848, '00394', 796, '�������� �����', 796, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8849, '00394', 797, '������', 797, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8850, '00394', 798, '�������� �����', 798, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8851, '00394', 799, '������ �����', 799, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8852, '00394', 800, '������-1 �����', 800, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8853, '00394', 801, '��������� �����', 801, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8854, '00394', 802, '����� ����', 802, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8855, '00394', 803, '���-1', 803, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8856, '00394', 804, '���-2', 804, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8857, '00394', 805, '�.������ �����', 805, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8858, '00394', 806, '��-������� �����', 806, 15, 607, 'A', 114, to_date('28-09-2011 15:14:02', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8859, '00394', 807, '����� ���� �����', 807, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8860, '00394', 808, '�������� �����', 808, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8861, '00394', 809, '�.������� �����', 809, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8862, '00394', 810, '�.�������� �����', 810, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8863, '00394', 811, '�.�������� �����', 811, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8864, '00394', 812, '������  �����', 812, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8865, '00394', 813, '����� �����', 813, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8866, '00394', 814, '����  �����', 814, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8867, '00394', 815, '������ �����', 815, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8868, '00394', 816, '�.������ ����� ', 816, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8869, '00394', 817, '�.������� �����', 817, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8870, '00394', 818, '�.������� �����', 818, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8871, '00394', 819, '������� �����', 819, 15, 607, 'A', 114, to_date('28-09-2011 15:14:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8872, '00394', 820, '������ �����', 820, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8873, '00394', 821, '������ �����', 821, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8874, '00394', 822, '�������  �����', 822, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8875, '00394', 823, '����������� 10 ������� �����', 823, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8876, '00394', 824, '�������� �����', 824, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8877, '00394', 825, '�.������ �����', 825, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8878, '00394', 826, '��������� �����', 826, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8879, '00394', 827, '�������� �����', 827, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8880, '00394', 828, '������ �����', 828, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8881, '00394', 829, '����� ����� �����', 829, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8882, '00394', 830, '����� �����', 830, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8883, '00394', 831, '�.������� �����', 831, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8884, '00394', 832, '���������� �����', 832, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8885, '00394', 833, '�.�������� �����', 833, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8886, '00394', 834, '����� �����', 834, 15, 607, 'A', 114, to_date('28-09-2011 15:14:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8887, '00394', 835, '������ �����', 835, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8888, '00394', 836, '�.������� �����', 836, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8889, '00394', 837, '�������� �����', 837, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8890, '00394', 838, '�.�������� �����', 838, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8891, '00394', 839, '�.������� �����', 839, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8892, '00394', 840, '���������� �����', 840, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8893, '00394', 841, '�.������� �����', 841, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8894, '00394', 842, '������� ������', 842, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8895, '00394', 843, '��������� �����', 843, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8896, '00394', 844, '������ �����', 844, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8897, '00394', 845, '��������� �����', 845, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8898, '00394', 846, '����� �����', 846, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8899, '00394', 847, '�������� �����', 847, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8900, '00394', 848, '����  �����', 848, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8901, '00394', 849, '������ �����', 849, 15, 607, 'A', 114, to_date('28-09-2011 15:14:05', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8902, '00394', 850, '�������� �����', 850, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8903, '00394', 851, '�������� �����', 851, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8904, '00394', 852, '���������� ������������ �����', 852, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8905, '00394', 853, '���� �����', 853, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8906, '00394', 854, '����� �����', 854, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8907, '00394', 855, '������ �����', 855, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8908, '00394', 856, '����� �����', 856, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8909, '00394', 857, '����� �����', 857, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8910, '00394', 858, '��������� �����', 858, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8911, '00394', 859, '����������� �����', 859, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8912, '00394', 860, '��������� �����', 860, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8913, '00394', 861, '����������� �����', 861, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8914, '00394', 862, '�����', 862, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8915, '00394', 863, '������� �����', 863, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8916, '00394', 864, '����������� �����', 864, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
commit;
prompt 600 records committed...
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8917, '00394', 865, '�������� �����', 865, 15, 607, 'A', 114, to_date('28-09-2011 15:14:06', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8918, '00394', 866, '������ �����', 866, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8919, '00394', 867, '�������� �����', 867, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8920, '00394', 868, '�������', 868, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8923, '00394', 871, '����� ����', 871, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8921, '00394', 869, '�.������� �����', 869, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8922, '00394', 870, '������������� �����', 870, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8924, '00394', 872, '�� �� �����', 872, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8925, '00394', 873, '������� �����', 873, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8926, '00394', 874, '��������� �����', 874, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8927, '00394', 875, '���� �����', 875, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8928, '00394', 876, '������  �����', 876, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8929, '00394', 877, '����������� �����', 877, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8930, '00394', 878, '�.�������� �����', 878, 15, 607, 'A', 114, to_date('28-09-2011 15:14:07', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8931, '00394', 879, '�������� �����', 879, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8932, '00394', 880, '�.������ �����', 880, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8933, '00394', 881, '�.����������� �����', 881, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8934, '00394', 882, '�������  �����', 882, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8935, '00394', 883, '�.����� �����', 883, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8936, '00394', 884, '�.������� �����', 884, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8937, '00394', 885, '������ �����', 885, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8938, '00394', 886, '������ ����� ', 886, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8939, '00394', 887, '����� �����', 887, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8940, '00394', 888, '�������� �����', 888, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8941, '00394', 889, '����� ��� �����', 889, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8942, '00394', 890, '����� �����', 890, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8943, '00394', 891, '�������� �����', 891, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8944, '00394', 892, '������� �����', 892, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8945, '00394', 893, '����� �����', 893, 15, 607, 'A', 114, to_date('28-09-2011 15:14:08', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8946, '00394', 894, '�������� �����', 894, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8947, '00394', 895, '����� �����', 895, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8948, '00394', 896, '������ �����', 896, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8949, '00394', 897, '������� �����', 897, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8950, '00394', 898, '����� �����', 898, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8951, '00394', 899, '������� �����', 899, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8952, '00394', 900, '����� �����', 900, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8953, '00394', 901, '������� �����', 901, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8954, '00394', 902, '��� �����', 902, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8955, '00394', 903, '��-����� �����', 903, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8956, '00394', 904, '������� �����', 904, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8957, '00394', 905, '������ ����� �����', 905, 15, 607, 'A', 114, to_date('28-09-2011 15:14:09', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8958, '00394', 906, '������ �����', 906, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8959, '00394', 907, '����� �����', 907, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8960, '00394', 908, '����������� �����', 908, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8961, '00394', 909, '����������� �����', 909, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8962, '00394', 910, '�.����� �����', 910, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8963, '00394', 911, '�.��������� �����', 911, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8964, '00394', 912, '�.�������� �����', 912, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8965, '00394', 913, '������� �����', 913, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8966, '00394', 914, '���� �����', 914, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8967, '00394', 915, '�.��������� �����', 915, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8968, '00394', 916, '��-�������� �����', 916, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8969, '00394', 917, '������ ��������', 917, 1, null, 'A', 252, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8970, '00394', 918, '�������', 918, 15, 607, 'A', 114, to_date('28-09-2011 15:14:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8971, '00394', 919, '�.������', 919, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8972, '00394', 920, '�����', 920, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8973, '00394', 921, '��������', 921, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8974, '00394', 922, '�.���������', 922, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8975, '00394', 923, '������', 923, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8976, '00394', 924, '�����', 924, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8977, '00394', 925, '���� �����', 925, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8978, '00394', 926, '�.�������', 926, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8979, '00394', 927, '�.��������', 927, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8980, '00394', 928, '��������', 928, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8981, '00394', 929, '�������', 929, 15, 607, 'A', 114, to_date('28-09-2011 15:14:11', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8982, '00394', 930, '��������', 930, 15, 607, 'A', 114, to_date('28-09-2011 15:14:12', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8983, '00394', 931, '���������', 931, 15, 607, 'A', 114, to_date('28-09-2011 15:14:12', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8984, '00394', 932, '�.�����', 932, 15, 607, 'A', 114, to_date('28-09-2011 15:14:12', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8985, '00394', 933, '�������', 933, 15, 607, 'A', 114, to_date('28-09-2011 15:14:12', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8986, '00394', 934, '������', 934, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8987, '00394', 935, '�.�������', 935, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8988, '00394', 936, '������ �����', 936, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8989, '00394', 937, '�.������ �����', 937, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8990, '00394', 938, '������� �����', 938, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8991, '00394', 939, '�.��������� �����', 939, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8992, '00394', 940, '�� ����� �����', 940, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8993, '00394', 941, '����� �����', 941, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8994, '00394', 942, '�.��������� �����', 942, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8995, '00394', 943, '���� �����', 943, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8996, '00394', 944, '������������ ����� ', 944, 15, 652, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8997, '00394', 945, '������� �����', 945, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8998, '00394', 946, '�.������� �����', 946, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (8999, '00394', 947, '������� �����', 947, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9000, '00394', 948, '������ �����', 948, 15, 607, 'A', 114, to_date('28-09-2011 15:14:13', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9001, '00394', 949, '���������� 5 ������� �����', 949, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9002, '00394', 950, '������ �����', 950, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9003, '00394', 951, '���� �������� �����', 950, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9004, '00394', 952, '�.������ �����', 952, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9005, '00394', 953, '���� �����', 953, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9006, '00394', 954, '�.������� �����', 954, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9007, '00394', 955, '������� �����', 955, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9008, '00394', 956, '�������� �����', 956, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9009, '00394', 957, ' ������� �����', 957, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9010, '00394', 958, '������ �����', 958, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9011, '00394', 959, '�������� �����', 959, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9012, '00394', 960, '������ �����', 960, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9013, '00394', 961, ' ������ �����', 961, 15, 607, 'A', 114, to_date('28-09-2011 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9014, '00394', 962, '��� �����', 962, 15, 607, 'A', 114, to_date('28-09-2011 15:14:16', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9015, '00394', 963, '����� �����', 963, 15, 607, 'A', 114, to_date('28-09-2011 15:14:16', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9016, '00394', 964, '������� �����', 964, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
commit;
prompt 700 records committed...
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9017, '00394', 965, '�.�������', 965, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9018, '00394', 966, '����� �����', 966, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9019, '00394', 967, '�������� �����', 967, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9020, '00394', 968, '������� �����', 968, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9021, '00394', 969, '��������� �����', 969, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9022, '00394', 970, ' �.�������� �����', 970, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9023, '00394', 971, '�.��������� �����', 971, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9024, '00394', 972, '�.���� �����', 972, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9025, '00394', 973, '���������� �����', 973, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9026, '00394', 974, '������ �����', 974, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9027, '00394', 975, '�.������� �����', 975, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9028, '00394', 976, '���������� �����', 976, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9029, '00394', 977, '������ �����', 977, 15, 607, 'A', 114, to_date('28-09-2011 15:14:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9030, '00394', 978, '������ �����', 978, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9031, '00394', 979, '��������� �����', 979, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9032, '00394', 980, '���������� �����', 980, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9033, '00394', 981, '�.������� �����', 981, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9034, '00394', 982, '������� �����', 982, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9035, '00394', 983, '����� �����', 983, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9036, '00394', 984, '�������� �����', 984, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9037, '00394', 985, '��������� �����', 985, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9038, '00394', 986, '������� �����', 986, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9039, '00394', 987, '������� �����', 987, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9040, '00394', 988, '�.������� �����', 988, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9144, '00394', 517, '���� ����� �����', 517, 4, 520, 'A', 364, to_date('03-11-2011 12:55:38', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9164, '00394', 518, '������� ������� �������', 518, 21, 520, 'A', 364, to_date('04-11-2011 17:12:39', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9184, '00394', 519, '������ ���������� ��������� �����', 519, 4, 520, 'A', 364, to_date('08-11-2011 17:40:27', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9204, '00394', 1059, '�.�����������', 1059, 15, 607, 'A', 313, to_date('18-11-2011 16:57:44', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9206, '00394', 1060, '�������', 1060, 15, 607, 'A', 313, to_date('18-11-2011 17:01:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9266, '00394', 541, '���� ������� �������', 541, 21, 520, 'A', 313, to_date('24-11-2011 14:18:30', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9268, '00394', 1061, '�����', 1061, 4, null, 'A', 313, to_date('24-11-2011 14:30:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9270, '00394', 1062, '��������� �����', 1062, 4, 1061, 'A', 313, to_date('24-11-2011 14:32:10', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9272, '00394', 1063, '��������� �������', 1063, 21, 1061, 'A', 313, to_date('24-11-2011 14:34:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9274, '00394', 1064, '������ ���������� ��������� �����', 1064, 21, 1061, 'A', 313, to_date('24-11-2011 14:35:33', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9276, '00394', 1065, '������ ���������� ��������� �������', 1065, 21, 1061, 'A', 313, to_date('24-11-2011 14:36:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9278, '00394', 1066, '��� ��������� �����', 1066, 4, 1061, 'A', 313, to_date('24-11-2011 14:36:53', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9280, '00394', 1067, '��� ��������� �������', 1067, 21, 1061, 'A', 313, to_date('24-11-2011 14:37:30', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9282, '00394', 1068, '������� �������� �����', 1068, 4, 1061, 'A', 313, to_date('24-11-2011 14:41:17', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9284, '00394', 1069, '������� �������� �������', 1069, 21, 1061, 'A', 313, to_date('24-11-2011 14:38:47', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9286, '00394', 1070, '������ ����', 1070, 4, 1061, 'A', 313, to_date('24-11-2011 14:40:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9288, '00394', 542, '������� ������', 542, 13, 520, 'A', 313, to_date('24-11-2011 15:29:28', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9290, '00394', 543, '���������  �����', 543, 4, 542, 'A', 313, to_date('24-11-2011 15:31:36', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9292, '00394', 544, '��������� �������', 544, 21, 542, 'A', 313, to_date('24-11-2011 15:33:06', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9294, '00394', 546, '��� ��������� �������', 546, 21, 542, 'A', 313, to_date('24-11-2011 15:36:40', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9296, '00394', 547, '������ ���������� ��������� ����� (�������)', 547, 4, 542, 'A', 313, to_date('24-11-2011 15:38:10', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9298, '00394', 548, '������ ���������� ��������� ������� (�������)', 548, 21, 542, 'A', 313, to_date('24-11-2011 15:38:47', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9300, '00394', 549, '������� �������� ������� ', 549, 21, 542, 'A', 313, to_date('24-11-2011 15:44:12', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9302, '00394', 550, '������ ���������� ���������', 550, 21, 542, 'A', 313, to_date('24-11-2011 15:45:20', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9304, '00394', 551, '����������� ������ �� �������� ����� (�������)', 551, 4, 542, 'A', 313, to_date('24-11-2011 15:46:15', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9306, '00394', 552, '����� ������ ����� (�������)', 552, 4, 542, 'A', 313, to_date('24-11-2011 15:47:29', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9308, '00394', 553, '����� ���������� ������� (�������)', 553, 21, 542, 'A', 313, to_date('24-11-2011 15:48:51', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9324, '00394', 554, '�������������� �������', 554, 21, 542, 'A', 313, to_date('25-11-2011 09:22:46', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9326, '00394', 1071, '����� ������ �����', 1071, 4, 1061, 'A', 313, to_date('25-11-2011 09:28:32', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9384, '00394', 1075, '������� ���������� �����', 1075, 21, null, 'A', 313, to_date('26-03-2012 11:46:04', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9404, '00394', 1076, '������ �����', 1076, 21, null, 'A', 313, to_date('29-03-2012 17:03:44', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9444, '00394', 555, '������ �����', 555, 6, 542, 'A', 313, to_date('20-07-2012 17:33:00', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9041, '00394', 989, '��� ��� �����', 989, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9042, '00394', 990, '�.������� �����', 990, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9043, '00394', 991, '�.������� �����', 991, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9044, '00394', 992, '���� ����� ', 992, 15, 607, 'A', 114, to_date('28-09-2011 15:14:18', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9045, '00394', 993, '��������� �����', 993, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9046, '00394', 994, '����� �����', 994, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9047, '00394', 995, '���������� �����', 995, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9048, '00394', 996, '�.���� �����', 996, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9049, '00394', 997, '������ �����', 997, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9050, '00394', 998, '��  �������� �����', 998, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9051, '00394', 999, '��������� �����', 999, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9052, '00394', 1000, '�������� �����', 1000, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9053, '00394', 1001, '�������� �����', 1001, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9054, '00394', 1002, '�������� �����', 1002, 13, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9055, '00394', 1003, '��������� �����', 1003, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9056, '00394', 1004, '�.������� �����', 1004, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9057, '00394', 1005, '������� �����', 1005, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9058, '00394', 1006, '�������', 1005, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9059, '00394', 1007, '������ �����', 1007, 15, 607, 'A', 114, to_date('28-09-2011 15:14:19', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9060, '00394', 1008, '�������', 1008, 15, 607, 'A', 114, to_date('28-09-2011 15:14:20', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9061, '00394', 1009, '���-�������', 1009, 15, 607, 'A', 114, to_date('28-09-2011 15:14:20', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9062, '00394', 1010, '������� (���), ����� �������', 1010, 15, 607, 'A', 114, to_date('28-09-2011 15:14:20', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9063, '00394', 1011, '�.�.����� ����� (���) ���� ���� �������', 1011, 15, 607, 'A', 114, to_date('28-09-2011 15:14:20', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9064, '00394', 1012, '�������  ����� (������� ������� , �������� ������ , ������� �������) ', 1012, 15, 607, 'A', 114, to_date('28-09-2011 15:14:20', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9065, '00394', 1013, '��-�������� (������� ������� , �������� ������ , ��������  �������)', 1013, 15, 607, 'A', 114, to_date('28-09-2011 15:14:20', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9066, '00394', 1014, '����� ����� (������� ������ ����� �������)', 1014, 15, 607, 'A', 114, to_date('28-09-2011 15:14:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9067, '00394', 1015, '�� ����� ����� (������� �������,������� ������,������  �������)', 1015, 15, 607, 'A', 114, to_date('28-09-2011 15:14:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9068, '00394', 1016, '������ ����� (������� �������,������� ������,������ �������)', 1016, 15, 607, 'A', 114, to_date('28-09-2011 15:14:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9069, '00394', 1017, '���������� ����� (������� ������,���������� �������)', 1017, 15, 607, 'A', 114, to_date('28-09-2011 15:14:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9070, '00394', 1018, '�.��������� ����� (������� ������ �������� �������)', 1018, 15, 607, 'A', 114, to_date('28-09-2011 15:14:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9071, '00394', 1019, '�.������ (������� ������ ����� �������)', 1019, 15, 607, 'A', 114, to_date('28-09-2011 15:14:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9072, '00394', 1020, '������� (������� ������, ������� �������)', 1020, 15, 607, 'A', 114, to_date('28-09-2011 15:14:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9073, '00394', 1021, '�������� (������� ������, �������� �������)', 1021, 15, 607, 'A', 114, to_date('28-09-2011 15:14:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9074, '00394', 1022, '�������� (�������� ������, �������� �������)', 1022, 15, 607, 'A', 114, to_date('28-09-2011 15:14:21', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9075, '00394', 1023, '�������� (�������� ������, �������� �������)', 1023, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9076, '00394', 1024, '�.��������� (�������� ������, ������� �������)', 1024, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9077, '00394', 1025, '��������� (�������)', 1025, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9078, '00394', 1026, '����� (������)', 1026, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9079, '00394', 1027, '�������� (������)', 1027, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9080, '00394', 1028, '������� (������)', 1028, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9081, '00394', 1029, '�������� (������)', 1029, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9082, '00394', 1030, '������� (������)', 1030, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9083, '00394', 1031, '�������� (������)', 1031, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9084, '00394', 1032, '������� (������)', 1032, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
commit;
prompt 800 records committed...
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9085, '00394', 1033, '�������� (����������)', 1033, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9086, '00394', 1034, '��������� (����������)', 1034, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9087, '00394', 1035, '���-�������� (����)', 1035, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9088, '00394', 1036, '�.������ (����)', 1036, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9089, '00394', 1037, '�������� (����)', 1037, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9090, '00394', 1038, '���������� (����)', 1038, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9091, '00394', 1039, '������ (������)', 1039, 15, 607, 'A', 114, to_date('28-09-2011 15:14:22', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9092, '00394', 1040, '����� (������)', 1040, 15, 607, 'A', 114, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9093, '00394', 1041, '�������� (�����)', 1041, 15, 607, 'A', 114, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9094, '00394', 1042, '������� �������� ����� ����� �������', 1042, 6, null, 'A', 252, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9095, '00394', 1043, '���������', 1043, 15, 607, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9096, '00394', 1044, '������� �������� ����� ����� �����', 1044, 4, 1042, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9097, '00394', 1045, '������� ������� ����� ����� �����', 1045, 4, null, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9098, '00394', 1046, '���� �������������� �� ���������� ����� �����', 1046, 4, null, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9099, '00394', 1047, '������ �������', 1047, 6, 605, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9100, '00394', 1048, '�.ɢ������', 1048, 15, 607, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9101, '00394', 1049, 'ʢ�-����', 1049, 15, 607, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9102, '00394', 1050, '������', 1050, 18, 1061, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9103, '00394', 1051, '����� �����', 1051, 15, 607, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9104, '00394', 1052, '������� �����', 1052, 15, 607, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9105, '00394', 1053, '����� �����', 1053, 15, 607, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9106, '00394', 1054, ' ���������� �����', 1054, 15, 607, 'A', 302, to_date('28-09-2011 15:14:23', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9107, '00394', 1055, '�.Ƣ���� �����', 1055, 15, 607, 'A', 302, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9108, '00394', 1058, '������ ������� �����', 1058, 1, null, 'A', 302, to_date('28-09-2011 15:14:24', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9488, '00394', 239, '������ ������� ������������ ���������� �����', 239, 4, 237, 'A', 364, to_date('23-01-2013 11:10:12', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9504, '00394', 556, '������� ������������� ���� �������', 556, 4, 520, 'A', 313, to_date('27-12-2012 18:13:42', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9524, '00394', 1078, '���������� ��������� ������', 1078, 4, 1061, 'A', 313, to_date('29-01-2013 17:39:25', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9344, '00394', 1072, '�������������� �����', 1072, 4, null, 'A', 313, to_date('09-12-2011 15:28:57', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9364, '00394', 1073, '����������� ������������� �����', 1073, 4, 1061, 'A', 313, to_date('14-03-2012 12:29:26', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SS_OK_DEPARTMENT (DEPARTMENT_ID, BRANCH, DEPARTMENT_CODE, DEPARTMENT_NAME, DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE, HIGH_DEP_CODE, STATE_NOTES, EMP_CODE, INS_DATE, LEVEL_DEPARTMENT_CODE)
values (9366, '00394', 1074, '����������� ������������� �������', 1074, 6, 1061, 'A', 313, to_date('14-03-2012 12:32:32', 'dd-mm-yyyy hh24:mi:ss'), 3);
commit;
prompt 830 records loaded
prompt Loading SS_OK_DEPARTMENT_TYPE...
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (501, 22, '������ ��������', 'A', 364, to_date('22-10-2011 15:15:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (461, 20, '�����������', 'A', 364, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (462, 19, '������ ������ �������', 'A', 302, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (463, 21, '�������', 'A', 364, to_date('09-11-2012 12:05:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (464, 18, '������ ������ ���������', 'A', 302, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (465, 14, '��������������� ������������ ����������', 'A', 114, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (466, 1, '���������', 'A', 114, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (467, 2, '������', 'A', 114, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (468, 3, '��������', 'A', 114, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (469, 4, '�����', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (470, 5, '����� ����', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (471, 6, '������', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (472, 7, '��������', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (473, 8, '��� ��������', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (474, 9, '������ ������', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (475, 10, '��� ���� �������', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (476, 11, '����������', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (477, 12, '������ ����������', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (478, 13, '������', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (479, 15, '��������', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (480, 16, '������ ���������� ���������', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_DEPARTMENT_TYPE (DEPARTMENT_TYPE_ID, DEPARTMENT_TYPE_CODE, DEPARTMENT_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (481, 17, '�����', 'A', 114, to_date('28-09-2011 15:13:22', 'dd-mm-yyyy hh24:mi:ss'));
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
values (241, 1, '����-����� �������', 'A', 114, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION (EDUCATION_ID, EDUCATION_CODE, EDUCATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (242, 2, '������, ��������', 'A', 114, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION (EDUCATION_ID, EDUCATION_CODE, EDUCATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (243, 3, '��������', 'A', 114, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION (EDUCATION_ID, EDUCATION_CODE, EDUCATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (244, 4, '�����������', 'A', 114, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION (EDUCATION_ID, EDUCATION_CODE, EDUCATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (245, 5, '��������', 'A', 252, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION (EDUCATION_ID, EDUCATION_CODE, EDUCATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (246, 6, '0', 'P', 114, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 6 records loaded
prompt Loading SS_OK_EDUCATION_COUNT...
insert into SS_OK_EDUCATION_COUNT (EDUCATION_COUNT_CODE, EDUCATION_COUNT_NAME)
values (0, '-');
insert into SS_OK_EDUCATION_COUNT (EDUCATION_COUNT_CODE, EDUCATION_COUNT_NAME)
values (1, '������ �����������');
insert into SS_OK_EDUCATION_COUNT (EDUCATION_COUNT_CODE, EDUCATION_COUNT_NAME)
values (2, '������ �����������');
commit;
prompt 3 records loaded
prompt Loading SS_OK_EDUCATION_TITLE...
insert into SS_OK_EDUCATION_TITLE (EDUCATION_TITLE_ID, EDUCATION_TITLE_CODE, EDUCATION_TITLE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (261, 1, '����', 'A', 252, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION_TITLE (EDUCATION_TITLE_ID, EDUCATION_TITLE_CODE, EDUCATION_TITLE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (262, 2, '���� ������', 'A', 252, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION_TITLE (EDUCATION_TITLE_ID, EDUCATION_TITLE_CODE, EDUCATION_TITLE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (263, 3, '����', 'A', 252, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION_TITLE (EDUCATION_TITLE_ID, EDUCATION_TITLE_CODE, EDUCATION_TITLE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (264, 4, '��������', 'A', 252, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION_TITLE (EDUCATION_TITLE_ID, EDUCATION_TITLE_CODE, EDUCATION_TITLE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (265, 5, '�������', 'A', 252, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION_TITLE (EDUCATION_TITLE_ID, EDUCATION_TITLE_CODE, EDUCATION_TITLE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (266, 6, '������������� ���� (�������� ��������)', 'A', 252, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_EDUCATION_TITLE (EDUCATION_TITLE_ID, EDUCATION_TITLE_CODE, EDUCATION_TITLE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (267, 7, '������������� ���� ������ (������ ��������)', 'A', 252, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 7 records loaded
prompt Loading SS_OK_ELECTION...
insert into SS_OK_ELECTION (ELECTION_ID, ELECTION_CODE, ELECTION_NAME, ELECTION_ADDRESS, STATE_NOTES, EMP_CODE, INS_DATE)
values (141, 1, '���� ������ ��������', '���������� ������������', 'A', 114, to_date('28-09-2011 15:14:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ELECTION (ELECTION_ID, ELECTION_CODE, ELECTION_NAME, ELECTION_ADDRESS, STATE_NOTES, EMP_CODE, INS_DATE)
values (142, 2, '������ ������� �����', '������', 'A', 114, to_date('28-09-2011 15:14:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ELECTION (ELECTION_ID, ELECTION_CODE, ELECTION_NAME, ELECTION_ADDRESS, STATE_NOTES, EMP_CODE, INS_DATE)
values (143, 3, '����� ������� ������', '�����', 'A', 114, to_date('28-09-2011 15:14:27', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 3 records loaded
prompt Loading SS_OK_FAMILY_STATUS...
insert into SS_OK_FAMILY_STATUS (FAMILY_STATUS_CODE, GENDER_CODE, FAMILY_STATUS_NAME)
values (1, 1, '�����');
insert into SS_OK_FAMILY_STATUS (FAMILY_STATUS_CODE, GENDER_CODE, FAMILY_STATUS_NAME)
values (2, 1, '������');
insert into SS_OK_FAMILY_STATUS (FAMILY_STATUS_CODE, GENDER_CODE, FAMILY_STATUS_NAME)
values (3, 2, '�������');
insert into SS_OK_FAMILY_STATUS (FAMILY_STATUS_CODE, GENDER_CODE, FAMILY_STATUS_NAME)
values (4, 2, '���������');
insert into SS_OK_FAMILY_STATUS (FAMILY_STATUS_CODE, GENDER_CODE, FAMILY_STATUS_NAME)
values (5, 1, '��������');
insert into SS_OK_FAMILY_STATUS (FAMILY_STATUS_CODE, GENDER_CODE, FAMILY_STATUS_NAME)
values (6, 2, '���������');
commit;
prompt 6 records loaded
prompt Loading SS_OK_FITNESS_ARMY...
insert into SS_OK_FITNESS_ARMY (FITNESS_ARMY_ID, FITNESS_ARMY_CODE, FITNESS_ARMY_TYPE)
values (141, 1, '�����');
insert into SS_OK_FITNESS_ARMY (FITNESS_ARMY_ID, FITNESS_ARMY_CODE, FITNESS_ARMY_TYPE)
values (142, 2, '�� �����');
commit;
prompt 2 records loaded
prompt Loading SS_OK_GENDER...
insert into SS_OK_GENDER (GENDER_ID, GENDER_CODE, GENDER_NAME)
values (141, 1, '���');
insert into SS_OK_GENDER (GENDER_ID, GENDER_CODE, GENDER_NAME)
values (142, 2, '���');
commit;
prompt 2 records loaded
prompt Loading SS_OK_GOSUBMIT...
insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (6, '��������� �������');
insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (14, '������� ��');
insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (22, '���������� ��');
insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (29, '��������� � ��');
insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (33, '�������� ��');
commit;
prompt 5 records loaded
prompt Loading SS_OK_GOSUBMIT_PROTOKOL...
prompt Table is empty
prompt Loading SS_OK_HOSPITAL...
insert into SS_OK_HOSPITAL (HOSPITAL_CODE, HOSPITAL_NAME, WORK_PERIOD_FROM, WORK_PERIOD_TO, PERCENTAGE, STATE_NOTES, EMP_CODE, INS_DATE)
values (1001, '����������', 0, 8, 60, 'A', null, null);
insert into SS_OK_HOSPITAL (HOSPITAL_CODE, HOSPITAL_NAME, WORK_PERIOD_FROM, WORK_PERIOD_TO, PERCENTAGE, STATE_NOTES, EMP_CODE, INS_DATE)
values (1001, '����������', 8, 999, 80, 'A', null, null);
insert into SS_OK_HOSPITAL (HOSPITAL_CODE, HOSPITAL_NAME, WORK_PERIOD_FROM, WORK_PERIOD_TO, PERCENTAGE, STATE_NOTES, EMP_CODE, INS_DATE)
values (1002, '���������� �� �����', 0, 999, 100, 'A', null, null);
commit;
prompt 3 records loaded
prompt Loading SS_OK_INCREASE...
insert into SS_OK_INCREASE (INCREASE_CODE, INCREASE_NAME)
values (1, '������������ ��������');
insert into SS_OK_INCREASE (INCREASE_CODE, INCREASE_NAME)
values (2, '�������� ��  ����������');
commit;
prompt 2 records loaded
prompt Loading SS_OK_INSTITUTION...
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5955, 20009, '������� ���� ���������', ' ���������', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5956, 20010, '������� ������� ���������', ' ���', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5957, 20011, '������� ���� �������', '���', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5958, 20012, '�������  �������� �� ������� ���������', '����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5959, 10002, '������������ ���� ����� ������', '�����', '������� �����', 1, 'A', 114, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5960, 20013, '������� ����� ����� ���������', '����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5961, 20014, '�������  ������ ����-����� �������', '�����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5962, 20015, '�������  �����-������ ���������', '����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5963, 20016, '�������  ��������������� ���������', '����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5964, 20017, '������� ���������� ���������', '���', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5965, 20018, '������� ����� ������ ������� ����-����� �������', '�������', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5966, 20019, '������� ������ ���������', '���', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5967, 20020, '�������  ������ �������', '���', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5968, 20021, '�����������  ������� ���������', '���', '��������� ������� ����������� �����', 2, 'A', 313, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5969, 20022, '������� ������ ����� ����� ����', '�����', '������', 2, 'A', 313, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5970, 20023, '���������� ��������� ������� ���������', '���.���', '���������� ������������', 2, 'A', 252, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5971, 20024, '���������  ���������� ���������', '�����', '��������� �����', 2, 'A', 313, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5972, 20025, '�������  ���� �������', '���������', '��������������� ������������ ������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5973, 20026, '�������� �����-������ ���������', '����', '������� ������� �������� �����', 2, 'A', 313, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5974, 20027, '������� ����� ���� ����� ����� ����', '�����.����', '������� �����', 2, 'A', 114, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5975, 20028, '������  ��������� ������� ���������', '����', '������ ������� ������ �����', 2, 'A', 252, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5976, 20029, '����� ������� ���������', '���', '������� ������� ����� �����', 2, 'A', 313, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5977, 20030, '������ ������ ������� �������', '����', '������� ������� ������ �����', 2, 'A', 364, to_date('22-06-2012 12:42:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5978, 20031, '�������� ���� ������� ���������', '����', '������� ������� �������� �����', 2, 'A', 313, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5979, 20032, 'ʢ��� ������� �������', '�������', '������� ������� ����� �����', 2, 'A', 313, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5980, 20033, '��������� ������ ������� ���������', '����', '������ ������� ��������� �����', 2, 'A', 313, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5981, 10003, '����� ���� �� ������� 2 ������ ���������� �����', '����', '������� �����', 1, 'A', 114, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5982, 20034, '������  ������� �������', '���', '������ �����', 2, 'A', 313, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5983, 20035, '������  ������ ���������', '���', '������ �����', 2, 'A', 313, to_date('28-09-2011 15:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5984, 20036, '������ ���������� ���������', '���', '������ �����', 2, 'A', 313, to_date('28-09-2011 15:13:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5985, 20037, '������ ������ ���������', '���', '������ �����', 2, 'A', 313, to_date('28-09-2011 15:13:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5986, 20038, '���������  ����� �������', '�����', '��������� �����', 2, 'A', 313, to_date('28-09-2011 15:13:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5987, 20039, '���������  ������ ������� �������', '������', '��������� �����', 2, 'A', 313, to_date('28-09-2011 15:13:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5988, 20040, '��������� ������ ���������', '�����', '��������� �����', 2, 'A', 313, to_date('28-09-2011 15:13:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5989, 30002, '������� ����� ���������', '���', '������� �����', 3, 'A', 252, to_date('28-09-2011 15:13:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5990, 30003, '������� ���� �������� ���������', '����', '������� �����', 3, 'A', 364, to_date('22-11-2011 18:18:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5991, 30006, '������� ������ ������������', '���', '������� �����', 3, 'A', 252, to_date('28-09-2011 15:13:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5992, 30007, '������� ����� ������� ���������� ������������ ���������', '������', '������� �����', 3, 'A', 252, to_date('28-09-2011 15:13:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5993, 30008, '������� �������-������� ����� ���������', ' �����', '������� �����', 3, 'A', 252, to_date('28-09-2011 15:13:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5994, 30009, '������� ������ ������ ���������', '����', '������� �����', 3, 'A', 364, to_date('22-06-2012 12:43:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5995, 30010, '������� ������ ������������ ���������', '����', '������� �����', 3, 'A', 364, to_date('22-06-2012 12:44:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5996, 30011, '������� ����������� ���������', '���', '������� �����', 3, 'A', 252, to_date('28-09-2011 15:13:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5997, 30013, '������� ��������� �� ������ ���������� �������������� ������������ ���������', '�������', '������� �����', 3, 'A', 364, to_date('16-07-2012 13:06:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5998, 30014, '�.�.�������� ����� ������ ��������� ����������', '����', '������� �����', 3, 'A', 364, to_date('22-06-2012 12:44:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5999, 30017, '������� ������� ���������', '���', '������� �����', 3, 'A', 252, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6000, 22000, '�������� ������������ ����-����� �������', '�����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6001, 20113, '������ ���� �������', '��������', '������ �����', 2, 'A', 252, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6002, 20114, '������ ������� �������', '������ ��', '������ �����', 2, 'A', 252, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6003, 20115, '�������� ���������� �� ������������ �������', '������', '�������� �����', 2, 'A', 313, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6004, 20116, '�������� ������ �������� ���������', '������', '�������� �����', 2, 'A', 313, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6005, 20117, '�������� ����-������������ �������', '������', '�������� �����', 2, 'A', 313, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6006, 20118, '��������  ���������� �� ����� ������ ���������', '�������', '�������� �����', 2, 'A', 313, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6007, 20119, '�������� ��������� �� ����� ��������', '��� ���', '��������', 2, 'A', 313, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6008, 20120, '�������� ���������� ���������', '��� ��', '�������� �����', 2, 'A', 313, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6009, 20121, '�������� ������ ����-����� �������', '��� ����', '�������� �����', 2, 'A', 313, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6010, 20122, '���������� �������� �� ���������� �������', '��� ���', '�������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6011, 20123, '��������  ���������� �� ������������ �������', '�������� �', '�������� ������', 2, 'A', 252, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6012, 20124, '��������  ����������-���������� �������', '�������� �', '�������� ������', 2, 'A', 313, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6013, 20125, '��������� ���������� �������', '���������', '�������� �������', 2, 'A', 313, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6014, 20126, '���������� �������������� �������', '����������', '���������� ������', 2, 'A', 252, to_date('28-09-2011 15:13:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6015, 20127, '�������� ���� �� ������� ���������', '�������� �', '�������� ������', 2, 'A', 252, to_date('28-09-2011 15:13:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6016, 20128, '������� ���������� ���������', '���', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6017, 20129, '����� �����-������ ���������', '����� ���', '����� �����', 2, 'A', 114, to_date('28-09-2011 15:13:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6018, 40015, '������ ������ ������������', '���', '������ ������� ������ �����', 4, 'A', 364, to_date('22-06-2012 12:52:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6019, 40016, '��������� ������ ������������', '�����', '��������� �����', 4, 'A', 364, to_date('22-06-2012 12:52:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6020, 40017, '������ ������ ������������', '�����', '������ �����', 4, 'A', 364, to_date('22-06-2012 12:52:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6021, 40018, '����������� ������ ������������', '���������', '������, ����������� �����', 4, 'A', 364, to_date('22-06-2012 12:53:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6022, 40019, '������� ������ ������������', '���������', '������: ������� �����', 4, 'A', 364, to_date('22-06-2012 12:53:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6023, 40020, '������������ ������ ������������', '���������', '������������ ������������: ������� �����', 4, 'A', 364, to_date('22-06-2012 12:53:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6024, 40021, '���������� ������ ������������', '�������', '���������� ������������,  ������ �����', 4, 'A', 364, to_date('22-06-2012 12:53:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6025, 40022, '������ ����� ������� ���������� ������������', '����', '���������� ������������', 4, 'A', 252, to_date('28-09-2011 15:13:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6026, 40023, '������ ����� ���������� ������ ������������', '���', '��������������� ������������, ����� �����', 4, 'A', 364, to_date('22-06-2012 12:53:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6027, 40024, '���������� ������ ������������', '���.��', '���������� ������������, �������', 4, 'A', 364, to_date('22-06-2012 12:53:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6028, 40025, '�������� ������ ������������', '���������', '��������� ������������', 4, 'A', 364, to_date('22-06-2012 12:53:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6029, 40026, '������� ������ ������������', '���������', '������: ������� �����', 4, 'A', 364, to_date('22-06-2012 12:54:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6030, 40027, '������*� ������������', '��������.', '���', 4, 'A', 252, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6031, 40028, '���. ������ ������������', '���������.', '���', 4, 'A', 252, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6032, 40029, '���� �������� ��������� ������������', '����.���.', '���', 4, 'A', 252, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6033, 40030, '������-����� ������������', '�-�.����.', '����������� ������������, ������ �����', 4, 'A', 364, to_date('22-06-2012 12:54:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6034, 40031, '���. ������� ������������', '��� ������', '���', 4, 'A', 252, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6035, 40032, '��� ������� ������������', '����������', '���', 4, 'A', 252, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6036, 40033, '��� ������', '������', '������', 4, 'A', 114, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6319, 23057, '�������������� ������ ���������', '���', '������� �����', 2, 'A', 364, to_date('27-12-2011 17:17:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6479, 50010, '������ ������ �������� �������� ����������', '�����', '������ �����', 5, 'A', 364, to_date('11-04-2012 16:57:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6641, 23071, '������� ��������� �� ������ �������', '����', '������� �����', 2, 'A', 364, to_date('07-12-2012 12:09:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6179, 23045, '������ ������ ����-����� �������', '�����', '������� ������� ������ �����', 2, 'A', 364, to_date('10-12-2011 11:02:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6180, 23046, '���������� ������� �� �������� �������� ����-����� �������', '�������', '��������������� ������������', 2, 'A', 364, to_date('10-12-2011 11:08:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6499, 23064, '������� ������������ �������', '���', '�������', 2, 'A', 313, to_date('25-04-2012 12:26:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6559, 23066, '������ �������� ��������� ����-����� �������', '������', '������ �����', 2, 'A', 364, to_date('10-05-2012 14:52:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6561, 40061, '������ ������ ������ ������������', '����', '������ �����', 4, 'A', 364, to_date('22-06-2012 12:57:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6079, 20187, '������ �������-��������� �������', '����', '������ ������� ������ �.', 2, 'A', 364, to_date('27-10-2011 10:05:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5639, 50003, '������ ��������� ����������', '�����', '������ �����', 5, 'A', 252, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5640, 50004, '�.�.�������� ����� ������ ��������� ����������', '����', '������� �����', 5, 'A', 364, to_date('22-06-2012 12:58:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5641, 20130, '���������� ���������������� �������', '����������', '�������� �������', 2, 'A', 313, to_date('28-09-2011 15:12:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5642, 20131, '����� ����������� ���������', '����� ��', '����� �����', 2, 'A', 313, to_date('28-09-2011 15:12:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5643, 30100, '�������� ����������� ���������� ���������', '������', '�������� �����', 3, 'A', 252, to_date('28-09-2011 15:12:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5644, 30101, '�������� ������-���������� ���������', '��� ���', '�������� �����', 3, 'A', 114, to_date('28-09-2011 15:12:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5645, 23000, '������� ������ ����-����� �������', '�������', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5646, 20180, '������� ���������� �������� ���������', '����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5647, 20181, '������� ������������ ���� ����� �������', '����� �/�', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:42', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 100 records committed...
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5648, 30116, '������� ������ ���������� ���������', '����', '������� �����', 3, 'A', 364, to_date('22-06-2012 12:48:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5649, 50007, '����� ������ �������� ����������', '����', '����-���', 5, 'A', 252, to_date('28-09-2011 15:12:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5650, 20282, '������ ������� �������� ������ ������� ����-����� �������', '��������', '�������� ������', 2, 'A', 313, to_date('28-09-2011 15:12:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5651, 20283, '������� ������-�������� ����-����� �������', '��������', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5652, 10030, '������� ��������� ������ ��������� �������� �������� ������', '�����', '������� �����', 1, 'A', 364, to_date('22-06-2012 12:41:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5653, 30117, '������� ������ �������� ���������', '����', '������� �����', 3, 'A', 364, to_date('22-06-2012 12:48:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5654, 40039, '�������� ������ ������������', '�����', '�������� �����', 4, 'A', 364, to_date('22-06-2012 12:55:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5655, 40040, '������� ������ ����� ������������', '����', '������� �����', 4, 'A', 364, to_date('22-06-2012 12:55:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5656, 40041, '������� ������ ������������', '�����', '������� �����', 4, 'A', 364, to_date('22-06-2012 12:55:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5657, 40042, '������ ������������', '������ ��', '���� ��������', 4, 'A', 252, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5658, 40043, '������� ������ ��������� ������������', '����', '������� �����', 4, 'A', 364, to_date('22-06-2012 12:55:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5659, 20133, '����� �������� ����� ����', '������', '����� �����', 2, 'A', 313, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5660, 20134, '����� ���� �������', '�����', '����� �����', 2, 'A', 313, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5661, 30103, '����� ����������� ���������� ���������', '������', '����� �����', 3, 'A', 252, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5662, 30105, '��� ������ ���������', '��� ��', '��� �����', 3, 'A', 114, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5663, 20136, '�������� �����-������ ���������', '�������� �', '�������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5664, 20135, '���������� ���������� ���������', '����������', '���������� ������������', 2, 'A', 252, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5665, 20137, '������� ����� ������� ���������', '������� ��', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5666, 20138, '������� �������� �������� ���������', '������� ��', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5667, 20132, '�������� ������������ ����-����� �������', '�����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5668, 20141, '����� ������ �������', '�����', '����� �����', 2, 'A', 313, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5669, 20142, '���������� ������������� ���������', '��������', '������ �����', 2, 'A', 313, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5670, 20139, '��������� ���������� �������', '������', '����� �����', 2, 'A', 313, to_date('28-09-2011 15:12:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5671, 20140, '����� ���������������� �������', '�������', '����� �����', 2, 'A', 313, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5672, 20143, '������ ���� �������', '�����', '������ �����', 2, 'A', 252, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5673, 20144, '������ ���������������� �������', '�������', '������ �����', 2, 'A', 252, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5674, 20145, '������ ������ ������� ���������', '������', '������ �����', 2, 'A', 252, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5675, 20146, '�������� �����-������ ��������� ������ �������', '������ ���', '������ �����', 2, 'A', 313, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5676, 20147, '�������� ����� �� ���� ������  �������', '���� ����', '�������� ������', 2, 'A', 313, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5677, 20148, '��������� ��������������� ���������', '��������', '��������� ������', 2, 'A', 313, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5678, 20149, '���� ���� ������ �������', '�������', '���� ������', 2, 'A', 252, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5679, 10009, '�������� ����-����� �������', '������', '�������� ������', 1, 'A', 114, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5680, 10010, '������� ������ �������� ���� ����� �������', '��������', '������� ������', 1, 'A', 114, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5681, 10011, '�������� ������ �������� ����-����� �������', '��������', '�������� ������', 1, 'A', 114, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5682, 30104, '���������� ���� �������� ���������', '��������', '���������', 3, 'A', 252, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5683, 30106, '���������� ������������ �� ������ ���������', '������', '���������� ������������', 3, 'A', 252, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5684, 30107, '�������� �������������� �� ����������������� ���������', '������', '����� �����', 3, 'A', 252, to_date('28-09-2011 15:12:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5685, 30108, '������ ������ ���������� ���������', '�������', '������ �����', 3, 'A', 364, to_date('22-06-2012 13:09:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5686, 40044, '��������� ������ ������������', '�����', '��������� �����', 4, 'A', 364, to_date('22-06-2012 12:55:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5687, 40045, '��������������� ������ ������������', '����������', '����� �����', 4, 'A', 364, to_date('22-06-2012 12:56:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5688, 20150, '������ �������������', '�����', '������ �����', 2, 'A', 252, to_date('28-09-2011 15:12:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5689, 30109, '���������� ������������ ���� ����� ���������� ���� �������', '������ ��', '������� �����', 3, 'A', 313, to_date('28-09-2011 15:12:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5690, 20151, '������� ��� ����������� ���������', '������� ��', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5691, 30110, '������� ��������� ������ ���������', '����', '������� �����', 3, 'A', 114, to_date('28-09-2011 15:12:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5692, 10012, '������� ������ ������������ �������� ������ �������', '������', '������� �����', 1, 'A', 364, to_date('22-06-2012 12:41:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5693, 10013, '�������� ���� ����� ������', '����', '������� ������� �������� ������', 1, 'A', 114, to_date('28-09-2011 15:12:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5694, 10014, '������� ����-����� ����� ����', '�����', '������� �����', 1, 'A', 114, to_date('28-09-2011 15:12:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5695, 10015, '������ ���� �������� �������� ���������� ������ �������', '����������', '������� �����', 1, 'A', 114, to_date('28-09-2011 15:12:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5696, 20152, '������� ����� ������ ���������', '������', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5697, 20153, '������� ������ ���� ����� �������', '�������', '������� ������', 2, 'A', 313, to_date('28-09-2011 15:12:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5698, 20154, '������� ������ �������� ���� ����� �������', '��������', '������� ������', 2, 'A', 313, to_date('28-09-2011 15:12:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5699, 20155, '����� ����� ���������', '����� ��', '����� �����', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5700, 20156, '����� ��������� �������  ���������', '��������', '����� �����', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5701, 20157, '����� �������� ���������', '�������', '����� �����', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5702, 20158, '����� ������ �� ������������ �������', '����� ���', '����� �����', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5703, 20159, '����� ���������� �������', '����� ��', '����� �����', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5704, 20160, '����� ����������� ���������', '����� ��', '����� �����', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5705, 20161, '������� ������ ������� ���������', '������', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5706, 20162, '�������� ���� �������', '�����', '�������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5707, 20163, '������� ������ �������', '�����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5708, 20164, '����� ������ ������� ���������', '����', '������� ������� ����� �����', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5709, 20165, '�������� ������� ���������', '�����', '������� ������� �������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5710, 20166, '������� ������������� �������', '������� ��', '������� ������� ������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5711, 20167, '�������� ������� ���������', '�����', '������� ������� �������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5712, 20168, '������ ������ �������� ���������', '������ ���', '������ �����', 2, 'A', 252, to_date('28-09-2011 15:12:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5713, 20169, '������� ��������������� ���������', '���', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5714, 20170, '��������� ������� ���������', '���', '��������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5715, 30111, '����� ������ ���������� ���������', '����� ����', '����� �����', 3, 'A', 364, to_date('22-06-2012 12:48:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5716, 40046, '������ ������ ������������', '���', '������ ������ �����', 4, 'A', 364, to_date('22-06-2012 12:56:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5721, 20171, '����� ������������ ���������', '���', '����� �����', 2, 'A', 313, to_date('28-09-2011 15:12:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6080, 20188, '�������� ������� ���������', '���', '�������� �.', 2, 'A', 364, to_date('27-10-2011 12:04:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5717, 40047, '�� ���������� ������������ �������� �������', '�������� �', '�������� �����', 4, 'A', 114, to_date('28-09-2011 15:12:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5718, 10018, '��������� ������ ���������� �������������� ���������', '�����', '�������� �������', 1, 'A', 302, to_date('28-09-2011 15:12:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5719, 40048, '������� ������ ������������', '������� ��', '������� �����', 4, 'A', 364, to_date('22-06-2012 12:56:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5720, 30112, '������� ������ �������� ���������', '�������', '������� �����', 3, 'A', 364, to_date('22-06-2012 12:48:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5722, 20172, '������� ���������� �� ��� �������� �������', '�����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5723, 20173, '������� ����������� ����-����� �������', '�����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5724, 30113, '������� �������������� ����� ���������', '����', '������� �����', 3, 'A', 313, to_date('28-09-2011 15:12:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5725, 10016, '������� ������ ������������ �������� ������ �������', '������� ��', '������� �����', 1, 'A', 364, to_date('22-06-2012 12:40:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5726, 10017, '������� ���� ������ �������', '��', '������� �����', 1, 'A', 114, to_date('28-09-2011 15:12:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5727, 10019, '��������� ������ �������� ����-����� �������', '������', '�������� �������', 1, 'A', 302, to_date('28-09-2011 15:12:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5728, 10020, '��������� ����-����� �� ������ ������ ������� �������', '�������', '�������� �������', 1, 'A', 302, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5729, 10021, '������� ��� ���������� ���������', '����', '������� �����', 1, 'P', 364, to_date('28-10-2011 14:58:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5730, 10022, '��������� ����� ����� ������ �������', '�����', '��������� �������', 1, 'A', 302, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5731, 10023, '��������� ���������� ���������', '���', '��������� �������', 1, 'A', 302, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5732, 10024, '���������� ������ ������������ ��������  ������ ������', '�����', '����� �.', 1, 'A', 364, to_date('22-06-2012 12:40:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5733, 10025, '������ ���������� ���������', '���', '������ �.', 1, 'A', 302, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5734, 10026, '0', '0', '0', 1, 'A', 313, to_date('09-12-2011 17:29:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5735, 20175, '������� �������������', '������� ��', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5736, 40049, '���� ������������ ������ ������������', '���� �����', '������ �����', 4, 'A', 252, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5737, 20177, '���� ������ ������� ���������', '���� ���', '���� �����', 2, 'A', 252, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5738, 20178, '�������� ������ ����-����� �������', '�������� �', '�������� ������', 2, 'A', 313, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5739, 20179, '������ ��������������� ���������', '������ ���', '������ �����', 2, 'A', 252, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5740, 30115, '��� ������ ���������', '��� ��', '������, ��� �����', 3, 'A', 114, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5741, 50005, '������� �������� ����������', '���', '������� �����', 5, 'A', 252, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5742, 50006, '��������� ����� ������ ������ ������� ����������', '�����', '������, ������ �����', 5, 'A', 114, to_date('28-09-2011 15:12:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5743, 10031, '������� ������� �����  ����', '����', '������� �����', 1, 'A', 114, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5744, 30051, '������ ���� ��������� ���������', '����', '������. ������', 3, 'A', 114, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5745, 30056, '������� ������� ������� ������������ ���� ����� ����� ������� �������', '����������', '�������  ������� ������� �����', 3, 'A', 114, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5746, 20041, '����������  ������� ���������', '���.���', '���������� ������������ ���������� �����', 2, 'A', 114, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 200 records committed...
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5747, 30057, '����� ����� ������� ���������', '��������', '����������', 3, 'A', 252, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5748, 30058, '������ ��������� �� ���������� ���������', '����', '������', 3, 'A', 252, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5749, 20042, '������� ����� �������', '���', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5750, 20043, '������� ����� �� ��������� �������', '����', '������� �����', 2, 'A', 364, to_date('03-08-2012 18:19:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5751, 20182, '���������� ����� ���� �� ����������� ������ �������', '������', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5752, 20044, '������� ���������� ����� ����', '����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5753, 20045, '������� ������� ���������', '���.���.��', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5754, 20046, '����� �����-������ ���������', '����', '������', 2, 'A', 313, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5755, 20047, '������������  ������� ����� ����', '����', '������', 2, 'A', 313, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5756, 20048, '�������  ���������� ���������', '���', '������� ������� ������� ������', 2, 'A', 313, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5757, 20049, '��������� ����� ������ ���������', '����', '������', 2, 'A', 313, to_date('28-09-2011 15:12:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5758, 30063, '������� ���� ������� �������', '����', '������� �����', 3, 'A', 252, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5759, 20050, '����  ������ ���������� �������������� ���������', '�����', '������� ������� ���� ������', 2, 'A', 313, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5760, 20051, '����  ���������� �������', '���', '������� ������� ���� ������', 2, 'A', 313, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5761, 20052, '������  ����-������� ���������', '����', '������� ������� ������ ������', 2, 'A', 252, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5762, 20053, '������� �����-����� ���������', '����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5763, 20054, '������� ������� ������ ����� ����� ����', '����', '������� ������� ������ ������', 2, 'A', 252, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5764, 20055, '������ ������ ����� ����', '����', '������� ������� ������ ������', 2, 'A', 252, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5765, 30064, '�������� ������ ������� ���������', '���������', '������', 3, 'A', 364, to_date('22-11-2011 18:19:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5766, 20056, '������� ������������ �� ���������� �������', '�����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5767, 20057, '������� ����� ������ ������� ���� ����� �������', '�.���.����', '������� ������� ������� ������', 2, 'A', 252, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5768, 20058, '������ �������������', '���', '������� ������� ������ ������', 2, 'A', 313, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5769, 20059, '������� ��������� �� ������ ���������', '����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5770, 20060, '������� ���������� ���������', '���.����.�', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5771, 30065, '��������� ���������� ���������', '���������', '���������� ������������', 3, 'A', 252, to_date('28-09-2011 15:12:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5772, 20061, '�������� ������ ������� �������', '����', '������� ������� �������� ������', 2, 'A', 313, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5773, 20062, '������� ����� ���������� �������', '���', '������� ������� ������� �����', 2, 'A', 114, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5774, 20063, '������� ����� �� �������� �������� ���������', '�����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5775, 20064, '�������  ������ ���������', '���', '������� ������� ������� ������', 2, 'A', 313, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5776, 20065, '������� ������� ������ ������ �������� ���������', '��������', '������� ������� ������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5777, 20066, '������� ������� ������� ���������', '����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5778, 20067, '������� ���������� ���������', '���.���.��', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5779, 20068, '������ �����-����� ���������', '���������', '������', 2, 'A', 252, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5780, 30066, '������ ������ ���������� ���������', '����', '������ ������', 3, 'A', 364, to_date('22-06-2012 12:46:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5781, 20069, '�������  ���������� ���������� ���������', '����', '������� ������������', 2, 'A', 252, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5782, 20070, '������ ����� �� ��� ������ ���������', '�������', '������ �����', 2, 'A', 313, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5783, 20071, '������ ��������� �� ���� �������', '������', '������ �����', 2, 'A', 313, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5784, 20072, '������ ������� ���������', '���.��', '������ �����', 2, 'A', 313, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5785, 20073, '������  �����-������ ���������', '������', '������ �����', 2, 'A', 364, to_date('22-06-2012 12:42:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5786, 20074, '������ ���� ������� ���������', '������', '������ �����', 2, 'A', 313, to_date('28-09-2011 15:12:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5787, 30070, '������������ ��� ������ ���������', '���������', '������������', 3, 'A', 252, to_date('28-09-2011 15:12:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5788, 20075, '������ ������ ������� �������', '������', '������ �����', 2, 'A', 313, to_date('28-09-2011 15:12:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5789, 20076, '������ ������� ������� ���������', '����', '������ �����', 2, 'A', 313, to_date('28-09-2011 15:12:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5790, 30071, '���������� ������ ������� ���������', '������', '���������� ������������', 3, 'A', 252, to_date('28-09-2011 15:12:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5791, 10004, '������ ����������� ������������ ��������� ���������� ������ ������', '�����-��', '������ �����', 1, 'A', 114, to_date('28-09-2011 15:12:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5792, 20077, '������ ������� �������', '�����', '������ �����', 2, 'A', 313, to_date('28-09-2011 15:12:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5793, 10005, '����� 23-��� ���� ����� ����', '23-����', '������ �����', 1, 'A', 114, to_date('28-09-2011 15:12:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5794, 20078, '������  ���������� �������', '������', '������ �����', 2, 'A', 313, to_date('28-09-2011 15:12:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6040, 40037, '��� ���', '���', '���', 4, 'A', 114, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5795, 20079, '������  ������ �������� �������', '������', '������ �����', 2, 'A', 313, to_date('28-09-2011 15:12:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5796, 20080, '�������� ���� ������� ���������', '����', '�������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5797, 40001, '���������� ������ ������������', '���', '������� �����', 4, 'A', 364, to_date('30-11-2012 11:33:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5798, 40002, '������� ������ ����� ������������', '����', '������� �����', 4, 'A', 364, to_date('22-06-2012 12:50:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5799, 40003, '��������� ������ ������������', '�����', '��������� �����', 4, 'A', 364, to_date('22-06-2012 12:51:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5800, 40004, '����� ������ ������������', '�������', '��������. ������� ����� �����', 4, 'A', 364, to_date('22-06-2012 12:51:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5801, 40005, '������� ������ ������������', '�����', '������� �����', 4, 'A', 364, to_date('22-06-2012 12:51:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5802, 40012, '������� ������ ������������', '�����', '������� �����', 4, 'A', 364, to_date('22-06-2012 12:52:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5803, 30118, '������� ��� ���������� ���������', '����', '������� �����', 3, 'A', 252, to_date('28-09-2011 15:12:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5804, 40006, '������ ������ ������������', '������ ��', '���������. ������� ������ �����', 4, 'A', 364, to_date('22-06-2012 12:51:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5805, 40007, '�������� ������ ������������', '���', '������ ������� �������� �����', 4, 'A', 364, to_date('22-06-2012 12:51:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5806, 40008, '������� ������� �������������� ������������', '����', '������� �����', 4, 'A', 313, to_date('28-09-2011 15:12:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5807, 40009, '������� ������  ��������� ������������', '����', '������� �����', 4, 'A', 364, to_date('22-06-2012 12:51:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5808, 40010, '������� ������ ��������� ������������', '����', '��������������� �. ������� �����', 4, 'A', 364, to_date('22-06-2012 12:52:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5809, 40011, '������� ������ ������� ������������', '����', '������� �����', 4, 'A', 364, to_date('22-06-2012 12:52:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5810, 40013, '����������  ������ ����� ������� ������������', '�������', '������� �����', 4, 'A', 364, to_date('22-06-2012 12:52:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5811, 40014, '����� ���������� �� ���������� ������������', '����', '������� �����', 4, 'A', 252, to_date('28-09-2011 15:12:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5812, 20081, '���������� ����� ���������', '�����', '���������� ������������', 2, 'A', 252, to_date('28-09-2011 15:12:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5813, 20082, '������� ������������� �������', '����', '������ ������� ������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5814, 20083, '������ ����� ������������� �������', '����', '������ �����', 2, 'A', 313, to_date('28-09-2011 15:12:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5815, 20084, '����� ������ ����-����� �������', '���-�.���.', '������ ������� ����� �����', 2, 'A', 313, to_date('28-09-2011 15:12:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5816, 10006, '������ ������ �������', '���', '������ �����', 1, 'A', 114, to_date('28-09-2011 15:12:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5817, 20085, '�������  ������� ���������', '���', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5818, 20086, '�������  ���������� �������', '����', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5819, 20087, '��������� �������-������ ����� ����', '�����', '������', 2, 'A', 313, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5820, 30073, '������� ��������� �� �������� ���������', '����', '������� �����', 3, 'A', 313, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5821, 30074, '������� ���������� ���������', '���', '������� �����', 3, 'A', 252, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5822, 20088, '�������  ����������� ���������', '�����', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5823, 20089, '�������  ����� �� ������� �������', '����', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5824, 20090, '�������  ������������� ���������', '������', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5825, 30076, '������ ������ ���������� ���������', '���������', '�������', 3, 'A', 364, to_date('22-06-2012 12:47:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5826, 20091, '����� ���������� �������', '����', '������� ������� ����� �����', 2, 'A', 313, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5827, 20284, '������� ������ �������', '���', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5828, 30012, '������� ��������� �� ���������� ���������', '����', '������� �����', 3, 'A', 252, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5829, 40051, '��������� ������ ������������', '���', '��������� �����', 4, 'A', 364, to_date('22-06-2012 12:56:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5830, 30015, '��������� ��������� �� ������ ���������', '����', '��������� �����', 3, 'A', 252, to_date('28-09-2011 15:12:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5831, 40052, '�������� ������ ������������', '���', '������', 4, 'A', 364, to_date('22-06-2012 12:57:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5832, 20185, '������� ������ ������� ���� ����� �������', '������', '������� ������', 2, 'A', 302, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5833, 30119, '������� ������ ��� ������ ���������� ���������', '������', '������� �����', 3, 'A', 364, to_date('22-06-2012 12:49:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5834, 10032, '������� ���������� ����� ����', '����', '������� �����', 1, 'A', 313, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5835, 20186, '��������� ������ ������ �������', '����', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5836, 2000, '�������� ������ ������� �������', '����', '����� ������', 2, 'A', 302, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5837, 22001, '������ ���������������� �������', '���', '������ ������', 2, 'A', 302, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5838, 30120, '������� ������ ���������� ���������', '����', '������� �����', 3, 'A', 364, to_date('22-06-2012 12:49:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5839, 30121, '���� �������-������� ���������', '����', '���� �����', 3, 'A', 313, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5840, 30122, '���������� ������ �������� ������ ���������', '�����', '������� �����', 3, 'A', 364, to_date('22-06-2012 12:49:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5841, 23001, 'Ң���� ������ ������� ���� ����� �������', '����', 'Ң���� �����', 2, 'A', 302, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5842, 23003, '������ �������� ��������� ����-����� �������', '������', '������ �.', 2, 'A', 302, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5843, 40054, '������� ������ ������������', '���', '������', 4, 'A', 364, to_date('22-06-2012 12:57:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5844, 20190, '����� ������� ���� - ����� �������', '�����', '����� �.', 2, 'A', 302, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5845, 20200, '����� ������� �� �������-�������� ���� ����� �������', '�������', '����� �.', 2, 'A', 302, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 300 records committed...
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5846, 23004, '����� ������ ������� ����-����� �������', '������', '����� �.', 2, 'A', 302, to_date('28-09-2011 15:12:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5847, 23005, '����� ��������� ����-����� �������', '�����', '����� �.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5848, 23006, '����� ���������� ������� �������', '����', '����� �.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5849, 23007, '����� ����� ���������', '���', '����� �.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5850, 23008, '����� ������� ���������', '���', '����� �.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5851, 23009, '����� ����� ���������', '���', '����� �.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5852, 23010, '����� ����������� �������', '���', '����� �.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5853, 23011, '����� ���������� ������� �������', '����', '����� �.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5854, 23012, '����� ���������� ���������', '���', '����� �.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5855, 23013, '����� ������������ ���������', '���', '����� �.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5856, 23014, '����� ���������� ���������', '���', '����� �.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5857, 23015, '����� ����� �� ����-����� ������� �������', '������', '����� �.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5858, 23016, '����� ��������� �� ������� �������������� �������', '�����', '����� �.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5859, 23017, '����� ������� �� ��������� �������', '����', '����� �.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5860, 23018, '���������� ��������� �� ������������ �������', '����', '����� �.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5861, 23019, '������ ������ ��������� ����-����� �������', '������', '������ �.', 2, 'A', 302, to_date('28-09-2011 15:12:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5862, 23020, '�������� ������ ��������� ����-����� �������', '����', '��������', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5863, 23021, '������ ���������������� �������', '���', '������ �.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5864, 23022, '������� ������ ������� ����-����� �������', '������', '������ �.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5865, 23023, '������� ������ ������� ���������', '����', '������� �.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5866, 23024, '������� ���� ������������� ���������', '����', '������� �.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5867, 23025, '�������� ��������� �������', '���', '�������� �.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5868, 23026, '�������� ����� ��������� ���������', '����', '�������� �.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5869, 23027, '�������� ��������� �� ������������ �������', '����', '�������� �.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5870, 23028, '������� ������ ������� ����-����� �������', '������', '������� �.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5871, 23029, '������ ������ ������� ���������', '����', '������ �.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5872, 23030, '������ ��������� �������� �������', '����', '������ �.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5873, 23031, '������� ������ ������� ����-����� �������', '������', '������� �.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5874, 23032, '������� ����-������ �������', '����', '������� �.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5875, 23033, '������ ����� ������ ���������', '����', '������� �.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5876, 23034, '��� ������ ����� �������', '������', '������ �.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5877, 23035, '������� ���������� �������������� ����-����� �������', '������', '������� �.', 2, 'A', 302, to_date('28-09-2011 15:12:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5878, 23036, '������� ������ ������� ���������', '����', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5879, 23037, '"�������������"���� ��������� ���������� ���������', '���', '��������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5880, 10033, '������� ������ ��������� ������������ ��-��� ���� ������ �������', '���� ����', '������� �����', 1, 'A', 364, to_date('22-06-2012 12:41:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5881, 23038, '���������� ����� �� ���� ������ �������', '����¡��', '�������', 2, 'A', 313, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5882, 30123, '������� ��������� �������� ������������ ������������� ���������', '�����', '������� �����', 3, 'A', 313, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5883, 23039, '��������� ��������� ����-����� �������', '�����', '�������� ������� ��������� ������', 2, 'A', 313, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5884, 30124, '������� ������ ������� ������ ���������', '����-2', '������� �����', 3, 'A', 364, to_date('22-06-2012 12:49:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5885, 10034, '������� ����� 14-����-����� �������', '���', '������� �.', 1, 'A', 313, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5886, 10035, '���������� ����-����� ������ ������', '�����', '������� �����', 1, 'A', 313, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5887, 20092, '������ ������ �������� ���������', '������', '������ �����', 2, 'A', 313, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5888, 30078, '��������� ������� ���������', '���', '���������� ������������', 3, 'A', 252, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5889, 30079, '�������� ������� ��������� ���������', '����������', '����������� ������������', 3, 'A', 364, to_date('22-11-2011 18:19:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5890, 30080, '�������� ����������� ���������', '�����', '�������� �����', 3, 'A', 252, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5891, 20093, '�������  ����������� �������������', '�������', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5892, 30081, '������� ����������� ���������', '������', '������� �����', 3, 'A', 364, to_date('22-11-2011 18:19:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5893, 20094, '�������  ���� �������', '���.��', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5894, 20095, '�������  ������� ���������', '�����', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5895, 20096, '������  �������������', '��������', '������', 2, 'A', 313, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5896, 20097, '�������� ����� ���������', '�����', '�������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5897, 20098, '�����  ����� ���������', '�������', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5898, 30082, '����� ����������� ��������� ���������', '��������', '�������� ������� ����� �����', 3, 'A', 313, to_date('07-02-2012 17:08:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5899, 30083, '���� ������ ��� ������ ���������', '��������', '������� ���� �����', 3, 'A', 364, to_date('22-06-2012 12:47:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5900, 20099, '������� ���������� ���������', '���������', '�������� ������� ������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5901, 20100, '����� �����-������ ���������', '��������', '����������. ����� �����', 2, 'A', 313, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5902, 30084, '����� ������ ���������� ���������', '��������', '�������� ������� ����� �����', 3, 'A', 364, to_date('22-06-2012 12:47:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5903, 20101, '����� ������ ������� ���������', '����� ���', '�������� ������� ����� �����', 2, 'A', 313, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5904, 20102, '������� ������� ��������� �������', '����������', '�������� ������� ������� �����', 2, 'A', 313, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5905, 20103, '���������  ������-����� ����� ����', '���������', '���������', 2, 'A', 252, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5906, 10007, '12-��� ����� ���� ����� ����� ����', '12-�������', '�������� ������� ����� �����', 1, 'A', 114, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5907, 20104, '����� ���������� ������� �������', '��������', '�������� ������� ����� �����', 2, 'A', 313, to_date('28-09-2011 15:12:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5908, 20105, '�����  ���������� ���������', '�������', '�������� ������� ����� �����', 2, 'A', 313, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5909, 20106, '����� ������ ������� ���� ����� �������', '����������', '�������� ������� ����� �����', 2, 'A', 313, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5910, 30085, '��������� ������ ����������� �� ������� ���������', '�������', '��������� �����', 3, 'A', 364, to_date('22-06-2012 12:47:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5911, 10008, '����� ����� ���� ����� �������', '��������', '����� �����', 1, 'A', 114, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5912, 20107, '����� ��������� �������', '�������', '�������� ������� ����� �����', 2, 'A', 313, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5913, 40050, '������� ������ ���������� ������������', '����', '������� �����', 4, 'A', 364, to_date('22-06-2012 12:56:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5914, 20285, '������� ����� ����-����� �������', '�������', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5915, 40053, '��� �����', '�����', '�����', 4, 'A', 313, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5916, 20108, '���������  ���� �������', '�����', '��������� �����', 2, 'A', 313, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5917, 20109, '������ ������ ������� ���������', '���������', '�������� ������� ������ �����', 2, 'A', 313, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5918, 20110, '����� ������������� �������', '��������', '�������� ������� ����� �����', 2, 'A', 313, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5919, 20111, '���������  ���������� �������', '���-���', '�������� ������� ��������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5920, 30087, '����� ����������� ����-����� �������', '���������', '�������� ������� ����� �����', 3, 'A', 313, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5921, 20112, '������  ���������� �������', '���������', '�������� ������� ������ �����', 2, 'A', 313, to_date('28-09-2011 15:13:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5922, 30088, '������ ����������� ���������', '���������', '������ �����', 3, 'A', 313, to_date('28-09-2011 15:13:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5923, 30090, '���������� ������������ ���������� ���������� ������ �� ������ ������� ����������', '�� ������', '�������  �����', 3, 'A', 114, to_date('28-09-2011 15:13:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5924, 30036, '������ ����-����� �� ����� ������ ������������ ���������', '�������', '������ �����', 3, 'A', 364, to_date('14-10-2011 10:52:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5925, 30038, '���������  ���������� ���������', '�����', '��������� �����', 3, 'A', 252, to_date('28-09-2011 15:13:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5926, 30039, '������� ����������� ���������', '�����', '������� �����', 3, 'A', 252, to_date('28-09-2011 15:13:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5927, 30040, '������ ������ ������������', '��������', '��������� ������� ������ �����', 3, 'A', 364, to_date('30-08-2012 12:28:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5928, 30042, '������� ����������� ������� ���������', '����', '������� �����', 3, 'A', 252, to_date('28-09-2011 15:13:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5929, 30043, '������ ���� �������� �������', '����', '������', 3, 'A', 114, to_date('28-09-2011 15:13:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5930, 30044, '������ ����� ������������ �� ����� ���������', '���������', '������', 3, 'A', 114, to_date('28-09-2011 15:13:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5931, 30045, '������ ������ ���������� ���������', '����', '������ �����', 3, 'A', 364, to_date('22-06-2012 12:46:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5932, 30046, '������� ������ ������� ���������', '����', '������� �����', 3, 'A', 252, to_date('28-09-2011 15:13:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5933, 30047, '������ ������ �������� ���������', '����', '������ �����', 3, 'A', 364, to_date('22-06-2012 12:46:31', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5934, 30019, '������� ���������� �� ����� ������ ���������', '�����', '������� �����', 3, 'A', 252, to_date('28-09-2011 15:13:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5935, 30020, '������� ������ ���������� ���������', '����', '������� �����', 3, 'A', 364, to_date('22-06-2012 12:44:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5936, 30021, '������� ��������� �� ������ ���������', '����', '������� �����', 3, 'A', 313, to_date('28-09-2011 15:13:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5937, 30022, '������� ������ ������� ���������', '����', '������� �����', 3, 'A', 252, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5938, 30023, '������� ������ ���������', '���', '������� �����', 3, 'A', 364, to_date('22-11-2011 18:20:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5939, 30024, '������������ ��� ���� �� ������� ���������� ���������', '������', '������� �����', 3, 'A', 252, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5940, 30025, '������� �����������-��������� ���������', '����', '������� �����', 3, 'A', 252, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5941, 30026, '�������� �����������-��������� ���������', '����', '������� �����', 3, 'A', 252, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5942, 30029, '��������� ������ ����������� ������� ���������', '�������', '��������� �����', 3, 'A', 364, to_date('22-06-2012 12:45:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5943, 30031, '������� ������ ������� ���������� ���������', '�����', '������� �����', 3, 'A', 364, to_date('22-06-2012 12:45:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5944, 30032, '������ ������ ���������� ���������', '����', '������ �����', 3, 'A', 364, to_date('22-06-2012 12:45:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5945, 30033, '��������� ������ ������� ���������', '����', '��������� �����', 3, 'A', 252, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 400 records committed...
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5946, 10001, '������� ����� 18-����-����� �������', '18-���', '������� �����', 1, 'A', 114, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5947, 20001, '������� ��������� �������', '���', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5948, 20002, '������� ���� �����-������ �������', ' �����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5949, 20003, '������� ���� �����-������ ���������', '����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5950, 20004, '������� ������� ���������', '���', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5951, 20005, '�������� ����� ����� ����', '���', '������� �����', 2, 'A', 114, to_date('28-09-2011 15:13:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5952, 20006, '�������  �����-������������ ���������', ' ����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5953, 20007, '������� ��������� ����-����� �������', ' �����', '������� �����', 2, 'A', 252, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (5954, 20008, '�.������� ����� ����������� ����-����� �������', ' ����', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:13:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6037, 40034, '��� ���������', '���������', '���������', 4, 'A', 114, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6038, 40035, '��� ������� �����', '������� ��', '������� �����', 4, 'A', 114, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6039, 40036, '��� ���� ��������', 'U�', '���� ��������', 4, 'A', 114, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6041, 40038, '��� �������', '�������', '�������', 4, 'A', 114, to_date('28-09-2011 15:13:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6042, 50001, '���������� ������������ ���������� ���������� ������ �� ������ �������� ����������', '��������', '������� �����', 5, 'A', 364, to_date('28-09-2011 15:13:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6081, 20189, '�������� ��������� �� ������� �������������� �������', '�����', '�������� �.', 2, 'A', 364, to_date('27-10-2011 12:09:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6119, 23043, '������� ����� �������', '���', '������� �����', 2, 'A', 313, to_date('16-11-2011 11:42:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6139, 10038, '���������� ���������� ������ ����� ����', '�����', '������� �����', 1, 'A', 364, to_date('17-11-2011 11:11:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6043, 60001, '���������� ������������ ���������� ���������� ������ �� ������ ������� ����������', '�� ������', '������� �����', 6, 'A', 114, to_date('28-09-2011 15:13:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6044, 50002, '���������� ������������ ����- ����� ����������', '���', '������� �����', 5, 'A', 252, to_date('28-09-2011 15:13:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6045, 50008, '���������� ������������ ���������� ���������� ������ �� ������ �������� �������������� ���� ������ �', '���', '������� �����', 5, 'A', 252, to_date('28-09-2011 15:13:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6046, 20183, '������ ���������������� �������', '���', '������ ������', 2, 'A', 313, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6047, 20184, '̢���� ������ ��������� �������', '����', '̢���� ������', 2, 'A', 302, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6048, 10036, '������ ������ ����� ����', '����', '������ �����', 1, 'A', 313, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6049, 40055, '������ I ������������', '��', '�������', 4, 'A', 313, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6050, 40056, '�������� ������ ������������', '���', '������', 4, 'A', 313, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6051, 23041, '������� �������������', '���', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6052, 23042, '�������� �����-������ ������� ������ �������', '����', '������ �����', 2, 'A', 313, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6053, 40057, '������� ��������� ������� ����������� ������������', '�����', '������� �����', 4, 'A', 313, to_date('17-11-2011 11:56:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6054, 10037, '22-����-����� �������', '���', '������� �����', 1, 'A', 313, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6055, 23040, '������� ��������� �� ������������� �������', '���', '������� �����', 2, 'A', 313, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6140, 40058, '��������� ������ �����������-������� ������������', '�����', '������, ������ �������� �����', 4, 'A', 364, to_date('22-06-2012 12:57:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6199, 23047, '��������� ������ ����-����� �������', '�����', '������ ������� ��������� ���������', 2, 'A', 364, to_date('12-12-2011 10:52:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6219, 10039, '������ ������ ���������� �� ��������� ����-����� �������', '������', '������ ������', 1, 'A', 313, to_date('13-12-2011 11:04:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6220, 10040, '����� ���� �������', '���', '�����', 1, 'A', 313, to_date('13-12-2011 11:05:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6239, 23049, '�������� ��������� �������', '���', '��������', 2, 'A', 313, to_date('16-12-2011 14:12:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6240, 23050, '������� ������������� �������', '����', '������ ������� ������� ������', 2, 'A', 364, to_date('16-12-2011 17:14:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6259, 23051, '��������� ������ �������� ����-����� �������', '������', '������ ������� ��������� ������', 2, 'A', 364, to_date('20-12-2011 09:20:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6281, 23054, '������� ������ ������� ����-����� �������', '������', '�������� ������� ������� ������', 2, 'A', 364, to_date('20-12-2011 17:49:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6299, 23055, '������� ����� ���������', '���', '�������', 2, 'A', 313, to_date('22-12-2011 11:15:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6300, 23056, '������� ��������� �������', '���', '�������', 2, 'A', 313, to_date('22-12-2011 11:11:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6339, 23058, '�������� ����� ��������� ����-����� �������', '�����', '������ ������� �������� ������', 2, 'A', 364, to_date('21-02-2012 15:56:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6340, 23059, '����� ����� ��������� ����-����� �������', '�����', '������ ������� ����� ������', 2, 'A', 364, to_date('21-02-2012 15:57:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6359, 30127, '������ ����� ����� ������ ���������� ���������', '����', '����� �����', 3, 'A', 364, to_date('22-06-2012 12:50:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6379, 40059, '������� ��������� ������������', '���', '������', 4, 'A', 313, to_date('15-03-2012 17:05:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6419, 23060, '������� ��������� �������', '���', '������� �����', 2, 'A', 313, to_date('30-03-2012 17:59:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6439, 23061, '�������� ������ �� ��� �������� ����-����� �������', '������', '������� �������, �������� ������', 2, 'A', 364, to_date('06-04-2012 09:46:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6459, 23062, '��������� ������ ���������� �������������� ���������', '�����', '�������� �������', 2, 'A', 313, to_date('06-04-2012 14:49:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6460, 23063, '����� ���������� �������', '���', '�������� �������', 2, 'A', 313, to_date('06-04-2012 14:50:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6519, 40060, '���, ������� ������������', '��', '���, ����������', 4, 'A', 364, to_date('02-05-2012 14:52:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6539, 23065, '��������� ���������� ����-����� �������', '�����', '��������� �������', 2, 'A', 364, to_date('08-05-2012 12:22:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6601, 23069, 'C�������� ���������� ������� �������', '����', '��������� �����', 2, 'A', 364, to_date('13-07-2012 12:13:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6621, 23070, '������ �������� ��������� �������', '����', '������ �������', 2, 'A', 364, to_date('23-08-2012 12:41:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6661, 30129, '��������� ����������� ���������', '���', '������', 3, 'A', 313, to_date('24-12-2012 10:40:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6581, 23068, '������ ���������� �������', '���', '�������� �����', 2, 'A', 313, to_date('10-07-2012 11:17:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6159, 23044, '������� ������������� �������', '���', '������� �����', 2, 'A', 313, to_date('09-12-2011 15:31:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6221, 23048, '����� ���� �������', '�����', '�����', 2, 'A', 313, to_date('13-12-2011 14:27:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6279, 23052, '�������� ���������� �������', '���', '������ ������� �������� �����', 2, 'A', 364, to_date('20-12-2011 15:13:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6280, 23053, '������ ��������� �� ����� �������', '����', '������ �����', 2, 'A', 364, to_date('20-12-2011 15:14:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6399, 30128, '������� ��������� ���������', '���', '������', 3, 'A', 313, to_date('15-03-2012 17:06:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6059, 50009, '���� ���� ����� ��������� ����������', '����', '������, ������ �����', 5, 'A', 364, to_date('26-10-2011 17:51:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6060, 30125, '���� ������ ���������� ���������', '����', '�������, ���� �����', 3, 'A', 364, to_date('22-06-2012 12:50:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6099, 30126, '������� ������ ������� ���������', '����', '������� �����', 3, 'A', 364, to_date('22-06-2012 12:50:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_INSTITUTION (INSTITUTION_ID, INSTITUTION_CODE, INSTITUTION_NAME, INSTITUTION_ABBREVIATION, INSTITUTION_PLACE, EDUCATION_CODE, STATE_NOTES, EMP_CODE, INS_DATE)
values (6560, 23067, '������ ���������� ���������', '���', '������ �����', 2, 'A', 313, to_date('10-05-2012 15:37:24', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 463 records loaded
prompt Loading SS_OK_KV_KURS...
prompt Table is empty
prompt Loading SS_OK_LANGUAGE...
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (321, 20, '�����', 'A', 252, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (322, 1, '���', 'A', 114, to_date('28-09-2011 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (323, 2, '������', 'A', 114, to_date('28-09-2011 15:13:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (324, 3, '�����', 'A', 114, to_date('28-09-2011 15:13:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (325, 4, '�������', 'A', 114, to_date('28-09-2011 15:13:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (326, 5, '����', 'A', 114, to_date('28-09-2011 15:13:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (327, 6, '�����', 'A', 114, to_date('28-09-2011 15:13:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (328, 7, '����', 'A', 114, to_date('28-09-2011 15:13:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (329, 8, '����', 'A', 114, to_date('28-09-2011 15:13:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (330, 9, '�����', 'A', 114, to_date('28-09-2011 15:13:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (331, 10, '�����', 'A', 114, to_date('28-09-2011 15:13:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (332, 11, '�������', 'A', 114, to_date('28-09-2011 15:13:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (333, 12, '�����', 'A', 114, to_date('28-09-2011 15:13:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (334, 13, '������', 'A', 114, to_date('28-09-2011 15:13:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (335, 14, '�����', 'A', 114, to_date('28-09-2011 15:13:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (336, 15, '����', 'A', 114, to_date('28-09-2011 15:13:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (337, 16, '������', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (338, 17, '������', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (341, 21, '�����', 'A', 364, to_date('13-03-2012 09:20:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (342, 99, '����� ������', 'A', 364, to_date('13-03-2012 09:20:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (339, 18, '������', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LANGUAGE (LANGUAGE_ID, LANGUAGE_CODE, LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (340, 19, '�������', 'A', 252, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 22 records loaded
prompt Loading SS_OK_LEAVE...
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (241, 5, '������', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (242, 1, '������ �������', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (243, 2, '���� �������', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (244, 3, '�� ���� �����������', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (245, 4, '�������� ������', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 5 records loaded
prompt Loading SS_OK_LEVEL_BOSS...
insert into SS_OK_LEVEL_BOSS (LEVEL_DEPARTMENT_CODE)
values (1);
commit;
prompt 1 records loaded
prompt Loading SS_OK_LEVEL_DEPARTMENT...
insert into SS_OK_LEVEL_DEPARTMENT (LEVEL_DEPARTMENT_CODE, LEVEL_DEPARTMENT_NAME)
values (1, '����������, ���');
insert into SS_OK_LEVEL_DEPARTMENT (LEVEL_DEPARTMENT_CODE, LEVEL_DEPARTMENT_NAME)
values (2, '�������');
insert into SS_OK_LEVEL_DEPARTMENT (LEVEL_DEPARTMENT_CODE, LEVEL_DEPARTMENT_NAME)
values (3, '�����');
insert into SS_OK_LEVEL_DEPARTMENT (LEVEL_DEPARTMENT_CODE, LEVEL_DEPARTMENT_NAME)
values (4, '���');
commit;
prompt 4 records loaded
prompt Loading SS_OK_LEVEL_LANGUAGE...
insert into SS_OK_LEVEL_LANGUAGE (LEVEL_LANGUAGE_ID, LEVEL_LANGUAGE_CODE, LEVEL_LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (241, 1, '�����', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEVEL_LANGUAGE (LEVEL_LANGUAGE_ID, LEVEL_LANGUAGE_CODE, LEVEL_LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (242, 2, '����� ��������', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEVEL_LANGUAGE (LEVEL_LANGUAGE_ID, LEVEL_LANGUAGE_CODE, LEVEL_LANGUAGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (243, 3, '���� ��������', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 3 records loaded
prompt Loading SS_OK_MILITARY_RANK...
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (421, 1, '����� �����', 'A', 138, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (422, 2, '������', 'A', 138, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (423, 3, '����� �������', 'A', 138, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (424, 4, '�������', 'A', 138, to_date('28-09-2011 15:12:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (425, 5, '����� �������', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (426, 6, '2-���������� ��������', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (427, 7, '1-���������� ��������', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (428, 8, '��� ��������', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (429, 9, '���������', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (430, 10, '����� ���������', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (431, 11, '�������', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (432, 12, '�������-���������', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (433, 13, '�����', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (434, 14, '������������', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (435, 15, '���������', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (436, 16, '3-���������� �������', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (437, 17, '2-���������� �������', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (438, 18, '1-���������� �������', 'A', 138, to_date('28-09-2011 15:12:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (439, 19, '�������-�����', 'A', 138, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (440, 20, '�������-���������', 'A', 138, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (441, 21, '�������-���������', 'A', 138, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MILITARY_RANK (MILITARY_RANK_ID, MILITARY_RANK_CODE, MILITARY_RANK_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (442, 22, '����� ��������', 'A', 138, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
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
values (241, 10, '�������� ������ ������ ������ ��������', 'A', 313, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MOTIVE_DISMISSIAL (MOTIVE_DISMISSIAL_ID, MOTIVE_DISMISSIAL_CODE, MOTIVE_DISMISSIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (242, 1, '�� �������� ���', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MOTIVE_DISMISSIAL (MOTIVE_DISMISSIAL_ID, MOTIVE_DISMISSIAL_CODE, MOTIVE_DISMISSIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (243, 2, '�������� ���������� ���', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MOTIVE_DISMISSIAL (MOTIVE_DISMISSIAL_ID, MOTIVE_DISMISSIAL_CODE, MOTIVE_DISMISSIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (244, 3, '������ ���������� ������� ������ ���������� �����', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MOTIVE_DISMISSIAL (MOTIVE_DISMISSIAL_ID, MOTIVE_DISMISSIAL_CODE, MOTIVE_DISMISSIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (245, 4, '��������� ������ ���������� �����', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MOTIVE_DISMISSIAL (MOTIVE_DISMISSIAL_ID, MOTIVE_DISMISSIAL_CODE, MOTIVE_DISMISSIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (246, 5, '������ ���������� ��� ����� ���� ������� ���������� ����', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MOTIVE_DISMISSIAL (MOTIVE_DISMISSIAL_ID, MOTIVE_DISMISSIAL_CODE, MOTIVE_DISMISSIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (247, 6, '�������� ������ ���������� �����', 'A', 114, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MOTIVE_DISMISSIAL (MOTIVE_DISMISSIAL_ID, MOTIVE_DISMISSIAL_CODE, MOTIVE_DISMISSIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (248, 7, '��� ��������� ������� ����� ���������� ���������� �����', 'A', 114, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MOTIVE_DISMISSIAL (MOTIVE_DISMISSIAL_ID, MOTIVE_DISMISSIAL_CODE, MOTIVE_DISMISSIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (249, 8, '������ ���������� �������� ���������� ����', 'A', 114, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_MOTIVE_DISMISSIAL (MOTIVE_DISMISSIAL_ID, MOTIVE_DISMISSIAL_CODE, MOTIVE_DISMISSIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (250, 9, '���������� �������� ������ ������������ �������', 'A', 114, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 10 records loaded
prompt Loading SS_OK_NATIONALITY...
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (561, 24, '�������', 'P', 313, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (562, 99, '����� ������', 'A', 313, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (563, 1, '�����', 'A', 114, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (564, 11, '�����', 'A', 364, to_date('14-02-2012 16:31:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (565, 2, '���', 'A', 114, to_date('28-09-2011 15:13:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (566, 3, '�����', 'A', 114, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (567, 4, '�����', 'A', 114, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (568, 5, '������', 'A', 114, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (569, 6, '����������', 'A', 302, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (570, 7, '�����', 'A', 114, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (571, 8, '����', 'A', 114, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (572, 9, '������', 'A', 114, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (573, 10, '����������', 'A', 364, to_date('14-02-2012 16:31:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (574, 12, '������', 'P', 313, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (575, 13, '�����', 'A', 364, to_date('14-02-2012 16:31:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (576, 14, '�����', 'P', 313, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (577, 15, '�������', 'A', 114, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (578, 16, '������', 'A', 364, to_date('14-02-2012 16:31:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (579, 17, '�������', 'P', 313, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (580, 18, '�������', 'P', 313, to_date('28-09-2011 15:13:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (581, 19, '�����', 'P', 313, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (582, 20, '��������', 'P', 313, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (583, 21, '�����', 'P', 313, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (584, 22, '������', 'P', 313, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NATIONALITY (NATIONALITY_ID, NATIONALITY_CODE, NATIONALITY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (585, 23, '������', 'P', 313, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
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
values (261, 7, '���', '��', 'A', 313, to_date('30-01-2012 18:11:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_PARTY (PARTY_ID, PARTY_CODE, PARTY_ABBREVIATION, PARTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (262, 4, '����', '���������� ������������ "������" ������-���������� ��������', 'A', 114, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_PARTY (PARTY_ID, PARTY_CODE, PARTY_ABBREVIATION, PARTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (263, 1, '���', '���������� ������������ ���� ���������� ��������', 'A', 114, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_PARTY (PARTY_ID, PARTY_CODE, PARTY_ABBREVIATION, PARTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (264, 2, '���', '���������� ������������ ���������� ���������� �������', 'A', 114, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_PARTY (PARTY_ID, PARTY_CODE, PARTY_ABBREVIATION, PARTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (265, 3, '���', '������������ �� ������������� �������� ���������� ���', 'A', 313, to_date('01-02-2012 12:59:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_PARTY (PARTY_ID, PARTY_CODE, PARTY_ABBREVIATION, PARTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (266, 5, '����', '���������� ������������ "������ ��������" ���������� �������', 'A', 114, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_PARTY (PARTY_ID, PARTY_CODE, PARTY_ABBREVIATION, PARTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (267, 6, '���', '���������� ������������ "����� ���������" ��������', 'A', 114, to_date('28-09-2011 15:13:12', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 7 records loaded
prompt Loading SS_OK_PASSPORT_TYPE...
insert into SS_OK_PASSPORT_TYPE (PASSPORT_TYPE_CODE, PASSPORT_TYPE_NAME)
values (1, '�������');
insert into SS_OK_PASSPORT_TYPE (PASSPORT_TYPE_CODE, PASSPORT_TYPE_NAME)
values (2, '��� �� ����������');
insert into SS_OK_PASSPORT_TYPE (PASSPORT_TYPE_CODE, PASSPORT_TYPE_NAME)
values (3, '������� �����');
commit;
prompt 3 records loaded
prompt Loading SS_OK_PENALTY...
insert into SS_OK_PENALTY (PENALTY_ID, PENALTY_CODE, PENALTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (221, 1, '�������', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_PENALTY (PENALTY_ID, PENALTY_CODE, PENALTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (222, 2, '������ ����� �� �������� 30 ���� ��������� ������', 'A', 114, to_date('28-09-2011 15:14:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_PENALTY (PENALTY_ID, PENALTY_CODE, PENALTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (223, 3, '������ ����� �� �������� 50 ���� ��������� ������', 'A', 114, to_date('28-09-2011 15:14:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_PENALTY (PENALTY_ID, PENALTY_CODE, PENALTY_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (224, 4, '��������� ����������� ���� ����', 'A', 114, to_date('28-09-2011 15:14:27', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 4 records loaded
prompt Loading SS_OK_PERS_COL_DFLT...
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '09', 'ED.COD_VUZ_PRIM', 'C', '����������', '����������', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '10', 'ED.CURS', 'C', '����', '����', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '11', 'ED.FAKULTET', 'C', '���������', '���������', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '01', 'PP.BRANCH', 'C', '���', '���', 5, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '02', 'OK_SERVICE.GET_STATUSNAME(PP.STATUS_CODE)', 'C', '������', '������', 6, null, 'select to_char(status_code) id, status_name name from ss_ok_status', 'PP.STATUS_CODE');
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '03', 'OK_SERVICE.GET_DEPARTMENTNAME(PP.DEPARTMENT_CODE)', 'C', '�����', '�����', 9, null, 'select to_char(department_code) id, department_name name from ss_ok_department where state_notes=''A'' ', 'PP.DEPARTMENT_CODE');
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '04', 'OK_SERVICE.GET_POSTNAME(PP.POST_CODE)', 'C', '���������', '���������', 9, null, null, 'PP.POST_CODE');
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '05', 'OK_SERVICE.GET_SPECIALNAME(PP.SPECIAL_CODE)', 'C', '�������������', '�������������', 13, null, null, 'PP.SPECIAL_CODE');
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '06', 'PP.FAMILY', 'C', '�������', '�������', 20, null, null, 'PP.FAMILY');
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '07', 'PP.FIRST_NAME', 'C', '���', '���', 20, null, null, 'PP.FIRST_NAME');
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '08', 'PP.PATRONYMIC', 'C', '��������', '��������', 20, null, null, 'PP.PATRONYMIC');
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '09', 'OK_SERVICE.GET_GENDERNAME(PP.GENDER_CODE)', 'C', '���', '���', 3, null, 'select to_char(gender_code) id,gender_name name from ss_ok_gender', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '10', 'PP.BIRTHDAY', 'D', '���� ��������', '���� ����.', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '11', 'OK_SERVICE.GET_REGIONNAME(PP.REGION_ID)', 'C', '����� �������� (�������)', '����� �������� (���)', 20, null, 'select region_id id,region_nam name from s_region', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '12', 'OK_SERVICE.GET_DISTRNAME(PP.DISTR)', 'C', '����� �������� (�����)', '����� �������� (�����)', 20, null, 'select distr id, distr_name name from s_distr', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '13', 'OK_SERVICE.GET_BIRTHPLACE(PP.BIRTHPLACE,PP.REGION_ID,PP.DISTR)', 'C', '����� �������� (���,����� ��� �� ����������)', '����� ��������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '14', 'PP.BIRTHPLACE', 'C', '����� �������� (������)', '����� �������� (������)', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '15', 'OK_SERVICE.GET_NATIONALITYNAME(PP.NATIONALITY_CODE)', 'C', '��������������', '��������������', 10, null, 'select to_char(nationality_code) id, nationality_name name from ss_ok_nationality where state_notes=''A'' ', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '16', 'OK_SERVICE.GET_FAMILYSTATUSNAME(PP.FAMILY_STATUS_CODE)', 'C', '�������� ���������', '�������� ���������', 10, null, 'select family_status_code id, family_status_name name from ss_ok_family_status', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '17', 'OK_SERVICE.GET_REGTYPENAME(PP.REG_TYPE_CODE)', 'C', '��� ��������', '��������', 10, null, 'select reg_type_code id, reg_type_name name from ss_ok_reg_type', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '18', 'OK_SERVICE.GET_REGIONNAME(PP.HOME_ADDRESS_REGION_ID)||'' ''||OK_SERVICE.GET_DISTRNAME(PP.HOME_ADDRESS_DISTR)||'' ''||PP.HOME_ADDRESS', 'C', '������ �������� ����� (��������)', '������ �������� ����� (��������)', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '19', 'OK_SERVICE.GET_REGIONNAME(PP.HOME_ADDRESSFACT_REGION_ID)||'' ''||OK_SERVICE.GET_DISTRNAME(PP.HOME_ADDRESSFACT_DISTR)||'' ''||PP.HOME_ADDRESSFACT', 'C', '����������� ����� ����������', '����������� ����� ����������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '20', 'PP.PASS_SERIYA', 'C', '����� ��������', '����� ��������', 2, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '21', 'PP.PASS_NUM', 'C', '����� ��������', 'N ��������', 7, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '22', 'PP.PASS_DATE', 'D', '���� ������ ��������', '���� ������ ��������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '23', 'PP.PASS_REG', 'C', '����� ������ ��������', '����� ������ ��������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '24', 'OK_SERVICE.GET_REGPLACENAME(PP.REGPLACE_CODE)', 'C', '����� ������ �������� (���)', '����� ������ ��������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '27', 'PP.RECORD_BOOK_SERIES', 'C', '����� �������� ������', '����� �������� ������', 5, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '28', 'PP.RECORD_BOOK_NUMBER', 'C', '����� �������� ������', 'N �������� ������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '29', 'PP.TELEFON', 'C', '�������', '�������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '30', 'OK_SERVICE.GET_PROFMEMBERNAME(PP.PROFMEMBER)', 'C', '��������', '��������', 3, null, 'select profmember_code id, profmember_name name from ss_ok_profmember', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '31', 'OK_SERVICE.GET_EDUCATIONTITLENAME(PP.EDUCATION_TITLE_CODE)', 'C', '�����������', '�����������', 10, null, 'select to_char (EDUCATION_TITLE_CODE) id, EDUCATION_TITLE_NAME name from SS_OK_EDUCATION_TITLE', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '32', 'PP.TABNO', 'C', '��������� �����', '��������� �����', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '33', 'PP.NPS_ID', 'C', '���������� ��', '���������� ��', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '34', 'PP.INN', 'C', '���', '���', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('002', '01', 'OK_SERVICE.GET_ACADEMICNAME(AC.ACADEMIC_CODE)', 'C', '������ ������', '������ ������', 15, null, 'select to_char(academic_code) id, academic_name name from ss_ok_academic where state_notes=''A'' ', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('002', '02', 'AC.ACADEMIC_DATE', 'D', '���� ��������� ������� ������', '���� ��������� ������� ������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('003', '01', 'AD.CHARACTER_ADDINFORM', 'C', '�������������� ��������', '���.��������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('003', '02', 'AD.ADDINFORM_DATE', 'D', '���� ����� �������������� ��������', '���� ����� ���.��������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '01', 'ok_service.get_armytype(AR.ARMY_CODE)', 'C', '��������� � ������� ������', '��������� � ��', 20, null, 'select to_char(ARMY_code) id,ARMY_TYPE name from SS_OK_ARMY', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '02', 'ok_service.get_fitnessarmytype(AR.FITNESS_ARMY_CODE)', 'C', '�������� � ������', '�������� � ��', 8, null, 'select to_char(FITNESS_ARMY_code) id,FITNESS_ARMY_TYPE name from SS_OK_ARMY', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '03', 'ok_service.get_staffname(AR.STAFF_CODE)', 'C', '��� �������', '��� �������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '04', 'ok_service.get_typeforcename(AR.TYPE_FORCE_CODE)', 'C', '��� �����', '��� �����', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '05', 'ok_service.get_armygroupname(AR.ARMY_GROUP_CODE)', 'C', '������ �����', '��.�����', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '06', 'ok_service.get_categoryarmyname(AR.CATEGORY_ARMY_CODE)', 'C', '��������� �����', '��������� �����', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '07', 'AR.SPECIAL_ARMY', 'C', '�������� �������������', '�������� ����-��', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '08', 'ok_service.get_militaryrankname(AR.MILITARY_RANK_CODE)', 'C', '�������� ������', '�������� ������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '09', 'AR.NUMBER_VUS', 'C', '����� ������� ������� ������������� (���)', 'N ���', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '10', 'AR.CODE_ARMY_POST', 'C', '��� ��������� � ������ �������� ������� ������', '��� ��������� � ������ �������� ������� ������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '11', 'AR.NAME_ARMY_OFFICE', 'C', '���������', '���������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '12', 'AR.SPECREG_NUMBER', 'C', '������� �� ��������� N', '������� �� ��������� N', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('005', '01', 'AA.NUM_ATTESTATION', 'C', '����� ������������� ����������', 'N ��-� ���', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('005', '02', 'AA.DATE_ATTESTATION', 'D', '���� ����������� ����������', '���� ����������� ����������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('006', '01', 'AW.AWARD_DATE', 'N', '���� ��������� �������(���)', '���� ��������� �������(���)', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('006', '02', 'AW.AWARD_INFO', 'C', '�������� � ��������', '�������� � ��������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('007', '01', 'CH.FAMILY', 'C', '������� ����������', '������� ����������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('007', '02', 'CH.FIRST_NAME', 'C', '��� ����������', '��� ����������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('007', '03', 'CH.PATRONYMIC', 'C', '�������� ����������', '�������� ����������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('007', '04', 'CH.CHANGE_DATE', 'D', '���� ��������� ���', '���� ���.���', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('007', '05', 'CH.CHANGE_MOTIVE', 'C', '������� ��������� ���', '������� ��������� ���', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('008', '01', 'CO.CONVICTIONS_MOTIVE', 'C', '������� �����������', '������� �����������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('008', '02', 'CO.CONVICTIONS_DATE', 'D', '���� �����������', '���� �����������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('009', '01', 'OK_SERVICE.GET_DEGREENAME(DE.DEGREE_CODE)', 'C', '������ �������', '������ �������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('009', '02', 'DE.DEGREE_DATE', 'D', '���� ��������� ������ �������', '���� ��������� ������ �������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '01', 'OK_SERVICE.GET_EDUCATIONNAME(ED.EDUCATION_CODE)', 'C', '�����������', '�����������', 11, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '02', 'OK_SERVICE.GET_BASISNAME(ED.BASIS_CODE)', 'C', '������� �����������', '������� �����������', 11, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '03', 'OK_SERVICE.GET_INSTITUTIONNAME(ED.INSTITUTION_CODE)', 'C', '������� ���������', '������� ���������', 11, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '04', 'ED.BEGIN_DATE', 'C', '���� ����������� � ������� ���������', '���� ����������� � ������� ���������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '05', 'ED.END_DATE', 'C', '���� ��������� �������� ���������', '���� ��������� �������� ���������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '06', 'ED.PROFESSION_PERSONAL', 'C', '������������� �� �������', '������������� �� �������', 12, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '07', 'OK_SERVICE.GET_QUALIFICATIONNAME(ED.QUALIFICATION_CODE)', 'C', '������������', '������������', 12, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '08', 'ED.DIPLOM_NUM', 'C', '����� ������� ��� �������������', 'N �������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '01', 'KU.FIO', 'C', '���', '���', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '12', 'ED.NOSTRA', 'C', '������', '������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('011', '01', 'OK_SERVICE.GET_ELECTIONADDRESS(EL.ELECTION_CODE)', 'C', '����� ��������������� ������', '����� ��������������� ������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('011', '02', 'OK_SERVICE.GET_ELECTIONNAME(EL.ELECTION_CODE)', 'C', '������������ ��������������� ������', '������������ ��������������� ������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('011', '03', 'EL.ELECTION_POST', 'C', '��� ��� ������', '��� ��� ������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('011', '04', 'EL.ELECTION_DATE_BEGIN', 'C', '���� ��������', '���� ��������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('011', '05', 'EL.ELECTION_DATE_END', 'C', '���� ��������� ����� ��������', '���� ��������� ����� ��������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('012', '01', 'OK_SERVICE.GET_LANGUAGENAME(LA.LANGUAGE_CODE)', 'C', '��.��.', '��.��.', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('012', '02', 'OK_SERVICE.GET_LEVELNAME(LA.LEVEL_CODE)', 'C', '��.������ ��.��.', '��.������ ��.��.', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '01', 'OK_SERVICE.GET_LEAVENAME(LE.LEAVE_CODE)', 'C', '��� �������', '��� �������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '02', 'LE.BEGIN_YEAR', 'D', '������� ���-������', '������� ���-������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '03', 'LE.END_YEAR', 'D', '������� ���-���������', '������� ���-���������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '04', 'LE.PERIOD_LEAVE', 'C', '���������� ���� �������', '���������� ���� �������', 3, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '05', 'LE.DATE_IN_LEAVE', 'D', '���� ������ � ������', '���� ������ � ������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '06', 'LE.DATE_OUT_LEAVE', 'D', '���� ������ �� �������', '���� ������ �� �������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '07', 'LE.MOTIVE_LEAVE', 'C', '�������/��������� ������ � ������', '�������/��������� ������ � ������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '08', 'LE.NUM_BASIS', 'C', '����� �������/���������', '����� �������/���������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '09', 'LE.DATE_BASIS', 'D', '���� �������/���������', '���� �������/���������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '01', 'OK_SERVICE.GET_PARTYNAME(PA.PARTY_CODE)', 'C', '������', '������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '02', 'PA.OUT_PARTY', 'C', '������� ������ �� ������', '������� ������ �� ������', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '03', 'PA.PARTY_DATE', 'C', '��� ���������� � ������', '��� ���������� � ������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '04', 'PA.PARTY_OUTDATE', 'C', '��� ������ �� ������', '��� ������ �� ������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '05', 'PA.PUNISHMENT_MOTIVE', 'C', '������� ���������� ���������', '������� ���������� ���������', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '06', 'PA.PUNISHMENT_DATE', 'C', '���� ���������� ���������', '���� ���������� ���������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('015', '01', 'OK_SERVICE.GET_PENALTYNAME(PE.PENALTY_CODE)', 'C', '���������', '���������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('015', '02', 'PE.PENALTY_MOTIVE', 'C', '������� ���������', '������� ���������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('015', '03', 'PE.PENALTY_DATE', 'D', '���� ��������� ���������', '���� ��������� ���������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('015', '04', 'PE.PENALTY_NUM', 'C', '����� ���������', 'N ���������', 5, null, null, null);
commit;
prompt 100 records committed...
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '01', 'PR.IN_OFFICE_DATE', 'D', '���� �����������', '���� �����������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '02', 'PR.OUT_OFFICE_DATE', 'D', '���� ����������', '���� ����������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '03', 'PR.OFFICE_NAME', 'C', '������������ �����������', '������������ �����������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '04', 'PR.OFFICE_ADDRESS', 'C', '����� �����������', '����� �����������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '05', 'PR.ESTABLISHED_POST', 'C', '���������� ���������', '���������� ���������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '06', 'OK_SERVICE.GET_TYPEPERIODNAME(PR.TYPE_PERIOD_CODE)', 'C', '��� �����', '��� �����', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '07', 'OK_SERVICE.GET_ARTICLENAME(PR.ARTICLE_CODE)', 'C', '����� ������', '����� ������', 7, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '08', 'PR.BASIS_NUM', 'C', '����� �������/���������', '����� �������/���������', 7, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '09', 'PR.BASIS_DATE', 'D', '���� �������/���������', '���� �������/���������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '10', 'OK_SERVICE.GET_BASEMOVENAME(PR.BASE_MOVE_CODE)', 'C', '������� �����������', '������� �����������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '11', 'ESTABLISHED_DEPARTMENT', 'C', '������������ ������', '������������ ������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('017', '01', 'OK_SERVICE.GET_YOUTHNAME(YO.YOUTH_CODE)', 'C', '���������� �����������', '���������� �����������', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('017', '02', 'YO.IN_DATE', 'D', '���� ����������', '���� ����������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('017', '03', 'YO.OUT_DATE', 'D', '���� ������', '���� ������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('018', '01', 'PM.PREMIUM_DATE', 'C', '���� ��������� ������', '���� ��������� ������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('018', '02', 'PM.PREMIUM_NAME', 'C', '������������ ������', '������������ ������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '01', 'OK_SERVICE.GET_RELATIONNAME(RE.RELATION_CODE)', 'C', '����������� ���������', '����������� ���������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '02', 'RE.RELATION_FAMILY', 'C', '������� ������������', '������� ������������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '03', 'RE.RELATION_NAME', 'C', '��� ������������', '��� ������������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '04', 'RE.RELATION_PATRONYMIC', 'C', '�������� ������������', '�������� ������������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '05', 'RE.RELATION_BIRTHDAY', 'C', '��� �������� ������������', '��� �������� ������������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '06', 'RE.RELATION_BIRTHPLACE', 'C', '����� �������� ������������', '����� �������� ������������', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '07', 'RE.RELATION_OFFICE', 'C', '����� ������ ������������', '����� ������ ������������', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '08', 'RE.RELATION_POST', 'C', '���������� ��������� ������������', '���������� ��������� ������������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '09', 'RE.RELATION_HOME_ADDRESS', 'C', '����� ���������� ������������', '����� ���������� ������������', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('020', '01', 'RI.RISE_DATE_YEAR', 'C', '��� ����������� ��������� ������������', '��� ����������� ��������� ������������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('020', '02', 'RI.RISE_INFO', 'C', '�������� � ��������� ������������', '�������� � ��������� ������������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('021', '01', 'SC.SCIENTIFIC_INFO', 'C', '�������� � ������� ������', '�������� � ������� ������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('021', '02', 'SC.SCIENTIFIC_DATE', 'C', '���� ��������� �.�.(���)', '���� ��������� �.�.(���)', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('022', '01', 'VO.VOYAGE_DATE', 'C', '���� ������(���)', '���� ������(���)', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('022', '02', 'VO.VOYAGE_LAND', 'C', '������ ������', '������ ������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('022', '03', 'VO.VOYAGE_INFO', 'C', '�������� � ���������� �������', '�������� � ���������� �������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '02', 'KU.KV_KURS_CODE', 'N', '��� ������', '��� ������', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '03', 'KUKU.KV_KURS_NAME', 'C', '������������', '������������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '04', 'KUKU.KV_ORGANIZER', 'C', '�����������', '�����������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '05', 'KUKU.KV_PLACE', 'C', '����� ����������', '����� ����������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '06', 'ok_service.GET_S_STR(KUKU.CODE_STR)', 'C', '������', '������', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '07', 'KUKU.KV_NUMBER_PERS', 'C', '���������� ����������', '���������� ����������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '08', 'KUKU.DATE_OPEN', 'D', '������', '���� ������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '09', 'KUKU.DATE_CLOSE', 'D', '����������', '����������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '10', 'KUKU.NUMBER_DAY', 'C', '���-�� ����', '���-�� ����', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '11', 'KUKU.PAY_SUM', 'C', '������ �� ��������� ��� �������', '������ �� ��������� ��� �������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '12', 'KUKU.PAY_SUM_TRENER', 'C', '������ ��������', '������ ��������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '13', 'KUKU.ORDER_NUM', 'C', '����� �������', '����� �������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '14', 'KUKU.ORDER_DATE', 'D', '���� �������', '���� �������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '15', 'ok_service.GET_PROFMEMBERNAME(KUKU.ORDER_BUSINESS_VOYAGE)', 'C', '������������', '������������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '16', 'ok_service.GET_ORG_BUSINESS_VOYAGE(KUKU.ORG_BUSINESS_VOYAGE_CODE)', 'C', '����������� ������������', '����������� ������������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '17', 'ok_service.GET_THEME_BUSINESS_VOYAGE(KUKU.THEME_BUSINESS_VOYAGE_CODE)', 'C', '���� ������������', '���� ������������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '18', 'KUKU.PRIM', 'C', '����������', '����������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '01', 'ok_service.get_hospital(HO.HOSPITAL_CODE)', 'C', '���', '���', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '02', 'HO.HOSPITAL_DOC', 'C', '�����', '�����', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '03', 'HO.DATE_OPEN', 'D', '���� ��������', '���� ��������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '04', 'HO.DATE_CLOSE', 'D', '���� ��������', '���� ��������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '05', 'HO.NUMBER_DAY', 'C', '���-�� ����', '���-�� ����', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '06', 'HO.WORK_PERIOD', 'C', '����', '����', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '07', 'HO.PERCENTAGE', 'C', '�������', '�������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '08', 'HO.DIAGNOSIS', 'C', '�������', '�������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '09', 'HO.DATE_HOSPITAL', 'D', '���� ������ �����������', '���� ������ �����������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '10', 'HO.PRIM_HOSPITAL', 'C', '����� ������ �����������', '����� ������ �����������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '11', 'HO.SHIFR', 'C', '����', '����', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '12', 'HO.PRIM', 'C', '����������', '����������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('025', '01', 'OK_SERVICE.get_PRIVILEGE(PI.PRIVILEGE_CODE)', 'C', '��� ������', '��� ������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('025', '02', 'PI.PRIVILEGE_DOC', 'C', '��������-��������� ������', '��������-��������� ������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '03', 'II.RAZN', 'C', '�����', '�����', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '25', 'PP.PASS_DATE_END', 'D', '������� ������������ ��', '������� ������������ ��', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('025', '03', 'PI.DATE_OPEN', 'D', '���� ������ ��������', '���� ������ ��������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('025', '04', 'PI.DATE_CLOSE', 'D', '���� ���������� ��������', '���� ���������� ��������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('025', '05', 'PI.PRIM', 'C', '����������', '����������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '01', 'ok_service.GET_INCREASE(II.INCREASE_CODE)', 'C', '��� ��������', '��� ��������', 100, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '02', 'II.INCREASE_PERCENTAGE', 'C', '�������', '�������', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '04', 'II.DATE_OPEN', 'D', '���� ������', '���� ������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '05', 'II.DATE_CLOSE', 'D', '���� ���������', '���� ���������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '06', 'II.ORDER_NUM', 'C', '����� �������', '����� �������', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '07', 'II.ORDER_DATE', 'D', '���� �������', '���� �������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '08', 'II.PRIM', 'C', '����������', '����������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '01', 'ok_service.GET_KV_KURS(BV.KV_KURS_CODE)', 'C', '����', '����', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '02', 'BV.DATE_OPEN', 'D', '���� ��������', '���� ��������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '03', 'BV.DATE_CLOSE', 'D', '���� ��������', '���� ��������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '04', 'BV.NUMBER_DAY', 'C', '���-�� ����', '���-�� ����', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '05', 'ok_service.GET_ORG_BUSINESS_VOYAGE(BV.ORG_BUSINESS_VOYAGE_CODE)', 'C', '�����������', '�����������', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '06', 'ok_service.GET_THEME_BUSINESS_VOYAGE(BV.THEME_BUSINESS_VOYAGE_CODE)', 'C', '����', '����', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '07', 'ok_service.GET_S_STR(BV.CODE_STR)', 'C', '������', '������', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '08', 'BV.ORDER_NUM', 'C', '����� �������', '����� �������', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '09', 'BV.ORDER_DATE', 'D', '���� �������', '���� �������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '10', 'BV.PRIM', 'C', '����������', '����������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '26', 'PP.PASS_DATE_END', 'D', '������� ������������ ��', '������� ������������ ��', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '13', 'ED.NOSTRA_SERIES', 'C', '����� ������', '����� ������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '14', 'ED.NOSTRA_NUMBER', 'C', '����� ������', '����� ������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '15', 'ED.NOSTRA_DATE', 'C', '���� ������', '���� ������', 10, null, null, null);
commit;
prompt 189 records loaded
prompt Loading SS_OK_PERS_QUERY...
prompt Table is empty
prompt Loading SS_OK_PERS_QUERY_COL...
prompt Table is empty
prompt Loading SS_OK_POST...
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3948, 319, '2-������� ����������-����������', 1, 'A', 364, to_date('28-01-2013 15:27:04', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3969, 320, '����� ������-����', 1, 'A', 364, to_date('28-01-2013 15:28:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3970, 321, '1-������� ����������-�������', 1, 'A', 364, to_date('28-01-2013 15:28:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4071, 181, '������ �.�.', 2, 'A', 313, to_date('28-01-2013 17:14:59', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4141, 190, '���� ������� ����� ������ �����������', 2, 'A', 313, to_date('28-01-2013 17:16:12', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4142, 191, '���� ������� ����� ��� �����������', 2, 'A', 313, to_date('28-01-2013 17:16:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4143, 192, '������ ������� ����� ������ �����������', 2, 'A', 313, to_date('28-01-2013 17:33:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4144, 193, '������ ������� ����� ��� �����������', 2, 'A', 313, to_date('28-01-2013 17:33:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4208, 197, '�� ������', 2, 'A', 313, to_date('30-11-2011 12:06:52', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4308, 273, '������� ��� ����������� ������ ����������', 3, 'A', 313, to_date('28-01-2013 18:14:42', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4330, 328, '������ ������� ������', 1, 'A', 364, to_date('28-01-2013 15:37:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4349, 198, '���������-�������', 2, 'A', 313, to_date('28-01-2013 16:05:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4350, 199, '���������', 2, 'A', 313, to_date('28-01-2013 16:05:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4369, 274, '���������', 3, 'A', 313, to_date('28-01-2013 18:14:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4388, 275, '�������������', 3, 'A', 313, to_date('28-01-2013 18:14:59', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4408, 276, '���� ������� ������ ��� �����������', 3, 'A', 313, to_date('28-01-2013 18:15:08', 'dd-mm-yyyy hh24:mi:ss'), 2, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4409, 277, '���� ������� ������ ������ �����������', 3, 'A', 313, to_date('28-01-2013 18:15:31', 'dd-mm-yyyy hh24:mi:ss'), 2, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3872, 310, '�� ��������-��������', 1, 'A', 364, to_date('28-01-2013 15:17:53', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3892, 315, '������-����� �����', 1, 'A', 364, to_date('28-01-2013 15:22:27', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4028, 173, '��� ��������� �.�.', 2, 'A', 313, to_date('28-01-2013 17:13:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4029, 174, '��� ��������� ���������� �.�.', 2, 'A', 313, to_date('28-01-2013 17:13:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4030, 175, '��� ���������� �.�.', 2, 'A', 313, to_date('28-01-2013 17:13:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4031, 176, '������ ���������� �.�.', 2, 'A', 313, to_date('28-01-2013 17:13:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4032, 177, '1-������� ���������� �.�.', 2, 'A', 313, to_date('28-01-2013 17:14:07', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4034, 244, '������ ���������� ���������� �.�.', 3, 'A', 313, to_date('28-01-2013 17:59:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4035, 245, '���� ������� �.�.', 3, 'A', 313, to_date('28-01-2013 17:59:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4036, 246, '��� ��������� �.�.', 3, 'A', 313, to_date('28-01-2013 18:00:02', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4038, 247, '��� ��������� ���������� �.�.', 3, 'A', 313, to_date('28-01-2013 18:00:17', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4039, 248, '�������� ������ �.�.', 3, 'A', 313, to_date('28-01-2013 18:01:37', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4040, 178, '�������� ������ �.�.', 2, 'A', 313, to_date('28-01-2013 17:14:19', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4041, 249, '��� ����������� �.�.', 3, 'A', 313, to_date('28-01-2013 17:38:30', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4042, 250, '������ ����������� �.�.', 3, 'A', 313, to_date('28-01-2013 18:01:46', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4043, 251, '1- ������� ����������� �.�.', 3, 'A', 313, to_date('28-01-2013 18:02:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4044, 252, '����� ������ �.�.', 3, 'A', 313, to_date('28-01-2013 18:02:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4168, 195, '���������� ����������-���� �������', 2, 'A', 313, to_date('28-01-2013 17:34:02', 'dd-mm-yyyy hh24:mi:ss'), 2, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4188, 196, '������������', 2, 'A', 364, to_date('29-11-2011 16:42:43', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4248, 327, '�������� ����� ���������� ���������� ���������', 1, 'P', 364, to_date('28-01-2013 15:37:00', 'dd-mm-yyyy hh24:mi:ss'), 2, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3988, 168, '������-����������', 2, 'P', 313, to_date('28-01-2013 16:54:36', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4049, 179, '���������� �.�.', 2, 'A', 313, to_date('28-01-2013 17:14:30', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4050, 180, '������ ���������� ��������� ������� �.�.', 2, 'A', 313, to_date('28-01-2013 17:14:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4051, 253, '������ ���������� ��������� ������� �.�.', 3, 'A', 313, to_date('28-01-2013 18:02:51', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4140, 189, '��� ��������� ����� ������ �����������', 2, 'A', 313, to_date('28-01-2013 17:15:55', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4149, 267, '����� ������', 3, 'A', 313, to_date('28-01-2013 18:11:25', 'dd-mm-yyyy hh24:mi:ss'), 2, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4150, 194, '����� ������', 2, 'A', 313, to_date('28-01-2013 17:33:41', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4288, 269, '������������-1 ������� �����������', 3, 'A', 313, to_date('28-01-2013 18:13:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4289, 270, '��� ��������� ����� ��� �����������', 3, 'A', 313, to_date('28-01-2013 18:14:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4290, 271, '������ ���������� ��������� �����������', 3, 'A', 313, to_date('28-01-2013 18:14:19', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4292, 272, '���������-�������', 3, 'A', 313, to_date('28-01-2013 18:14:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4448, 400, '������� ������ (������ ����������)', 2, 'A', 313, to_date('28-01-2013 17:36:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4449, 401, '������� ������ (��� ����������)', 2, 'A', 313, to_date('28-01-2013 17:37:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4450, 278, '��� ����������-����� ������� ����������', 3, 'A', 313, to_date('28-01-2013 18:17:32', 'dd-mm-yyyy hh24:mi:ss'), 2, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3888, 311, '������ (�����)', 1, 'P', 364, to_date('28-01-2013 15:20:49', 'dd-mm-yyyy hh24:mi:ss'), 1, 19, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3889, 312, '������ (����� ������)', 1, 'A', 364, to_date('28-01-2013 15:19:16', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3890, 313, '������ (�����)', 1, 'A', 364, to_date('28-01-2013 15:20:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3648, 1, '�������� �����', 1, 'A', 313, to_date('28-01-2013 12:23:12', 'dd-mm-yyyy hh24:mi:ss'), 2, 1, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3649, 2, '�������� ����� �������  ����������', 1, 'A', 313, to_date('28-01-2013 12:23:27', 'dd-mm-yyyy hh24:mi:ss'), 2, 3, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3650, 3, '�������� ����� ����������', 1, 'A', 313, to_date('28-01-2013 12:23:37', 'dd-mm-yyyy hh24:mi:ss'), 2, 5, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3651, 4, '���c ���������', 1, 'A', 313, to_date('28-01-2013 12:23:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3652, 5, '���� ������� ������', 1, 'A', 313, to_date('28-01-2013 12:24:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3653, 6, '���� ������', 1, 'P', 364, to_date('28-01-2013 14:12:14', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3654, 7, '������ ���������', 1, 'A', 364, to_date('28-01-2013 14:15:39', 'dd-mm-yyyy hh24:mi:ss'), 2, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3655, 8, '�������� �������', 1, 'A', 313, to_date('28-01-2013 12:25:02', 'dd-mm-yyyy hh24:mi:ss'), 2, 7, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3656, 9, '�������� �������-��� ���������', 1, 'P', 364, to_date('28-01-2013 14:13:43', 'dd-mm-yyyy hh24:mi:ss'), 2, 19, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3657, 10, '�������� �������  ����������', 1, 'A', 313, to_date('28-01-2013 12:25:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3658, 11, '�������� �������-���� �������', 1, 'P', 364, to_date('28-01-2013 14:14:26', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3659, 12, '���� �������', 1, 'A', 313, to_date('28-01-2013 12:25:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3660, 13, '����� ���� �������', 1, 'P', 364, to_date('28-01-2013 14:14:32', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3661, 14, '������ ������', 1, 'P', 364, to_date('28-01-2013 14:17:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 19, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3662, 15, '�������� �������', 1, 'P', 364, to_date('28-01-2013 14:15:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 19, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3663, 16, '��� �����������', 1, 'A', 313, to_date('28-01-2013 12:25:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3664, 17, '������ �����������', 1, 'A', 313, to_date('28-01-2013 12:26:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3665, 18, '1 ������� �����������', 1, 'A', 313, to_date('28-01-2013 12:26:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3666, 19, '2 ������� �����������', 1, 'P', 364, to_date('28-01-2013 14:21:06', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3667, 20, '�����������', 1, 'A', 313, to_date('28-01-2013 12:26:30', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3668, 21, '�������', 1, 'P', 364, to_date('28-01-2013 14:21:16', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3669, 22, '���� �������-��� ���������', 1, 'P', 364, to_date('28-01-2013 14:23:14', 'dd-mm-yyyy hh24:mi:ss'), 2, 19, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3670, 23, '��� ���������', 1, 'A', 364, to_date('28-01-2013 14:23:31', 'dd-mm-yyyy hh24:mi:ss'), 2, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3671, 24, '��� ��������� ����������', 1, 'A', 313, to_date('28-01-2013 12:27:20', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3672, 25, '���� ������� - ��� ��������� ����������', 1, 'P', 364, to_date('28-01-2013 14:24:06', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3673, 26, '���������-���������', 1, 'A', 364, to_date('28-01-2013 14:25:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3674, 27, '����� ������', 1, 'A', 364, to_date('28-01-2013 14:26:19', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3675, 28, '���������-�������', 1, 'A', 364, to_date('28-01-2013 14:27:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3676, 29, '����� �������', 1, 'A', 364, to_date('28-01-2013 14:29:04', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3677, 30, '1 �������  �������', 1, 'P', 364, to_date('28-01-2013 14:29:09', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3678, 31, '�������', 1, 'A', 364, to_date('28-01-2013 14:29:28', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3679, 32, '����� ����� �������', 1, 'P', 364, to_date('28-01-2013 14:31:53', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3680, 33, '���������� ������', 1, 'P', 364, to_date('28-01-2013 14:31:57', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3681, 34, '�����������', 1, 'P', 364, to_date('28-01-2013 14:32:03', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3682, 35, '�����������', 1, 'P', 364, to_date('28-01-2013 14:32:07', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3683, 36, '����� ������ ���������', 1, 'P', 364, to_date('28-01-2013 14:32:51', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3684, 37, '1 �������� ������������', 1, 'P', 364, to_date('28-01-2013 14:33:06', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3685, 38, '���� ���������� ��������', 1, 'P', 364, to_date('28-01-2013 14:33:27', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3686, 39, '������-�� ��������', 1, 'P', 364, to_date('28-01-2013 14:33:31', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3687, 40, '������-�� ��������', 1, 'P', 364, to_date('28-01-2013 14:34:01', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3688, 41, '1 ������� �� �������� ��������', 1, 'P', 364, to_date('28-01-2013 14:34:06', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3689, 42, '1 ������� ����������', 1, 'P', 364, to_date('28-01-2013 14:34:09', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3690, 43, '������������� ����� �����������', 1, 'A', 364, to_date('28-01-2013 14:35:14', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3691, 44, '��� ��������', 1, 'P', 364, to_date('28-01-2013 14:35:36', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3692, 45, '��������', 1, 'A', 364, to_date('28-01-2013 14:36:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3693, 46, '���������', 1, 'A', 364, to_date('28-01-2013 14:36:08', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
commit;
prompt 100 records committed...
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3694, 47, '��������', 1, 'A', 364, to_date('28-01-2013 14:41:37', 'dd-mm-yyyy hh24:mi:ss'), 1, 17, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3695, 48, '1 ������� �������-����������', 1, 'P', 364, to_date('28-01-2013 14:43:02', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3696, 49, '�������', 1, 'A', 364, to_date('28-01-2013 14:44:10', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3697, 50, '�������', 1, 'A', 364, to_date('28-01-2013 14:44:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 17, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3698, 51, '������� ����', 1, 'A', 364, to_date('28-01-2013 14:45:02', 'dd-mm-yyyy hh24:mi:ss'), 1, 17, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3699, 52, '����� ������', 1, 'P', 364, to_date('28-01-2013 14:45:06', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3700, 53, '���������', 1, 'P', 364, to_date('28-01-2013 15:29:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 19, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3701, 54, '��� ���� ������� �������', 1, 'A', 364, to_date('28-01-2013 14:47:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3702, 55, '�������', 1, 'A', 364, to_date('28-01-2013 14:47:27', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3703, 56, '���� (��������)', 1, 'A', 364, to_date('28-01-2013 14:48:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3704, 57, '������ ������� ����������', 1, 'A', 364, to_date('28-01-2013 14:48:45', 'dd-mm-yyyy hh24:mi:ss'), 2, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3705, 58, '������-����������', 1, 'A', 364, to_date('28-01-2013 14:50:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3706, 59, '��� �������� �������', 1, 'P', 364, to_date('28-01-2013 14:50:36', 'dd-mm-yyyy hh24:mi:ss'), 2, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3707, 60, '��� �������� ������� ����������-������ �������� �������', 1, 'P', 364, to_date('28-01-2013 14:50:42', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3708, 61, '���������-�������', 1, 'P', 364, to_date('28-01-2013 14:50:56', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3709, 62, '1  ������� ����������-����������', 1, 'P', 364, to_date('28-01-2013 14:51:09', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3710, 63, '����� ��������-������', 4, 'A', 114, to_date('28-09-2011 15:12:21', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3711, 64, '1 ������� �� ��������', 1, 'P', 364, to_date('28-01-2013 14:51:14', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3712, 65, '1 ������� ���������', 1, 'P', 364, to_date('28-01-2013 14:51:19', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3713, 66, '���������', 1, 'P', 364, to_date('28-01-2013 14:51:24', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3714, 67, '1 ������� �����������-�� ��������', 1, 'P', 364, to_date('28-01-2013 14:51:29', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3715, 68, '�� ��������', 1, 'A', 364, to_date('28-01-2013 14:55:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3716, 69, '�������� �������-���� �������', 1, 'P', 364, to_date('28-01-2013 14:55:06', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3717, 70, '��������� �������� ������ ������ ��� �����������', 1, 'P', 364, to_date('28-01-2013 14:55:12', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3718, 71, '��� �������� ������� ����������-�������� �������', 1, 'P', 364, to_date('28-01-2013 14:55:16', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3719, 72, '�������� ����������', 1, 'P', 364, to_date('28-01-2013 14:57:16', 'dd-mm-yyyy hh24:mi:ss'), 2, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3720, 73, '���������� - �������� �������', 1, 'P', 364, to_date('28-01-2013 14:59:06', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3721, 74, '������ ����������-������� ��������', 1, 'P', 364, to_date('28-01-2013 15:00:10', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3722, 75, '1 ������� ����������-������� ��������', 1, 'A', 364, to_date('30-11-2012 18:11:23', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3723, 76, '��� �������� ������� ����������', 1, 'P', 364, to_date('28-01-2013 15:00:28', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3724, 77, '��� ���������', 1, 'P', 364, to_date('28-01-2013 15:00:31', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3725, 78, '������ ���������', 1, 'P', 364, to_date('28-01-2013 15:00:40', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3726, 79, '1 ������� ���������', 1, 'P', 364, to_date('28-01-2013 15:01:34', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3727, 80, '���������', 1, 'P', 364, to_date('28-01-2013 15:01:38', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3728, 81, '������������ ����������', 1, 'P', 364, to_date('28-01-2013 15:01:42', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3729, 82, '������� ����������', 1, 'P', 364, to_date('28-01-2013 15:01:46', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3730, 83, '�������� �������', 1, 'P', 364, to_date('28-01-2013 15:01:51', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3731, 84, '1 ������� �� ��������-��������', 1, 'P', 364, to_date('28-01-2013 15:02:05', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3732, 85, '����� ���������� ����������', 1, 'P', 364, to_date('28-01-2013 15:02:47', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3733, 86, '���� ����� ������� ��� �����������', 1, 'A', 364, to_date('28-01-2013 15:08:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3734, 87, '������ ������� ����� ������ �����', 1, 'P', 364, to_date('28-01-2013 15:05:39', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3735, 88, '������ ���������� �������', 1, 'A', 364, to_date('28-01-2013 15:05:49', 'dd-mm-yyyy hh24:mi:ss'), 2, 6, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3736, 89, '������ ���������� ��� ����������', 1, 'A', 364, to_date('28-01-2013 15:05:59', 'dd-mm-yyyy hh24:mi:ss'), 2, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3737, 90, '������ ������', 2, 'P', 313, to_date('28-01-2013 16:55:46', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3738, 91, '���� ��������� ��������������� ������ ��� �����������', 3, 'A', 313, to_date('28-01-2013 17:38:43', 'dd-mm-yyyy hh24:mi:ss'), 2, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3739, 92, '������ ������� ����� ��� �����������', 1, 'A', 364, to_date('28-01-2013 15:08:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3740, 93, '����� ������� (������)', 1, 'P', 364, to_date('28-01-2013 15:09:26', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3741, 94, '����� �������', 1, 'P', 364, to_date('28-01-2013 15:09:33', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3742, 95, '����� ������� (������)', 1, 'P', 364, to_date('28-01-2013 15:09:59', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3743, 96, '����� �������', 1, 'P', 364, to_date('28-01-2013 15:10:32', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3744, 97, '������ ����� ���������-�������', 1, 'A', 364, to_date('28-01-2013 15:11:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3745, 98, '������ ����� �������', 1, 'A', 364, to_date('28-01-2013 15:11:11', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3746, 99, '���� �������  ����� ��� �����������', 1, 'A', 364, to_date('28-01-2013 15:11:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3747, 100, '������ �������', 1, 'A', 364, to_date('28-01-2013 15:12:26', 'dd-mm-yyyy hh24:mi:ss'), 2, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3748, 101, '�������� �������', 2, 'A', 313, to_date('28-01-2013 12:30:12', 'dd-mm-yyyy hh24:mi:ss'), 2, 6, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3749, 102, '�������� ������� ����������', 2, 'A', 313, to_date('28-01-2013 12:30:18', 'dd-mm-yyyy hh24:mi:ss'), 2, 7, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3750, 103, '��� ���������', 2, 'A', 313, to_date('28-01-2013 12:30:25', 'dd-mm-yyyy hh24:mi:ss'), 2, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3751, 104, '��� ��������� ����������', 2, 'A', 313, to_date('28-01-2013 12:30:34', 'dd-mm-yyyy hh24:mi:ss'), 2, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3752, 105, '���� �������', 2, 'A', 313, to_date('28-01-2013 12:30:48', 'dd-mm-yyyy hh24:mi:ss'), 2, 10, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3753, 106, '��� �����������', 2, 'A', 313, to_date('28-01-2013 12:31:12', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3754, 112, '������ �����������', 2, 'A', 313, to_date('28-01-2013 12:31:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3755, 113, '1 ������� �����������', 2, 'A', 313, to_date('28-01-2013 12:31:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3756, 114, '2 ������� �����������', 2, 'A', 313, to_date('28-01-2013 17:00:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3757, 115, '�����������', 2, 'A', 313, to_date('28-01-2013 16:04:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3758, 116, '�������� ������', 2, 'A', 313, to_date('28-01-2013 12:31:19', 'dd-mm-yyyy hh24:mi:ss'), 2, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3759, 117, '����� ������', 2, 'A', 313, to_date('28-01-2013 12:30:54', 'dd-mm-yyyy hh24:mi:ss'), 2, 10, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3760, 118, '����� ������-���������', 2, 'P', 313, to_date('28-01-2013 16:53:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3761, 119, '����� �������', 2, 'A', 313, to_date('28-01-2013 17:01:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3762, 120, '������-���������', 2, 'A', 313, to_date('28-01-2013 17:01:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3763, 121, '1 ������� �������', 2, 'P', 313, to_date('28-01-2013 16:49:50', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3891, 314, '������ (����� ������)', 1, 'P', 364, to_date('28-01-2013 15:21:06', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4008, 169, '�������� ������� �.�.', 2, 'A', 313, to_date('28-01-2013 17:06:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4108, 182, '���� �������� ����� 1 ������� �����������', 2, 'A', 313, to_date('28-01-2013 17:15:14', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4109, 183, '���� �������� ����� ������ �����������', 2, 'A', 313, to_date('28-01-2013 17:15:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4110, 184, '���� �������� ����� ��� �����������', 2, 'A', 313, to_date('28-01-2013 17:15:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4111, 254, '������ ������� ����� ������ �����������', 3, 'A', 313, to_date('28-01-2013 18:04:17', 'dd-mm-yyyy hh24:mi:ss'), 2, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3908, 316, '1 ������� ����������� (������ �����)', 1, 'P', 364, to_date('28-01-2013 15:22:32', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3909, 317, '����������� (������ �����)', 1, 'P', 364, to_date('28-01-2013 15:25:17', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3928, 318, '��� ����������-�������� ������', 1, 'A', 364, to_date('28-01-2013 15:25:28', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4009, 170, '�������� ������� ���������� �.�.', 2, 'A', 313, to_date('28-01-2013 17:06:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4010, 171, '���� ������� �.�.', 2, 'A', 313, to_date('28-01-2013 17:13:06', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4012, 172, '����� ������ �.�.', 2, 'A', 313, to_date('28-01-2013 17:13:18', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4014, 243, '������ ������������ �.�.', 3, 'A', 313, to_date('28-01-2013 17:59:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4068, 322, '����������� ������� ���������� ���������', 1, 'A', 364, to_date('28-01-2013 15:30:28', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4069, 323, '�������� ������� ���������� ���������', 1, 'A', 364, to_date('28-01-2013 15:30:37', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4070, 324, '���� ������� ���������� ���������', 1, 'A', 364, to_date('28-01-2013 15:31:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4088, 325, '������', 1, 'A', 364, to_date('28-01-2013 15:32:04', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4112, 255, '������ ������� ����� ��� �����������', 3, 'A', 313, to_date('28-01-2013 18:08:48', 'dd-mm-yyyy hh24:mi:ss'), 2, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4113, 256, '���� ������� ����� ������ �����������', 3, 'A', 313, to_date('28-01-2013 18:08:55', 'dd-mm-yyyy hh24:mi:ss'), 2, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4114, 257, '���� ������� ����� ��� �����������', 3, 'A', 313, to_date('28-01-2013 18:09:03', 'dd-mm-yyyy hh24:mi:ss'), 2, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4115, 258, '�������� ����� ����� ����� �����������', 3, 'A', 313, to_date('28-01-2013 18:09:17', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4116, 259, '�������� ����� ����� ����� 1 ������� �����������', 3, 'A', 313, to_date('28-01-2013 18:09:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4117, 260, '�������� ����� ����� ����� ������ �����������', 3, 'A', 313, to_date('28-01-2013 18:09:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4118, 261, '������ �������������', 3, 'A', 313, to_date('28-01-2013 18:10:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4119, 262, '��� ������������', 3, 'A', 313, to_date('28-01-2013 18:10:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4120, 263, '����������� ������������� ����� �����������', 3, 'A', 313, to_date('28-01-2013 18:10:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4121, 264, '����������� ������������� ����� 1 ������� �����������', 3, 'A', 313, to_date('28-01-2013 18:10:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4122, 265, '����������� ������������� ����� ������ �����������', 3, 'A', 313, to_date('28-01-2013 18:10:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3764, 122, '�������', 2, 'A', 313, to_date('28-01-2013 17:01:21', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3765, 126, '������-�� ��������', 2, 'A', 313, to_date('28-01-2013 12:34:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
commit;
prompt 200 records committed...
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3766, 127, '������', 2, 'P', 313, to_date('28-01-2013 16:54:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3767, 128, '�����������', 2, 'A', 313, to_date('28-01-2013 12:34:42', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3768, 129, '����� ������� ���������', 2, 'A', 313, to_date('28-01-2013 12:34:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3769, 130, '������', 2, 'A', 313, to_date('28-01-2013 12:36:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 17, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3770, 131, '������� ����', 2, 'A', 313, to_date('28-01-2013 12:36:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 17, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3771, 132, '���������', 2, 'A', 313, to_date('28-01-2013 12:40:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3772, 133, '��������', 2, 'A', 313, to_date('28-01-2013 12:41:28', 'dd-mm-yyyy hh24:mi:ss'), 1, 17, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3773, 134, '������-��  ��������', 2, 'P', 313, to_date('28-01-2013 16:54:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3774, 135, '�������', 2, 'A', 313, to_date('28-01-2013 12:42:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3775, 136, '�������', 2, 'A', 313, to_date('28-01-2013 17:00:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3776, 138, '�������� ������� ����������-���� �������', 2, 'P', 313, to_date('28-01-2013 17:02:12', 'dd-mm-yyyy hh24:mi:ss'), 2, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3777, 139, '�� ��������', 2, 'A', 313, to_date('28-01-2013 12:43:11', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3778, 140, '������', 2, 'A', 313, to_date('28-01-2013 12:43:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3779, 141, '������� ������', 2, 'A', 313, to_date('28-01-2013 17:02:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3780, 142, '���� ������� ����������', 2, 'P', 313, to_date('28-01-2013 17:32:28', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3781, 143, '��������', 2, 'A', 313, to_date('28-01-2013 16:49:12', 'dd-mm-yyyy hh24:mi:ss'), 1, 21, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3782, 144, '������ ������', 2, 'P', 313, to_date('28-01-2013 16:55:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3783, 145, '���� �������-��� ���������', 2, 'A', 313, to_date('28-01-2013 17:03:35', 'dd-mm-yyyy hh24:mi:ss'), 2, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3784, 146, '����������', 2, 'A', 313, to_date('15-02-2012 17:39:52', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3785, 147, '������-����������', 2, 'P', 313, to_date('28-01-2013 16:53:27', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3786, 148, '������������� ����� ����� ������ �����������', 2, 'P', 313, to_date('28-01-2013 16:55:34', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3787, 149, '�����-����������', 2, 'P', 313, to_date('28-01-2013 16:56:26', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3788, 150, '���������� ����������', 2, 'A', 313, to_date('28-01-2013 17:32:53', 'dd-mm-yyyy hh24:mi:ss'), 2, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3789, 151, '����������', 2, 'A', 313, to_date('28-01-2013 17:32:58', 'dd-mm-yyyy hh24:mi:ss'), 2, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3790, 152, '��������� ��������� ����� ����������', 2, 'A', 313, to_date('28-01-2013 17:28:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3791, 153, '���� ��������� ��������������� ����� �������', 2, 'P', 313, to_date('28-01-2013 16:52:49', 'dd-mm-yyyy hh24:mi:ss'), 2, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3792, 154, '������ ������� ������� ������������', 2, 'A', 313, to_date('28-01-2013 17:04:26', 'dd-mm-yyyy hh24:mi:ss'), 2, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3793, 155, '������ ������� ������� ������������ ����������', 2, 'A', 313, to_date('28-01-2013 17:04:42', 'dd-mm-yyyy hh24:mi:ss'), 2, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3794, 156, '1 ������� ���������� - �� ��������', 2, 'P', 313, to_date('28-01-2013 16:49:56', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3795, 157, '�� ��������-������', 2, 'P', 313, to_date('28-01-2013 16:53:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3796, 158, '�����-�� ��������', 2, 'P', 313, to_date('28-01-2013 16:54:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3797, 159, '����� ����� �������', 2, 'A', 313, to_date('28-01-2013 17:05:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3798, 160, '����� ����� ������� (������-����������)', 2, 'P', 313, to_date('28-01-2013 16:54:10', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3799, 161, '����� ����� �������', 2, 'A', 313, to_date('28-01-2013 17:06:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3800, 162, '����� ����� �������', 2, 'A', 313, to_date('28-01-2013 17:05:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3801, 163, '��� ������- ���������', 2, 'P', 313, to_date('28-01-2013 16:50:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3802, 164, '1 ������� �� ��������', 2, 'P', 313, to_date('28-01-2013 16:49:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3803, 165, '������ ����� ���������-�������', 2, 'A', 313, to_date('28-01-2013 14:13:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3804, 166, '������ ����� �������', 2, 'A', 313, to_date('28-01-2013 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3805, 167, '���� ���������', 2, 'P', 313, to_date('28-01-2013 16:50:12', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3806, 200, '������ ������������', 3, 'A', 313, to_date('28-01-2013 17:39:05', 'dd-mm-yyyy hh24:mi:ss'), 2, 8, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3807, 201, '������ ������������ ����������', 3, 'A', 313, to_date('28-01-2013 17:39:12', 'dd-mm-yyyy hh24:mi:ss'), 2, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3808, 202, '������ ������������ ����������-���� �������', 3, 'A', 313, to_date('28-01-2013 17:49:56', 'dd-mm-yyyy hh24:mi:ss'), 2, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3809, 203, '���� �������', 3, 'A', 313, to_date('28-01-2013 17:50:14', 'dd-mm-yyyy hh24:mi:ss'), 2, 11, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3810, 204, '��� ���������', 3, 'A', 313, to_date('28-01-2013 17:50:21', 'dd-mm-yyyy hh24:mi:ss'), 2, 10, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3811, 205, '��� �����������', 3, 'A', 313, to_date('28-01-2013 17:50:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3812, 206, '������ �����������', 3, 'A', 313, to_date('28-01-2013 17:50:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3813, 207, '1 ������� �����������', 3, 'A', 313, to_date('28-01-2013 17:50:49', 'dd-mm-yyyy hh24:mi:ss'), 1, 14, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3814, 208, '2 ������� �����������', 3, 'A', 313, to_date('28-01-2013 17:50:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3815, 209, '�����������', 3, 'A', 313, to_date('28-01-2013 17:51:10', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3816, 210, '����� ������', 3, 'A', 313, to_date('28-01-2013 17:51:17', 'dd-mm-yyyy hh24:mi:ss'), 2, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3817, 211, '��� ������-���������', 3, 'A', 313, to_date('28-01-2013 18:15:51', 'dd-mm-yyyy hh24:mi:ss'), 1, 20, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3818, 212, '������-���������', 3, 'A', 313, to_date('28-01-2013 17:51:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3819, 213, '�������', 3, 'A', 313, to_date('28-01-2013 17:51:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3820, 214, '��� ��������� ����������', 3, 'A', 313, to_date('28-01-2013 17:51:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3821, 215, '������-�� ��������', 3, 'P', 313, to_date('28-01-2013 16:58:28', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3822, 216, '������-����������', 3, 'P', 313, to_date('28-01-2013 16:58:23', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3823, 217, '������-�� ��������', 3, 'P', 313, to_date('28-01-2013 16:58:37', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3824, 218, '������� ����', 3, 'A', 313, to_date('28-01-2013 17:57:16', 'dd-mm-yyyy hh24:mi:ss'), 1, 17, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3825, 219, '���������', 3, 'A', 313, to_date('28-01-2013 17:55:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3826, 220, '����������', 3, 'A', 313, to_date('28-01-2013 17:55:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 17, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3827, 221, '�������', 3, 'A', 313, to_date('28-01-2013 17:57:08', 'dd-mm-yyyy hh24:mi:ss'), 1, 17, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3828, 222, '��������', 3, 'A', 313, to_date('28-01-2013 17:55:59', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3829, 223, '�������', 3, 'A', 313, to_date('28-01-2013 17:56:06', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3830, 228, '������� ������', 3, 'P', 313, to_date('28-01-2013 17:57:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3831, 229, '����������', 3, 'A', 313, to_date('28-01-2013 17:57:03', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3832, 230, '������', 3, 'A', 313, to_date('28-01-2013 17:58:04', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3833, 231, '������', 3, 'P', 313, to_date('28-01-2013 16:58:19', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3834, 232, '�� ��������', 3, 'A', 313, to_date('28-01-2013 17:58:14', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3835, 233, '�������� ������', 3, 'A', 313, to_date('28-01-2013 17:58:25', 'dd-mm-yyyy hh24:mi:ss'), 2, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3836, 234, '��������', 3, 'A', 313, to_date('28-01-2013 17:58:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 21, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3837, 235, '������-����������', 3, 'P', 313, to_date('28-01-2013 16:58:05', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3838, 236, '����������', 3, 'A', 313, to_date('28-01-2013 17:58:59', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3839, 237, '������� ����� ����� ������ �����������', 3, 'A', 313, to_date('28-01-2013 17:59:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3840, 238, '������ ������', 3, 'P', 313, to_date('28-01-2013 16:58:54', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3841, 239, '�����-�� ��������', 3, 'P', 313, to_date('28-01-2013 16:58:31', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3842, 240, '����� ����� �������', 3, 'A', 313, to_date('28-01-2013 17:59:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3843, 241, '����� ����� �������', 3, 'A', 313, to_date('28-01-2013 17:59:18', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3844, 242, '����� ����� �������', 3, 'A', 313, to_date('28-01-2013 17:59:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3845, 300, '������ ����� 1 ������� �������', 1, 'P', 364, to_date('28-01-2013 15:12:31', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3846, 301, '��� �������� ������� ����������-�������� �������', 1, 'P', 364, to_date('28-01-2013 15:13:11', 'dd-mm-yyyy hh24:mi:ss'), 2, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3847, 302, '�������� �������-������� �������', 1, 'A', 364, to_date('28-01-2013 15:13:21', 'dd-mm-yyyy hh24:mi:ss'), 2, 7, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3848, 303, '�������� �������-������ �������', 1, 'A', 364, to_date('28-01-2013 15:13:26', 'dd-mm-yyyy hh24:mi:ss'), 2, 7, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3849, 304, '����������� �������', 1, 'A', 364, to_date('28-01-2013 15:13:52', 'dd-mm-yyyy hh24:mi:ss'), 2, 6, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3850, 305, '����������� ������� ���������� - �������� �������', 1, 'A', 364, to_date('28-01-2013 15:14:20', 'dd-mm-yyyy hh24:mi:ss'), 2, 7, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3851, 306, '����������� ������� ����������', 1, 'A', 364, to_date('28-01-2013 15:14:42', 'dd-mm-yyyy hh24:mi:ss'), 2, 7, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3852, 307, '���� �������-������ ������', 1, 'A', 364, to_date('28-01-2013 15:15:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3853, 308, '����� ������', 1, 'A', 364, to_date('28-01-2013 15:16:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3854, 309, '������� ����������� ����� ��� ����������', 1, 'P', 364, to_date('28-01-2013 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4123, 266, '����������� ������������� ����� ��� �����������', 3, 'A', 313, to_date('28-01-2013 18:11:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4124, 185, '������ �������������', 2, 'P', 313, to_date('28-01-2013 16:52:17', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4125, 186, '��� �������������', 2, 'P', 313, to_date('28-01-2013 16:50:59', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4126, 187, '��� ��������� ����� 1 ������� �����������', 2, 'A', 313, to_date('28-01-2013 17:15:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4127, 188, '��� ��������� ����� ������ �����������', 3, 'A', 313, to_date('28-01-2013 17:38:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4228, 326, '����� ������', 1, 'P', 364, to_date('28-01-2013 15:36:45', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4268, 268, '������ ���������� ��������� ����� ��� �����������', 3, 'A', 313, to_date('28-01-2013 18:13:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
commit;
prompt 296 records loaded
prompt Loading SS_OK_POST_GROUP...
insert into SS_OK_POST_GROUP (POST_GROUP_CODE, POST_GROUP_NAME)
values (1, '�����������');
insert into SS_OK_POST_GROUP (POST_GROUP_CODE, POST_GROUP_NAME)
values (2, '�����������');
insert into SS_OK_POST_GROUP (POST_GROUP_CODE, POST_GROUP_NAME)
values (3, '��������� ����');
insert into SS_OK_POST_GROUP (POST_GROUP_CODE, POST_GROUP_NAME)
values (4, '������� ��������. ��������');
commit;
prompt 4 records loaded
prompt Loading SS_OK_PRIVILEGE...
insert into SS_OK_PRIVILEGE (PRIVILEGE_CODE, PRIVILEGE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (20, '110', 'A', 109, to_date('02-08-2010 12:37:04', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 1 records loaded
prompt Loading SS_OK_PROFMEMBER...
insert into SS_OK_PROFMEMBER (PROFMEMBER, PROFMEMBER_NAME)
values (0, '���');
insert into SS_OK_PROFMEMBER (PROFMEMBER, PROFMEMBER_NAME)
values (1, '��');
commit;
prompt 2 records loaded
prompt Loading SS_OK_QUALIFICATION...
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (721, 38, '�����������', 'A', 313, to_date('16-12-2011 10:49:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (722, 39, '�����������', 'A', 313, to_date('16-12-2011 10:50:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (701, 36, '�������', 'A', 313, to_date('04-11-2011 10:58:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (702, 37, '�����', 'P', 313, to_date('04-11-2011 10:59:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (661, 34, '����������� ����������', 'A', 313, to_date('28-09-2011 15:13:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (662, 35, '��������', 'A', 313, to_date('28-09-2011 15:13:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (663, 33, '���������-�������', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (664, 11, '������� �������������', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (665, 12, '�����������', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (666, 13, '������ ������ ���������', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (667, 14, '��������', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (668, 15, '������', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (669, 16, '�������', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (670, 17, '����������� ������', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (671, 18, '���������', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (672, 19, '������-�������', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (673, 20, '���� ����������', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (674, 1, '���������', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (675, 2, '���������', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (676, 3, '���� ������', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (677, 4, '����������', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (678, 5, '����������', 'A', 114, to_date('28-09-2011 15:13:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (679, 6, '�������', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (680, 7, '�������', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (681, 8, '������ �������', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (682, 9, '��������', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (683, 10, '���������', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (684, 21, '���� �����������', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (685, 22, '������ ����������', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (686, 23, '������������� �� ������ ����� ����������', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (687, 24, '����������� ������ ����� ������ ���������', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (688, 25, '����-�������', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (689, 26, '���������', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (690, 27, '���� ��� �����������', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (691, 28, '�������', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (692, 29, '�������-������', 'A', 114, to_date('28-09-2011 15:13:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (693, 30, '��������', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (694, 31, '�������', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_QUALIFICATION (QUALIFICATION_ID, QUALIFICATION_CODE, QUALIFICATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (695, 32, '������', 'A', 114, to_date('28-09-2011 15:13:20', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 39 records loaded
prompt Loading SS_OK_REGION...
prompt Table is empty
prompt Loading SS_OK_REGPLACE...
insert into SS_OK_REGPLACE (REGPLACE_CODE, REGPLACE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (1, '���������� �   ���', '�', null, null);
insert into SS_OK_REGPLACE (REGPLACE_CODE, REGPLACE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (7, '���� � ���', '�', null, null);
insert into SS_OK_REGPLACE (REGPLACE_CODE, REGPLACE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (2, '������� ������ ���', '�', null, null);
insert into SS_OK_REGPLACE (REGPLACE_CODE, REGPLACE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (3, '����� ���', '�', null, null);
insert into SS_OK_REGPLACE (REGPLACE_CODE, REGPLACE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (4, '��������� ����� ���', '�', null, null);
insert into SS_OK_REGPLACE (REGPLACE_CODE, REGPLACE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (5, '��������� ������ ��������� ����� ���', '�', null, null);
insert into SS_OK_REGPLACE (REGPLACE_CODE, REGPLACE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (6, '��������� ������ ��������� ����� ���', '�', null, null);
commit;
prompt 7 records loaded
prompt Loading SS_OK_REG_TYPE...
insert into SS_OK_REG_TYPE (REG_TYPE_ID, REG_TYPE_CODE, REG_TYPE_NAME)
values (141, 1, '����������');
insert into SS_OK_REG_TYPE (REG_TYPE_ID, REG_TYPE_CODE, REG_TYPE_NAME)
values (142, 2, '���������');
commit;
prompt 2 records loaded
prompt Loading SS_OK_RELATION...
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (281, 1, '�����', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (282, 2, '�����', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (283, 3, '�����', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (284, 4, '�����', 'A', 114, to_date('28-09-2011 15:13:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (285, 5, '�����', 'A', 114, to_date('28-09-2011 15:13:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (286, 6, '��������', 'A', 114, to_date('28-09-2011 15:13:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (287, 7, '������ ������ (���)', 'A', 313, to_date('27-04-2012 17:07:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (288, 8, '������ ������ (������)', 'A', 313, to_date('27-04-2012 17:07:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (289, 9, '���������', 'A', 114, to_date('28-09-2011 15:13:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (290, 10, '���������', 'A', 114, to_date('28-09-2011 15:13:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (291, 11, '����', 'A', 114, to_date('28-09-2011 15:13:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (292, 12, '����', 'A', 114, to_date('28-09-2011 15:13:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (293, 13, '����� ������ ������(���)', 'A', 313, to_date('26-03-2012 18:10:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_RELATION (RELATION_ID, RELATION_CODE, RELATION_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (294, 14, '����� ������ ������(������)', 'A', 313, to_date('26-03-2012 18:10:56', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 14 records loaded
prompt Loading SS_OK_REZERV...
insert into SS_OK_REZERV (REZERV_CODE, REZERV_NAME)
values (1, '���');
insert into SS_OK_REZERV (REZERV_CODE, REZERV_NAME)
values (2, '���������');
commit;
prompt 2 records loaded
prompt Loading SS_OK_REZERVE...
insert into SS_OK_REZERVE (REZERVE_ID, REZERVE_CODE, REZERVE_NAME)
values (141, 1, '������ �����������');
insert into SS_OK_REZERVE (REZERVE_ID, REZERVE_CODE, REZERVE_NAME)
values (142, 2, '������� ���������');
commit;
prompt 2 records loaded
prompt Loading SS_OK_SPECIAL...
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (761, 44, '��������� ������ �����', 'A', 313, to_date('24-11-2011 18:22:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (781, 45, '������ �������������� �����', 'A', 313, to_date('25-11-2011 09:51:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (801, 46, '������� ��� ����������� ������', 'A', 313, to_date('31-03-2012 16:30:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (701, 1, '���������', 'A', 114, to_date('28-09-2011 15:12:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (702, 2, '���� �������� ������', 'A', 114, to_date('28-09-2011 15:12:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (703, 3, '������ ����������� ������', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (704, 4, '������ ��������� ������', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (705, 5, '���������� ������� ������', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (706, 6, '��������� ������', 'A', 313, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (707, 7, '����������� ������', 'A', 313, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (708, 8, '��� ��������� ������', 'A', 313, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (709, 9, '���������� �������� ������', 'A', 313, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (710, 10, '������� ���� �������� ������', 'A', 313, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (711, 11, '���������', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (712, 12, '������� �������� ����� ����� ������', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (713, 13, '����� ������', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (714, 14, '���������', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (715, 15, '������ ���������� �������', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (716, 16, '������ �����', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (717, 17, '������� ����� ����� ������', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (718, 18, '��������� ������', 'A', 114, to_date('28-09-2011 15:12:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (719, 19, '����������', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (720, 20, '���� ������� ������', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (721, 21, '�������������� (����) ������', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (722, 22, '����� �������������', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (723, 23, '����� ������ �������� ���������', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (724, 24, '��������', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (725, 25, '�������-��������', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (726, 26, '���� ������� �����', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (727, 27, '���������� (�����-������)', 'A', 364, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (728, 28, '����� ������', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (729, 29, '���� ����', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (730, 30, '����������', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (731, 31, '������������ ������', 'A', 114, to_date('28-09-2011 15:12:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (732, 32, '���� ��� ������', 'A', 313, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (733, 33, '��� ����������� ������ ���� �� ���� ��� ������������ ���������� ���������� ����� �����', 'A', 252, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (734, 34, '������ �������� ���������������, ��������� ������� ���� �� ������� �����', 'A', 252, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (735, 35, '������� ������� �����', 'A', 252, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (736, 36, '��������� ����������', 'A', 252, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (737, 37, '������ ������� �����', 'A', 313, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (738, 38, '������', 'A', 313, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (739, 39, '������� ����������� ��������� �� ���������� ����� �����', 'A', 313, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (740, 40, '��������������� �����', 'A', 313, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (741, 41, 'բ����� ������ �����', 'A', 313, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (742, 42, '����������� �������� �����', 'A', 364, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_SPECIAL (SPECIAL_ID, SPECIAL_CODE, SPECIAL_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (743, 43, '������ ������������ �����', 'A', 364, to_date('28-09-2011 15:12:36', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 46 records loaded
prompt Loading SS_OK_STAFF...
insert into SS_OK_STAFF (STAFF_ID, STAFF_CODE, STAFF_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (201, 1, '���������', 'A', 138, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_STAFF (STAFF_ID, STAFF_CODE, STAFF_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (202, 2, '����������', 'A', 138, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_STAFF (STAFF_ID, STAFF_CODE, STAFF_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (203, 3, '���������', 'A', 138, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 3 records loaded
prompt Loading SS_OK_STATUS...
insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (1, '�����');
insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (2, '������');
insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (3, '�� ������');
insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (4, '������');
insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (5, '��������� ������');
insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (6, '��������� �������');
insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (14, '��������� ��');
insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (22, '����������� ��');
insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (29, '��������� � ��');
commit;
prompt 9 records loaded
prompt Loading SS_OK_STR...
prompt Table is empty
prompt Loading SS_OK_TEMPLATE_COMMAND...
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (326, 1, '������� ���� ����� �����', 1, '6.doc', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (327, 2, '������� ����� ��������� ��������', 3, '1.doc', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (328, 3, '���������������� ������� ����������� ���� ���� �� ������ ������������ ����� �����', 2, '15.doc', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (329, 4, '������� ����������� �����������', 4, '4.doc', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (330, 5, '������� ������ ������� �����', 6, '8.doc', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (331, 6, '������� ���� ������� �����', 7, '9.doc', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (332, 7, '����� ����� ���� ����� ���������� ����� ����������� ���� ����', 2, '15.doc', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (333, 8, '������� ����� ���������� �������', 9, '2.doc', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (334, 9, '������� ����� ������ �������', 10, '9', 'A', 114, to_date('28-09-2011 15:14:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (335, 10, '������� ���� ����������� ������� �����', 5, '6', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (336, 11, '���� ����������� ��������� ����� ������ ������� �������� ���� ������� ���� ����� �����', 1, '5.doc', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (337, 12, '������� ����������� ���� ����', 2, '7.doc', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TEMPLATE_COMMAND (TEMPLATE_COMMAND_ID, TEMPLATE_COMMAND_CODE, TEMPLATE_COMMAND_NAME, COMMAND_TYPE_CODE, TEMPLATE_COMMAND_FNAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (338, 13, '���� ����������� ��������� ����� ����� ������ �������� ����� ������ ���������� �����', 11, '3.doc', 'A', 114, to_date('28-09-2011 15:14:26', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 13 records loaded
prompt Loading SS_OK_THEME_BUSINESS_VOYAGE...
prompt Table is empty
prompt Loading SS_OK_TYPE_FORCE...
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (241, 1, '���������� ���������', 'A', 114, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (242, 2, '������������ ��������', 'A', 114, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (243, 3, '������ �������� (�����, ��������)', 'A', 114, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (244, 4, '���� ������� ���������', 'A', 114, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (245, 5, '����������� ���������', 'A', 114, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (246, 6, '���� ���������', 'A', 114, to_date('28-09-2011 15:12:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (247, 7, '������ ������� ������� ��������', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (248, 8, '���� ������ ���������', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (249, 9, '���� ��������� ������� ���������', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (250, 10, '������ ������ ����� ���������', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (251, 11, '������ ���� �������', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (252, 12, '������������ ������', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (253, 13, '��������������� ������', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (254, 14, '���������������� ������', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_FORCE (TYPE_FORCE_ID, TYPE_FORCE_CODE, TYPE_FORCE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (255, 15, '������� ������', 'A', 114, to_date('28-09-2011 15:12:40', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 15 records loaded
prompt Loading SS_OK_TYPE_PERIOD...
insert into SS_OK_TYPE_PERIOD (TYPE_PERIOD_ID, TYPE_PERIOD_CODE, TYPE_PERIOD_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (244, 1, '����� ��������', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_PERIOD (TYPE_PERIOD_ID, TYPE_PERIOD_CODE, TYPE_PERIOD_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (245, 2, '���� ��������', 'A', 114, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_PERIOD (TYPE_PERIOD_ID, TYPE_PERIOD_CODE, TYPE_PERIOD_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (246, 3, '�� ������', 'A', 99, to_date('28-09-2011 15:13:16', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 3 records loaded
prompt Loading SS_OK_VACANCY...
insert into SS_OK_VACANCY (VACANCY_ID, VACANCY_CODE, VACANCY_NAME)
values (121, 1, '��������');
insert into SS_OK_VACANCY (VACANCY_ID, VACANCY_CODE, VACANCY_NAME)
values (122, 2, '���� ���������');
commit;
prompt 2 records loaded
prompt Loading SS_OK_VID_EDUCATION...
insert into SS_OK_VID_EDUCATION (VID_EDUCATION_CODE, VID_EDUCATION_NAME, STATE_NOTES)
values (1, '(��������)', 'A');
insert into SS_OK_VID_EDUCATION (VID_EDUCATION_CODE, VID_EDUCATION_NAME, STATE_NOTES)
values (2, '(������)', 'A');
insert into SS_OK_VID_EDUCATION (VID_EDUCATION_CODE, VID_EDUCATION_NAME, STATE_NOTES)
values (3, '(�����)', 'A');
insert into SS_OK_VID_EDUCATION (VID_EDUCATION_CODE, VID_EDUCATION_NAME, STATE_NOTES)
values (4, '(���������)', 'A');
commit;
prompt 4 records loaded
prompt Loading SS_OK_YOUTH...
insert into SS_OK_YOUTH (YOUTH_ID, YOUTH_CODE, YOUTH_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (221, 1, '����� ��������', 'A', 114, to_date('28-09-2011 15:13:21', 'dd-mm-yyyy hh24:mi:ss'));
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
values (1, '��������', 'A', 99, to_date('17-12-2009 18:28:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_ZP_RATE_TYPE (ZP_RATE_TYPE_CODE, ZP_RATE_TYPE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (2, '�� ����������������', 'A', 99, to_date('17-12-2009 18:28:02', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 2 records loaded
set feedback on
set define on
prompt Done.
