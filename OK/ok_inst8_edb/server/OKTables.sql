prompt # oktables.sql 18.09.2006

-- drop table OK_PERSONAL;
create table OK_PERSONAL(
ID	NUMBER(8) not null, 
BRANCH	char(5) not null,
PERSONAL_CODE  	NUMBER (9) not null,
COLLEAGUE_CODE	NUMBER (10),	
STATUS_CODE	NUMBER (1),
SALARY_CODE 	NUMBER(9),
FAMILY	VARCHAR2(50) not null,
FIRST_NAME 	VARCHAR2(50) not null,
PATRONYMIC	VARCHAR2(50),	
GENDER_CODE 	NUMBER (1) not null,
BIRTHDAY	DATE  not null,
REGION_ID CHAR(2),
DISTR CHAR(3),    
NATIONALITY_CODE	NUMBER(3) not null, 
FAMILY_STATUS_CODE	NUMBER(1) not null,
REG_TYPE_CODE	NUMBER(1) not null,	
HOME_ADDRESS	VARCHAR2(250) not null,
HOME_ADDRESSFACT	VARCHAR2(250) not null,	
PASS_SERIYA 	VARCHAR2(9) not null,	
PASS_NUM	VARCHAR2(9) not null,	
PASS_DATE	DATE not null,
PASS_REG	VARCHAR2(200) not null,
RECORD_BOOK_NUMBER	VARCHAR(10) ,
RECORD_BOOK_SERIES	VARCHAR(10) ,
TELEFON 	VARCHAR2(200),
EMP_CODE 	NUMBER(6) not null,
INS_DATE	DATE not null,
PROFMEMBER number(1) default '1',
tabno number(9),
Education_Title_CODE number(3),
BIRTHPLACE	VARCHAR2(250),
MOTIVE_OUT VARCHAR2(150),
BASIS_NUM VARCHAR2(30),
BASIS_DATE	DATE,
LEAVE_CODE 	NUMBER(2),
DEPARTMENT_CODE	NUMBER(9),
POST_CODE number(3),
NN NUMBER(9),
MOTIVE_DISMISSIAL_CODE number(2),
nps_id NUMBER (14),
SPECIAL_CODE	number (3),
cod_distr_uvd varchar2(3),
cod_distr_prim varchar2(50),
cod_str_birth varchar2(3),
cod_obl_prim varchar2(50),
cod_place_birth_prim varchar2(50),
cod_sitizent varchar2(1),
cod_str_sitizent varchar2(3),
cod_str_live varchar2(3),
cod_obl_live varchar2(2),
cod_obl_live_prim varchar2(50),
cod_distr_live varchar2(3),
cod_distr_live_prim varchar2(50),
code_naci_prim varchar2(50),
check_kfs varchar2(1),
is_boss varchar2(1),
bank_spec varchar2(1),
NOTICE varchar2(200)
) ;



ALTER TABLE OK_PERSONAL ADD (
PROFMEMBER number(1) default '1'
 );
ALTER TABLE OK_PERSONAL ADD (
tabno number(9)
 );
ALTER TABLE OK_PERSONAL ADD (
Education_Title_CODE number(3)
 );
ALTER TABLE OK_PERSONAL ADD (
BIRTHPLACE	VARCHAR2(250)
 );
ALTER TABLE OK_PERSONAL ADD (
MOTIVE_OUT VARCHAR2(150)
 );
ALTER TABLE OK_PERSONAL ADD (
BASIS_NUM VARCHAR2(30)
 );
ALTER TABLE OK_PERSONAL ADD (
BASIS_DATE	DATE
 );
ALTER TABLE OK_PERSONAL ADD (
LEAVE_CODE 	NUMBER(2)
 );
ALTER TABLE OK_PERSONAL ADD (
DEPARTMENT_CODE	NUMBER(9)
 );
ALTER TABLE OK_PERSONAL ADD (
POST_CODE number(3)
 );
ALTER TABLE OK_PERSONAL ADD (
NN NUMBER(9)
 );
ALTER TABLE OK_PERSONAL ADD (
MOTIVE_DISMISSIAL_CODE number(2)
 );
ALTER TABLE OK_PERSONAL ADD (
nps_id NUMBER (14)
 );
ALTER TABLE OK_PERSONAL ADD (
SPECIAL_CODE	number (3)
 );

ALTER TABLE OK_PERSONAL ADD (
cod_distr_uvd varchar2(3)
 );

ALTER TABLE OK_PERSONAL ADD (
cod_distr_prim varchar2(50)
 );

ALTER TABLE OK_PERSONAL ADD (
cod_str_birth varchar2(3)
 );

ALTER TABLE OK_PERSONAL ADD (
cod_obl_prim varchar2(50)
 );

ALTER TABLE OK_PERSONAL ADD (
cod_place_birth_prim varchar2(50)
 );

ALTER TABLE OK_PERSONAL ADD (
cod_sitizent varchar2(1)
 );

ALTER TABLE OK_PERSONAL ADD (
cod_str_sitizent varchar2(3)
 );

ALTER TABLE OK_PERSONAL ADD (
cod_str_live varchar2(3)
 );

ALTER TABLE OK_PERSONAL ADD (
cod_obl_live varchar2(2)
 );
ALTER TABLE OK_PERSONAL ADD (
cod_obl_live_prim varchar2(50)
 );

ALTER TABLE OK_PERSONAL ADD (
cod_distr_live varchar2(3)
 );
ALTER TABLE OK_PERSONAL ADD (
cod_distr_live_prim varchar2(50)
 );

ALTER TABLE OK_PERSONAL ADD (
code_naci_prim varchar2(50)
 );

ALTER TABLE OK_PERSONAL ADD (
check_kfs varchar2(1)
 );

ALTER TABLE OK_PERSONAL ADD (
is_boss varchar2(1)
);

ALTER TABLE OK_PERSONAL ADD (
bank_spec varchar2(1)
 );

ALTER TABLE OK_PERSONAL ADD (
NOTICE varchar2(200)
 );
 
comment on table OK_PERSONAL is '������� ������� "�������� � ����������"';
comment on column OK_PERSONAL.department_code	is	'��� �������������, ������������ ������ � branch ������� ������� ss_ok_department';
comment on column OK_PERSONAL.post_code	is	'��� ������������ ��������� ���������� ss_ok_post';
comment on column OK_PERSONAL.ID	is	'��������� �����	� ������� �����������, �������   � "1"';
comment on column OK_PERSONAL.BRANCH	is '��� ���������	���������� �� ������� S_MFO ���� BANK_ID, ��������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.PERSONAL_CODE  	is '��� ���������� � ���������	������������� ������������� � ��������� � ���������� � �������� ����  � ����� - �������� � ���������, ��������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.COLLEAGUE_CODE	is '��� ���������� � �������� ����� 	������������� ������������� ���������� ����� ��������� ����� �� ��������� � ���������� � ��������� � �������� ������ - ���������� � ������� �����  �� ���������� ���������� �� ������ ��� ���������, ��������� ����';
comment on column OK_PERSONAL.STATUS_CODE	is '������ ���������� ';
comment on column OK_PERSONAL.SALARY_CODE is '��� �������� ����� � ��������� ok_stat_salary';
comment on column OK_PERSONAL.FAMILY	is '������� ����������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.FIRST_NAME 	is '��� ����������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.PATRONYMIC	is '�������� ����������	�������� � ����������. ��������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.GENDER_CODE 	is '��� ����������	����������  �� ���������� ����������� SS_OK_GENDER, ���� GENDER_CODE � �������� ����� ��������� ������������ ����, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.BIRTHDAY	is '���� �������� ���������� DDMMYYYY	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.NATIONALITY_CODE	is '��� �������������� 	���������� �� ����������� SS_OK_NATIONALITY  ���� NATIONALITY_CODE, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.FAMILY_STATUS_CODE	is '��� ��������� ���������	���������� �� �����������SS_OK_FAMILY_STATUS���� FAMILY_STATUS_CODE, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.REG_TYPE_CODE	is '��� ���� ��������	���������� �� ����������� SS_OK_REGISTRATION_TYPE, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.HOME_ADDRESS	is '������ �������� ����� ����������(��������) 	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.HOME_ADDRESSFACT	is '����������� ����� ����������	�������� � ����������. ������� ����';
comment on column OK_PERSONAL.PASS_SERIYA is '����� ��������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.PASS_NUM	is '����� ��������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.PASS_DATE	is '���� ������ ��������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.PASS_REG	is '����� ������ ��������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.RECORD_BOOK_NUMBER is '����� �������� ������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_PERSONAL.RECORD_BOOK_SERIES	is '����� �������� ������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_PERSONAL.TELEFON is '���������� � ���������� ���������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.EMP_CODE is '��� ������������, ���������� 	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_PERSONAL ADD CONSTRAINT OK_PERSONAL_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE );

ALTER TABLE OK_PERSONAL ADD CONSTRAINT OK_PERSONAL_UK
  UNIQUE ( branch, id ) ;

ALTER TABLE OK_PERSONAL ADD CONSTRAINT OK_PERSONAL_CHK_CODE
  CHECK (personal_code>0);

