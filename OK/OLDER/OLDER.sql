-- ����������� �� �� (DROP � CREATE)
-- ���������� ���������� --
--------------------------------------------------

create table ss_ok_post(
POST_ID	number (8)     not null,	--��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������
POST_CODE 	number (3) not null,	--��� ���������	���������� � "1" ��� ������ ������� "��������" ������� ����, ������������ ��� ����������
POST_NAME 	VARCHAR2(80) not null,	--������������ ���������	�������� � ����������, ������� ����, ������������ ��� ����������
level_department_code number(1) not null,
STATE_NOTES 	CHAR(1) not null,	--������� ���������� ������A - �������� ������P - ��������� ������	�������� � ����������, ������� ����, �� ��������� �������� �������  -� -�������� ������
EMP_CODE 	NUMBER(6) not null,	--��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, �� ������� ����, ������������ ��� ����������
INS_date 	date not null	--���� � �����  ����� ���������� 	SYSdate not null, �� ������� ����, ������������ ��� ����������
) ;

comment on table ss_ok_post is '���������� ����������';
comment on column ss_ok_post.POST_ID	is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column ss_ok_post.POST_CODE 	is	'��� ���������	���������� � "1" ��� ������ ������� "��������" ������� ����, ������������ ��� ����������';
comment on column ss_ok_post.POST_NAME 	is	'������������ ���������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column ss_ok_post.level_department_code is '��� ������� �������������';
comment on column ss_ok_post.STATE_NOTES 	is '������� ���������� ������A - �������� ������P - ��������� ������	�������� � ����������, ������� ����, �� ��������� �������� �������  -� -�������� ������';
comment on column ss_ok_post.EMP_CODE 	is	'��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, �� ������� ����, ������������ ��� ����������';
comment on column ss_ok_post.INS_date 	is	'���� � �����  ����� ���������� 	SYSdate not null, �� ������� ����, ������������ ��� ����������';

ALTER TABLE SS_OK_POST ADD CONSTRAINT SS_OK_POST_PK
  PRIMARY KEY ( POST_CODE, STATE_NOTES ) ;


CREATE SEQUENCE SEQ_SS_OK_POST
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20  NOCYCLE
 NOORDER
;

--select seq_ss_ok_POST.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_POST_SEQ
 BEFORE 
 INSERT
 ON SS_OK_POST
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_POST.NEXTVAL into new_ID from dual;
   :NEW.POST_ID:=new_ID;
END;
/
ALTER TABLE SS_OK_POST ADD CONSTRAINT SS_OK_POST_UK
  UNIQUE ( POST_CODE ) ;


ALTER TABLE SS_OK_POST ADD CONSTRAINT SS_OK_POST_CHK_CODE
  CHECK (post_code>0);


-- ���������� ����������� --
-----------------------------------------------------------

create table SS_OK_EDUCATION(
EDUCATION_ID	number (8) not null, --, --	��������� �����	�������������  ������� � "1", �� ������� ����
EDUCATION_CODE	number (3) not null, --, --	��� ����������� 	������������� ������� � "1" ��� ������ ������� "��������"
EDUCATION_NAME	VARCHAR2(20) not null, --, --	������������ �����������	�������� � ����������
STATE_NOTES CHAR(1) not null, --	������� ���������� ������A - �������� ������P - ��������� ������	�������� � ����������, ������� ����, �� ��������� �������� �������  -� -�������� ������
EMP_CODE 	NUMBER(6) not null, --��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID
INS_date 	date not null	-- ���� � �����  ����� ��-� 	SYSdate not null
) ;

comment on table SS_OK_EDUCATION is '���������� �����������';
comment on column SS_OK_EDUCATION.EDUCATION_ID	is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_EDUCATION.EDUCATION_CODE is '��� ����������� 	������������� ������� � "1" ��� ������ ������� "��������"';
comment on column SS_OK_EDUCATION.EDUCATION_NAME is '������������ �����������	�������� � ����������';
comment on column SS_OK_EDUCATION.STATE_NOTES is '������� ���������� ������A - �������� ������P - ��������� ������	�������� � ����������, ������� ����, �� ��������� �������� �������  -� -�������� ������';
comment on column SS_OK_EDUCATION.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID';
comment on column SS_OK_EDUCATION.INS_date is '���� � �����  ����� ��-� 	SYSdate not null';

ALTER TABLE SS_OK_Education ADD CONSTRAINT SS_OK_Education_PK
  PRIMARY KEY ( Education_code, state_notes ) ;


CREATE SEQUENCE SEQ_SS_OK_Education
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_Education.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_Education_SEQ
 BEFORE 
 INSERT
 ON SS_OK_Education
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_Education.NEXTVAL into new_ID from dual;
   :NEW.Education_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_Education ADD CONSTRAINT SS_OK_Education_UK
  UNIQUE ( Education_CODE ) ;

ALTER TABLE SS_OK_education ADD CONSTRAINT SS_OK_education_CHK_CODE
  CHECK (education_code>0);

-- ������� ��������� --
------------------------------------------------------------

create table SS_OK_INSTITUTION( --  ����������  ������� ��������� - �������� � ����������.  ���� � ���������� � ������� ����������
INSTITUTION_ID	number (8) not null, --, --	��������� �����	�������������  ������� � "1"
INSTITUTION_CODE	NUMBER (5) not null, --, --	��� �������� ���������	������������� ������� � "1" ��� ������ ������� "��������"
INSTITUTION_NAME 	VARCHAR2(100) not null, --, --	������ ������������ �������� ���������	�������� � ����������
INSTITUTION_ABBREVIATION	VARCHAR2(10) not null, --, --	����������� ������������ �������� ���������	�������� � ����������
INSTITUTION_PLACE	VARCHAR2(200) not null, --, --	����� ����������
EDUCATION_CODE 	number (3) not null, --, --	���  ����������� 	���������� �� ����������� SS_OK_EDUCATION, ����   EDUCATION_CODE
STATE_NOTES CHAR(1) not null, --	������� ���������� ������A - �������� ������P - ��������� ������	�������� � ����������, ������� ����, �� ��������� �������� �������  -� -�������� ������
EMP_CODE 	NUMBER(6) not null, --, --	��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID
INS_date 	date not null	-- ���� � �����  ����� ���������� 	SYSdate not null
) ;

comment on table SS_OK_INSTITUTION is '���������� ������� ���������';
comment on column SS_OK_INSTITUTION.INSTITUTION_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_INSTITUTION.INSTITUTION_CODE is '��� �������� ���������	�������������  ������� � "1" ��� ������ ������� "��������"';
comment on column SS_OK_INSTITUTION.INSTITUTION_NAME is '������ ������������ �������� ���������	�������� � ����������';
comment on column SS_OK_INSTITUTION.INSTITUTION_ABBREVIATION is '����������� ������������ �������� ���������	�������� � ����������';
comment on column SS_OK_INSTITUTION.INSTITUTION_PLACE is '����� ����������';
comment on column SS_OK_INSTITUTION.EDUCATION_CODE is '���  ����������� 	���������� �� ����������� SS_OK_EDUCATION, ����   EDUCATION_CODE';
comment on column SS_OK_INSTITUTION.STATE_NOTES is '������� ������: A - ��������, P - ��������� �������� � ����������, ������� ����, �� ��������� �������� �������  -� -�������� ������';
comment on column SS_OK_INSTITUTION.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID';
comment on column SS_OK_INSTITUTION.INS_date is '���� � ����� ����� ���������� SYSdate not null';

ALTER TABLE SS_OK_Institution ADD CONSTRAINT SS_OK_Institution_PK
  PRIMARY KEY ( institution_code, state_notes ) ;


CREATE SEQUENCE SEQ_SS_OK_Institution
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_Institution.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_Institution_SEQ
 BEFORE 
 INSERT
 ON SS_OK_Institution
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_Institution.NEXTVAL into new_ID from dual;
   :NEW.Institution_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_Institution ADD CONSTRAINT SS_OK_Institution_UK
  UNIQUE ( Institution_CODE ) ;

ALTER TABLE SS_OK_Institution ADD CONSTRAINT SS_OK_Institution_CHK_CODE
  CHECK (Institution_code>0);

-- ���������� --
------------------------------------------------------------

create table SS_OK_NATIONALITY( -- ���������� ��������������� - ���� � ���������� � ������� ����������
NATIONALITY_ID	number(8) not null, --, -- ��������� �����	�������������  ������� � "1", ��������� ���� ������������ ��� ����������
NATIONALITY_CODE 	number(3) not null, --, --	��� �������������� 	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������
NATIONALITY_NAME	VARCHAR2(20) not null, --, --	������������ ��������������	�������� � ����������, ������� ���� , ������������ ��� ����������
STATE_NOTES CHAR(1) not null, --	������� ���������� ������A - �������� ������P - ��������� ������	�������� � ����������, ������� ����, �� ��������� �������� �������  -� -�������� ������
EMP_CODE 	NUMBER(6) not null, --, --	��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������
INS_date 	date not null --	���� � �����  ����� ���������� 	SYSdate not null, ��������� ���� , ������������ ��� ����������
) ;

