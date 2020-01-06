create table okedb_appoints(
id number(10) not null,
branch varchar2(5) not null,
PERSONAL_CODE NUMBER(9) not null,
v_date date,
EMP_CODE NUMBER(6),
ins_date date,
state_code number(3),
comments varchar2(250),
DEPARTMENT_CODE NUMBER(9),
POST_CODE NUMBER(3),
SPECIAL_CODE NUMBER(3),
DEPARTMENT_CODE_NEW NUMBER(9),
POST_CODE_NEW NUMBER(3),
SPECIAL_CODE_NEW NUMBER(3),
FAMILY VARCHAR2(50),
FIRST_NAME VARCHAR2(50),
PATRONYMIC VARCHAR2(50),
BIRTHDAY DATE,
tabno number(9) 
);

ALTER TABLE okedb_appoints ADD CONSTRAINT okedb_appoints_PK
  PRIMARY KEY ( ID,branch,personal_code ) ;

create sequence okedb_appoints_seq order;

create or replace public synonym okedb_appoints for okedb_appoints;
create or replace public synonym okedb_appoints_seq for okedb_appoints_seq;

grant all on okedb_appoints to public;
grant all on okedb_appoints_seq to public;

select okedb_appoints_seq.nextval from dual;

comment on table okedb_appoints  is '�������� �� ����������� � ��';
comment on column okedb_appoints.ID  is '��������� �����	�������������  ������� � "1" ';
comment on column okedb_appoints.BRANCH  is '��� ���������	���������� �� �������S_MFO ���� ID ';
comment on column okedb_appoints.PERSONAL_CODE  is '��� ���������� � ���������';
comment on column okedb_appoints.V_DATE  is '���� ����';
comment on column okedb_appoints.EMP_CODE  is '��� ������������	���������� �� ������� USERS  ����  ID ';
comment on column okedb_appoints.INS_DATE  is '���� � ����� ����� ������	SYSDATE ';

comment on column okedb_appoints.state_code   is '��� SS_OK_GOSUBMIT';
comment on column okedb_appoints.comments   is '�����������';
comment on column okedb_appoints.DEPARTMENT_CODE   is '�����';
comment on column okedb_appoints.POST_CODE   is '���������';
comment on column okedb_appoints.SPECIAL_CODE   is '�������������';

-- ��� �������� ��������� ��� � ������� ���� ����� �� ��� ���������
-- � ������� ����� ������ ���� ������. ���� ������ ��� �� �����������, ����� �� ��������.
-- ���� ����� �� ���� �� ���������� ��� ������ �� ���������� 
--(������� ����-���� ��� ��� ��� �� �����) ���������� � ��������� � �����


create table okedb_appoints_arh(
id number(10) not null,
branch varchar2(5) not null,
PERSONAL_CODE NUMBER(9) not null,
v_date date,
EMP_CODE NUMBER(6),
ins_date date,
state_code number(3),
comments varchar2(250),
DEPARTMENT_CODE NUMBER(9),
POST_CODE NUMBER(3),
SPECIAL_CODE NUMBER(3),
DEPARTMENT_CODE_NEW NUMBER(9),
POST_CODE_NEW NUMBER(3),
SPECIAL_CODE_NEW NUMBER(3),
FAMILY VARCHAR2(50),
FIRST_NAME VARCHAR2(50),
PATRONYMIC VARCHAR2(50),
BIRTHDAY DATE, 
tabno number(9)
);

ALTER TABLE okedb_appoints_arh ADD CONSTRAINT okedb_appoints_arh_PK
  PRIMARY KEY ( ID,branch,personal_code ) ;

create or replace public synonym okedb_appoints_arh for okedb_appoints_arh;