CREATE INDEX ok_personal_passport ON ok_personal
  ( branch, pass_num, pass_seriya) ;

-- drop SEQUENCE SEQ_OK_PERSONAL;
CREATE SEQUENCE SEQ_OK_PERSONAL
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_PERSONAL.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_PERSONAL
 BEFORE 
 INSERT
 ON OK_PERSONAL
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
  nullFieldName  VarChar2(35);
BEGIN

  if :new.home_address is null then :new.home_address := :new.home_addressfact;
  end if;

  if    :new.id        is NULL then nullfieldname := 'id'       ;
  elsif :new.INS_DATE  is NULL then nullfieldname := 'INS_DATE' ;
  elsif :new.EMP_code  is NULL then nullfieldname := 'EMP_CODE' ;
  elsif :new.BRANCH    is NULL Then nullfieldname := 'branch'   ;
  else  nullfieldname :=  null ;
  end if;
  if nullfieldname is not null then
    Raise_Application_Error( -20666, '���� ' || nullfieldname || ' ������ ���� �� ���������!!');
  end if;

END;
/

-----------------------------------------
-- drop table OK_CHANGE_FIO;
create table OK_CHANGE_FIO( -- 'C������� �� ��������� �������, �����, ��������'
ID	NUMBER(8) not null, --	'��������� �����	� ������� �����������, �������   � "1"'
BRANCH	char(5) not null, 	-- '��� ���������	���������� �� ������� S_MFO ���� BANK_ID, ��������� ����, ������������ ��� ����������'
PERSONAL_CODE  	NUMBER (9) not null,	-- '��� ���������� � ���������	������������� ������������� � ��������� � ���������� � �������� ����  � ����� - �������� � ���������, ��������� ����, ������������ ��� ����������'
FAMILY	VARCHAR2(20) not null, -- '������� ����������	���������� �� ������� OK_PERSONAL  ����  FAMILY ��� ��������  � ����������������� ����, ������������ ��� ����������'
FIRST_NAME 	VARCHAR2(20) not null, -- '��� ����������	���������� �� ������� OK_PERSONAL  ���� NAME ��� ��������  � ����������. ������� ����, ������������ ��� ����������'
PATRONYMIC	VARCHAR2(20), -- '�������� ����������	���������� �� ������� OK_PERSONAL  ���� PATRONIMIC ��� ��������  � ����������, ������� ����, ������������ ��� ����������'
CHANGE_DATE	DATE not null, -- '���� ��������� ���	�������� � ����������, ������� ����, ������������ ��� ����������'
CHANGE_MOTIVE	VARCHAR2(50) not null, -- '������� ��������� ���	�������� � ����������, ������� ����, ������������ ��� ����������'
EMP_CODE 	NUMBER (6) not null, -- '��� ������������ ���������� ����������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������'
INS_DATE	DATE  not null -- '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������'
) ;

comment on table OK_CHANGE_FIO is 'C������� �� ��������� �������, �����, ��������';
comment on column OK_CHANGE_FIO.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_CHANGE_FIO.BRANCH	 is '��� ���������	���������� �� ������� S_MFO ���� BANK_ID, ��������� ����, ������������ ��� ����������';
comment on column OK_CHANGE_FIO.PERSONAL_CODE  is '��� ���������� � ���������	���������� �� ������� OK_PERSONAL  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_CHANGE_FIO.FAMILY	 is '������� ����������	���������� �� ������� OK_PERSONAL  ����  FAMILY ��� ��������  � ����������������� ����, ������������ ��� ����������';
comment on column OK_CHANGE_FIO.FIRST_NAME 	 is '��� ����������	���������� �� ������� OK_PERSONAL  ���� NAME ��� ��������  � ����������. ������� ����, ������������ ��� ����������';
comment on column OK_CHANGE_FIO.PATRONYMIC	 is '�������� ����������	���������� �� ������� OK_PERSONAL  ���� PATRONIMIC ��� ��������  � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_CHANGE_FIO.CHANGE_DATE	 is '���� ��������� ���	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_CHANGE_FIO.CHANGE_MOTIVE is '������� ��������� ���	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_CHANGE_FIO.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_CHANGE_FIO.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_CHANGE_FIO ADD CONSTRAINT OK_CHANGE_FIO_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, CHANGE_DATE ) ;

ALTER TABLE OK_CHANGE_FIO ADD CONSTRAINT OK_CHANGE_FIO_UK
  UNIQUE ( BRANCH, ID ) ;

-- drop SEQUENCE SEQ_OK_CHANGE_FIO;
CREATE SEQUENCE SEQ_OK_CHANGE_FIO
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_CHANGE_FIO.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_CHANGE_FIO_SEQ
 BEFORE 
 INSERT
 ON OK_CHANGE_FIO
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
  new_id NUMBER;
BEGIN

  if :new.CHANGE_DATE is null and :new.CHANGE_MOTIVE is null then
    Raise_Application_Error( -20666, '����������, ������� ���� � ������� ��������� ��� ����������!!');
  end if;
  if :new.CHANGE_MOTIVE is null then
    Raise_Application_Error( -20666, '����������, ������� ������� ��������� ��� ����������!!');
  end if;
  if :new.CHANGE_DATE is null   then
    Raise_Application_Error( -20666, '����������, ������� ���� ��������� ��� ����������!!');
  end if;

  select seq_OK_CHANGE_FIO.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;

END;
/

----------------------
-- drop table OK_RELATION;
create table OK_RELATION(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
RELATION_CODE 	 NUMBER(2) not null,
RELATION_FAMILY	VARCHAR2(50) not null,
RELATION_NAME	VARCHAR2(50) not null,
RELATION_PATRONYMIC	VARCHAR2(50),
RELATION_BIRTHDAY  	NUMBER(4),
RELATION_DEATHDAY  	NUMBER(4),
RELATION_BIRTHPLACE	VARCHAR2(200),
RELATION_OFFICE  	VARCHAR2(200),
RELATION_POST	VARCHAR2(100),
RELATION_HOME_ADDRESS	VARCHAR2(200),
EMP_CODE 	NUMBER(6),
INS_DATE	DATE,
COD_STR_LIVE  	varchar2(3),
COD_OBL_LIVE  	varchar2(2),
COD_OBL_LIVE_PRIM   	varchar2(50),
COD_CITY  	varchar2(3),
COD_CITY_PRIM   	varchar2(50)
);

ALTER TABLE ok_relation MODIFY (
RELATION_PATRONYMIC	VARCHAR2(50)  null
);
ALTER TABLE ok_relation MODIFY (
RELATION_BIRTHDAY  	NUMBER(4)  null
);
ALTER TABLE ok_relation MODIFY (
RELATION_BIRTHPLACE	VARCHAR2(200)  null
);
ALTER TABLE ok_relation MODIFY (
RELATION_OFFICE  	VARCHAR2(200) null
);
ALTER TABLE ok_relation MODIFY (
RELATION_POST	VARCHAR2(100) null
);
ALTER TABLE ok_relation MODIFY (
RELATION_HOME_ADDRESS	VARCHAR2(200)  null
);

ALTER TABLE ok_relation ADD (
RELATION_DEATHDAY  	NUMBER(4)
);

ALTER TABLE ok_relation MODIFY (
RELATION_DEATHDAY  	NUMBER(4) null
);

ALTER TABLE ok_relation ADD (
COD_STR_LIVE  	varchar2(3)
);

ALTER TABLE ok_relation ADD (
COD_OBL_LIVE  	varchar2(2)
);

ALTER TABLE ok_relation ADD (
COD_OBL_LIVE_PRIM   	varchar2(50)
);

ALTER TABLE ok_relation ADD (
COD_CITY  	varchar2(3)
);

ALTER TABLE ok_relation ADD (
COD_CITY_PRIM   	varchar2(50)
);

comment on table OK_RELATION is '�������� � ������� �������������';
comment on column OK_RELATION.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_RELATION.BRANCH is  '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_RELATION.PERSONAL_CODE  is  '��� ���������� � ���������	���������� �� ������� OK_PERSONAL  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_RELATION.RELATION_CODE is '��� ������������ ���������	���������� �� SS_OK_RELATION  ���� RELATION_CODE, ������� ����, ������������ ��� ����������';
comment on column OK_RELATION.RELATION_FAMILY	 is  '�������  ������������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_RELATION.RELATION_NAME	 is  '��� ������������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_RELATION.RELATION_PATRONYMIC is  '�������� ������������	�������� � ���������� ������� ����, ������������ ��� ����������,';
comment on column OK_RELATION.RELATION_BIRTHDAY  is  '��� ���� �������� ������������ DDMMYYYY	�������� � ���������� , ������� ����, ������������ ��� ����������';
comment on column OK_RELATION.RELATION_BIRTHPLACE	 is  '����� ��������  ������������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_RELATION.RELATION_OFFICE  is  '����� ������ ������������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_RELATION.RELATION_POST	 is  '���������� ��������� ������������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_RELATION.RELATION_HOME_ADDRESS is  '����� ���������� ������������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_RELATION.EMP_CODE  is  '��� ������������, ���������� ����������	���������� �� ������� USERS  ����  ID, ������� ����, ������������ ��� ����������';
comment on column OK_RELATION.INS_DATE	 is  '���� � ����� ����� ������	SYSDATE, ������� ����, ������������ ��� ����������';