comment on table SS_OK_NATIONALITY is '���������� ���������������';
comment on column SS_OK_NATIONALITY.NATIONALITY_ID	is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_NATIONALITY.NATIONALITY_CODE is '��� �������������� 	������������� ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_NATIONALITY.NATIONALITY_NAME is '������������ ��������������	�������� � ����������, ������� ���� , ������������ ��� ����������';
comment on column SS_OK_NATIONALITY.STATE_NOTES is '������� ���������� A - �������� P - ��������� �������� � ����������, ������� ����, �� ��������� �������� �������  -� -�������� ������';
comment on column SS_OK_NATIONALITY.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_NATIONALITY.INS_date is '���� � �����  ����� ���������� 	SYSdate not null, ��������� ���� , ������������ ��� ����������';

ALTER TABLE SS_OK_NATIONALITY ADD CONSTRAINT SS_OK_NATIONALITY_PK
  PRIMARY KEY ( NATIONALITY_CODE, STATE_NOTES ) ;


CREATE SEQUENCE SEQ_SS_OK_NATIONALITY
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_NATIONALITY.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_NATIONALITY_SEQ
 BEFORE 
 INSERT
 ON SS_OK_NATIONALITY
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_NATIONALITY.NEXTVAL into new_ID from dual;
   :NEW.NATIONALITY_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_NATIONALITY ADD CONSTRAINT SS_OK_NATIONALITY_UK
  UNIQUE ( NATIONALITY_CODE ) ;

ALTER TABLE SS_OK_NATIONALITY ADD CONSTRAINT SS_OK_NATIONALITY_CHK_CODE
  CHECK (NATIONALITY_code>0);

-- ���������� --
------------------------------------------------------------

create table SS_OK_PARTY( -- ���������� ������������������ ������. ���� � ���������� � ������� ����������.
PARTY_ID	number (8) not null, --, --	��������� �����	�������������  ������� � "01", ��������� ���� ������������ ��� ����������
PARTY_CODE	NUMBER (2) not null, --, --	��� �����������	������������� ������� � "1" ��� ������ ������� "��������", ������� ���� ������������ ��� ����������
PARTY_ABBREVIATION	VARCHAR2(10) not null, --, --	����������� �������� ������	�������� � ����������, ������� ����  �������������� ��� ����������
PARTY_NAME	VARCHAR2(60) not null, --, --	������ ������������ ������	�������� � ����������, ������� ���� ������������ ��� ����������
STATE_NOTES CHAR(1) not null, --	'������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� �������  -� -��������'
EMP_CODE	NUMBER(6) not null, --, --	��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������
INS_date	date not null --	���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������
) ;

comment on table SS_OK_PARTY is '���������� ������������������ ������';
comment on column SS_OK_PARTY.PARTY_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_PARTY.PARTY_CODE is '��� �����������	������������� ������� � "1" ��� ������ ������� "��������", ������� ���� ������������ ��� ����������';
comment on column SS_OK_PARTY.PARTY_ABBREVIATION is '����������� �������� ������	�������� � ����������, ������� ����  �������������� ��� ����������';
comment on column SS_OK_PARTY.PARTY_NAME is '������ ������������ ������	�������� � ����������, ������� ���� ������������ ��� ����������';
comment on column SS_OK_PARTY.STATE_NOTES is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_PARTY.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_PARTY.INS_date is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';

ALTER TABLE SS_OK_PARTY ADD CONSTRAINT SS_OK_PARTY_PK
  PRIMARY KEY ( PARTY_CODE, STATE_NOTES )  ;


CREATE SEQUENCE SEQ_SS_OK_PARTY
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_PARTY.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_PARTY_SEQ
 BEFORE 
 INSERT
 ON SS_OK_PARTY
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_PARTY.NEXTVAL into new_ID from dual;
   :NEW.PARTY_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_PARTY ADD CONSTRAINT SS_OK_PARTY_UK
  UNIQUE ( PARTY_CODE ) ;

ALTER TABLE SS_OK_PARTY ADD CONSTRAINT SS_OK_PARTY_CHK_CODE
  CHECK (PARTY_code>0);

-- ���������� --
------------------------------------------------------------

create table SS_OK_DEGREE( -- ���������� ������ ��������. ����������� ��� ����� ���������� � ������������ � �������� �����.
DEGREE_ID	number (8) not null, --, --	��������� �����	�������������  ������� � "1", ��������� ���� ������������ ��� ����������
DEGREE_CODE	NUMBER (1)  not null, --, --	��� ������ �������	������������� ������� � "1" ��� ������ ������� "��������", ������� ���� , ������������ ��� ����������
DEGREE_NAME	VARCHAR2(50) not null, --, --	������������ ������ �������	�������� � ����������, ������� ����, ������������ ��� ����������
STATE_NOTES CHAR(1) not null, --	'������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� �������  -� -��������'
EMP_CODE	NUMBER (6) not null, --, --	��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������
INS_date	date not null --	���� � �����  �����  ������	SYSdate not null, ��������� ���� ������������ ��� ����������
) ;

comment on table  SS_OK_DEGREE is '���������� ������ ��������';
comment on column SS_OK_DEGREE.DEGREE_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_DEGREE.DEGREE_CODE is '��� ������ �������	������������� ������� � "1" ��� ������ ������� "��������", ������� ���� , ������������ ��� ����������';
comment on column SS_OK_DEGREE.DEGREE_NAME is '������������ ������ �������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_DEGREE.STATE_NOTES is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_DEGREE.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_DEGREE.INS_date is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';

ALTER TABLE SS_OK_DEGREE ADD CONSTRAINT SS_OK_DEGREE_PK
  PRIMARY KEY ( DEGREE_CODE, STATE_NOTES ) ;


CREATE SEQUENCE SEQ_SS_OK_DEGREE
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_DEGREE.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_DEGREE_SEQ
 BEFORE 
 INSERT
 ON SS_OK_DEGREE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_DEGREE.NEXTVAL into new_ID from dual;
   :NEW.DEGREE_ID:=new_ID;
END;
/
ALTER TABLE SS_OK_DEGREE ADD CONSTRAINT SS_OK_DEGREE_UK
  UNIQUE ( DEGREE_CODE ) ;
ALTER TABLE SS_OK_DEGREE ADD CONSTRAINT SS_OK_DEGREE_CHK_CODE
  CHECK (DEGREE_code>0);

-- ���������� --
------------------------------------------------------------

create table SS_OK_ACADEMIC( -- ���������� ������ ������. ����������� ��� ����� ���������� � ������������ � �������� �����.
ACADEMIC_ID	number (8) not null, --, --	��������� �����	�������������  ������� � "1", ��������� ���� ������������ ��� ����������
ACADEMIC_CODE 	NUMBER (2) not null, --, --	��� ������� ������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������
ACADEMIC_NAME	VARCHAR2(50) not null, --, -- 	������������ ������� ������	�������� � ����������, ������� ���� ������������ ��� ����������
STATE_NOTES CHAR(1) not null, --	'������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� �������  -� -��������'
EMP_CODE 	NUMBER (6) not null, --, --	��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ���� ������������ ��� ����������
INS_date 	date not null --	���� � �����  �����  ������	SYSdate not null, ��������� ����, ������������ ��� ����������
) ;

comment on table  SS_OK_ACADEMIC is '���������� ������ ������';
comment on column SS_OK_ACADEMIC.ACADEMIC_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_ACADEMIC.ACADEMIC_CODE is '��� ������� ������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_ACADEMIC.ACADEMIC_NAME is '������������ ������� ������	�������� � ����������, ������� ���� ������������ ��� ����������';
comment on column SS_OK_ACADEMIC.STATE_NOTES is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_ACADEMIC.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_ACADEMIC.INS_date is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';

ALTER TABLE SS_OK_ACADEMIC ADD CONSTRAINT SS_OK_ACADEMIC_PK
  PRIMARY KEY ( ACADEMIC_CODE, STATE_NOTES ) ;


CREATE SEQUENCE SEQ_SS_OK_ACADEMIC
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_ACADEMIC.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_ACADEMIC_SEQ
 BEFORE 
 INSERT
 ON SS_OK_ACADEMIC
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_ACADEMIC.NEXTVAL into new_ID from dual;
   :NEW.ACADEMIC_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_ACADEMIC ADD CONSTRAINT SS_OK_ACADEMIC_UK
  UNIQUE ( ACADEMIC_CODE ) ;
ALTER TABLE SS_OK_ACADEMIC ADD CONSTRAINT SS_OK_ACADEMIC_CHK_CODE
  CHECK (ACADEMIC_code>0);

-- ���������� --
------------------------------------------------------------

create table SS_OK_LANGUAGE( -- ���������� ������ ����������� � ���������� �� ���� �����
LANGUAGE_ID	NUMBER (8) not null, --,	-- ��������� �����	�������������  ������� � "1", ��������� ����, ������������ ��� ����������
LANGUAGE_CODE 	number (3) not null, --,	-- ��� ������������ ����� 	�������������  ������� � "1" ��� ������ ������� "��������", ������� ���� ������������ ��� ����������
LANGUAGE_NAME	VARCHAR2(20) not null, --, --	������������ ������������ �����	�������� � ����������, ������� ����, ������������ ��� ����������
STATE_NOTES CHAR(1) not null, --	'������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� �������  -� -��������'
EMP_CODE 	NUMBER(6) not null, --, --	��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������
INS_date 	date not null --	���� � �����  ����� ������  	SYSdate not null, ��������� ����, ������������ ��� ����������
) ;

