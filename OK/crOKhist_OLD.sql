ss_ok_action_hist
1-�������
2-���������
3-��������
4-��������� ��������

drop trigger TR_OK_ACADEMIC_HIST;
drop trigger TR_OK_AWARD_HIST;
drop trigger TR_OK_CHANGE_FIO_HIST;
drop trigger TR_OK_DEGREE_HIST;
drop trigger TR_OK_EDUCATION_HIST;
drop trigger TR_OK_ELECTION_HIST;
drop trigger TR_OK_LANGUAGE_HIST;
drop trigger TR_OK_PARTY_HIST;
drop trigger TR_OK_PERIOD_HIST;
drop trigger TR_OK_PERSONAL_HIST;
drop trigger TR_OK_RELATION_HIST;
drop trigger TR_OK_RISE_HIST;
drop trigger TR_OK_VOYAGE_HIST;

drop table OK_HIST_ACADEMIC;
drop table OK_HIST_AWARD;
drop table OK_HIST_CHANGE_FIO;
drop table OK_HIST_DEGREE;
drop table OK_HIST_EDUCATION;
drop table OK_HIST_ELECTION;
drop table OK_HIST_LANGUAGE;
drop table OK_HIST_PARTY;
drop table OK_HIST_PERIOD;
drop table OK_HIST_PERSONAL;
drop table OK_HIST_RELATION;
drop table OK_HIST_RISE;
drop table OK_HIST_VOYAGE;

prompt PL/SQL Developer import file
prompt Created on 06.10.2011
set feedback off
set define off
prompt Creating OK_HIST_ACADEMIC...
create table OK_HIST_ACADEMIC
(
  ID            NUMBER(8) not null,
  BRANCH        CHAR(5) not null,
  PERSONAL_CODE NUMBER(9) not null,
  ACADEMIC_CODE NUMBER(1),
  ACADEMIC_DATE NUMBER(4),
  EMP_CODE      NUMBER(6),
  INS_DATE      DATE not null,
  STATE         CHAR(1),
  IIAS_VDATE    date not null,
  IIAS_SYSDATE  date not null,
  IIAS_CODE  NUMBER(4) not null
)
;
comment on table OK_HIST_ACADEMIC
  is '�������� �� ������ �������';
comment on column OK_HIST_ACADEMIC.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_HIST_ACADEMIC.BRANCH
  is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_ACADEMIC.PERSONAL_CODE
  is '��� ���������� � ���������.���������� �� ������� OK_HIST_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_ACADEMIC.ACADEMIC_CODE
  is '��� ������� ������	���������� �� ����������� SS_OK_ACADEMIC ���� ACADEMIC_CODE, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_ACADEMIC.ACADEMIC_DATE
  is '����  ��������� ������� ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_ACADEMIC.EMP_CODE
  is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_ACADEMIC.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

create index OK_HIST_ACADEMIC_PK on OK_HIST_ACADEMIC (BRANCH, PERSONAL_CODE, ID, IIAS_VDATE, IIAS_SYSDATE);




prompt Creating OK_HIST_AWARD...
create table OK_HIST_AWARD
(
  ID            NUMBER(8) not null,
  BRANCH        CHAR(5) not null,
  PERSONAL_CODE NUMBER(9) not null,
  AWARD_DATE    NUMBER(4),
  AWARD_INFO    VARCHAR2(255),
  EMP_CODE      NUMBER(6),
  INS_DATE      DATE,
  AWARD_DATE_MM NUMBER(2),
  AWARD_DATE_DD NUMBER(2),
  IIAS_VDATE    date not null,
  IIAS_SYSDATE  date not null,
  IIAS_CODE  NUMBER(4) not null
)
;
comment on table OK_HIST_AWARD
  is '�������� � ��������';
comment on column OK_HIST_AWARD.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_HIST_AWARD.BRANCH
  is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_AWARD.PERSONAL_CODE
  is '��� ���������� � ���������.���������� �� ������� OK_HIST_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_AWARD.AWARD_DATE
  is '��� ���� ��������� �������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_AWARD.AWARD_INFO
  is '�������� � �������� - �����	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_AWARD.EMP_CODE
  is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_AWARD.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_AWARD.AWARD_DATE_MM
  is '����� ����������� 09_005';
comment on column OK_HIST_AWARD.AWARD_DATE_DD
  is '���� �����������  09_005';

create index OK_HIST_AWARD_PK on OK_HIST_AWARD (BRANCH, PERSONAL_CODE, ID, IIAS_VDATE, IIAS_SYSDATE);



prompt Creating OK_HIST_CHANGE_FIO...
create table OK_HIST_CHANGE_FIO
(
  ID            NUMBER(8),
  BRANCH        CHAR(5) not null,
  PERSONAL_CODE NUMBER(9) not null,
  FAMILY        VARCHAR2(20),
  FIRST_NAME    VARCHAR2(20),
  PATRONYMIC    VARCHAR2(20),
  CHANGE_DATE   DATE not null,
  CHANGE_MOTIVE VARCHAR2(50),
  EMP_CODE      NUMBER(6),
  INS_DATE      DATE,
  IIAS_VDATE    date not null,
  IIAS_SYSDATE  date not null,
  IIAS_CODE  NUMBER(4) not null
)
;
comment on table OK_HIST_CHANGE_FIO
  is 'C������� �� ��������� �������, �����, ��������';
comment on column OK_HIST_CHANGE_FIO.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_HIST_CHANGE_FIO.BRANCH
  is '��� ���������	���������� �� ������� S_MFO ���� BANK_ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_CHANGE_FIO.PERSONAL_CODE
  is '��� ���������� � ���������	���������� �� ������� OK_HIST_PERSONAL  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_CHANGE_FIO.FAMILY
  is '������� ����������	���������� �� ������� OK_HIST_PERSONAL  ����  FAMILY ��� ��������  � ����������������� ����, ������������ ��� ����������';
comment on column OK_HIST_CHANGE_FIO.FIRST_NAME
  is '��� ����������	���������� �� ������� OK_HIST_PERSONAL  ���� NAME ��� ��������  � ����������. ������� ����, ������������ ��� ����������';