ALTER TABLE OK_RELATION ADD CONSTRAINT OK_RELATION_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_RELATION ADD CONSTRAINT OK_RELATION_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_RELATION;
CREATE SEQUENCE SEQ_OK_RELATION
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_RELATION.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_RELATION_SEQ
 BEFORE 
 INSERT
 ON OK_RELATION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_RELATION.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-- drop table OK_PERIOD;
create table OK_PERIOD(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_code 	NUMBER(9) not null,
IN_OFFICE_DATE	DATE not null,
OUT_OFFICE_DATE	 DATE,
OFFICE_NAME	VARCHAR2(150) not null,
OFFICE_ADDRESS	VARCHAR2(150),
ESTABLISHED_POST	VARCHAR2(150) not null,
ESTABLISHED_DEPARTMENT	VARCHAR2(150),
base_move_code NUMBER (9),
TYPE_PERIOD_CODE 	NUMBER (1) not null,
ARTICLE_CODE NUMBER(3),
BASIS_NUM VARCHAR2(30),
BASIS_DATE DATE,
EMP_CODE NUMBER (6) not null,
INS_DATE DATE not null,
priz_system VARCHAR2(1),
cod_bank VARCHAR2(5),
cod_type_prn VARCHAR2(2),
cod_pr_off VARCHAR2(2),
pr_off VARCHAR2(100),
date_utv_km date,
numb_utv_km VARCHAR2(10),
date_pr_kvl date,
numb_pr_kvl VARCHAR2(10),
date_attest date,
resh_attest VARCHAR2(100),
doljn_id varchar2(3),
num_pr_off varchar2(10),
date_pr_off date
);

ALTER TABLE ok_period MODIFY (
OFFICE_ADDRESS null
);

ALTER TABLE ok_period ADD (
BASE_MOVE_CODE NUMBER(9)
);
ALTER TABLE ok_period ADD (
ESTABLISHED_DEPARTMENT VARCHAR2(150)
);

ALTER TABLE ok_period ADD (
priz_system VARCHAR2(1)
);
ALTER TABLE ok_period ADD (
cod_bank VARCHAR2(5)
);

ALTER TABLE ok_period ADD (
cod_type_prn VARCHAR2(2)
);

ALTER TABLE ok_period ADD (
cod_pr_off VARCHAR2(2)
);
ALTER TABLE ok_period ADD (
pr_off VARCHAR2(100)
);
ALTER TABLE ok_period ADD (
date_utv_km date
);
ALTER TABLE ok_period ADD (
numb_utv_km VARCHAR2(10)
);
ALTER TABLE ok_period ADD (
date_pr_kvl date
);
ALTER TABLE ok_period ADD (
numb_pr_kvl VARCHAR2(10)
);
ALTER TABLE ok_period ADD (
date_attest date
);
ALTER TABLE ok_period ADD (
resh_attest VARCHAR2(100)
);

ALTER TABLE ok_period ADD (
doljn_id varchar2(3)
);
ALTER TABLE ok_period ADD (
num_pr_off varchar2(10)
);
ALTER TABLE ok_period ADD (
date_pr_off date
);

ALTER TABLE OK_PERIOD  MODIFY (
  OFFICE_NAME VARCHAR2 (250)
);
ALTER TABLE OK_PERIOD  MODIFY (
  OFFICE_ADDRESS VARCHAR2 (250)
);
ALTER TABLE OK_PERIOD  MODIFY (
  ESTABLISHED_POST VARCHAR2 (250)
);
ALTER TABLE OK_PERIOD  MODIFY (
  ESTABLISHED_DEPARTMENT VARCHAR2 (250)
);

comment on table OK_PERIOD is '�������� � ������';
comment on column OK_PERIOD.IN_OFFICE_DATE is '���� �����������';
comment on column OK_PERIOD.OUT_OFFICE_DATE is '���� ����������';
comment on column OK_PERIOD.OFFICE_NAME is '������������ �����������';
comment on column OK_PERIOD.OFFICE_ADDRESS is '����� �����������';
comment on column OK_PERIOD.ESTABLISHED_POST is '���������� ���������';
comment on column OK_PERIOD.MOTIVE_OUT is '������� (�����������)';
comment on column OK_PERIOD.TYPE_PERIOD_CODE is '��� ���� �����';
comment on column OK_PERIOD.ARTICLE_CODE is '����� ������';
comment on column OK_PERIOD.BASIS_NUM is '����� �������/���������';
comment on column OK_PERIOD.BASIS_DATE is '���� �������/���������';
comment on column OK_PERIOD.ESTABLISHED_DEPARTMENT is '�����';
comment on column OK_PERIOD.base_move_code is '��������� �����������';
comment on column OK_PERIOD.priz_system is '������� �������';
comment on column OK_PERIOD.cod_bank is '��� �����';
comment on column OK_PERIOD.cod_type_prn is '';
comment on column OK_PERIOD.cod_pr_off is '';
comment on column OK_PERIOD.pr_off is '';
comment on column OK_PERIOD.date_utv_km is '���� ����������� ��';
comment on column OK_PERIOD.numb_utv_km is '����� ������������� ��';
comment on column OK_PERIOD.date_pr_kvl is '���� ����������� �� ��';
comment on column OK_PERIOD.numb_pr_kvl is '����� ��������� �� ��';
comment on column OK_PERIOD.date_attest is '���� ����������';
comment on column OK_PERIOD.resh_attest is '������� �������������� ��������';

ALTER TABLE OK_PERIOD ADD CONSTRAINT OK_PERIOD_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, IN_OFFICE_DATE ) ;

ALTER TABLE OK_PERIOD ADD CONSTRAINT OK_PERIOD_UK
  UNIQUE ( BRANCH, PERSONAL_CODE, OUT_OFFICE_DATE ) ;

-- drop SEQUENCE SEQ_OK_PERIOD;
CREATE SEQUENCE SEQ_OK_PERIOD
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_PERIOD.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_PERIOD_SEQ
 BEFORE 
 INSERT
 ON OK_PERIOD
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_PERIOD.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- ���� ������� �� ��������� ���� �� �����������
-- drop table OK_ARMY;
create table OK_ARMY( -- '��������� � �������� ������'
ID	NUMBER(8) not null, -- '��������� �����	������������� ������������� ��� ����������, ��������� ����, ������������ ��� ����������'
BRANCH	CHAR(5) not null, -- '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������'
PERSONAL_CODE 	NUMBER(9) not null, -- '��� ���������� � ���������	���������� �� ������� OK_PERSONAL  ���� ID, ��������� ����, ������������ ��� ����������'
ARMY_CODE 	NUMBER(1) not null, --	'��������� � ������� ������ 	���������� �� ����������� SS_OK_ARMY  ���� ARMY_CODE  ������������ ��� ����������'
FITNESS_ARMY_CODE	NUMBER (1), --	'�������� � ������	���������� �� ����������� SS_OK_Fitness_ARMY  ���� fitness_ARMY_Code'
--STAFF 	VARCHAR2(50) , --,--	'��� �������	�������� � ����������, ������ ����, ������������ ��� ����������'
--TYPE_FORCE	VARCHAR2(50) , --,--	'��� �����	�������� � ����������, ������� ����, ������������ ��� ����������'
--ARMY_GROUP	VARCHAR2(50) , --,--	'������ �����	�������� � ����������, ������� ����, ������������ ��� ����������'
--CATEGORY_ARMY	VARCHAR2(50) , --,--	'��������� �����	�������� � ����������, ������� ����, ������������ ��� ����������'
SPECIAL_ARMY 	VARCHAR2(50) , --,--	'�������� �������������	�������� � ����������, ������� ����, ������������ ��� ����������'
--MILITARY_RANK	VARCHAR2      (50),--	'�������� ������	�������� � ����������, ������� ����, ������������ ��� ����������'
NUMBER_VUS	VARCHAR2(50),	--'����� ������� ������� ������������� (���)	�������� � ����������, ������� ����, ������������ ��� ����������'
CODE_ARMY_POST	VARCHAR2(50),--	'��� ��������� � ������ �������� ������� ������	�������� � ����������, ������� ����, ������������ ��� ���������'
NAME_ARMY_OFFICE	VARCHAR2(50),--	'���������	�������� � ����������, ������� ����, ������������ ��� ����������'
SPECREG_NUMBER	VARCHAR2      (50),--	'������� �� ��������� N	�������� � ����������, ������� ����, ������������ ��� ����������'
EMP_CODE 	NUMBER(6) not null, --	'��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������'
INS_DATE	DATE not null, --	 '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������'
ARMY_GROUP_CODE	number(5),
CATEGORY_ARMY_CODE	number(5),
MILITARY_RANK_code	number(5),
STAFF_CODE 	number(5),
TYPE_FORCE_CODE	number(5)
) ;