comment on table  SS_OK_LANGUAGE is '���������� ������';
comment on column SS_OK_LANGUAGE.LANGUAGE_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_LANGUAGE.LANGUAGE_CODE is '��� ������������ ����� 	�������������  ������� � "1" ��� ������ ������� "��������", ������� ���� ������������ ��� ����������';
comment on column SS_OK_LANGUAGE.LANGUAGE_NAME is '������������ ������������ �����	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_LANGUAGE.STATE_NOTES is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_LANGUAGE.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_LANGUAGE.INS_date is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';

ALTER TABLE SS_OK_LANGUAGE ADD CONSTRAINT SS_OK_LANGUAGE_PK
  PRIMARY KEY ( LANGUAGE_CODE, STATE_NOTES ) ;


CREATE SEQUENCE SEQ_SS_OK_LANGUAGE
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_LANGUAGE.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_LANGUAGE_SEQ
 BEFORE 
 INSERT
 ON SS_OK_LANGUAGE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_LANGUAGE.NEXTVAL into new_ID from dual;
   :NEW.LANGUAGE_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_LANGUAGE ADD CONSTRAINT SS_OK_LANGUAGE_UK
  UNIQUE ( LANGUAGE_CODE ) ;
ALTER TABLE SS_OK_LANGUAGE ADD CONSTRAINT SS_OK_LANGUAGE_CHK_CODE
  CHECK (LANGUAGE_code>0);

-- ���������� --
------------------------------------------------------------

create table SS_OK_LEVEL_LANGUAGE( -- ������� ������ ����������� ������
LEVEL_LANGUAGE_ID	number (8) not null, --,	--��������� �����	�������������  ������� � "1", ��������� ���� ������������ ��� ����������
LEVEL_LANGUAGE_CODE NUMBER (1) not null, --,	--��� ������ ������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ���� ������������ ��� ����������
LEVEL_LANGUAGE_NAME	VARCHAR2(40) not null, --, --	������������ ������ ������	�������� � ����������, ������� ����, ������������ ��� ����������
STATE_NOTES CHAR(1) not null, --	'������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� �������  -� -��������'
EMP_CODE 	NUMBER (6) not null, --,	--��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������
INS_date 	date not null --	���� � �����  �����  ������  	SYSdate not null, ��������� ���� , ������������ ��� ����������
) ;

comment on table  SS_OK_LEVEL_LANGUAGE is '���������� ������ ����������� ������';
comment on column SS_OK_LEVEL_LANGUAGE.LEVEL_LANGUAGE_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_LEVEL_LANGUAGE.LEVEL_LANGUAGE_CODE is '��� ������ ������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ���� ������������ ��� ����������';
comment on column SS_OK_LEVEL_LANGUAGE.LEVEL_LANGUAGE_NAME is '������������ ������ ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_LEVEL_LANGUAGE.STATE_NOTES is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_LEVEL_LANGUAGE.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_LEVEL_LANGUAGE.INS_date is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';

ALTER TABLE SS_OK_LEVEL_LANGUAGE ADD CONSTRAINT SS_OK_LEVEL_LANGUAGE_PK
  PRIMARY KEY ( LEVEL_LANGUAGE_CODE, STATE_NOTES ) ;


CREATE SEQUENCE SEQ_SS_OK_LEVEL_LANGUAGE
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_LEVEL_LANGUAGE.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_LEVEL_LANGUAGE_SEQ
 BEFORE 
 INSERT
 ON SS_OK_LEVEL_LANGUAGE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_LEVEL_LANGUAGE.NEXTVAL into new_ID from dual;
   :NEW.LEVEL_LANGUAGE_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_LEVEL_LANGUAGE ADD CONSTRAINT SS_OK_LEVEL_LANGUAGE_UK
  UNIQUE ( LEVEL_LANGUAGE_CODE ) ;
ALTER TABLE SS_OK_LEVEL_LANGUAGE ADD CONSTRAINT SS_OK_LEVEL_LANGUAGE_CHK_CODE
  CHECK (LEVEL_LANGUAGE_code>0);

-- ���������� --
------------------------------------------------------------

create table SS_OK_TYPE_PERIOD( -- ���������� ����� �����
TYPE_PERIOD_ID	number (8) not null, --,	--��������� �����	�������������  ������� � "1", ��������� ����, ������������ ��� ����������
TYPE_PERIOD_CODE 	NUMBER (2) not null, --,	--��� ���� �����	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������
TYPE_PERIOD_NAME	VARCHAR2(80) not null, --, --	������������ �����  (����������� � �.�.) not null, --	�������� � ����������, ������� ����, ������������ ��� ����������
STATE_NOTES CHAR(1) not null, --	'������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� �������  -� -��������'
EMP_CODE 	NUMBER (6) not null, --,	--��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������
INS_date 	date not null --	���� � �����  ����� ������	SYSdate not null, ��������� ����, ������������ ��� ����������
) ;

comment on table  SS_OK_TYPE_PERIOD is '���������� ����� �����';
comment on column SS_OK_TYPE_PERIOD.TYPE_PERIOD_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_TYPE_PERIOD.TYPE_PERIOD_CODE is '��� ���� �����	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_TYPE_PERIOD.TYPE_PERIOD_NAME is '������������ �����  (����������� � �.�.) not null, --	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_TYPE_PERIOD.STATE_NOTES is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_TYPE_PERIOD.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_TYPE_PERIOD.INS_date is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';

ALTER TABLE SS_OK_TYPE_PERIOD ADD CONSTRAINT SS_OK_TYPE_PERIOD_PK
  PRIMARY KEY ( TYPE_PERIOD_CODE, STATE_NOTES ) ;


CREATE SEQUENCE SEQ_SS_OK_TYPE_PERIOD
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_TYPE_PERIOD.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_TYPE_PERIOD_SEQ
 BEFORE 
 INSERT
 ON SS_OK_TYPE_PERIOD
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_TYPE_PERIOD.NEXTVAL into new_ID from dual;
   :NEW.TYPE_PERIOD_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_TYPE_PERIOD ADD CONSTRAINT SS_OK_TYPE_PERIOD_UK
  UNIQUE ( TYPE_PERIOD_CODE ) ;
ALTER TABLE SS_OK_TYPE_PERIOD ADD CONSTRAINT SS_OK_TYPE_PERIOD_CHK_CODE
  CHECK (TYPE_PERIOD_code>0);

-- ���������� --
------------------------------------------------------------

create table SS_OK_RELATION( -- ���������� ����������� ��������� - 10 ��������. ����������� ��� ����� � ������������
RELATION_ID	number (8) not null,  --	��������� �����	�������������  ������� � "1", ��������� ����, ������������ ��� ����������
RELATION_CODE 	NUMBER (2) not null, --	��� ������������ ���������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������
RELATION_NAME	VARCHAR2 (10) not null,  -- 	������������ ������������ ���������	�������� � ����������, ������� ����, ������������ ��� ����������
STATE_NOTES CHAR(1) not null, --	'������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� �������  -� -��������'
EMP_CODE 	NUMBER (6) not null, --, --	��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������
INS_date 	date not null --	���� � �����  ����� ���������� 	SYSdate not null, ��������� ����, ������������ ��� ����������
) ;

comment on table  SS_OK_RELATION is '���������� ����������� ���������';
comment on column SS_OK_RELATION.RELATION_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_RELATION.RELATION_CODE is '��� ������������ ���������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_RELATION.RELATION_NAME is '������������ ������������ ���������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_RELATION.STATE_NOTES is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_RELATION.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_RELATION.INS_date is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';

ALTER TABLE SS_OK_RELATION ADD CONSTRAINT SS_OK_RELATION_PK
  PRIMARY KEY ( RELATION_CODE, STATE_NOTES ) ;


CREATE SEQUENCE SEQ_SS_OK_RELATION
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_RELATION.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_RELATION_SEQ
 BEFORE 
 INSERT
 ON SS_OK_RELATION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_RELATION.NEXTVAL into new_ID from dual;
   :NEW.RELATION_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_RELATION ADD CONSTRAINT SS_OK_RELATION_UK
  UNIQUE ( RELATION_CODE ) ;
ALTER TABLE SS_OK_RELATION ADD CONSTRAINT SS_OK_RELATION_CHK_CODE
  CHECK (RELATION_code>0);

-- ��������� ���������� --
------------------------------------------------------------

create table SS_OK_FAMILY_STATUS (-- ��������� ���������� "�������� ���������"
FAMILY_STATUS_CODE 	NUMBER (1) not null, --	��� ��������� ���������	1 - �����2 - ������3 - �������4 - ���������
GENDER_CODE        	NUMBER (1) not null,
FAMILY_STATUS_NAME	VARCHAR2(10) not null -- 	������������ ��������� ���������	����������� ��������������
) ;