comment on column OK_HIST_CHANGE_FIO.PATRONYMIC
  is '�������� ����������	���������� �� ������� OK_HIST_PERSONAL  ���� PATRONIMIC ��� ��������  � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_CHANGE_FIO.CHANGE_DATE
  is '���� ��������� ���	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_CHANGE_FIO.CHANGE_MOTIVE
  is '������� ��������� ���	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_CHANGE_FIO.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_CHANGE_FIO.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

create index OK_HIST_CHANGE_FIO_PK on OK_HIST_CHANGE_FIO (BRANCH, PERSONAL_CODE, ID, IIAS_VDATE, IIAS_SYSDATE);



prompt Creating OK_HIST_DEGREE...

create table OK_HIST_DEGREE
(
  ID            NUMBER(8) not null,
  BRANCH        CHAR(5) not null,
  PERSONAL_CODE NUMBER(9) not null,
  DEGREE_CODE   NUMBER(1),
  DEGREE_DATE   NUMBER(4),
  EMP_CODE      NUMBER(6),
  INS_DATE      DATE,
  STATE         CHAR(1),
  IIAS_VDATE    date not null,
  IIAS_SYSDATE  date not null,
  IIAS_CODE  NUMBER(4) not null
)
;
comment on table OK_HIST_DEGREE
  is '�������� �� ������ ��������';
comment on column OK_HIST_DEGREE.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_HIST_DEGREE.BRANCH
  is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_DEGREE.PERSONAL_CODE
  is '��� ���������� � ���������.���������� �� ������� OK_HIST_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_DEGREE.DEGREE_CODE
  is '��� ������ �������	���������� �� ����������� SS_OK_DEGREE ���� DEGREE_CODE � �������� ����� ������������� ������ ������������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_DEGREE.DEGREE_DATE
  is '���� ��������� ������ �������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_DEGREE.EMP_CODE
  is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_DEGREE.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

create index OK_HIST_DEGREE_PK on OK_HIST_DEGREE (BRANCH, PERSONAL_CODE, ID, IIAS_VDATE, IIAS_SYSDATE);


prompt Creating OK_HIST_EDUCATION...
create table OK_HIST_EDUCATION
(
  ID                  NUMBER(8) not null,
  BRANCH              CHAR(5) not null,
  PERSONAL_CODE       NUMBER(9) not null,
  EDUCATION_CODE      NUMBER(3),
  BASIS_CODE          NUMBER(1),
  INSTITUTION_CODE    NUMBER(5),
  BEGIN_DATE          NUMBER(4),
  END_DATE            NUMBER(4),
  PROFESSION_PERSONAL VARCHAR2(250),
  QUALIFICATION_CODE  NUMBER(2),
  DIPLOM_NUM          VARCHAR2(50),
  EMP_CODE            NUMBER(6),
  INS_DATE            DATE,
  COD_VUZ_PRIM        VARCHAR2(150),
  CURS                VARCHAR2(1),
  FAKULTET            VARCHAR2(150),
  NOSTRA              VARCHAR2(1),
  NOSTRA_SERIES       VARCHAR2(1),
  NOSTRA_NUMBER       VARCHAR2(6),
  NOSTRA_DATE         DATE,
  DIPLOM_DATE         DATE,
  BEGIN_DATE_MM       NUMBER(2),
  BEGIN_DATE_DD       NUMBER(2),
  END_DATE_MM         NUMBER(2),
  END_DATE_DD         NUMBER(2),
  IIAS_VDATE    date not null,
  IIAS_SYSDATE  date not null,
  IIAS_CODE  NUMBER(4) not null
)
;
comment on table OK_HIST_EDUCATION
  is '�������� �� �����������';
comment on column OK_HIST_EDUCATION.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_HIST_EDUCATION.BRANCH
  is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_EDUCATION.PERSONAL_CODE
  is '��� ���������� � ���������.���������� �� ������� OK_HIST_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_EDUCATION.EDUCATION_CODE
  is '���  �����������	���������� �� ����������� SS_OK_EDUCATION ����  EDUCATION_CODE, � �������� ����� ��������� ������������ ��������� �����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_EDUCATION.BASIS_CODE
  is '��� ������� �������� �����������	���������� �� ����������� SS_OK_BASIS  ����  BASIS_CODE,  ������� ����, ������������ ��� ����������';
comment on column OK_HIST_EDUCATION.INSTITUTION_CODE
  is '��� �������� ���������	���������� �� �����������  SS_OK_INSTITUTION  ����  INSTITUTION_CODE,� �������� ����� ����� ���������� � ������������ � ������ ������������ �������� ���������, ������� ����, �������������� ��� ����������';
comment on column OK_HIST_EDUCATION.BEGIN_DATE
  is '���� ����������� � ������� ���������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_HIST_EDUCATION.END_DATE
  is '���� ��������� �������� ���������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_HIST_EDUCATION.PROFESSION_PERSONAL
  is '������������� �� �������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_HIST_EDUCATION.QUALIFICATION_CODE
  is '��� ������������ �� �������	���������� �� ����������� SS_OK_QUALIFICATION  ���� QUALIFICATION_CODE , � �������� �����  ���������  ������������, ������� ����, �������������� ��� ����������';
comment on column OK_HIST_EDUCATION.DIPLOM_NUM
  is '����� ������� ��� �������������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_HIST_EDUCATION.EMP_CODE
  is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_EDUCATION.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_EDUCATION.COD_VUZ_PRIM
  is ' ���������� � ���� ���� ';
comment on column OK_HIST_EDUCATION.CURS
  is ' ����';
comment on column OK_HIST_EDUCATION.FAKULTET
  is ' ���������';
comment on column OK_HIST_EDUCATION.NOSTRA
  is '������� ������������� 1-���� 2-���';
comment on column OK_HIST_EDUCATION.NOSTRA_SERIES
  is '����� ������������� ������������� ';
comment on column OK_HIST_EDUCATION.NOSTRA_NUMBER
  is '����� ������������� ������������� ';
comment on column OK_HIST_EDUCATION.NOSTRA_DATE
  is ' ���� �������������';
comment on column OK_HIST_EDUCATION.DIPLOM_DATE
  is '���� ������ �������';