ALTER TABLE OK_ARMY ADD (  army_group_code NUMBER (5) );
ALTER TABLE OK_ARMY ADD (  CATEGORY_ARMY_code NUMBER (5) );
ALTER TABLE OK_ARMY ADD (  MILITARY_RANK_code NUMBER (5) );
ALTER TABLE OK_ARMY ADD (  STAFF_code NUMBER (5) );
ALTER TABLE OK_ARMY ADD (  TYPE_FORCE_code NUMBER (5) );

comment on table OK_ARMY is '��������� � �������� ������';
comment on column OK_ARMY.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_ARMY.BRANCH is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_ARMY.PERSONAL_CODE is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_ARMY.ARMY_CODE     is '��������� � ������� ������ 	���������� �� ����������� SS_OK_ARMY  ���� ARMY_CODE  ������������ ��� ����������';
comment on column OK_ARMY.FITNESS_ARMY_CODE is 	'�������� � ������	���������� �� �����������   ���� fitness_ARMY_Code';
comment on column OK_ARMY.STAFF_code 	    is 	'��� �������	�������� � ����������, ������ ����, ������������ ��� ����������';
comment on column OK_ARMY.TYPE_FORCE_code	is 	'��� �����	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ARMY.ARMY_GROUP_code	is 	'������ �����	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ARMY.CATEGORY_ARMY_code is 	'��������� �����	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ARMY.SPECIAL_ARMY  is 	'�������� �������������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ARMY.MILITARY_RANK_code is 	'�������� ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ARMY.NUMBER_VUS	is '����� ������� ������� ������������� (���)	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ARMY.CODE_ARMY_POST	 is 	'��� ��������� � ������ �������� ������� ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ARMY.NAME_ARMY_OFFICE	 is 	'���������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ARMY.SPECREG_NUMBER	 is 	'������� �� ��������� N	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ARMY.EMP_CODE is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_ARMY.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_ARMY ADD CONSTRAINT OK_ARMY_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE ) ;

ALTER TABLE OK_ARMY ADD CONSTRAINT OK_ARMY_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_ARMY;
CREATE SEQUENCE SEQ_OK_ARMY
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_ARMY.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_ARMY_SEQ
 BEFORE 
 INSERT
 ON OK_ARMY
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_ARMY.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
--drop table OK_POST;
--drop SEQUENCE SEQ_OK_POST;
create table ok_post(
ID NUMBER(8)                 NOT NULL ,
BRANCH CHAR(5)               NOT NULL ,
PERSONAL_CODE NUMBER(9)      NOT NULL ,
APPOINTMENT_DATE DATE        NOT NULL ,
APPOINTMENT_MOTIVE VARCHAR2(100),
DEPARTMENT_CODE NUMBER(9)    NOT NULL ,
POST_CODE NUMBER(3)          NOT NULL ,
GRADE            NUMBER(2),
SALARY_FACT  NUMBER(10,2)    NOT NULL ,
RAISE_PERSONAL NUMBER(10,2)  NOT NULL ,
RAISE_ADD NUMBER(10,2)       NOT NULL ,
BASIS_NUM            VARCHAR2(30),
BASIS_DATE DATE              NOT NULL ,
EMP_CODE NUMBER(6)           NOT NULL ,
INS_DATE DATE                NOT NULL ,
STATE        CHAR(1),
BASE_MOVE_CODE NUMBER(9)
);
-----------------------------------------
-- drop table OK_LEAVE;
create table	OK_LEAVE(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
LEAVE_CODE 	NUMBER(2) not null,
BEGIN_YEAR 	DATE not null,
END_YEAR	DATE not null,
PERIOD_LEAVE 	NUMBER (4) not null,
DATE_IN_LEAVE 	DATE not null,
DATE_OUT_LEAVE	DATE not null,
MOTIVE_LEAVE	VARCHAR2(250),
NUM_BASIS 	VARCHAR2(100)	 not null,
DATE_BASIS	DATE,
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null
) ;
alter table ok_leave modify(
MOTIVE_LEAVE null
);
alter table ok_leave modify(
DATE_BASIS null
);

comment on table OK_LEAVE is '������� ��������';
comment on column OK_LEAVE.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_LEAVE.BRANCH is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_LEAVE.PERSONAL_CODE is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_LEAVE.LEAVE_CODE  is '��� �������	���������� �� ������� SS_OK_LEAVE  ���� LEAVE_CODE, ������� ����, ������������ ��� ����������';
comment on column OK_LEAVE.BEGIN_YEAR 	 is '������� ��� -������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_LEAVE.END_YEAR	 is '������� ��� - ���������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_LEAVE.PERIOD_LEAVE 	 is '���������� ���� �������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_LEAVE.DATE_IN_LEAVE  is '���� ������ � ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_LEAVE.DATE_OUT_LEAVE	 is '���� ������ ��  �������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_LEAVE.MOTIVE_LEAVE	 is '�������/��������� ������ � ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_LEAVE.NUM_BASIS is '����� �������/���������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_LEAVE.DATE_BASIS	 is '���� �������/���������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_LEAVE.EMP_CODE is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_LEAVE.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_LEAVE ADD CONSTRAINT OK_LEAVE_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, DATE_IN_LEAVE ) ;

ALTER TABLE OK_LEAVE ADD CONSTRAINT OK_LEAVE_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_LEAVE;
CREATE SEQUENCE SEQ_OK_LEAVE
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_LEAVE.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_LEAVE_SEQ
 BEFORE 
 INSERT
 ON OK_LEAVE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
   select SEQ_OK_LEAVE.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_EDUCATION;
create table OK_EDUCATION(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
EDUCATION_CODE 	NUMBER(3) not null,
BASIS_CODE 	NUMBER(1) not null, 
INSTITUTION_CODE	NUMBER(5), 
BEGIN_DATE 	NUMBER(4),
END_DATE	NUMBER(4),
PROFESSION_PERSONAL  	VARCHAR2(250), 
QUALIFICATION_CODE	NUMBER(2), 
DIPLOM_NUM	VARCHAR2(10), 
EMP_CODE NUMBER(6) not null, 
INS_DATE DATE not null, 
cod_vuz_prim varchar2(50),
curs varchar2(1), 
fakultet varchar2(20) 
) ;

ALTER TABLE OK_EDUCATION ADD (
cod_vuz_prim varchar2(50) 
 );
ALTER TABLE OK_EDUCATION ADD (
curs varchar2(1) 
 );
ALTER TABLE OK_EDUCATION ADD (
fakultet varchar2(20) 
 );
ALTER TABLE OK_EDUCATION modify (
fakultet varchar2(20) 
 );

comment on table OK_EDUCATION is '�������� �� �����������';
comment on column OK_EDUCATION.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_EDUCATION.BRANCH is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_EDUCATION.PERSONAL_CODE is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_EDUCATION.EDUCATION_CODE is '���  �����������	���������� �� ����������� SS_OK_EDUCATION ����  EDUCATION_CODE, � �������� ����� ��������� ������������ ��������� �����������, ������� ����, ������������ ��� ����������';
comment on column OK_EDUCATION.BASIS_CODE is '��� ������� �������� �����������	���������� �� ����������� SS_OK_BASIS  ����  BASIS_CODE,  ������� ����, ������������ ��� ����������';
comment on column OK_EDUCATION.INSTITUTION_CODE is '��� �������� ���������	���������� �� �����������  SS_OK_INSTITUTION  ����  INSTITUTION_CODE,� �������� ����� ����� ���������� � ������������ � ������ ������������ �������� ���������, ������� ����, �������������� ��� ����������';
comment on column OK_EDUCATION.BEGIN_DATE is '���� ����������� � ������� ���������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_EDUCATION.END_DATE is '���� ��������� �������� ���������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_EDUCATION.PROFESSION_PERSONAL is '������������� �� �������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_EDUCATION.QUALIFICATION_CODE is '��� ������������ �� �������	���������� �� ����������� SS_OK_QUALIFICATION  ���� QUALIFICATION_CODE , � �������� �����  ���������  ������������, ������� ����, �������������� ��� ����������';
comment on column OK_EDUCATION.DIPLOM_NUM is '����� ������� ��� �������������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_EDUCATION.EMP_CODE is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_EDUCATION.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_EDUCATION ADD CONSTRAINT OK_EDUCATION_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_EDUCATION ADD CONSTRAINT OK_EDUCATION_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_EDUCATION;
CREATE SEQUENCE SEQ_OK_EDUCATION
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_EDUCATION.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_EDUCATION_SEQ
 BEFORE 
 INSERT
 ON OK_EDUCATION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_EDUCATION.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_PARTY;
create table	OK_PARTY(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
PARTY_CODE	NUMBER(2) not null,
OUT_PARTY 	VARCHAR2(200),
PARTY_DATE NUMBER(4),
PARTY_OUTDATE	NUMBER(4),
PUNISHMENT_MOTIVE	VARCHAR2(200),
PUNISHMENT_DATE	NUMBER(4),
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null,
code_partii_prim varchar2(50)
) ;

ALTER TABLE OK_PARTY ADD (
code_partii_prim varchar2(50)
 );