comment on table  SS_OK_FAMILY_STATUS is '��������� ���������� "�������� ���������"';
comment on column SS_OK_FAMILY_STATUS.GENDER_CODE is '���';
comment on column SS_OK_FAMILY_STATUS.FAMILY_STATUS_CODE is '��� ��������� ���������	1 - �����2 - ������3 - �������4 - ���������';
comment on column SS_OK_FAMILY_STATUS.FAMILY_STATUS_NAME is '������������ ��������� ���������	����������� ��������������';

ALTER TABLE SS_OK_FAMILY_STATUS ADD CONSTRAINT SS_OK_FAMILY_STATUS_PK
  PRIMARY KEY ( FAMILY_STATUS_CODE, GENDER_CODE ) ;

insert into SS_OK_FAMILY_STATUS select 1,1, '�����' from dual;
insert into SS_OK_FAMILY_STATUS select 2,1, '������' from dual;
insert into SS_OK_FAMILY_STATUS select 3,2, '�������' from dual;
insert into SS_OK_FAMILY_STATUS select 4,2, '���������' from dual;

-- select * from SS_OK_FAMILY_STATUS;

-- ���������� --
------------------------------------------------------------

create table SS_OK_QUALIFICATION(  -- ���������� ������������
QUALIFICATION_ID	number (8) not null, --	��������� �����	�������������  ������� � "1", ��������� ����, ������������ ��� ����������
QUALIFICATION_CODE 	NUMBER (2) not null, --	��� ������������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������
QUALIFICATION_NAME 	VARCHAR2(50) not null, -- 	������������  ������������ (������� � �.�) not null, --	�������� � ����������, ������� ����, ������������ ��� ����������
STATE_NOTES CHAR(1) not null, --	'������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� �������  -� -��������'
EMP_CODE 	NUMBER(6) not null, --	��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������
INS_date 	date not null --	���� � �����  ����� ������ 	SYSdate not null, ��������� ����, ������������ ��� ����������
) ;

comment on table  SS_OK_QUALIFICATION is '���������� ������������';
comment on column SS_OK_QUALIFICATION.QUALIFICATION_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_QUALIFICATION.QUALIFICATION_CODE is '��� ������������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_QUALIFICATION.QUALIFICATION_NAME is '������������  ������������ (������� � �.�) not null, --	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_QUALIFICATION.STATE_NOTES is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_QUALIFICATION.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_QUALIFICATION.INS_date is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';

ALTER TABLE SS_OK_QUALIFICATION ADD CONSTRAINT SS_OK_QUALIFICATION_PK
  PRIMARY KEY ( QUALIFICATION_CODE, STATE_NOTES ) ;


CREATE SEQUENCE SEQ_SS_OK_QUALIFICATION
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_QUALIFICATION.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_QUALIFICATION_SEQ
 BEFORE 
 INSERT
 ON SS_OK_QUALIFICATION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_QUALIFICATION.NEXTVAL into new_ID from dual;
   :NEW.QUALIFICATION_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_QUALIFICATION ADD CONSTRAINT SS_OK_QUALIFICATION_UK
  UNIQUE ( QUALIFICATION_CODE ) ;
ALTER TABLE SS_OK_QUALIFICATION ADD CONSTRAINT SS_OK_QUALIFICATION_CHK_CODE
  CHECK (QUALIFICATION_code>0);

-- ��������� ���������� --
------------------------------------------------------------

create table SS_OK_ARMY( -- ��������� � ������� ������
ARMY_ID	number (8) not null, --	��������� �����	�������������  ������� � "1", ��������� ����, ������������ ��� ����������
ARMY_code	NUMBER (1) not null, --	��� ���� ���������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������
ARMY_TYPE	VARCHAR2(20) not null -- 	��� ��������� 1 - ���������������2 - �� ���������������	�������� � ����������, ������� ����, ������������ ��� ����������
) ;

comment on table  SS_OK_ARMY is '���������� ��������� � ������� ������';
comment on column SS_OK_ARMY.ARMY_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_ARMY.ARMY_code is '��� ���� ���������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_ARMY.ARMY_TYPE is '��� ��������� 1 - ���������������2 - �� ���������������	�������� � ����������, ������� ����, ������������ ��� ����������';

ALTER TABLE SS_OK_ARMY ADD CONSTRAINT SS_OK_ARMY_PK
  PRIMARY KEY ( ARMY_ID ) ;


CREATE SEQUENCE SEQ_SS_OK_ARMY
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_ARMY.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_ARMY_SEQ
 BEFORE 
 INSERT
 ON SS_OK_ARMY
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_ARMY.NEXTVAL into new_ID from dual;
   :NEW.ARMY_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_ARMY ADD CONSTRAINT SS_OK_ARMY_UK
  UNIQUE ( ARMY_CODE ) ;
ALTER TABLE SS_OK_ARMY ADD CONSTRAINT SS_OK_ARMY_CHK_CODE
  CHECK (ARMY_code>0);

insert into SS_OK_ARMY select 1,1,'���������������' from dual;
insert into SS_OK_ARMY select 2,2,'�� ���������������' from dual;

-- ���������� --
------------------------------------------------------------

create table SS_OK_fitness_ARMY( -- ��������� ���������� ����������� � ������� ������
fitness_ARMY_ID	number (8) not null, --	��������� �����	�������������  ������� � "1", ��������� ����, ������������ ��� ����������
fitness_ARMY_code	NUMBER (1) not null, --	��� ���� ���������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������
fitness_ARMY_TYPE	VARCHAR2(20) not null -- 	��� ��������� 1 - ����� 2 -�� �����	�������� � ����������, ������� ����, ������������ ��� ����������
) ;

comment on table  SS_OK_FITNESS_ARMY is '��������� ���������� ����������� � ������� ������';
comment on column SS_OK_FITNESS_ARMY.FITNESS_ARMY_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_FITNESS_ARMY.fitness_ARMY_code is '��� ���� ���������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_FITNESS_ARMY.fitness_ARMY_TYPE is '��� ��������� 1 - ����� 2 -�� �����	�������� � ����������, ������� ����, ������������ ��� ����������';

ALTER TABLE SS_OK_fitness_ARMY ADD CONSTRAINT SS_OK_fitness_ARMY_PK
  PRIMARY KEY ( fitness_ARMY_ID ) ;


CREATE SEQUENCE SEQ_SS_OK_fitness_ARMY
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_fitness_ARMY.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_fitness_ARMY_SEQ
 BEFORE 
 INSERT
 ON SS_OK_fitness_ARMY
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_fitness_ARMY.NEXTVAL into new_ID from dual;
   :NEW.fitness_ARMY_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_fitness_ARMY ADD CONSTRAINT SS_OK_fitness_ARMY_UK
  UNIQUE ( fitness_ARMY_CODE ) ;
ALTER TABLE SS_OK_fitness_ARMY ADD CONSTRAINT SS_OK_fitness_ARMY_CHK_CODE
  CHECK (fitness_ARMY_code>0);

insert into SS_OK_fitness_ARMY select 1,1,'�����' from dual;
insert into SS_OK_fitness_ARMY select 2,2,'�� �����' from dual;

-- ���������� --
------------------------------------------------------------

create table SS_OK_LEAVE( -- C��������� ����� ��������
LEAVE_ID	number (8) not null, --	��������� �����	�������������  ������� � "1", ��������� ����, ������������ ��� ����������
LEAVE_CODE 	NUMBER (2) not null, --	��� ���� �������	�������������  ������� � "1" ��� ������ ������� "��������",  ������� ����, ������������ ��� ����������
LEAVE_Name	VARCHAR2(50) not null, -- 	��� ���������������, ������� � �.�.	�������� � ����������, ������� ����, ������������ ��� ����������
STATE_NOTES CHAR(1) not null, --	'������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� �������  -� -��������'
EMP_CODE 	NUMBER(6) not null, --	��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������
INS_date 	date not null --	���� � �����  ����� ������ 	SYSdate not null, ��������� ����, ������������ ��� ����������
) ;

comment on table  SS_OK_LEAVE is '���������� ����� ��������';
comment on column SS_OK_LEAVE.LEAVE_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_LEAVE.LEAVE_CODE is '��� ���� �������	�������������  ������� � "1" ��� ������ ������� "��������",  ������� ����, ������������ ��� ����������';
comment on column SS_OK_LEAVE.LEAVE_Name is '��� ���������������, ������� � �.�.	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_LEAVE.STATE_NOTES is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_LEAVE.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_LEAVE.INS_date is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';

ALTER TABLE SS_OK_LEAVE ADD CONSTRAINT SS_OK_LEAVE_PK
  PRIMARY KEY ( LEAVE_CODE, STATE_NOTES ) ;


CREATE SEQUENCE SEQ_SS_OK_LEAVE
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_LEAVE.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_LEAVE_SEQ
 BEFORE 
 INSERT
 ON SS_OK_LEAVE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_LEAVE.NEXTVAL into new_ID from dual;
   :NEW.LEAVE_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_LEAVE ADD CONSTRAINT SS_OK_LEAVE_UK
  UNIQUE ( LEAVE_CODE ) ;
ALTER TABLE SS_OK_LEAVE ADD CONSTRAINT SS_OK_LEAVE_CHK_CODE
  CHECK (LEAVE_code>0);

-- ���������� --
------------------------------------------------------------