comment on column OK_HIST_EDUCATION.BEGIN_DATE_MM
  is '����� ����������� � ������� ��������� 09_004';
comment on column OK_HIST_EDUCATION.BEGIN_DATE_DD
  is '���� ������ ����������� � ������� ��������� 09_004';
comment on column OK_HIST_EDUCATION.END_DATE_MM
  is '����� ��������� �������� ��������� 09_004';
comment on column OK_HIST_EDUCATION.END_DATE_DD
  is '���� ������ ��������� �������� ��������� 09_004';

create index OK_HIST_EDUCATION_PK on OK_HIST_EDUCATION (BRANCH, PERSONAL_CODE, ID, IIAS_VDATE, IIAS_SYSDATE);


prompt Creating OK_HIST_ELECTION...
create table OK_HIST_ELECTION
(
  ID                     NUMBER(8) not null,
  BRANCH                 CHAR(5) not null,
  PERSONAL_CODE          NUMBER(9) not null,
  ELECTION_CODE          NUMBER(3),
  ELECTION_POST          VARCHAR2(250),
  ELECTION_DATE_BEGIN    NUMBER(4),
  ELECTION_DATE_END      NUMBER(4),
  EMP_CODE               NUMBER(6),
  INS_DATE               DATE,
  ELECTION_ADDRESS       VARCHAR2(250),
  ELECTION_NAME          VARCHAR2(250),
  ELECTION_DATE_BEGIN_MM NUMBER(2),
  ELECTION_DATE_BEGIN_DD NUMBER(2),
  ELECTION_DATE_END_MM   NUMBER(2),
  ELECTION_DATE_END_DD   NUMBER(2),
  IIAS_VDATE    date not null,
  IIAS_SYSDATE  date not null,
  IIAS_CODE  NUMBER(4) not null
)
;
comment on table OK_HIST_ELECTION
  is '�������� �� �������� � �������������� ������';
comment on column OK_HIST_ELECTION.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_HIST_ELECTION.BRANCH
  is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_ELECTION.PERSONAL_CODE
  is '��� ���������� � ���������.���������� �� ������� OK_HIST_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_ELECTION.ELECTION_CODE
  is '��� �������������� ����� SS_OK_ELECTION';
comment on column OK_HIST_ELECTION.ELECTION_POST
  is '��� ��� ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_ELECTION.ELECTION_DATE_BEGIN
  is '���  �������� � ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_ELECTION.ELECTION_DATE_END
  is '���  ��������� ����� ������ � �������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_ELECTION.EMP_CODE
  is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_ELECTION.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_ELECTION.ELECTION_ADDRESS
  is '����� ��������������� ������ ';
comment on column OK_HIST_ELECTION.ELECTION_NAME
  is '�������� ��������������� ������ ';
comment on column OK_HIST_ELECTION.ELECTION_DATE_BEGIN_MM
  is '����� �������� 09_006';
comment on column OK_HIST_ELECTION.ELECTION_DATE_BEGIN_DD
  is '����  �������� 09_006';
comment on column OK_HIST_ELECTION.ELECTION_DATE_END_MM
  is '����� ��������� ����������';
comment on column OK_HIST_ELECTION.ELECTION_DATE_END_DD
  is '����  ��������� ����������';

create index OK_HIST_ELECTION_PK on OK_HIST_ELECTION (BRANCH, PERSONAL_CODE, ID, IIAS_VDATE, IIAS_SYSDATE);



prompt Creating OK_HIST_LANGUAGE...
create table OK_HIST_LANGUAGE
(
  ID            NUMBER(8),
  BRANCH        CHAR(5) not null,
  PERSONAL_CODE NUMBER(9) not null,
  LANGUAGE_CODE NUMBER(3) not null,
  LEVEL_CODE    NUMBER(1),
  EMP_CODE      NUMBER(6),
  INS_DATE      DATE,
  STATE         CHAR(1),
  COD_LANG_PRIM VARCHAR2(50),
  IIAS_VDATE    date not null,
  IIAS_SYSDATE  date not null,
  IIAS_CODE  NUMBER(4) not null
)
;
comment on table OK_HIST_LANGUAGE
  is '�������� �� ����������� ������';
comment on column OK_HIST_LANGUAGE.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_HIST_LANGUAGE.BRANCH
  is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_LANGUAGE.PERSONAL_CODE
  is '��� ���������� � ���������.���������� �� ������� OK_HIST_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_LANGUAGE.LANGUAGE_CODE
  is '��� ������������ �����	���������� ����������� ������ ����� ���� ������� ������, ���������� ������ ��� ����� ��������� �����������. � �������� �����  ��������� ������������ ���� ��������� ����������� ������ ������ � ������� ������ ���� ������ ���� - ������� � �.�.���������� �� ������� SS_OK_LANGUAGE  ���� LANGUAGE_CODE , ������� ����, ������������ ��� ����������';
comment on column OK_HIST_LANGUAGE.LEVEL_CODE
  is '��� ������ ������ ������������ �����	��� ������ ������ ������������ �� ������ ��� ������ ����� � �������� �����  ��������� ������������ ���� ��������� ����������� ������ ������ � ������� ������ ���� ������ ���� - ������� � �.�. ���������� �� ������� SS_OK_LEVEL _LANGUAGE  ���� LEVEL_CODE, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_LANGUAGE.EMP_CODE
  is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_LANGUAGE.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_LANGUAGE.STATE
  is '�� ������������';
comment on column OK_HIST_LANGUAGE.COD_LANG_PRIM
  is '����������';

create index OK_HIST_LANGUAGE_PK on OK_HIST_LANGUAGE (BRANCH, PERSONAL_CODE, ID, IIAS_VDATE, IIAS_SYSDATE);