comment on table OK_PARTY is '�������� � �����������';
comment on column OK_PARTY.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_PARTY.BRANCH is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_PARTY.PERSONAL_CODE is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_PARTY.PARTY_CODE is '��� �����������	���������� �� �����������SS_OK_PARTY ���� PARTY_CODE , � �������� ����� ��������� �������� ������ �� �����������, ������� ����, ������������ ��� ����������';
comment on column OK_PARTY.OUT_PARTY is '������� ������ �� ������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_PARTY.PARTY_OUTDATE is '��� ���� ������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_PARTY.PUNISHMENT_MOTIVE is '������� ���������� ���������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_PARTY.PUNISHMENT_DATE is '��� ���� ��������� ����.���������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_PARTY.EMP_CODE is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_PARTY.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_PARTY ADD CONSTRAINT OK_PARTY_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_PARTY ADD CONSTRAINT OK_PARTY_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_PARTY;
CREATE SEQUENCE SEQ_OK_PARTY
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

CREATE OR REPLACE TRIGGER TR_OK_PARTY_SEQ
 BEFORE 
 INSERT
 ON OK_PARTY
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_PARTY.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table OK_ACADEMIC;
create table OK_ACADEMIC( -- �������� �� ������ �������
ID	NUMBER(8) not null, -- '��������� �����	������������� ������������� ��� ����������, ��������� ����, ������������ ��� ����������'
BRANCH	CHAR(5) not null, -- '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������'
PERSONAL_CODE 	NUMBER(9) not null, -- '��� ���������� � ���������	���������� �� ������� OK_PERSONAL  ���� ID, ��������� ����, ������������ ��� ����������'
ACADEMIC_CODE	NUMBER(1) not null, --��� ������� ������	���������� �� ����������� SS_OK_ACADEMIC ���� ACADEMIC_CODE, ������� ����, ������������ ��� ����������
ACADEMIC_DATE	NUMBER(4) not null, --����  ��������� ������� ������	�������� � ����������, ������� ����, ������������ ��� ����������
EMP_CODE NUMBER(6) not null, -- ��� ������������, ���������� ����������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������
INS_DATE DATE not null, -- ���� � ����� ����� ������	SYSDATE , ��������� ����, ������������ ��� ����������
STATE char(1)
) ;

comment on table OK_ACADEMIC is '�������� �� ������ �������';
comment on column OK_ACADEMIC.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_ACADEMIC.BRANCH is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_ACADEMIC.PERSONAL_CODE is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_ACADEMIC.ACADEMIC_CODE is '��� ������� ������	���������� �� ����������� SS_OK_ACADEMIC ���� ACADEMIC_CODE, ������� ����, ������������ ��� ����������';
comment on column OK_ACADEMIC.ACADEMIC_DATE is '����  ��������� ������� ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ACADEMIC.EMP_CODE is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_ACADEMIC.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_ACADEMIC ADD CONSTRAINT OK_ACADEMIC_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_ACADEMIC ADD CONSTRAINT OK_ACADEMIC_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_ACADEMIC;
CREATE SEQUENCE SEQ_OK_ACADEMIC
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_ACADEMIC.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_ACADEMIC_SEQ
 BEFORE 
 INSERT
 ON OK_ACADEMIC
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_ACADEMIC.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_DEGREE;
create table	OK_DEGREE( -- �������� �� ������ ��������
ID	NUMBER(8) not null, -- '��������� �����	������������� ������������� ��� ����������, ��������� ����, ������������ ��� ����������'
BRANCH	CHAR(5) not null, -- '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������'
PERSONAL_CODE 	NUMBER(9) not null, -- '��� ���������� � ���������	���������� �� ������� OK_PERSONAL  ���� ID, ��������� ����, ������������ ��� ����������'
DEGREE_CODE	NUMBER(1) not null, -- 	��� ������ �������	���������� �� ����������� SS_OK_DEGREE ���� DEGREE_CODE � �������� ����� ������������� ������ ������������, ������� ����, ������������ ��� ����������
DEGREE_DATE	number(4) not null, -- 	���� ��������� ������ �������	�������� � ����������, ������� ����, ������������ ��� ����������
EMP_CODE NUMBER(6) not null, -- ��� ������������, ���������� ����������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������
INS_DATE DATE not null, -- ���� � ����� ����� ������	SYSDATE , ��������� ����, ������������ ��� ����������
STATE CHAR(1)
) ;

comment on table OK_DEGREE is '�������� �� ������ ��������';
comment on column OK_DEGREE.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_DEGREE.BRANCH is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_DEGREE.PERSONAL_CODE is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_DEGREE.DEGREE_CODE	is 	'��� ������ �������	���������� �� ����������� SS_OK_DEGREE ���� DEGREE_CODE � �������� ����� ������������� ������ ������������, ������� ����, ������������ ��� ����������';
comment on column OK_DEGREE.DEGREE_DATE	is	'���� ��������� ������ �������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_DEGREE.EMP_CODE is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_DEGREE.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_DEGREE ADD CONSTRAINT OK_DEGREE_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_DEGREE ADD CONSTRAINT OK_DEGREE_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_DEGREE;
CREATE SEQUENCE SEQ_OK_DEGREE
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_DEGREE.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_DEGREE_SEQ
 BEFORE 
 INSERT
 ON OK_DEGREE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_DEGREE.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_AWARD;
create table OK_AWARD( -- �������� � ��������
ID	NUMBER(8) not null, -- '��������� �����	������������� ������������� ��� ����������, ��������� ����, ������������ ��� ����������'
BRANCH	CHAR(5) not null, -- '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������'
PERSONAL_CODE 	NUMBER(9) not null, -- '��� ���������� � ���������	���������� �� ������� OK_PERSONAL  ���� ID, ��������� ����, ������������ ��� ����������'
AWARD_DATE  	number(4)	 not null, --���� ��������� �������	�������� � ����������, ������� ����, ������������ ��� ����������
AWARD_INFO 	VARCHAR2(255)	 not null, --�������� � �������� - �����	�������� � ����������, ������� ����, ������������ ��� ����������
EMP_CODE NUMBER(6) not null, -- ��� ������������, ���������� ����������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������
INS_DATE DATE not null -- ���� � ����� ����� ������	SYSDATE , ��������� ����, ������������ ��� ����������
) ;

comment on table OK_AWARD is '�������� � ��������';
comment on column OK_AWARD.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_AWARD.BRANCH is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_AWARD.PERSONAL_CODE is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_AWARD.AWARD_DATE  is '��� ���� ��������� �������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_AWARD.AWARD_INFO  is '�������� � �������� - �����	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_AWARD.EMP_CODE is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_AWARD.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_AWARD ADD CONSTRAINT OK_AWARD_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_AWARD ADD CONSTRAINT OK_AWARD_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_AWARD;
CREATE SEQUENCE SEQ_OK_AWARD
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_AWARD.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_AWARD_SEQ
 BEFORE 
 INSERT
 ON OK_AWARD
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_AWARD.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_SCIENTIFIC;
create table	OK_SCIENTIFIC( -- �������� � ������� �������
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
SCIENTIFIC_INFO 	VARCHAR2(255) not null,
SCIENTIFIC_DATE 	NUMBER(4) not null,
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null
) ;

comment on table OK_SCIENTIFIC is '�������� � ������� �������';
comment on column OK_SCIENTIFIC.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_SCIENTIFIC.BRANCH is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_SCIENTIFIC.PERSONAL_CODE is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_SCIENTIFIC.SCIENTIFIC_INFO is '�������� � ������� ������� - ����� 	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_SCIENTIFIC.SCIENTIFIC_DATE is '��� ���� ��������� ������� ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_SCIENTIFIC.EMP_CODE is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_SCIENTIFIC.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_SCIENTIFIC ADD CONSTRAINT OK_SCIENTIFIC_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_SCIENTIFIC ADD CONSTRAINT OK_SCIENTIFIC_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_SCIENTIFIC;
CREATE SEQUENCE SEQ_OK_SCIENTIFIC
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_SCIENTIFIC.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_SCIENTIFIC_SEQ
 BEFORE 
 INSERT
 ON OK_SCIENTIFIC
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_SCIENTIFIC.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-- drop table	OK_VOYAGE;
create table	OK_VOYAGE(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
VOYAGE_DATE 	number(4) not null,
VOYAGE_LAND 	VARCHAR2(100) not null,
VOYAGE_INFO	VARCHAR2(255) not null,
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null,
voyage_str varchar2(3),
data_in number(4)
) ;

alter table ok_voyage modify(
VOYAGE_DATE null
);
alter table ok_voyage modify(
VOYAGE_LAND null
);
alter table ok_voyage modify(
VOYAGE_INFO null
);

ALTER TABLE ok_voyage ADD (  
voyage_str varchar2(3) 
);

ALTER TABLE ok_voyage ADD (  
data_in number(4)
);