create table SS_OK_MOTIVE_DISMISSIAL( -- ���������� ��������� ������ ����������
MOTIVE_DISMISSIAL_ID	number (8) not null, --	��������� �����	�������������  ������� � "1", ��������� ����, ������������ ��� ����������
MOTIVE_DISMISSIAL_CODE 	NUMBER (2) not null, --	��� ������� ����������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������
MOTIVE_DISMISSIAL_NAME 	VARCHAR2(80) not null, -- 	�����   ������� ����������	�������� � ����������, ������� ����, ������������ ��� ����������
STATE_NOTES CHAR(1) not null, --	'������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� �������  -� -��������'
EMP_CODE 	NUMBER(6) not null, --	��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������
INS_date 	date not null --	���� � �����  ����� ������	SYSdate not null, ��������� ����, ������������ ��� ����������
) ;

comment on table  SS_OK_MOTIVE_DISMISSIAL is '���������� ��������� ������ ����������';
comment on column SS_OK_MOTIVE_DISMISSIAL.MOTIVE_DISMISSIAL_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_MOTIVE_DISMISSIAL.MOTIVE_DISMISSIAL_CODE is '��� ������� ����������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_MOTIVE_DISMISSIAL.MOTIVE_DISMISSIAL_NAME is '�����   ������� ����������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_MOTIVE_DISMISSIAL.STATE_NOTES is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_MOTIVE_DISMISSIAL.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_MOTIVE_DISMISSIAL.INS_date is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';

ALTER TABLE SS_OK_MOTIVE_DISMISSIAL ADD CONSTRAINT SS_OK_MOTIVE_DISMISSIAL_PK
  PRIMARY KEY ( MOTIVE_DISMISSIAL_CODE, STATE_NOTES ) ;


CREATE SEQUENCE SEQ_SS_OK_MOTIVE_DISMISSIAL
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_MOTIVE_DISMISSIAL.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_MOTIVE_DISMISSIAL_SEQ
 BEFORE 
 INSERT
 ON SS_OK_MOTIVE_DISMISSIAL
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_MOTIVE_DISMISSIAL.NEXTVAL into new_ID from dual;
   :NEW.MOTIVE_DISMISSIAL_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_MOTIVE_DISMISSIAL ADD CONSTRAINT SS_OK_MOTIVE_DISMISSIAL_UK
  UNIQUE ( MOTIVE_DISMISSIAL_CODE ) ;
ALTER TABLE SS_OK_MOTIVE_DISMISSIAL ADD CONSTRAINT SS_OK_MOTIVE_DISMISS_CHK_CODE
  CHECK (MOTIVE_DISMISSIAL_code>0);

-- ���������� --
------------------------------------------------------------

create table SS_OK_YOUTH( --  ���������� ���������� �����������
YOUTH_ID	number (8) not null, --	��������� �����	�������������  ������� � "1", ��������� ����, ������������ ��� ����������
YOUTH_code	NUMBER (2) not null, --	��� ����������� 	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������
YOUTH_NAME	VARCHAR2(50) not null, --	������������ �����������	�������� � ����������, ������� ����, ������������ ��� ����������
STATE_NOTES CHAR(1) not null, --	'������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� �������  -� -��������'
EMP_CODE 	NUMBER(6) not null, --	��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������
INS_date 	date not null --	���� � �����  ����� ����������	SYSdate not null, ��������� ����, ������������ ��� ����������
) ;

comment on table  SS_OK_YOUTH is '���������� �';
comment on column SS_OK_YOUTH.YOUTH_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_YOUTH.YOUTH_code is '��� ����������� 	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_YOUTH.YOUTH_NAME is '������������ �����������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_YOUTH.STATE_NOTES is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_YOUTH.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_YOUTH.INS_date is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';

ALTER TABLE SS_OK_YOUTH ADD CONSTRAINT SS_OK_YOUTH_PK
  PRIMARY KEY ( YOUTH_CODE, STATE_NOTES ) ;


CREATE SEQUENCE SEQ_SS_OK_YOUTH
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_YOUTH.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_YOUTH_SEQ
 BEFORE 
 INSERT
 ON SS_OK_YOUTH
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_YOUTH.NEXTVAL into new_ID from dual;
   :NEW.YOUTH_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_YOUTH ADD CONSTRAINT SS_OK_YOUTH_UK
  UNIQUE ( YOUTH_CODE ) ;
ALTER TABLE SS_OK_YOUTH ADD CONSTRAINT SS_OK_YOUTH_CHK_CODE
  CHECK (YOUTH_code>0);

-- ���������� --
------------------------------------------------------------

create table SS_OK_DEPARTMENT_TYPE( -- ���������� ����� �������
DEPARTMENT_TYPE_ID	number (8) not null, --	��������� �����	�������������  ������� � "1", ��������� ����, ������������ ��� ����������
DEPARTMENT_TYPE_CODE	NUMBER (2) not null, --	��� ����  ������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������
DEPARTMENT_TYPE_NAME	VARCHAR2(50) not null, --	������������  �������� ������ (�������� �����, ������ � �.�) not null, -- 	�������� � ����������, ������� ����, ������������ ��� ����������
STATE_NOTES CHAR(1) not null, --	'������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� �������  -� -��������'
EMP_CODE 	NUMBER(6) not null, --	��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������
INS_date 	date not null --	���� � �����  ����� ����������	SYSdate not null, ��������� ����, ������������ ��� ����������
) ;

comment on table  SS_OK_DEPARTMENT_TYPE is '���������� �';
comment on column SS_OK_DEPARTMENT_TYPE.DEPARTMENT_TYPE_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_DEPARTMENT_TYPE.DEPARTMENT_TYPE_CODE is '��� ����  ������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_DEPARTMENT_TYPE.DEPARTMENT_TYPE_NAME is '������������  �������� ������ (�������� �����, ������ � �.�) not null, -- 	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_DEPARTMENT_TYPE.STATE_NOTES is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_DEPARTMENT_TYPE.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_DEPARTMENT_TYPE.INS_date is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';

ALTER TABLE SS_OK_DEPARTMENT_TYPE ADD CONSTRAINT SS_OK_DEPARTMENT_TYPE_PK
  PRIMARY KEY ( DEPARTMENT_TYPE_CODE,STATE_NOTES ) ;


CREATE SEQUENCE SEQ_SS_OK_DEPARTMENT_TYPE
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_DEPARTMENT_TYPE.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_DEPARTMENT_TYPE_SEQ
 BEFORE 
 INSERT
 ON SS_OK_DEPARTMENT_TYPE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_DEPARTMENT_TYPE.NEXTVAL into new_ID from dual;
   :NEW.DEPARTMENT_TYPE_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_DEPARTMENT_TYPE ADD CONSTRAINT SS_OK_DEPARTMENT_TYPE_UK
  UNIQUE ( DEPARTMENT_TYPE_CODE ) ;
ALTER TABLE SS_OK_DEPARTMENT_TYPE ADD CONSTRAINT SS_OK_DEPARTMENT_TYPE_CHK_CODE
  CHECK (DEPARTMENT_TYPE_code>0);

-- ���������� --
------------------------------------------------------------

create table SS_OK_DEPARTMENT( -- ���������� ������� (������������� ����������� ����� �������)
DEPARTMENT_ID	number (8) not null, --	��������� �����	�������������  ������� � "1", ��������� ����, ������������ ��� ����������
BRANCH	char(5) not null, 	-- '��� ���������	���������� �� ������� S_MFO ���� BANK_ID, ��������� ����, ������������ ��� ����������'
DEPARTMENT_CODE	NUMBER (9) not null, --	��� ������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������
DEPARTMENT_NAME	VARCHAR2(250) not null, --	������������ ������ 	�������� � ����������, ������� ����, ������������ ��� ����������
DEPARTMENT_NUM	NUMBER (9) not null, --	����� ������	�������� � ����������, ������� ����, �������������� ��� ����������
DEPARTMENT_TYPE_CODE	NUMBER (2) not null, --	��� ����  ������	���������� �� ����������� SS_OK_DEPARTAMENT_TYPE, ���� DEPARTAMENT_TYPE _CODE
HIGH_DEP_CODE	NUMBER (9) , --	��� ������������ �������������
STATE_NOTES CHAR(1) not null, --	'������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� �������  -� -��������'
EMP_CODE 	NUMBER(6) not null, --	��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������
INS_date 	date not null --	���� � �����  ����� ����������	SYSdate not null, ��������� ����, ������������ ��� ����������
) ;

comment on table  SS_OK_DEPARTMENT is '���������� �������';
comment on column SS_OK_DEPARTMENT.DEPARTMENT_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_DEPARTMENT.BRANCH	is '��� ���������	���������� �� ������� S_MFO ���� BANK_ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_DEPARTMENT.DEPARTMENT_CODE is '��� ������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_DEPARTMENT.DEPARTMENT_NAME is '������������ ������ 	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_DEPARTMENT.DEPARTMENT_NUM is '����� ������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column SS_OK_DEPARTMENT.DEPARTMENT_TYPE_CODE is '��� ����  ������	���������� �� ����������� SS_OK_DEPARTAMENT_TYPE, ���� DEPARTAMENT_TYPE _CODE';
comment on column SS_OK_DEPARTMENT.HIGH_DEP_CODE is '��� ������������ �������������';
comment on column SS_OK_DEPARTMENT.STATE_NOTES is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_DEPARTMENT.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_DEPARTMENT.INS_date is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';