prompt Creating OK_HIST_PARTY...
create table OK_HIST_PARTY
(
  ID                NUMBER(8) not null,
  BRANCH            CHAR(5) not null,
  PERSONAL_CODE     NUMBER(9) not null,
  PARTY_CODE        NUMBER(2),
  OUT_PARTY         VARCHAR2(200),
  PARTY_DATE        NUMBER(4),
  PARTY_OUTDATE     NUMBER(4),
  PUNISHMENT_MOTIVE VARCHAR2(200),
  PUNISHMENT_DATE   NUMBER(4),
  EMP_CODE          NUMBER(6),
  INS_DATE          DATE,
  CODE_PARTII_PRIM  VARCHAR2(50),
  IIAS_VDATE    date not null,
  IIAS_SYSDATE  date not null,
  IIAS_CODE  NUMBER(4) not null
)
;
comment on table OK_HIST_PARTY
  is '�������� � �����������';
comment on column OK_HIST_PARTY.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_HIST_PARTY.BRANCH
  is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_PARTY.PERSONAL_CODE
  is '��� ���������� � ���������.���������� �� ������� OK_HIST_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_PARTY.PARTY_CODE
  is '��� �����������	���������� �� �����������SS_OK_PARTY ���� PARTY_CODE , � �������� ����� ��������� �������� ������ �� �����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_PARTY.OUT_PARTY
  is '������� ������ �� ������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_HIST_PARTY.PARTY_DATE
  is '��� ���������� � ������';
comment on column OK_HIST_PARTY.PARTY_OUTDATE
  is '��� ���� ������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_HIST_PARTY.PUNISHMENT_MOTIVE
  is '������� ���������� ���������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_HIST_PARTY.PUNISHMENT_DATE
  is '��� ���� ��������� ����.���������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_HIST_PARTY.EMP_CODE
  is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_PARTY.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_PARTY.CODE_PARTII_PRIM
  is '���������� � ���� ������ (�������� ������)';

create index OK_HIST_PARTY_PK on OK_HIST_PARTY (BRANCH, PERSONAL_CODE, ID, IIAS_VDATE, IIAS_SYSDATE);



prompt Creating OK_HIST_PERIOD...
create table OK_HIST_PERIOD
(
  ID                     NUMBER(8),
  BRANCH                 CHAR(5) not null,
  PERSONAL_CODE          NUMBER(9) not null,
  IN_OFFICE_DATE         DATE,
  OUT_OFFICE_DATE        DATE,
  OFFICE_NAME            VARCHAR2(250),
  OFFICE_ADDRESS         VARCHAR2(250),
  ESTABLISHED_POST       VARCHAR2(250),
  ESTABLISHED_DEPARTMENT VARCHAR2(250),
  BASE_MOVE_CODE         NUMBER(9),
  TYPE_PERIOD_CODE       NUMBER(1),
  ARTICLE_CODE           NUMBER(3),
  BASIS_NUM              VARCHAR2(30),
  BASIS_DATE             DATE,
  EMP_CODE               NUMBER(6),
  INS_DATE               DATE,
  PRIZ_SYSTEM            VARCHAR2(1),
  COD_BANK               VARCHAR2(5),
  COD_TYPE_PRN           VARCHAR2(2),
  COD_PR_OFF             VARCHAR2(2),
  PR_OFF                 VARCHAR2(100),
  DATE_UTV_KM            DATE,
  NUMB_UTV_KM            VARCHAR2(10),
  DATE_PR_KVL            DATE,
  NUMB_PR_KVL            VARCHAR2(10),
  DATE_ATTEST            DATE,
  RESH_ATTEST            VARCHAR2(100),
  DOLJN_ID               VARCHAR2(3),
  NUM_PR_OFF             VARCHAR2(10),
  DATE_PR_OFF            DATE,
  POST_CODE              NUMBER(3),
  DEPARTMENT_CODE        NUMBER(9),
  IIAS_VDATE    date not null,
  IIAS_SYSDATE  date not null,
  IIAS_CODE  NUMBER(4) not null
)
;
comment on table OK_HIST_PERIOD
  is '�������� � ������';
comment on column OK_HIST_PERIOD.ID
  is '��������� �����';
comment on column OK_HIST_PERIOD.BRANCH
  is '��� ���������';
comment on column OK_HIST_PERIOD.PERSONAL_CODE
  is '��� ����������';
comment on column OK_HIST_PERIOD.IN_OFFICE_DATE
  is '���� �����������';
comment on column OK_HIST_PERIOD.OUT_OFFICE_DATE
  is '���� ����������';
comment on column OK_HIST_PERIOD.OFFICE_NAME
  is '������������ �����������';
comment on column OK_HIST_PERIOD.OFFICE_ADDRESS
  is '����� �����������';
comment on column OK_HIST_PERIOD.ESTABLISHED_POST
  is '���������� ���������';
comment on column OK_HIST_PERIOD.ESTABLISHED_DEPARTMENT
  is '�����';
comment on column OK_HIST_PERIOD.BASE_MOVE_CODE
  is '��������� ����������� SS_OK_BASE_MOVE';
comment on column OK_HIST_PERIOD.TYPE_PERIOD_CODE
  is '��� ���� ����� SS_OK_TYPE_PERIOD';
comment on column OK_HIST_PERIOD.ARTICLE_CODE
  is '����� ������';
comment on column OK_HIST_PERIOD.BASIS_NUM
  is '����� �������/���������';
comment on column OK_HIST_PERIOD.BASIS_DATE
  is '���� �������/���������';
comment on column OK_HIST_PERIOD.PRIZ_SYSTEM
  is '������� �������';
comment on column OK_HIST_PERIOD.COD_BANK
  is '��� �����';
comment on column OK_HIST_PERIOD.COD_TYPE_PRN
  is '��������� ��� ����������� ������ � ���������( ���� ):��� ���� �������: �� SS_OK_base_move';
comment on column OK_HIST_PERIOD.COD_PR_OFF
  is '��������� ��� ����������� ������ � ���������( ���� ):��� ������� �� ����������� �� s_prich';
comment on column OK_HIST_PERIOD.PR_OFF
  is '������� ����������� ������ � ���������( ���� )';
comment on column OK_HIST_PERIOD.DATE_UTV_KM
  is '���� ����������� ��';
comment on column OK_HIST_PERIOD.NUMB_UTV_KM
  is '����� ������������� ��';
comment on column OK_HIST_PERIOD.DATE_PR_KVL
  is '���� ����������� �� ��';
comment on column OK_HIST_PERIOD.NUMB_PR_KVL
  is '����� ��������� �� ��';