comment on table OK_VOYAGE is '�������� � ���������� ��������';
comment on column OK_VOYAGE.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_VOYAGE.BRANCH is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_VOYAGE.PERSONAL_CODE is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_VOYAGE.VOYAGE_DATE  is '��� ���� �������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_VOYAGE.VOYAGE_LAND  is '������ ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_VOYAGE.VOYAGE_INFO is '�������� � ���������� ��������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_VOYAGE.EMP_CODE is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_VOYAGE.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_VOYAGE ADD CONSTRAINT OK_VOYAGE_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_VOYAGE ADD CONSTRAINT OK_VOYAGE_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_VOYAGE;
CREATE SEQUENCE SEQ_OK_VOYAGE
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_VOYAGE.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_VOYAGE_SEQ
 BEFORE 
 INSERT
 ON OK_VOYAGE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_VOYAGE.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_RISE;
create table	OK_RISE(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
RISE_DATE_YEAR NUMBER(4),
RISE_INFO 	VARCHAR2(250) not null,
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null
) ;

comment on table OK_RISE is '�������� � ��������� ������������';
comment on column OK_RISE.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_RISE.BRANCH is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_RISE.PERSONAL_CODE is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_RISE.RISE_DATE_YEAR  is '��� ����������� ��������� ������������';
comment on column OK_RISE.RISE_INFO  is '�������� � ��������� ������������';
comment on column OK_RISE.EMP_CODE is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_RISE.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

--ALTER TABLE OK_RISE ADD CONSTRAINT OK_RISE_PK
--  PRIMARY KEY ( BRANCH, PERSONAL_CODE, RISE_DATE_YEAR ) ;
ALTER TABLE OK_RISE drop CONSTRAINT OK_RISE_PK; 

ALTER TABLE OK_RISE ADD CONSTRAINT OK_RISE_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_RISE;
CREATE SEQUENCE SEQ_OK_RISE
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

CREATE OR REPLACE TRIGGER TR_OK_RISE_SEQ
 BEFORE 
 INSERT
 ON OK_RISE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_RISE.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_PENALTY;
create table	OK_PENALTY( -- �������� � ��������� ���������
ID	NUMBER(8) not null, -- '��������� �����	������������� ������������� ��� ����������, ��������� ����, ������������ ��� ����������'
BRANCH	CHAR(5) not null, -- '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������'
PERSONAL_CODE 	NUMBER(9) not null, -- '��� ���������� � ���������	���������� �� ������� OK_PERSONAL  ���� ID, ��������� ����, ������������ ��� ����������'
PENALTY_CODE	NUMBER(2) not null, --	��� ��������� 	���������� �� ����������� SS_OK_PENALTY  ���� PENALTY_CODE , � �������� ����� ��������� �������� ���������  �� �����������, ������� ����, ������������ ��� ����������
PENALTY_MOTIVE	VARCHAR2(200), --	�������  ���������	�������� � ����������, ������� ����, �������������� ��� ����������
PENALTY_DATE	DATE, --	���� ��������� ���������	�������� � ����������, ������� ����, �������������� ��� ����������
PENALTY_NUM	VARCHAR2(7), --	����� ���������	�������� � ����������, ������� ����, �������������� ��� ����������
EMP_CODE NUMBER(6) not null, -- ��� ������������, ���������� ����������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������
INS_DATE DATE not null -- ���� � ����� ����� ������	SYSDATE , ��������� ����, ������������ ��� ����������
) ;

comment on table OK_PENALTY is '�������� � ��������� ���������';
comment on column OK_PENALTY.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_PENALTY.BRANCH is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_PENALTY.PERSONAL_CODE is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_PENALTY.PENALTY_CODE	 is '��� ��������� 	���������� �� ����������� SS_OK_PENALTY  ���� PENALTY_CODE , � �������� ����� ��������� �������� ���������  �� �����������, ������� ����, ������������ ��� ����������';
comment on column OK_PENALTY.PENALTY_MOTIVE is '�������  ���������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_PENALTY.PENALTY_DATE  is '���� ��������� ���������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_PENALTY.PENALTY_NUM	 is '����� ���������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_PENALTY.EMP_CODE is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_PENALTY.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_PENALTY ADD CONSTRAINT OK_PENALTY_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_PENALTY ADD CONSTRAINT OK_PENALTY_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_PENALTY;
CREATE SEQUENCE SEQ_OK_PENALTY
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_PENALTY.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_PENALTY_SEQ
 BEFORE 
 INSERT
 ON OK_PENALTY
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_PENALTY.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_LANGUAGE;
create table	OK_LANGUAGE(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
LANGUAGE_CODE 	NUMBER (3) not null,
LEVEL_CODE	NUMBER (1) not null, 
EMP_CODE NUMBER(6) not null, 
INS_DATE DATE not null, 
STATE CHAR(1),
cod_lang_prim varchar2(50)
) ;


ALTER TABLE OK_LANGUAGE ADD (
cod_lang_prim varchar2(50)
 );

comment on table OK_LANGUAGE is '�������� �� ����������� ������';
comment on column OK_LANGUAGE.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_LANGUAGE.BRANCH is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_LANGUAGE.PERSONAL_CODE is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_LANGUAGE.LANGUAGE_CODE is '��� ������������ �����	���������� ����������� ������ ����� ���� ������� ������, ���������� ������ ��� ����� ��������� �����������. � �������� �����  ��������� ������������ ���� ��������� ����������� ������ ������ � ������� ������ ���� ������ ���� - ������� � �.�.���������� �� ������� SS_OK_LANGUAGE  ���� LANGUAGE_CODE , ������� ����, ������������ ��� ����������';
comment on column OK_LANGUAGE.LEVEL_CODE is '��� ������ ������ ������������ �����	��� ������ ������ ������������ �� ������ ��� ������ ����� � �������� �����  ��������� ������������ ���� ��������� ����������� ������ ������ � ������� ������ ���� ������ ���� - ������� � �.�. ���������� �� ������� SS_OK_LEVEL _LANGUAGE  ���� LEVEL_CODE, ������� ����, ������������ ��� ����������';
comment on column OK_LANGUAGE.EMP_CODE is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_LANGUAGE.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_LANGUAGE ADD CONSTRAINT OK_LANGUAGE_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, LANGUAGE_CODE ) ;

ALTER TABLE OK_LANGUAGE ADD CONSTRAINT OK_LANGUAGE_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_LANGUAGE;
CREATE SEQUENCE SEQ_OK_LANGUAGE
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_LANGUAGE.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_LANGUAGE_SEQ
 BEFORE 
 INSERT
 ON OK_LANGUAGE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_LANGUAGE.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
--drop table	OK_ELECTION;
create table OK_ELECTION(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
ELECTION_CODE	number (3) not null,
ELECTION_POST 	VARCHAR2(250) not null,
ELECTION_DATE_BEGIN 	NUMBER(4) not null,
ELECTION_DATE_END  	NUMBER(4),
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null
) ;

alter table OK_ELECTION modify(ELECTION_ADDRESS null);

alter table OK_ELECTION
add (
ELECTION_code number(3)
);

comment on table OK_ELECTION is '�������� �� �������� � �������������� ������';
comment on column OK_ELECTION.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_ELECTION.BRANCH is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_ELECTION.PERSONAL_CODE is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_ELECTION.ELECTION_POST is '��� ��� ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ELECTION.ELECTION_DATE_BEGIN is '��� ���� �������� � ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ELECTION.ELECTION_DATE_END is '��� ���� ��������� ����� ������ � �������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ELECTION.EMP_CODE is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_ELECTION.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_ELECTION ADD CONSTRAINT OK_ELECTION_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_ELECTION ADD CONSTRAINT OK_ELECTION_UK
  UNIQUE ( branch, id ) ;

--drop SEQUENCE SEQ_OK_ELECTION;
CREATE SEQUENCE SEQ_OK_ELECTION
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

CREATE OR REPLACE TRIGGER TR_OK_ELECTION_SEQ
 BEFORE 
 INSERT
 ON OK_ELECTION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_ELECTION.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_PREMIUM;
create table	OK_PREMIUM(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
PREMIUM_DATE 	NUMBER(4) not null,
PREMIUM_NAME	VARCHAR2(250) not null,
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null
) ;

comment on table OK_PREMIUM is '�������� � ��������� ��������������� ������';
comment on column OK_PREMIUM.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_PREMIUM.BRANCH is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_PREMIUM.PERSONAL_CODE is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_PREMIUM.PREMIUM_DATE is '��� ���� ��������� ������	�������� � ����������, ��������� ����, ������������ ��� ����������';
comment on column OK_PREMIUM.PREMIUM_NAME is '������������ ������	�������� � ����������, ��������� ����, ������������ ��� ����������';
comment on column OK_PREMIUM.EMP_CODE is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_PREMIUM.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_PREMIUM ADD CONSTRAINT OK_PREMIUM_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_PREMIUM ADD CONSTRAINT OK_PREMIUM_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_PREMIUM;
CREATE SEQUENCE SEQ_OK_PREMIUM
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