ALTER TABLE SS_OK_DEPARTMENT ADD CONSTRAINT SS_OK_DEPARTMENT_PK
  PRIMARY KEY ( DEPARTMENT_CODE, STATE_NOTES ) ;


CREATE SEQUENCE SEQ_SS_OK_DEPARTMENT
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_DEPARTMENT.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_DEPARTMENT_SEQ
 BEFORE 
 INSERT
 ON SS_OK_DEPARTMENT
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_DEPARTMENT.NEXTVAL into new_ID from dual;
   :NEW.DEPARTMENT_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_DEPARTMENT ADD CONSTRAINT SS_OK_DEPARTMENT_UK
  UNIQUE ( DEPARTMENT_CODE, BRANCH ) ;
ALTER TABLE SS_OK_DEPARTMENT ADD CONSTRAINT SS_OK_DEPARTMENT_CHK_CODE
  CHECK (DEPARTMENT_code>0);

-- ���������� --
------------------------------------------------------------

create table SS_OK_REG_TYPE( -- ��� �������� "����������/���������"
REG_TYPE_ID	number (8) not null, --	��������� �����	�������������  ������� � "1", ��������� ����, ������������ ��� ����������
REG_TYPE_CODE	NUMBER (1) not null, --	��� 	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������
REG_TYPE_NAME	VARCHAR2(50) not null --	������������ 	�������� � ����������, ������� ����, ������������ ��� ����������
) ;

comment on table  SS_OK_REG_TYPE is '��������� ���������� ��� �������� "����������/���������"';
comment on column SS_OK_REG_TYPE.REG_TYPE_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_REG_TYPE.REG_TYPE_CODE is '��� 	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_REG_TYPE.REG_TYPE_NAME is '������������ 	�������� � ����������, ������� ����, ������������ ��� ����������';

ALTER TABLE SS_OK_REG_TYPE ADD CONSTRAINT SS_OK_REG_TYPE_PK
  PRIMARY KEY ( REG_TYPE_ID ) ;


CREATE SEQUENCE SEQ_SS_OK_REG_TYPE
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_REG_TYPE.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_REG_TYPE_SEQ
 BEFORE 
 INSERT
 ON SS_OK_REG_TYPE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_REG_TYPE.NEXTVAL into new_ID from dual;
   :NEW.REG_TYPE_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_REG_TYPE ADD CONSTRAINT SS_OK_REG_TYPE_UK
  UNIQUE ( REG_TYPE_CODE ) ;
ALTER TABLE SS_OK_REG_TYPE ADD CONSTRAINT SS_OK_REG_TYPE_CHK_CODE
  CHECK (REG_TYPE_code>0);

insert into SS_OK_REG_TYPE select 1,1,'����������' from dual;
insert into SS_OK_REG_TYPE select 2,2,'���������' from dual;

-- ���������� --
------------------------------------------------------------

create table SS_OK_GENDER(  -- ��������� ���������� �����
GENDER_ID	number (8) not null, --	��������� �����	�������������  ������� � "1", ��������� ����, ������������ ��� ����������
GENDER_CODE	NUMBER (1) not null, --	���  ���� 	������� �������� 1- ��� 2-���
GENDER_NAME	VARCHAR2(50) not null --	������������ ����  	1 - ���2 - ���
) ;

comment on table  SS_OK_GENDER is '���������� �';
comment on column SS_OK_GENDER.GENDER_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_GENDER.GENDER_CODE is '���  ���� 	������� �������� 1- ��� 2-���';
comment on column SS_OK_GENDER.GENDER_NAME is '������������ ����  	1 - ���2 - ���';

ALTER TABLE SS_OK_GENDER ADD CONSTRAINT SS_OK_GENDER_PK
  PRIMARY KEY ( GENDER_ID ) ;


CREATE SEQUENCE SEQ_SS_OK_GENDER
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_GENDER.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_GENDER_SEQ
 BEFORE 
 INSERT
 ON SS_OK_GENDER
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_GENDER.NEXTVAL into new_ID from dual;
   :NEW.GENDER_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_GENDER ADD CONSTRAINT SS_OK_GENDER_UK
  UNIQUE ( GENDER_CODE ) ;
ALTER TABLE SS_OK_GENDER ADD CONSTRAINT SS_OK_GENDER_CHK_CODE
  CHECK (GENDER_code>0);

insert into SS_OK_GENDER select 1,1,'���' from dual;
insert into SS_OK_GENDER select 2,2,'���' from dual;

-- ���������� --
------------------------------------------------------------

create table SS_OK_ARTICLE( -- ���������� ������ �����
ARTICLE_ID	number (8) not null, --	��������� �����	�������������  ������� � "1", ��������� ����, ������������ ��� ����������
ARTICLE_CODE 	number (3) not null, --	��� ������ 	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������
ARTICLE_NUM	number (3) not null, --	����� ������	�������� � ����������, ������� ����, ������������ ��� ����������
ARTICLE_NAME	VARCHAR2(50) not null, --	������������ ������	�������� � ����������, ������� ����, ������������ ��� ����������
ARTICLE_CHARACTER	VARCHAR2(200) not null, --	�������� ������	�������� � ����������, ������� ����, �������������� ��� ����������
STATE_NOTES CHAR(1) not null, --	'������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� �������  -� -��������'
EMP_CODE 	NUMBER(6) not null, --	��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������
INS_date 	date not null --	���� � �����  ����� ���������� 	SYSdate not null, ��������� ����, ������������ ��� ����������
) ;

comment on table  SS_OK_ARTICLE is '���������� ������ �����';
comment on column SS_OK_ARTICLE.ARTICLE_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_ARTICLE.ARTICLE_CODE is '��� ������ 	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_ARTICLE.ARTICLE_NUM is '����� ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_ARTICLE.ARTICLE_NAME is '������������ ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_ARTICLE.ARTICLE_CHARACTER is '�������� ������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column SS_OK_ARTICLE.STATE_NOTES is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_ARTICLE.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_ARTICLE.INS_date is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';

ALTER TABLE SS_OK_ARTICLE ADD CONSTRAINT SS_OK_ARTICLE_PK
  PRIMARY KEY ( ARTICLE_CODE, STATE_NOTES ) ;


CREATE SEQUENCE SEQ_SS_OK_ARTICLE
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_ARTICLE.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_ARTICLE_SEQ
 BEFORE 
 INSERT
 ON SS_OK_ARTICLE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_ARTICLE.NEXTVAL into new_ID from dual;
   :NEW.ARTICLE_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_ARTICLE ADD CONSTRAINT SS_OK_ARTICLE_UK
  UNIQUE ( ARTICLE_CODE ) ;
ALTER TABLE SS_OK_ARTICLE ADD CONSTRAINT SS_OK_ARTICLE_CHK_CODE
  CHECK (ARTICLE_code>0);

--------------

create table SS_OK_REZERVE( -- ��������� ���������� ������� �������
REZERVE_ID	NUMBER (8) not null, --	��������� �����	������������� ������������� ������� � "1", ��������� ����, ������������ ��� ����������
REZERVE_CODE	NUMBER (1) not null, --	��� �������	1 -  ������ ����������� 2 -  ������� ���������
REZERVE_NAME	VARCHAR2(50) not null --	������������  ���� �������	 ����������� �������������1 -  ������ ����������� 2 -  ������� ��������� �
) ;

comment on table  SS_OK_REZERVE is '��������� ���������� ������� �������';
comment on column SS_OK_REZERVE.REZERVE_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_REZERVE.REZERVE_CODE is '	��� �������	1 -  ������ ����������� 2 -  ������� ���������';
comment on column SS_OK_REZERVE.REZERVE_NAME is '������������  ���� �������	 ����������� �������������1 -  ������ ����������� 2 -  ������� ���������';

ALTER TABLE SS_OK_REZERVE ADD CONSTRAINT SS_OK_REZERVE_PK
  PRIMARY KEY ( REZERVE_ID ) ;


CREATE SEQUENCE SEQ_SS_OK_REZERVE
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_REZERVE.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_REZERVE_SEQ
 BEFORE 
 INSERT
 ON SS_OK_REZERVE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_REZERVE.NEXTVAL into new_ID from dual;
   :NEW.REZERVE_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_REZERVE ADD CONSTRAINT SS_OK_REZERVE_UK
  UNIQUE ( REZERVE_CODE ) ;
ALTER TABLE SS_OK_REZERVE ADD CONSTRAINT SS_OK_REZERVE_CHK_CODE
  CHECK (REZERVE_code>0);

insert into SS_OK_REZERVE select 1,1,'������ �����������' from dual;
insert into SS_OK_REZERVE select 2,2,'������� ���������' from dual;

-----------