comment on column OK_HIST_PERIOD.DATE_ATTEST
  is '���� ����������';
comment on column OK_HIST_PERIOD.RESH_ATTEST
  is '������� �������������� ��������';
comment on column OK_HIST_PERIOD.DOLJN_ID
  is '����� ��� ��������� ( ���� ): �� ����������� �� s_dolgn';
comment on column OK_HIST_PERIOD.NUM_PR_OFF
  is '����� ������� ��������� ��� ����������� ������ � ��������� ( ���� )';
comment on column OK_HIST_PERIOD.DATE_PR_OFF
  is '���� ������� ��������� ��� ����������� ������ � ���������( ���� ) ';
comment on column OK_HIST_PERIOD.POST_CODE
  is '��� ��������� SS_OK_POST';
comment on column OK_HIST_PERIOD.DEPARTMENT_CODE
  is '��� ������ SS_OK_DEPARTMENT';

create index OK_HIST_PERIOD_PK on OK_HIST_PERIOD (BRANCH, PERSONAL_CODE, ID, IIAS_VDATE, IIAS_SYSDATE);


prompt Creating OK_HIST_PERSONAL...

create table OK_HIST_PERSONAL
(
  ID                         NUMBER(8),
  BRANCH                     CHAR(5) not null,
  PERSONAL_CODE              NUMBER(9) not null,
  COLLEAGUE_CODE             NUMBER(10),
  STATUS_CODE                NUMBER(1),
  SALARY_CODE                NUMBER(9),
  FAMILY                     VARCHAR2(50),
  FIRST_NAME                 VARCHAR2(50),
  PATRONYMIC                 VARCHAR2(50),
  GENDER_CODE                NUMBER(1),
  BIRTHDAY                   DATE,
  REGION_ID                  VARCHAR2(2),
  DISTR                      VARCHAR2(3),
  NATIONALITY_CODE           NUMBER(3),
  FAMILY_STATUS_CODE         NUMBER(1),
  REG_TYPE_CODE              NUMBER(1),
  HOME_ADDRESS               VARCHAR2(250),
  HOME_ADDRESSFACT           VARCHAR2(250),
  PASS_SERIYA                VARCHAR2(9),
  PASS_NUM                   VARCHAR2(9),
  PASS_DATE                  DATE,
  PASS_REG                   VARCHAR2(200),
  RECORD_BOOK_NUMBER         VARCHAR2(10),
  RECORD_BOOK_SERIES         VARCHAR2(10),
  TELEFON                    VARCHAR2(200),
  EMP_CODE                   NUMBER(6),
  INS_DATE                   DATE,
  PROFMEMBER                 NUMBER(1) default '1',
  TABNO                      NUMBER(9),
  EDUCATION_TITLE_CODE       NUMBER(3),
  BIRTHPLACE                 VARCHAR2(250),
  MOTIVE_OUT                 VARCHAR2(150),
  BASIS_NUM                  VARCHAR2(30),
  BASIS_DATE                 DATE,
  LEAVE_CODE                 NUMBER(2),
  DEPARTMENT_CODE            NUMBER(9),
  POST_CODE                  NUMBER(3),
  NN                         NUMBER(9),
  MOTIVE_DISMISSIAL_CODE     NUMBER(2),
  NPS_ID                     NUMBER(14),
  SPECIAL_CODE               NUMBER(3),
  COD_DISTR_UVD              VARCHAR2(3),
  COD_DISTR_PRIM             VARCHAR2(50),
  COD_STR_BIRTH              VARCHAR2(3),
  COD_OBL_PRIM               VARCHAR2(50),
  COD_PLACE_BIRTH_PRIM       VARCHAR2(50),
  COD_SITIZENT               VARCHAR2(1),
  COD_STR_SITIZENT           VARCHAR2(3),
  COD_STR_LIVE               VARCHAR2(3),
  COD_OBL_LIVE               VARCHAR2(2),
  COD_OBL_LIVE_PRIM          VARCHAR2(50),
  COD_DISTR_LIVE             VARCHAR2(3),
  COD_DISTR_LIVE_PRIM        VARCHAR2(50),
  CODE_NACI_PRIM             VARCHAR2(50),
  CHECK_KFS                  VARCHAR2(1),
  IS_BOSS                    VARCHAR2(1),
  BANK_SPEC                  VARCHAR2(1),
  NOTICE                     VARCHAR2(200),
  PRICH_ID                   VARCHAR2(2),
  NAME_PR                    VARCHAR2(100),
  INN                        NUMBER(9),
  SROK_DATE                  DATE,
  HOME_ADDRESSFACT_REGION_ID VARCHAR2(2),
  HOME_ADDRESSFACT_DISTR     VARCHAR2(3),
  HOME_ADDRESS_REGION_ID     VARCHAR2(2),
  HOME_ADDRESS_DISTR         VARCHAR2(3),
  PASSPORT_TYPE_CODE         NUMBER(9),
  REGPLACE_CODE              NUMBER(9),
  PASS_DATE_END              DATE,
  GOSUBMIT_CODE              NUMBER,
  LIVE_PLACE                 VARCHAR2(50),
  BIRTHPLACE_POINT           VARCHAR2(50),
  MAIDEN_FAMILY              VARCHAR2(50),
  DEPARTMENT_CODE_OLD        NUMBER(9),
  POST_CODE_OLD              NUMBER(3),
  SPECIAL_CODE_OLD           NUMBER(3),
  IIAS_VDATE    date not null,
  IIAS_SYSDATE  date not null,
  IIAS_CODE  NUMBER(4) not null
)
;
comment on table OK_HIST_PERSONAL
  is '������� ������� "�������� � ����������"';
comment on column OK_HIST_PERSONAL.ID
  is '��������� �����	� ������� �����������, �������   � "1"';
comment on column OK_HIST_PERSONAL.BRANCH
  is '��� ���������	���������� �� ������� S_MFO ���� BANK_ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_PERSONAL.PERSONAL_CODE
  is '��� ���������� � ���������	������������� ������������� � ��������� � ���������� � �������� ����  � ����� - �������� � ���������, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_PERSONAL.COLLEAGUE_CODE
  is '��� ���������� � �������� ����� 	������������� ������������� ���������� ����� ��������� ����� �� ��������� � ���������� � ��������� � �������� ������ - ���������� � ������� �����  �� ���������� ���������� �� ������ ��� ���������, ��������� ����';