CREATE OR REPLACE TRIGGER TR_OK_PREMIUM_SEQ
 BEFORE 
 INSERT
 ON OK_PREMIUM
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_PREMIUM.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_YOUTH;
create table	OK_YOUTH(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
YOUTH_CODE	NUMBER (2) not null,
IN_DATE	DATE not null,
OUT_DATE DATE,
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null
) ;
alter table ok_youth modify(
OUT_DATE null
);
comment on table OK_YOUTH is '�������� � ���������� �����������';
comment on column OK_YOUTH.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_YOUTH.BRANCH is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_YOUTH.PERSONAL_CODE is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_YOUTH.YOUTH_CODE is '���  �����.  �����������	���������� �� ����������� SS_OK_YOUTH ���� YOUTH_CODE , � �������� ����� ��������� �������� ���-� �� �����������, ������� ����, ������������ ��� ����������';
comment on column OK_YOUTH.IN_DATE is '����  ���������� 	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_YOUTH.OUT_DATE is '���� ������	�������� � ����������, ������� ����';
comment on column OK_YOUTH.EMP_CODE is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_YOUTH.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_YOUTH ADD CONSTRAINT OK_YOUTH_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_YOUTH ADD CONSTRAINT OK_YOUTH_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_YOUTH;
CREATE SEQUENCE SEQ_OK_YOUTH
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_YOUTH.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_YOUTH_SEQ
 BEFORE 
 INSERT
 ON OK_YOUTH
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_YOUTH.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_CONVICTIONS;
create table	OK_CONVICTIONS( -- �������� � �������� ���������������
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
CONVICTIONS_DATE 	NUMBER(4) not null,
CONVICTIONS_MOTIVE	VARCHAR2(200) not null,
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null
) ;

comment on table OK_CONVICTIONS is '�������� � �������� ���������������';
comment on column OK_CONVICTIONS.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_CONVICTIONS.BRANCH is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_CONVICTIONS.PERSONAL_CODE is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_CONVICTIONS.CONVICTIONS_DATE is '��� ���� �����������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_CONVICTIONS.CONVICTIONS_MOTIVE is '������� �����������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_CONVICTIONS.EMP_CODE is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_CONVICTIONS.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_CONVICTIONS ADD CONSTRAINT OK_CONVICTIONS_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_CONVICTIONS ADD CONSTRAINT OK_CONVICTIONS_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_CONVICTIONS;
CREATE SEQUENCE SEQ_OK_CONVICTIONS
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_CONVICTIONS.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_CONVICTIONS_SEQ
 BEFORE 
 INSERT
 ON OK_CONVICTIONS
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_CONVICTIONS.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_ADDINFORM;
create table	OK_ADDINFORM(  -- �������������� ��������
ID	NUMBER(8) not null, -- '��������� �����	������������� ������������� ��� ����������, ��������� ����, ������������ ��� ����������'
BRANCH	CHAR(5) not null, -- '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������'
PERSONAL_CODE 	NUMBER(9) not null, -- '��� ���������� � ���������	���������� �� ������� OK_PERSONAL  ���� ID, ��������� ����, ������������ ��� ����������'
ADDINFORM_DATE 	DATE not null, --���� 	�������� � ����������, ������� ����, ������������ ��� ����������
CHARACTER_ADDINFORM	VARCHAR2(200) not null, --���������� ���.��������	�������� � ����������, ������� ����, ������������ ��� ����������
EMP_CODE NUMBER(6) not null, -- ��� ������������, ���������� ����������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������
INS_DATE DATE not null -- ���� � ����� ����� ������	SYSDATE , ��������� ����, ������������ ��� ����������
) ;

comment on table OK_ADDINFORM is '�������������� ��������';
comment on column OK_ADDINFORM.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_ADDINFORM.BRANCH is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_ADDINFORM.PERSONAL_CODE is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_ADDINFORM.ADDINFORM_DATE is '���� 	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ADDINFORM.CHARACTER_ADDINFORM is '���������� ���.��������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ADDINFORM.EMP_CODE is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_ADDINFORM.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_ADDINFORM ADD CONSTRAINT OK_ADDINFORM_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_ADDINFORM ADD CONSTRAINT OK_ADDINFORM_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_ADDINFORM;
CREATE SEQUENCE SEQ_OK_ADDINFORM
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_ADDINFORM.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_ADDINFORM_SEQ
 BEFORE 
 INSERT
 ON OK_ADDINFORM
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_ADDINFORM.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_STAT;
create table	OK_STAT( -- ������� ���������� - �������� �����
ID	NUMBER(8) not null, -- '��������� �����	������������� ������������� ��� ����������, ��������� ����, ������������ ��� ���������'
BRANCH	CHAR(5) not null, -- '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������'
STAT_CODE NUMBER(8) not null, --��� ���� �������� ����� (����������� ������������� ���� �� ���������)
DEPARTMENT_CODE NUMBER(9) not null, --��� ������	���������� �� ����������� SS_OK_DEPARTAMENT  ���� DEPARTAMENT_CODE, � �������� �����  ��������� ������������ ������, ������� ����, ������������ ��� ����������
POST_CODE	NUMBER (3) not null, --��� ���������	���������� �� ����������� SS_OK_POST ���� POST_CODE, �� ����� � � �������� ����� ��������� ������������ ���������, ������� ����, ������������ ��� ����������
QUANTITY_POST NUMBER (3) not null, --����� ���������� ����������� �  ������ ��������� �  ����� ������ �������� ����. �����������  ������  �� ������ ������ � ���������� ����� ��������� POST_CODE, ������� ����, ������������ ��� ����������
SALARY_FACT 	NUMBER(10,2) not null, -- ������������ ����������� ������	�������� � ����������, ������� ����, ������������ ��� ����������
EMP_CODE NUMBER(6) not null, -- ��� ������������, ���������� ����������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������
INS_DATE DATE not null, -- ���� � ����� ����� ������	SYSDATE , ��������� ����, ������������ ��� ����������
SPECIAL_CODE	number (3) not null
) ;

ALTER TABLE OK_STAT ADD (
SPECIAL_CODE	number (3)
 );

update ok_stat set SPECIAL_CODE=0
where special_code is null;

ALTER TABLE OK_STAT
 MODIFY (
  SPECIAL_CODE NOT NULL
 );

comment on table OK_STAT is '������� ���������� - �������� �����';
comment on column OK_STAT.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_STAT.BRANCH is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_STAT.STAT_CODE is '��� ���� �������� �����';
comment on column OK_STAT.DEPARTMENT_CODE  is '��� ������	���������� �� ����������� SS_OK_DEPARTAMENT  ���� DEPARTAMENT_CODE, � �������� �����  ��������� ������������ ������, ������� ����, ������������ ��� ����������';
comment on column OK_STAT.POST_CODE	 is '��� ���������	���������� �� ����������� SS_OK_POST ���� POST_CODE, �� ����� � � �������� ����� ��������� ������������ ���������, ������� ����, ������������ ��� ����������';
comment on column OK_STAT.QUANTITY_POST  is '����� ���������� ����������� �  ������ ��������� �  ����� ������	��������� ����. �����������  ������  �� ������ ������ � ���������� ����� ��������� POST_CODE, ������� ����, ������������ ��� ����������';
comment on column OK_STAT.SALARY_FACT is '������������ ����������� ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_STAT.EMP_CODE is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_STAT.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_STAT drop CONSTRAINT OK_STAT_PK;

ALTER TABLE OK_STAT ADD CONSTRAINT OK_STAT_PK
  PRIMARY KEY ( BRANCH, DEPARTMENT_CODE, POST_CODE, SPECIAL_CODE ) ;

ALTER TABLE OK_STAT ADD CONSTRAINT OK_STAT_UK
  UNIQUE ( branch, stat_code ) ;

-- drop SEQUENCE SEQ_OK_STAT;
CREATE SEQUENCE SEQ_OK_STAT
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;


CREATE OR REPLACE TRIGGER TR_OK_STAT_SEQ
 BEFORE 
 INSERT
 ON OK_STAT
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_STAT.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table OK_STAT_SALARY;
create table OK_STAT_SALARY( --������� ����������-�������������� �����
ID	NUMBER(8) not null, -- '��������� �����	������������� ������������� ��� ����������, ��������� ����, ������������ ��� ����������'
BRANCH	CHAR(5) not null, -- '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������'
SALARY_CODE 	NUMBER(9) not null, -- '��� �������� ����� � ���������'
STAT_CODE NUMBER(8) not null, --��� ���� �������� �����
VACANCY_CODE	NUMBER (1) not null, --'��������'	������� �������/���������� ��������	���������� �� ����������� SS_OK_VACANCY ���� VACANCY_CODE, ��������� ���� ������������ ��� ����������, ����������� ������������� ����� ��������� �������� "��������� ������"
VACANCY_DATE	DATE, --	'���� ����������� ��������'	���� ��������� � ������� 'DDMMYYYY', �� ��������� ������������ ���� ������������� ��� ��������� �������� "1-��������", ������� ����, ������������ ��� ����������, ��������  � ����������, �������� �������������.
REZERVE_CODE	NUMBER (1) not null, --'������'   ������� �������/���������� ������� 	���������� �� ����������� SS_OK_REZERVE  ���� REZERVE_CODE, ������� ���� �������������� ��� ����������, �����������  � ����������
EMP_CODE NUMBER(6) not null, -- ��� ������������, ���������� ����������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������
INS_DATE DATE not null -- ���� � ����� ����� ������	SYSDATE , ��������� ����, ������������ ��� ����������
) ;