create table SS_OK_VACANCY( -- ��������� ���������� ������� ��������
VACANCY_ID	NUMBER (8) not null, --	��������� �����	������������� ������������� ������� � "1", ��������� ����, ������������ ��� ����������
VACANCY_CODE	NUMBER (1) not null, --	���  ��������	1 - ��������2 -  ���� ���������
VACANCY_NAME	VARCHAR2(50) not null --	������������ ���� ��������	 ����������� �������������� 1 - ��������2 -  ���� ���������
) ;

comment on table  SS_OK_VACANCY is '��������� ���������� ������� ��������';
comment on column SS_OK_VACANCY.VACANCY_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_VACANCY.VACANCY_CODE is '���  ��������	1 - ��������2 -  ���� ���������';
comment on column SS_OK_VACANCY.VACANCY_NAME is '������������ ���� ��������	 ����������� �������������� 1 - ��������2 -  ���� ���������';

ALTER TABLE SS_OK_VACANCY ADD CONSTRAINT SS_OK_VACANCY_PK
  PRIMARY KEY ( VACANCY_ID ) ;


CREATE SEQUENCE SEQ_SS_OK_VACANCY
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_VACANCY.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_VACANCY_SEQ
 BEFORE 
 INSERT
 ON SS_OK_VACANCY
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_VACANCY.NEXTVAL into new_ID from dual;
   :NEW.VACANCY_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_VACANCY ADD CONSTRAINT SS_OK_VACANCY_UK
  UNIQUE ( VACANCY_CODE ) ;
ALTER TABLE SS_OK_VACANCY ADD CONSTRAINT SS_OK_VACANCY_CHK_CODE
  CHECK (VACANCY_code>0);

insert into SS_OK_VACANCY select 1,1,'��������' from dual;
insert into SS_OK_VACANCY select 2,2,'���� ���������' from dual;

----------

create table SS_OK_BASIS( -- ��������� ���������� �������� �������� �����������
BASIS_ID	NUMBER (8) not null, --	��������� �����	������������� ������������� ������� � "1", ��������� ����, ������������ ��� ����������
BASIS_CODE	NUMBER (1) not null, --	���  ������� ��������  �����������	1 - �������2 -  ������
BASIS_NAME	VARCHAR2(50) not null --	������������ ���� ������� ��������  �����������	 ����������� �������������� 1 - �������2 -  ������
) ;

comment on table  SS_OK_BASIS is '��������� ���������� ������� ��������';
comment on column SS_OK_BASIS.BASIS_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_BASIS.BASIS_CODE is '���  ������� ��������  �����������	1 - �������2 -  ������';
comment on column SS_OK_BASIS.BASIS_NAME is '������������ ���� ������� ��������  �����������	 ����������� �������������� 1 - �������2 -  ������';

ALTER TABLE SS_OK_BASIS ADD CONSTRAINT SS_OK_BASIS_PK
  PRIMARY KEY ( BASIS_ID ) ;


CREATE SEQUENCE SEQ_SS_OK_BASIS
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_BASIS.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_BASIS_SEQ
 BEFORE 
 INSERT
 ON SS_OK_BASIS
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_BASIS.NEXTVAL into new_ID from dual;
   :NEW.BASIS_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_BASIS ADD CONSTRAINT SS_OK_BASIS_UK
  UNIQUE ( BASIS_CODE ) ;
ALTER TABLE SS_OK_BASIS ADD CONSTRAINT SS_OK_BASIS_CHK_CODE
  CHECK (BASIS_code>0);

insert into SS_OK_BASIS select 1,1,'�������' from dual;
insert into SS_OK_BASIS select 2,2,'������' from dual;


/* ****     ����������� �� ��������     **** */

-- ���������� --
------------------------------------------------------------

create table SS_OK_TEMPLATE_COMMAND( -- '���������� �������� ��������'
TEMPLATE_COMMAND_ID	number(8) not null, --	'��������� �����	������������� ������������� ������� � "1", ��������� ����, ������������ ��� ����������'
TEMPLATE_COMMAND_CODE 	NUMBER(2) not null, -- '��� ������� 	���������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������'
TEMPLATE_COMMAND_NAME	VARCHAR2(250) not null, -- '������������/�������������� ������� 	�������� � ����������, ������� ���� , ������������ ��� ����������'
COMMAND_TYPE_CODE 	NUMBER(2) not null, -- '��� ����  �������	�������� � ����������, ������� ����, ������������ ��� ����������'
TEMPLATE_COMMAND_FNAME	VARCHAR2(100) not null, -- '��� ����� � �������� �������	�������� � ����������, ������� ����, ������������ ��� ���������� XXXXXXXX.doc'
STATE_NOTES 	CHAR(1) not null, -- '������� ���������� ������A - �������� ������P - ��������� ������	�������� � ����������, ������� ����, �� ��������� �������� �������  -� -�������� ������'
EMP_CODE 	NUMBER(6) not null, -- '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������'
INS_date 	date not null -- '���� � �����  ����� ������	SYSdate not null, ��������� ����, ������������ ����������'
) ;

comment on table  SS_OK_TEMPLATE_COMMAND is '���������� �������� ��������';
comment on column SS_OK_TEMPLATE_COMMAND.TEMPLATE_COMMAND_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_TEMPLATE_COMMAND.TEMPLATE_COMMAND_CODE is '��� ������� ������� 	���������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_TEMPLATE_COMMAND.TEMPLATE_COMMAND_NAME is '������������/�������������� ������� 	�������� � ����������, ������� ���� , ������������ ��� ����������';
comment on column SS_OK_TEMPLATE_COMMAND.COMMAND_TYPE_CODE is '��� ����  �������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_TEMPLATE_COMMAND.TEMPLATE_COMMAND_FNAME is '��� ����� � �������� �������	�������� � ����������, ������� ����, ������������ ��� ���������� XXXXXXXX.doc';
comment on column SS_OK_TEMPLATE_COMMAND.STATE_NOTES is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_TEMPLATE_COMMAND.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_TEMPLATE_COMMAND.INS_date is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';

ALTER TABLE SS_OK_TEMPLATE_COMMAND ADD CONSTRAINT SS_OK_TEMPLATE_COMMAND_PK
  PRIMARY KEY ( TEMPLATE_COMMAND_CODE, STATE_NOTES ) ;


CREATE SEQUENCE SEQ_SS_OK_TEMPLATE_COMMAND
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_TEMPLATE_COMMAND.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_TEMPLATE_COMMAND_SEQ
 BEFORE 
 INSERT
 ON SS_OK_TEMPLATE_COMMAND
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_TEMPLATE_COMMAND.NEXTVAL into new_ID from dual;
   :NEW.TEMPLATE_COMMAND_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_TEMPLATE_COMMAND ADD CONSTRAINT SS_OK_TEMPLATE_COMMAND_UK
  UNIQUE ( TEMPLATE_COMMAND_CODE ) ;
ALTER TABLE SS_OK_TEMPLATE_COMMAND ADD CONSTRAINT SS_OK_TEMPLATE_COMM_CHK_CODE
  CHECK (TEMPLATE_COMMAND_code>0);

-- ���������� --
------------------------------------------------------------

create table SS_OK_COMMAND_PARAM( -- ��������� ���������� ���������� ��������
COMMAND_PARAM_ID	number(8) not null, --'��������� �����	������������� ������������� ������� � "1", ��������� ����, ������������ ��� ����������'
COMMAND_PARAM_CODE 	NUMBER(2) not null, --'��� ���������  �������	������������� ������������� ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������'
COMMAND_PARAM_NAME	VARCHAR2(20) not null, --'������������ ��������� ������� 	����������� ��������������'
COMMAND_PARAM_SELECT VARCHAR2(200) not null -- '������ ��������� �������� ��������� (select ������� ������ ������ ��������� ��������)'
) ;

comment on table  SS_OK_COMMAND_PARAM is '��������� ���������� ���������� ��������';
comment on column SS_OK_COMMAND_PARAM.COMMAND_PARAM_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_COMMAND_PARAM.COMMAND_PARAM_CODE is '��� ���������  �������	������������� ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_COMMAND_PARAM.COMMAND_PARAM_NAME is '������������ ��������� ������� 	����������� ��������������';
comment on column SS_OK_COMMAND_PARAM.COMMAND_PARAM_SELECT is '������ ��������� �������� ��������� (select ������� ������ ������ ��������� ��������)';

ALTER TABLE SS_OK_COMMAND_PARAM ADD CONSTRAINT SS_OK_COMMAND_PARAM_PK
  PRIMARY KEY ( COMMAND_PARAM_ID ) ;


CREATE SEQUENCE SEQ_SS_OK_COMMAND_PARAM
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_COMMAND_PARAM.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_COMMAND_PARAM_SEQ
 BEFORE 
 INSERT
 ON SS_OK_COMMAND_PARAM
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_COMMAND_PARAM.NEXTVAL into new_ID from dual;
   :NEW.COMMAND_PARAM_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_COMMAND_PARAM ADD CONSTRAINT SS_OK_COMMAND_PARAM_UK
  UNIQUE ( COMMAND_PARAM_CODE ) ;
ALTER TABLE SS_OK_COMMAND_PARAM ADD CONSTRAINT SS_OK_COMMAND_PARAM_CHK_CODE
  CHECK (COMMAND_PARAM_code>0);

-- ���������� --
------------------------------------------------------------