comment on column OK_HIST_PERSONAL.STATUS_CODE
  is '������ ���������� ';
comment on column OK_HIST_PERSONAL.SALARY_CODE
  is '��� �������� ����� � ��������� OK_HIST_stat_salary';
comment on column OK_HIST_PERSONAL.FAMILY
  is '������� ����������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_PERSONAL.FIRST_NAME
  is '��� ����������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_PERSONAL.PATRONYMIC
  is '�������� ����������	�������� � ����������. ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_PERSONAL.GENDER_CODE
  is '��� ����������	����������  �� ���������� ����������� SS_OK_GENDER, ���� GENDER_CODE � �������� ����� ��������� ������������ ����, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_PERSONAL.BIRTHDAY
  is '���� �������� ���������� DDMMYYYY	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_PERSONAL.REGION_ID
  is 'SS_OK_region ����� �������� �������,����� ������� ���������� �� s_region';
comment on column OK_HIST_PERSONAL.DISTR
  is 'SS_OK_distr ����� �������� �����,����� ���������� �� s_distr';
comment on column OK_HIST_PERSONAL.NATIONALITY_CODE
  is '��� �������������� 	���������� �� ����������� SS_OK_NATIONALITY  ���� NATIONALITY_CODE, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_PERSONAL.FAMILY_STATUS_CODE
  is '��� ��������� ���������	���������� �� �����������SS_OK_FAMILY_STATUS���� FAMILY_STATUS_CODE, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_PERSONAL.REG_TYPE_CODE
  is '��� ���� ��������	���������� �� ����������� SS_OK_REGISTRATION_TYPE, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_PERSONAL.HOME_ADDRESS
  is '������ �������� ����� ����������(��������) 	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_PERSONAL.HOME_ADDRESSFACT
  is '����������� ����� ����������	�������� � ����������. ������� ����';
comment on column OK_HIST_PERSONAL.PASS_SERIYA
  is '����� ��������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_PERSONAL.PASS_NUM
  is '����� ��������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_PERSONAL.PASS_DATE
  is '���� ������ ��������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_PERSONAL.PASS_REG
  is '����� ������ ��������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_PERSONAL.RECORD_BOOK_HIST_NUMBER
  is '����� �������� ������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_HIST_PERSONAL.RECORD_BOOK_HIST_SERIES
  is '����� �������� ������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_HIST_PERSONAL.TELEFON
  is '���������� � ���������� ���������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_PERSONAL.EMP_CODE
  is '��� ������������, ���������� 	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_PERSONAL.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_PERSONAL.PROFMEMBER
  is '�������� 1-��';
comment on column OK_HIST_PERSONAL.TABNO
  is '��������� �����';
comment on column OK_HIST_PERSONAL.EDUCATION_TITLE_CODE
  is 'SS_OK_EDUCATION_TITLE';
comment on column OK_HIST_PERSONAL.BIRTHPLACE
  is '����� ��������';
comment on column OK_HIST_PERSONAL.MOTIVE_OUT
  is '������� ����������';
comment on column OK_HIST_PERSONAL.BASIS_NUM
  is '����� ������� ';
comment on column OK_HIST_PERSONAL.BASIS_DATE
  is '���� �������';
comment on column OK_HIST_PERSONAL.LEAVE_CODE
  is 'SS_OK_LEAVE';
comment on column OK_HIST_PERSONAL.DEPARTMENT_CODE
  is 'SS_OK_DEPARTMENT ��� �������������, ������������ ������ � branch ������� ������� SS_OK_department';
comment on column OK_HIST_PERSONAL.POST_CODE
  is 'SS_OK_POST ��� ������������ ��������� ���������� SS_OK_post';
comment on column OK_HIST_PERSONAL.NN
  is '���������� ����� � �������';
comment on column OK_HIST_PERSONAL.MOTIVE_DISMISSIAL_CODE
  is 'SS_OK_MOTIVE_DISMISSIAL';
comment on column OK_HIST_PERSONAL.NPS_ID
  is '���������� ��';
comment on column OK_HIST_PERSONAL.SPECIAL_CODE
  is '��� ������������� �� SS_OK_special';
comment on column OK_HIST_PERSONAL.COD_DISTR_UVD
  is 'SS_OK_distr ��� ������, �������������� ��� �������� ����� ������� (����)';
comment on column OK_HIST_PERSONAL.COD_DISTR_PRIM
  is '���������� � ��� ������, �������������� ��� �������� ����� ������� (����)';
comment on column OK_HIST_PERSONAL.COD_STR_BIRTH
  is 'SS_OK_str ��� ������ �������� �� ���������� �� s_str (����)';
comment on column OK_HIST_PERSONAL.COD_OBL_PRIM
  is '���������� � ���� ������� �������� (����)';
comment on column OK_HIST_PERSONAL.COD_PLACE_BIRTH_PRIM
  is '���������� � ���� ������ �������� (����)';
comment on column OK_HIST_PERSONAL.COD_SITIZENT
  is '����� ��� �����������';
comment on column OK_HIST_PERSONAL.COD_STR_SITIZENT
  is 'SS_OK_str ��� ������ �����������';
comment on column OK_HIST_PERSONAL.COD_STR_LIVE
  is 'SS_OK_str ��� ������ ���������� �� ���������� �� s_str (����)';
comment on column OK_HIST_PERSONAL.COD_OBL_LIVE
  is 'SS_OK_region  ��� ������� ���������� �� ���������� �� s_region (����) s_region';
comment on column OK_HIST_PERSONAL.COD_OBL_LIVE_PRIM
  is '���������� � ��� ������� ���������� (����)';
comment on column OK_HIST_PERSONAL.COD_DISTR_LIVE
  is 'SS_OK_distr ��� ������ ���������� �� ���������� �� s_distr (����)';
comment on column OK_HIST_PERSONAL.COD_DISTR_LIVE_PRIM
  is '���������� � ��� ������ ���������� (����)';