comment on table OK_STAT_SALARY is '������� ����������-�������������� �����';
comment on column OK_STAT_SALARY.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_STAT_SALARY.BRANCH is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_STAT_SALARY.SALARY_CODE is '��� �������� ����� � ���������';
comment on column OK_STAT_SALARY.STAT_CODE is '��� ���� �������� �����';
comment on column OK_STAT_SALARY.VACANCY_CODE is '������� �������/���������� ��������	���������� �� ����������� SS_OK_VACANCY ���� VACANCY_CODE, ��������� ���� ������������ ��� ����������, ����������� ������������� ����� ��������� �������� "��������� ������"';
comment on column OK_STAT_SALARY.VACANCY_DATE is '���� ����������� ��������	���� ��������� � ������� DDMMYYYY, �� ��������� ������������ ���� ������������� ��� ��������� �������� "1-��������", ������� ����, ������������ ��� ����������, ��������  � ����������, �������� �������������.';
comment on column OK_STAT_SALARY.REZERVE_CODE is '������� �������/���������� ������� 	���������� �� ����������� SS_OK_REZERVE  ���� REZERVE_CODE, ������� ���� �������������� ��� ����������, �����������  � ����������';
comment on column OK_STAT_SALARY.EMP_CODE is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_STAT_SALARY.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_STAT_SALARY ADD CONSTRAINT OK_STAT_SALARY_PK
  PRIMARY KEY ( BRANCH, SALARY_CODE ) ;

ALTER TABLE OK_STAT_SALARY ADD CONSTRAINT OK_STAT_SALARY_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_STAT_SALARY;
CREATE SEQUENCE SEQ_OK_STAT_SALARY
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_STAT_SALARY.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_STAT_SALARY_SEQ
 BEFORE 
 INSERT
 ON OK_STAT_SALARY
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_STAT_SALARY.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- ���� ��� ������ ����� -�������� �����-���������� �����������, � ��������� ������� ������������� ��� ����������
-- drop table OK_ATTESTATION;
create table OK_ATTESTATION( --������ � ����������� ���������� (� �������� ����������� ��� ���������� �������� �������)
ID	NUMBER(8) not null, -- '��������� �����	������������� ������������� ��� ����������, ��������� ����, ������������ ��� ����������'
BRANCH	CHAR(5) not null, -- '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������'
PERSONAL_CODE 	NUMBER(9) not null, -- '��� ���������� � ���������	���������� �� ������� OK_PERSONAL  ���� ID, ��������� ����, ������������ ��� ����������'
DATE_ATTESTATION 	DATE not null, --���� ����������� ���������� ������� ����
NUM_ATTESTATION 	NUMBER (9) not null, --����� ������������� 	 ������� ����
EMP_CODE NUMBER(6) not null, -- ��� ������������, ���������� ����������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������
INS_DATE DATE not null -- ���� � ����� ����� ������	SYSDATE , ��������� ����, ������������ ��� ����������
) ;

comment on table OK_ATTESTATION is '������ � ����������� ���������� (� �������� ����������� ��� ���������� �������� �������)';
comment on column OK_ATTESTATION.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_ATTESTATION.BRANCH is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_ATTESTATION.PERSONAL_CODE is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_ATTESTATION.DATE_ATTESTATION is '���� ����������� ���������� 	 ������� ����';
comment on column OK_ATTESTATION.NUM_ATTESTATION is '����� ������������� ������� ����';
comment on column OK_ATTESTATION.EMP_CODE is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_ATTESTATION.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_ATTESTATION ADD CONSTRAINT OK_ATTESTATION_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_ATTESTATION ADD CONSTRAINT OK_ATTESTATION_UK
  UNIQUE ( branch, id ) ;


-- drop SEQUENCE SEQ_OK_ATTESTATION;
CREATE SEQUENCE SEQ_OK_ATTESTATION
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_OK_ATTESTATION.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_ATTESTATION_SEQ
 BEFORE 
 INSERT
 ON OK_ATTESTATION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
   select SEQ_OK_ATTESTATION.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/
-----------------------------------------
-- drop table OK_SEND_ALL;
create table OK_SEND_ALL(
branch char(5),
personal_code number(9),
a varchar2(2000),
b varchar2(2000),
c varchar2(2000),
d varchar2(2000),
e varchar2(2000),
f varchar2(2000),
g varchar2(2000),
h varchar2(2000),
i varchar2(2000),
ia  varchar2(250),
j varchar2(2000),
k varchar2(2000),
l varchar2(2000),
m varchar2(2000),
n varchar2(2000),
o varchar2(2000),
p varchar2(2000),
q varchar2(2000),
r varchar2(2000),
s varchar2(2000),
t varchar2(2000),
u varchar2(2000),
v varchar2(2000),
w varchar2(2000),
x varchar2(2000),
y varchar2(2000),
z varchar2(2000),
aa varchar2(2000),
bb varchar2(2000),
cc varchar2(2000),
dd varchar2(2000),
ee varchar2(2000),
ff varchar2(2000),
gg varchar2(2000),
hh varchar2(2000),
ii varchar2(2000),
jj varchar2(2000),
kk varchar2(2000),
ll varchar2(2000)
);
----------------------------
alter table ok_send_all add ia varchar2(250);

-- drop table OK_PHOTO;
create table OK_PHOTO(
ID	NUMBER(8) not null, --	'��������� �����	� ������� �����������, �������   � "1"'
BRANCH	char(5) not null, 	-- '��� ���������	���������� �� ������� S_MFO ���� BANK_ID, ��������� ����, ������������ ��� ����������'
PERSONAL_CODE  	NUMBER (9) not null,	-- '��� ���������� � ���������	������������� ������������� � ��������� � ���������� � �������� ����  � ����� - �������� � ���������, ��������� ����, ������������ ��� ����������'
PHOTO long raw not null,
EMP_CODE 	NUMBER (6) not null, -- '��� ������������ ���������� ����������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������'
INS_DATE	DATE  not null -- '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������'
) ;

comment on table OK_PHOTO is '����������';
comment on column OK_PHOTO.ID is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_PHOTO.BRANCH	 is '��� ���������	���������� �� ������� S_MFO ���� BANK_ID, ��������� ����, ������������ ��� ����������';
comment on column OK_PHOTO.PERSONAL_CODE  is '��� ���������� � ���������	���������� �� ������� OK_PERSONAL  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_PHOTO.PHOTO  is '����';
comment on column OK_PHOTO.EMP_CODE is '��� ������������ ���������� ����������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_PHOTO.INS_DATE is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';

ALTER TABLE OK_PHOTO ADD CONSTRAINT OK_PHOTO_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE) ;

ALTER TABLE OK_PHOTO ADD CONSTRAINT OK_PHOTO_UK
  UNIQUE ( BRANCH, ID ) ;

-- drop SEQUENCE SEQ_OK_PHOTO;
CREATE SEQUENCE SEQ_OK_PHOTO
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_CHANGE_FIO.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_PHOTO_SEQ
 BEFORE 
 INSERT
 ON OK_PHOTO
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
  new_id NUMBER;
BEGIN

  select seq_OK_PHOTO.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;

END;
/

--
-- drop table ok_rezerv;
create table ok_rezerv(
MASTER_ID NUMBER(9) not null,
BRANCH VARCHAR2(5) not null,
BRANCH_show VARCHAR2(5) not null,
Department_CODE	NUMBER(9) not null,
Post_CODE NUMBER(9) not null,
PERSONAL_CODE NUMBER(9) not null,
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null
);

--drop SEQUENCE SEQ_OK_REZERV;
CREATE SEQUENCE SEQ_OK_REZERV
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

CREATE OR REPLACE TRIGGER TR_OK_REZERV_SEQ
 BEFORE 
 INSERT
 ON OK_REZERV
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_REZERV.NEXTVAL into new_ID from dual;
   :NEW.MASTER_ID:=new_ID;
END;
/
------

--
-- drop table ok_rezerv_detail;
create table ok_rezerv_detail(
ID NUMBER(9) not null,
MASTER_ID NUMBER(8) not null,
BRANCH VARCHAR2(5) not null,
BRANCH_show VARCHAR2(5) not null,
Department_CODE	NUMBER(9) not null,
Post_CODE NUMBER(9) not null,
FAMILY	VARCHAR2(50) not null,
FIRST_NAME 	VARCHAR2(50) not null,
PATRONYMIC	VARCHAR2(50),
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null
);

-- drop SEQUENCE SEQ_OK_REZERV_DETAIL;
CREATE SEQUENCE SEQ_OK_REZERV_DETAIL
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

CREATE OR REPLACE TRIGGER TR_OK_REZERV_DETAIL_SEQ
 BEFORE 
 INSERT
 ON OK_REZERV_DETAIL
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_REZERV_DETAIL.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

ALTER TABLE OK_rezerv ADD CONSTRAINT OK_rezerv_PK
  PRIMARY KEY ( BRANCH, master_id) ;
ALTER TABLE OK_rezerv_detail ADD CONSTRAINT OK_rezerv_detail_PK
  PRIMARY KEY ( BRANCH, id) ;