create table SS_OK_COMMAND_TYPE( -- ���������� ����� ��������
COMMAND_TYPE_ID	number (8) not null, --	��������� �����	�������������  ������� � "1", ��������� ����, ������������ ��� ����������
COMMAND_TYPE_CODE 	NUMBER (2) not null, --	��� ���� �������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������
COMMAND_TYPE_NAME VARCHAR2(250) not null, -- 	��� ������� (���������� � �.�) not null, --	�������� � ����������, ������� ����, ������������ ��� ����������
STATE_NOTES CHAR(1) not null, --	'������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� �������  -� -��������'
EMP_CODE 	NUMBER(6) not null, --	'��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������
INS_date 	date not null --'���� � �����  �����  ������	SYSdate not null, ��������� ����, ������������ ��� ����������
) ;

comment on table  SS_OK_COMMAND_TYPE is '���������� ����� ��������';
comment on column SS_OK_COMMAND_TYPE.COMMAND_TYPE_ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_COMMAND_TYPE.COMMAND_TYPE_CODE is '��� ���� �������	�������������  ������� � "1" ��� ������ ������� "��������", ������� ����, ������������ ��� ����������';
comment on column SS_OK_COMMAND_TYPE.COMMAND_TYPE_NAME is '��� ������� (���������� � �.�) not null, --	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_COMMAND_TYPE.STATE_NOTES is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_COMMAND_TYPE.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_COMMAND_TYPE.INS_date is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';

ALTER TABLE SS_OK_COMMAND_TYPE ADD CONSTRAINT SS_OK_COMMAND_TYPE_PK
  PRIMARY KEY ( COMMAND_TYPE_CODE, STATE_NOTES ) ;


CREATE SEQUENCE SEQ_SS_OK_COMMAND_TYPE
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_COMMAND_TYPE.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_COMMAND_TYPE_SEQ
 BEFORE 
 INSERT
 ON SS_OK_COMMAND_TYPE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_COMMAND_TYPE.NEXTVAL into new_ID from dual;
   :NEW.COMMAND_TYPE_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_COMMAND_TYPE ADD CONSTRAINT SS_OK_COMMAND_TYPE_UK
  UNIQUE ( COMMAND_TYPE_CODE ) ;
ALTER TABLE SS_OK_COMMAND_TYPE ADD CONSTRAINT SS_OK_COMMAND_TYPE_CHK_CODE
  CHECK (COMMAND_TYPE_code>0);

----------------------------

create table SS_OK_STATUS( -- ��������� ���������� "������ ����������"
STATUS_CODE	NUMBER (1) not null, --	���
STATUS_NAME	VARCHAR2(50) not null --	������������ 	 ����������� �������������� 
) ;

comment on table  SS_OK_STATUS is '��������� ���������� "������ ����������"';
comment on column SS_OK_STATUS.STATUS_CODE is '���';
comment on column SS_OK_STATUS.STATUS_NAME is '������������	 ����������� ��������������';

ALTER TABLE SS_OK_STATUS ADD CONSTRAINT SS_OK_STATUS_PK
  PRIMARY KEY ( STATUS_CODE ) ;

ALTER TABLE SS_OK_STATUS ADD CONSTRAINT SS_OK_STATUS_CHK_CODE
  CHECK (STATUS_code>0);

insert into SS_OK_STATUS select 1,'�����' from dual;
insert into SS_OK_STATUS select 2,'������' from dual;
insert into SS_OK_STATUS select 4,'������' from dual;
insert into SS_OK_STATUS select 3,'�� ������' from dual;

-- ���������� --
------------------------------------------------------------


create table SS_OK_PENALTY(
PENALTY_ID	number (8) not null,
PENALTY_CODE 	NUMBER (2) not null, 
PENALTY_NAME VARCHAR2(50) not null,
STATE_NOTES CHAR(1) not null, --	'������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� �������  -� -��������'
EMP_CODE 	NUMBER(6) not null, --	'��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������
INS_date 	date not null --'���� � �����  �����  ������	SYSdate not null, ��������� ����, ������������ ��� ����������
) ;

comment on table  SS_OK_PENALTY is '���������� ����� ���������';
comment on column SS_OK_PENALTY.PENALTY_ID is '��������� �����';
comment on column SS_OK_PENALTY.PENALTY_CODE is '���';
comment on column SS_OK_PENALTY.PENALTY_NAME is '������������';
comment on column SS_OK_PENALTY.STATE_NOTES is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_PENALTY.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_PENALTY.INS_date is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';

ALTER TABLE SS_OK_PENALTY ADD CONSTRAINT SS_OK_PENALTY_PK
  PRIMARY KEY ( PENALTY_CODE, STATE_NOTES ) ;


CREATE SEQUENCE SEQ_SS_OK_PENALTY
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_PENALTY.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_PENALTY_SEQ
 BEFORE 
 INSERT
 ON SS_OK_PENALTY
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_PENALTY.NEXTVAL into new_ID from dual;
   :NEW.PENALTY_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_PENALTY ADD CONSTRAINT SS_OK_PENALTY_UK
  UNIQUE ( PENALTY_CODE ) ;
ALTER TABLE SS_OK_PENALTY ADD CONSTRAINT SS_OK_PENALTY_CHK_CODE
  CHECK (PENALTY_code>0);

--------------------------------------------------
-- ���������� ������������ ����������� --
create table ss_ok_education_title(
education_title_id	number (8)     not null,
education_title_code 	number (3) not null,
education_title_name 	VARCHAR2(80) not null,
STATE_NOTES 	CHAR(1) not null,
EMP_CODE 	NUMBER(6) not null,
INS_date 	date not null
) ;

comment on table ss_ok_education_title is '���������� ������������ �����������';
comment on column ss_ok_education_title.education_title_id	is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column ss_ok_education_title.education_title_code 	is	'��� ���������� � "1" ��� ������ ������� "��������" ������� ����, ������������ ��� ����������';
comment on column ss_ok_education_title.education_title_name 	is	'�������������������� � ����������, ������� ����, ������������ ��� ����������';
comment on column ss_ok_education_title.STATE_NOTES 	is '������� ���������� ������A - �������� ������P - ��������� ������	�������� � ����������, ������� ����, �� ��������� �������� �������  -� -�������� ������';
comment on column ss_ok_education_title.EMP_CODE 	is	'��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, �� ������� ����, ������������ ��� ����������';
comment on column ss_ok_education_title.INS_date 	is	'���� � �����  ����� ���������� 	SYSdate not null, �� ������� ����, ������������ ��� ����������';

ALTER TABLE ss_ok_education_title ADD CONSTRAINT ss_ok_education_title_pk
  PRIMARY KEY ( education_title_code, STATE_NOTES ) ;

CREATE SEQUENCE seq_ss_ok_education_title
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20  NOCYCLE
 NOORDER
;


CREATE OR REPLACE TRIGGER tr_ss_ok_education_title_seq
 BEFORE 
 INSERT
 ON SS_OK_EDUCATION_TITLE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_education_title.NEXTVAL into new_ID from dual;
   :NEW.education_title_ID:=new_ID;
END;
/
ALTER TABLE ss_ok_education_title ADD CONSTRAINT ss_ok_education_title_uk
  UNIQUE ( education_title_code ) ;

ALTER TABLE ss_ok_education_title ADD CONSTRAINT ss_ok_education_title_chk_code
  CHECK (education_title_code>0);

-----------------------------
create table SS_OK_LEVEL_DEPARTMENT( -- ��������� ���������� "������ �������������"
LEVEL_DEPARTMENT_CODE	NUMBER (1) not null, --	���
LEVEL_DEPARTMENT_NAME	VARCHAR2(50) not null --	������������ 	 ����������� �������������� 
) ;

comment on table  SS_OK_LEVEL_DEPARTMENT is '��������� ���������� "������ �������������"';
comment on column SS_OK_LEVEL_DEPARTMENT.LEVEL_DEPARTMENT_CODE is '���';
comment on column SS_OK_LEVEL_DEPARTMENT.LEVEL_DEPARTMENT_NAME is '������������	 ����������� ��������������';

ALTER TABLE SS_OK_LEVEL_DEPARTMENT ADD CONSTRAINT SS_OK_LEVEL_DEPARTMENT_PK
  PRIMARY KEY ( LEVEL_DEPARTMENT_CODE ) ;

ALTER TABLE SS_OK_LEVEL_DEPARTMENT ADD CONSTRAINT SS_OK_LEVEL_DEP_CHK_CODE
  CHECK (LEVEL_DEPARTMENT_code>0);

insert into SS_OK_LEVEL_DEPARTMENT select 1,'����������, ���' from dual;
insert into SS_OK_LEVEL_DEPARTMENT select 2,'�������' from dual;
insert into SS_OK_LEVEL_DEPARTMENT select 3,'�����' from dual;

--------------------------------------------------
create table SS_OK_LEVEL_BOSS(
LEVEL_DEPARTMENT_CODE	NUMBER (1) not null
) ;

comment on table  SS_OK_STATUS is '��������� ���������� "������� �������������"';
comment on column SS_OK_STATUS.STATUS_CODE is '���';

insert into SS_OK_LEVEL_BOSS select 1 from dual;

--------------------------------------------------
show err