comment on column OK_HIST_PERSONAL.CODE_NACI_PRIM
  is '���������� � ���� �������������� (����)  ';
comment on column OK_HIST_PERSONAL.CHECK_KFS
  is '������ ������������ �������: 1-�� 2-���';
comment on column OK_HIST_PERSONAL.IS_BOSS
  is '����������� ������ 1-��  (����) ����� �����';
comment on column OK_HIST_PERSONAL.BANK_SPEC
  is '������� ���������� ������������� 1-�� ����� �����';
comment on column OK_HIST_PERSONAL.NOTICE
  is '����������';
comment on column OK_HIST_PERSONAL.PRICH_ID
  is '����� ��� ������� ����������';
comment on column OK_HIST_PERSONAL.NAME_PR
  is '������������ ������� ����������';
comment on column OK_HIST_PERSONAL.INN
  is '���';
comment on column OK_HIST_PERSONAL.SROK_HIST_DATE
  is '���� ��������� �������������� �����';
comment on column OK_HIST_PERSONAL.HOME_ADDRESSFACT_REGION_ID
  is 'SS_OK_region ����� ���-�� s_region.region_id';
comment on column OK_HIST_PERSONAL.HOME_ADDRESSFACT_DISTR
  is '����� ���-�� s_distr.distr';
comment on column OK_HIST_PERSONAL.HOME_ADDRESS_REGION_ID
  is 'SS_OK_region ����� �������� s_region.region_id';
comment on column OK_HIST_PERSONAL.HOME_ADDRESS_DISTR
  is '����� �������� s_distr.distr';
comment on column OK_HIST_PERSONAL.PASSPORT_TYPE_CODE
  is '��� ��������� 1-������� 2-��� �� ���-�� 3-��������� SS_OK_passport_type';
comment on column OK_HIST_PERSONAL.REGPLACE_CODE
  is 'SS_OK_regplace ��� ����� �����������';
comment on column OK_HIST_PERSONAL.PASS_DATE_END
  is '������� ������������ ��..';
comment on column OK_HIST_PERSONAL.GOSUBMIT_CODE
  is '��� ������������� ���������� � ��';

create index OK_HIST_PERSONAL_PK on OK_HIST_PERSONAL (BRANCH, PERSONAL_CODE, ID, IIAS_VDATE, IIAS_SYSDATE);



prompt Creating OK_HIST_RELATION...
create table OK_HIST_RELATION
(
  ID                    NUMBER(8) not null,
  BRANCH                CHAR(5) not null,
  PERSONAL_CODE         NUMBER(9) not null,
  RELATION_CODE         NUMBER(2),
  RELATION_FAMILY       VARCHAR2(50),
  RELATION_NAME         VARCHAR2(50),
  RELATION_PATRONYMIC   VARCHAR2(50),
  RELATION_BIRTHDAY     NUMBER(4),
  RELATION_DEATHDAY     NUMBER(4),
  RELATION_BIRTHPLACE   VARCHAR2(200),
  RELATION_OFFICE       VARCHAR2(200),
  RELATION_POST         VARCHAR2(100),
  RELATION_HOME_ADDRESS VARCHAR2(200),
  EMP_CODE              NUMBER(6),
  INS_DATE              DATE,
  COD_STR_LIVE          VARCHAR2(3),
  COD_OBL_LIVE          VARCHAR2(2),
  COD_OBL_LIVE_PRIM     VARCHAR2(50),
  COD_CITY              VARCHAR2(3),
  COD_CITY_PRIM         VARCHAR2(50),
  COD_STR_LIVE_PRIM     VARCHAR2(50),
  COD_STR_BIRTH         VARCHAR2(3),
  COD_STR_BIRTH_PRIM    VARCHAR2(50),
  COD_OBL_BIRTH         VARCHAR2(2),
  COD_OBL_BIRTH_PRIM    VARCHAR2(50),
  COD_CITY_BIRTH        VARCHAR2(3),
  COD_CITY_BIRTH_PRIM   VARCHAR2(50),
  DD                    NUMBER(2),
  MM                    NUMBER(2),
  DD_DEATH              NUMBER(2),
  MM_DEATH              NUMBER(2),
  IIAS_VDATE    date not null,
  IIAS_SYSDATE  date not null,
  IIAS_CODE  NUMBER(4) not null
)
;
comment on table OK_HIST_RELATION
  is '�������� � ������� �������������';
comment on column OK_HIST_RELATION.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_HIST_RELATION.BRANCH
  is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_RELATION.PERSONAL_CODE
  is '��� ���������� � ���������	���������� �� ������� OK_HIST_PERSONAL  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_RELATION.RELATION_CODE
  is '��� ������������ ���������	���������� �� SS_OK_RELATION  ���� RELATION_CODE, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_RELATION.RELATION_FAMILY
  is '�������  ������������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_RELATION.RELATION_NAME
  is '��� ������������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_RELATION.RELATION_PATRONYMIC
  is '�������� ������������	�������� � ���������� ������� ����, ������������ ��� ����������,';
comment on column OK_HIST_RELATION.RELATION_BIRTHDAY
  is '��� ���� �������� ������������ DDMMYYYY	�������� � ���������� , ������� ����, ������������ ��� ����������';
comment on column OK_HIST_RELATION.RELATION_DEATHDAY
  is '��� ������ ������������ ������ ��� ��';
comment on column OK_HIST_RELATION.RELATION_BIRTHPLACE
  is '����� ��������  ������������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_RELATION.RELATION_OFFICE
  is '����� ������ ������������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_RELATION.RELATION_POST
  is '���������� ��������� ������������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_RELATION.RELATION_HOME_ADDRESS
  is '����� ���������� ������������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_RELATION.EMP_CODE
  is '��� ������������, ���������� ����������	���������� �� ������� USERS  ����  ID, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_RELATION.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_RELATION.COD_STR_LIVE
  is 'SS_OK_STR ����� ���������� ��� ������ s_str ������ ��� ��';
comment on column OK_HIST_RELATION.COD_OBL_LIVE
  is 'SS_OK_REGION  ����� ���������� ��� ������� s_region ��� ������ ��� ��';
comment on column OK_HIST_RELATION.COD_OBL_LIVE_PRIM
  is '����� ���������� ���������� � ��� ������� ������ ��� ��';
comment on column OK_HIST_RELATION.COD_CITY
  is 'SS_OK_CITY ����� ���������� ��� ������-������ s_distr ������ ��� ��';
comment on column OK_HIST_RELATION.COD_CITY_PRIM
  is '���������� � ����� ���������� ��� ������-������ ������ ��� ��';
comment on column OK_HIST_RELATION.COD_STR_LIVE_PRIM
  is '���������� � ����� ���������� ��� ������ ������ ��� ��';
comment on column OK_HIST_RELATION.COD_STR_BIRTH
  is 'SS_OK_STR ����� �������� ��� ������ s_str ������ ��� ��';
comment on column OK_HIST_RELATION.COD_STR_BIRTH_PRIM
  is '���������� � ����� �������� ��� ������ ������ ��� �������� ��� ��';
comment on column OK_HIST_RELATION.COD_OBL_BIRTH
  is 'SS_OK_REGION  ����� �������� ��� ������� s_region ��� ������ ��� ��';
comment on column OK_HIST_RELATION.COD_OBL_BIRTH_PRIM
  is ' ����� �������� ���������� � ��� ������� ������ ��� �� ';
comment on column OK_HIST_RELATION.COD_CITY_BIRTH
  is 'SS_OK_CITY ����� �������� ��� ������-������ s_distr ������ ��� ��';
comment on column OK_HIST_RELATION.COD_CITY_BIRTH_PRIM
  is '���������� � ����� �������� ��� ������-������ ������ ��� ��';
comment on column OK_HIST_RELATION.DD
  is '���� dd �������� ������������  ������ ��� ��';
comment on column OK_HIST_RELATION.MM
  is '����� mm �������� ������������� ������ ��� ��';
comment on column OK_HIST_RELATION.DD_DEATH
  is '���� ������ ������������ ������ ��� ��  ';
comment on column OK_HIST_RELATION.MM_DEATH
  is '����� ������ ������������ ������ ��� ��';

create index OK_HIST_RELATION_PK on OK_HIST_RELATION (BRANCH, PERSONAL_CODE, ID, IIAS_VDATE, IIAS_SYSDATE);



prompt Creating OK_HIST_RISE...
create table OK_HIST_RISE
(
  ID             NUMBER(8),
  BRANCH         CHAR(5) not null,
  PERSONAL_CODE  NUMBER(9) not null,
  RISE_DATE_YEAR NUMBER(4),
  RISE_INFO      VARCHAR2(250),
  EMP_CODE       NUMBER(6),
  INS_DATE       DATE,
  RISE_DATE_MM   NUMBER(2),
  RISE_DATE_DD   NUMBER(2),
  IIAS_VDATE    date not null,
  IIAS_SYSDATE  date not null,
  IIAS_CODE  NUMBER(4) not null
)
;
comment on table OK_HIST_RISE
  is '�������� � ��������� ������������';
comment on column OK_HIST_RISE.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_HIST_RISE.BRANCH
  is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_RISE.PERSONAL_CODE
  is '��� ���������� � ���������.���������� �� ������� OK_HIST_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_RISE.RISE_DATE_YEAR
  is '��� ����������� ��������� ������������';
comment on column OK_HIST_RISE.RISE_INFO
  is '�������� � ��������� ������������';
comment on column OK_HIST_RISE.EMP_CODE
  is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_RISE.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_RISE.RISE_DATE_MM
  is '����� ';
comment on column OK_HIST_RISE.RISE_DATE_DD
  is '���� ';

create index OK_HIST_RISE_UK on OK_HIST_RISE (BRANCH, PERSONAL_CODE, ID, IIAS_VDATE, IIAS_SYSDATE);




prompt Creating OK_HIST_VOYAGE...
create table OK_HIST_VOYAGE
(
  ID             NUMBER(8) not null,
  BRANCH         CHAR(5) not null,
  PERSONAL_CODE  NUMBER(9) not null,
  VOYAGE_DATE    NUMBER(4),
  VOYAGE_LAND    VARCHAR2(100),
  VOYAGE_INFO    VARCHAR2(255),
  EMP_CODE       NUMBER(6),
  INS_DATE       DATE,
  VOYAGE_STR     VARCHAR2(3),
  DATA_IN        NUMBER(4),
  VOYAGE_DATE_MM NUMBER(2),
  VOYAGE_DATE_DD NUMBER(2),
  DATA_IN_MM     NUMBER(2),
  DATA_IN_DD     NUMBER(2),
  IIAS_VDATE    date not null,
  IIAS_SYSDATE  date not null,
  IIAS_CODE  NUMBER(4) not null
)
;
comment on table OK_HIST_VOYAGE
  is '�������� � ���������� ��������';
comment on column OK_HIST_VOYAGE.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_HIST_VOYAGE.BRANCH
  is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_VOYAGE.PERSONAL_CODE
  is '��� ���������� � ���������.���������� �� ������� OK_HIST_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_VOYAGE.VOYAGE_DATE
  is '��� ���� �������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_VOYAGE.VOYAGE_LAND
  is '������ ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_VOYAGE.VOYAGE_INFO
  is '�������� � ���������� ��������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_HIST_VOYAGE.EMP_CODE
  is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_VOYAGE.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';
comment on column OK_HIST_VOYAGE.VOYAGE_STR
  is 'SS_OK_STR ��� ������ s_str ';
comment on column OK_HIST_VOYAGE.DATA_IN
  is '��� ����������� �� �������';
comment on column OK_HIST_VOYAGE.VOYAGE_DATE_MM
  is '����� ������';
comment on column OK_HIST_VOYAGE.VOYAGE_DATE_DD
  is '���� ������';
comment on column OK_HIST_VOYAGE.DATA_IN_MM
  is '����� �����������';
comment on column OK_HIST_VOYAGE.DATA_IN_DD
  is '���� �����������';

create index OK_HIST_VOYAGE_PK on OK_HIST_VOYAGE (BRANCH, PERSONAL_CODE, ID, IIAS_VDATE, IIAS_SYSDATE);

