-- 19.08.2009

alter table ok_education add diplom_date date;
comment on column ok_education.diplom_date is '���� ������ �������';

comment on column ok_education.COD_VUZ_PRIM is ' ���������� � ���� ���� ';
comment on column ok_education.CURS is ' ����';
comment on column ok_education.FAKULTET is ' ���������';
comment on column ok_education.NOSTRA is '������� ������������� 1-���� 2-���';
comment on column ok_education.NOSTRA_SERIES is '����� ������������� ������������� ';
comment on column ok_education.NOSTRA_NUMBER is '����� ������������� ������������� ';
comment on column ok_education.NOSTRA_DATE is ' ���� �������������';

comment on column ok_period.ID  is '��������� �����';
comment on column ok_period.BRANCH  is '��� ���������';
comment on column ok_period.PERSONAL_CODE is  '��� ����������';
comment on column ok_period.COD_TYPE_PRN  is '��������� ��� ����������� ������ � ���������( ���� ):��� ���� �������: �� ss_ok_base_move';
comment on column ok_period.COD_PR_OFF  is '��������� ��� ����������� ������ � ���������( ���� ):��� ������� �� ����������� �� s_prich';
comment on column ok_period.PR_OFF  is '������� ����������� ������ � ���������( ���� )';
comment on column ok_period.DOLJN_ID  is '��� ��������� ( ���� ): �� ����������� �� s_dolgn';
comment on column ok_period.NUM_PR_OFF  is '����� ������� ��������� ��� ����������� ������ � ��������� ( ���� )';
comment on column ok_period.DATE_PR_OFF  is '���� ������� ��������� ��� ����������� ������ � ���������( ���� ) ';


create table ss_ok_region(
REGION_ID  CHAR(2),
REGION_NAM VARCHAR2(30)
);

comment on table ss_ok_region is '���������� ��������';
comment on column ss_ok_region.region_id is '��� �������';
comment on column ss_ok_region.region_nam is '�������� ������� ��� �.�������';


create table ss_ok_distr(                    
REGION_ID  CHAR(2),
DISTR      CHAR(3),
DISTR_NAME VARCHAR2(30)
);

comment on table ss_ok_distr is '���������� ������';
comment on column ss_ok_distr.region_id is '��� ������� ��� �.��������';
comment on column ss_ok_distr.distr is '���  ������ ������� ���  �.��������';
comment on column ss_ok_distr.distr_name is '�������� ������ ������� ���  �.��������';

-- 25.08.2009

create table ss_ok_zp_rate(
zp_rate_code number not null,
zp_rate_simbol varchar2(5),
zp_rate_name varchar2(150),
zp_rate number(3,2) not null,
STATE_NOTES           CHAR(1),
EMP_CODE              NUMBER(6),
INS_DATE              DATE 
);

ALTER TABLE ss_ok_zp_rate ADD CONSTRAINT ss_ok_zp_rate_PK
  PRIMARY KEY ( zp_rate_code );

comment on table ss_ok_zp_rate is '���������� ������ �������� �������';
comment on column ss_ok_zp_rate.zp_rate_code is '����� � ����� 2 4 6 8';
comment on column ss_ok_zp_rate.zp_rate_simbol is '������ ��� ���������� ������ 2 4 6 8 ';
comment on column ss_ok_zp_rate.zp_rate_name is '��������';
comment on column ss_ok_zp_rate.zp_rate is '������ 0.25 0.50 0.75 1.00';
comment on column ss_ok_zp_rate.STATE_NOTES is 'A-��������';
comment on column ss_ok_zp_rate.EMP_CODE is '��� ���������� ��';
comment on column ss_ok_zp_rate.INS_DATE is '���� ������� ������';

delete from ss_ok_zp_rate;
insert into ss_ok_zp_rate (zp_rate_code,zp_rate_simbol,zp_rate_name,zp_rate,STATE_NOTES,EMP_CODE,INS_DATE) 
values (2,'2','0.25',0.25,'A',99,sysdate);
insert into ss_ok_zp_rate (zp_rate_code,zp_rate_simbol,zp_rate_name,zp_rate,STATE_NOTES,EMP_CODE,INS_DATE) 
values (4,'4','0.50',0.50,'A',99,sysdate);
insert into ss_ok_zp_rate (zp_rate_code,zp_rate_simbol,zp_rate_name,zp_rate,STATE_NOTES,EMP_CODE,INS_DATE) 
values (6,'6','0.75',0.75,'A',99,sysdate);
insert into ss_ok_zp_rate (zp_rate_code,zp_rate_simbol,zp_rate_name,zp_rate,STATE_NOTES,EMP_CODE,INS_DATE) 
values (8,'8','1.00',1.00,'A',99,sysdate);
commit;

--
create table ss_ok_zp_rate_type(
zp_rate_type_code number not null,
zp_rate_type_name varchar2(150),
STATE_NOTES           CHAR(1),
EMP_CODE              NUMBER(6),
INS_DATE              DATE 
);

ALTER TABLE ss_ok_zp_rate_type ADD CONSTRAINT ss_ok_zp_rate_type_PK
  PRIMARY KEY ( zp_rate_type_code );

comment on table ss_ok_zp_rate_type is '���������� ���� ������ �������� �������';
comment on column ss_ok_zp_rate_type.zp_rate_type_code is '��� 1 2';
comment on column ss_ok_zp_rate_type.zp_rate_type_name is '�������� 1-�������� 2-�� ����������������';
comment on column ss_ok_zp_rate_type.STATE_NOTES is 'A-��������';
comment on column ss_ok_zp_rate_type.EMP_CODE is '��� ���������� ��';
comment on column ss_ok_zp_rate_type.INS_DATE is '���� ������� ������';

delete from ss_ok_zp_rate_type;
insert into ss_ok_zp_rate_type (zp_rate_type_code, zp_rate_type_name ,STATE_NOTES,EMP_CODE,INS_DATE) 
values (1,'��������','A',99,sysdate);
insert into ss_ok_zp_rate_type (zp_rate_type_code, zp_rate_type_name ,STATE_NOTES,EMP_CODE,INS_DATE) 
values (2,'�� ����������������','A',99,sysdate);

commit;

drop table ok_zp_rate;
create table ok_zp_rate(
branch char(5),
PERSONAL_CODE NUMBER (9) not null,
zp_rate_code number not null,
zp_rate_type_code number not null,
zp_rate_order_num varchar2(15),
zp_rate_order_date date,
zp_rate_date date not null,
zp_fakt number,
EMP_CODE              NUMBER(6),
INS_DATE              DATE 
);

ALTER TABLE ok_zp_rate ADD CONSTRAINT ok_zp_rate_PK
  PRIMARY KEY ( branch,PERSONAL_CODE,zp_rate_code,zp_rate_date );


comment on table ok_zp_rate   is '������';

comment on column ok_zp_rate.branch is '���';
comment on column ok_zp_rate.PERSONAL_CODE is '��� ����������';
comment on column ok_zp_rate.zp_rate_code  is '��� ������';
comment on column ok_zp_rate.zp_rate_type_code  is '��� ���� ������';
comment on column ok_zp_rate.zp_rate_order_num  is '����� �������';
comment on column ok_zp_rate.zp_rate_order_date  is '���� �������';
comment on column ok_zp_rate.zp_rate_date is '���� ���������� ������';
comment on column ok_zp_rate.zp_fakt is '����������� �����';
comment on column ok_zp_rate.EMP_CODE is '��� ���������� ��';
comment on column ok_zp_rate.INS_DATE is '���� ������� ������';



comment on table OK_ARMY
  is '��������� � �������� ������';
-- Add comments to the columns 
comment on column OK_ARMY.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_ARMY.BRANCH
  is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_ARMY.PERSONAL_CODE
  is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_ARMY.ARMY_CODE
  is '��������� � ������� ������ 	���������� �� ����������� SS_OK_ARMY  ���� ARMY_CODE  ������������ ��� ����������';
comment on column OK_ARMY.FITNESS_ARMY_CODE
  is '�������� � ������	���������� �� �����������   ���� fitness_ARMY_Code';
comment on column OK_ARMY.SPECIAL_ARMY
  is '�������� �������������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ARMY.NUMBER_VUS
  is '����� ������� ������� ������������� (���)	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ARMY.CODE_ARMY_POST
  is '��� ��������� � ������ �������� ������� ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ARMY.NAME_ARMY_OFFICE
  is '���������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ARMY.SPECREG_NUMBER
  is '������� �� ��������� N	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ARMY.EMP_CODE
  is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_ARMY.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';
comment on column OK_ARMY.ARMY_GROUP_CODE
  is '������ ����� ��� SS_OK_ARMY_GROUP';
comment on column OK_ARMY.CATEGORY_ARMY_CODE
  is '��������� ����� ��� SS_OK_CATEGORY_ARMY';
comment on column OK_ARMY.MILITARY_RANK_CODE
  is '�������� ������ ��� SS_OK_MILITARY_RANK';
comment on column OK_ARMY.STAFF_CODE
  is '��� ������� ��� SS_OK_STAFF';
comment on column OK_ARMY.TYPE_FORCE_CODE
  is '��� ����� ��� SS_OK_TYPE_FORCE';

create table ss_ok_str(
CODE_STR char(3),
NAME       VARCHAR2(60)
);

comment on table ss_ok_str is '��������� � �������� ������';

comment on column ss_ok_str.CODE_STR  is '���';
comment on column ss_ok_str.NAME  is '��������';


comment on table OK_ELECTION
  is '�������� �� �������� � �������������� ������';
-- Add comments to the columns 
comment on column OK_ELECTION.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_ELECTION.BRANCH
  is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_ELECTION.PERSONAL_CODE
  is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_ELECTION.ELECTION_CODE
  is '��� �������������� ����� SS_OK_ELECTION';
comment on column OK_ELECTION.ELECTION_POST
  is '��� ��� ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ELECTION.ELECTION_DATE_BEGIN
  is '���  �������� � ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ELECTION.ELECTION_DATE_END
  is '���  ��������� ����� ������ � �������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_ELECTION.EMP_CODE
  is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_ELECTION.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';
comment on column OK_ELECTION.ELECTION_ADDRESS
  is '����� ��������������� ������ ';
comment on column OK_ELECTION.ELECTION_NAME
  is '�������� ��������������� ������ ';


comment on table OK_LANGUAGE
  is '�������� �� ����������� ������';
-- Add comments to the columns 
comment on column OK_LANGUAGE.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_LANGUAGE.BRANCH
  is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_LANGUAGE.PERSONAL_CODE
  is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_LANGUAGE.LANGUAGE_CODE
  is '��� ������������ �����	���������� ����������� ������ ����� ���� ������� ������, ���������� ������ ��� ����� ��������� �����������. � �������� �����  ��������� ������������ ���� ��������� ����������� ������ ������ � ������� ������ ���� ������ ���� - ������� � �.�.���������� �� ������� SS_OK_LANGUAGE  ���� LANGUAGE_CODE , ������� ����, ������������ ��� ����������';
comment on column OK_LANGUAGE.LEVEL_CODE
  is '��� ������ ������ ������������ �����	��� ������ ������ ������������ �� ������ ��� ������ ����� � �������� �����  ��������� ������������ ���� ��������� ����������� ������ ������ � ������� ������ ���� ������ ���� - ������� � �.�. ���������� �� ������� SS_OK_LEVEL _LANGUAGE  ���� LEVEL_CODE, ������� ����, ������������ ��� ����������';
comment on column OK_LANGUAGE.EMP_CODE
  is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_LANGUAGE.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';
comment on column OK_LANGUAGE.STATE
  is '�� ������������';
comment on column OK_LANGUAGE.COD_LANG_PRIM
  is '����������';

comment on table OK_PARTY
  is '�������� � �����������';
-- Add comments to the columns 
comment on column OK_PARTY.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_PARTY.BRANCH
  is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_PARTY.PERSONAL_CODE
  is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_PARTY.PARTY_CODE
  is '��� �����������	���������� �� �����������SS_OK_PARTY ���� PARTY_CODE , � �������� ����� ��������� �������� ������ �� �����������, ������� ����, ������������ ��� ����������';
comment on column OK_PARTY.OUT_PARTY
  is '������� ������ �� ������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_PARTY.PARTY_DATE
  is '��� ���������� � ������';
comment on column OK_PARTY.PARTY_OUTDATE
  is '��� ���� ������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_PARTY.PUNISHMENT_MOTIVE
  is '������� ���������� ���������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_PARTY.PUNISHMENT_DATE
  is '��� ���� ��������� ����.���������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_PARTY.EMP_CODE
  is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_PARTY.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';
comment on column OK_PARTY.CODE_PARTII_PRIM
  is '���������� � ���� ������ (�������� ������)';

comment on table OK_PERIOD
  is '�������� � ������';
-- Add comments to the columns 
comment on column OK_PERIOD.ID
  is '��������� �����';
comment on column OK_PERIOD.BRANCH
  is '��� ���������';
comment on column OK_PERIOD.PERSONAL_CODE
  is '��� ����������';
comment on column OK_PERIOD.IN_OFFICE_DATE
  is '���� �����������';
comment on column OK_PERIOD.OUT_OFFICE_DATE
  is '���� ����������';
comment on column OK_PERIOD.OFFICE_NAME
  is '������������ �����������';
comment on column OK_PERIOD.OFFICE_ADDRESS
  is '����� �����������';
comment on column OK_PERIOD.ESTABLISHED_POST
  is '���������� ���������';
comment on column OK_PERIOD.ESTABLISHED_DEPARTMENT
  is '�����';
comment on column OK_PERIOD.BASE_MOVE_CODE
  is '��������� ����������� SS_OK_BASE_MOVE';
comment on column OK_PERIOD.TYPE_PERIOD_CODE
  is '��� ���� ����� SS_OK_TYPE_PERIOD';
comment on column OK_PERIOD.ARTICLE_CODE
  is '����� ������';
comment on column OK_PERIOD.BASIS_NUM
  is '����� �������/���������';
comment on column OK_PERIOD.BASIS_DATE
  is '���� �������/���������';
comment on column OK_PERIOD.PRIZ_SYSTEM
  is '������� �������';
comment on column OK_PERIOD.COD_BANK
  is '��� �����';
comment on column OK_PERIOD.COD_TYPE_PRN
  is '��������� ��� ����������� ������ � ���������( ���� ):��� ���� �������: �� ss_ok_base_move';
comment on column OK_PERIOD.COD_PR_OFF
  is '��������� ��� ����������� ������ � ���������( ���� ):��� ������� �� ����������� �� s_prich';
comment on column OK_PERIOD.PR_OFF
  is '������� ����������� ������ � ���������( ���� )';
comment on column OK_PERIOD.DATE_UTV_KM
  is '���� ����������� ��';
comment on column OK_PERIOD.NUMB_UTV_KM
  is '����� ������������� ��';
comment on column OK_PERIOD.DATE_PR_KVL
  is '���� ����������� �� ��';
comment on column OK_PERIOD.NUMB_PR_KVL
  is '����� ��������� �� ��';
comment on column OK_PERIOD.DATE_ATTEST
  is '���� ����������';
comment on column OK_PERIOD.RESH_ATTEST
  is '������� �������������� ��������';
comment on column OK_PERIOD.DOLJN_ID
  is '����� ��� ��������� ( ���� ): �� ����������� �� s_dolgn';
comment on column OK_PERIOD.NUM_PR_OFF
  is '����� ������� ��������� ��� ����������� ������ � ��������� ( ���� )';
comment on column OK_PERIOD.DATE_PR_OFF
  is '���� ������� ��������� ��� ����������� ������ � ���������( ���� ) ';
comment on column OK_PERIOD.POST_CODE
  is '��� ��������� SS_OK_POST';
comment on column OK_PERIOD.DEPARTMENT_CODE
  is '��� ������ SS_OK_DEPARTMENT';


comment on table OK_PERSONAL
  is '������� ������� "�������� � ����������"';
-- Add comments to the columns 
comment on column OK_PERSONAL.ID
  is '��������� �����	� ������� �����������, �������   � "1"';
comment on column OK_PERSONAL.BRANCH
  is '��� ���������	���������� �� ������� S_MFO ���� BANK_ID, ��������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.PERSONAL_CODE
  is '��� ���������� � ���������	������������� ������������� � ��������� � ���������� � �������� ����  � ����� - �������� � ���������, ��������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.COLLEAGUE_CODE
  is '��� ���������� � �������� ����� 	������������� ������������� ���������� ����� ��������� ����� �� ��������� � ���������� � ��������� � �������� ������ - ���������� � ������� �����  �� ���������� ���������� �� ������ ��� ���������, ��������� ����';
comment on column OK_PERSONAL.STATUS_CODE
  is '������ ���������� ';
comment on column OK_PERSONAL.SALARY_CODE
  is '��� �������� ����� � ��������� ok_stat_salary';
comment on column OK_PERSONAL.FAMILY
  is '������� ����������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.FIRST_NAME
  is '��� ����������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.PATRONYMIC
  is '�������� ����������	�������� � ����������. ��������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.GENDER_CODE
  is '��� ����������	����������  �� ���������� ����������� SS_OK_GENDER, ���� GENDER_CODE � �������� ����� ��������� ������������ ����, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.BIRTHDAY
  is '���� �������� ���������� DDMMYYYY	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.REGION_ID
  is 'ss_ok_region ����� �������� �������,����� ������� ���������� �� s_region';
comment on column OK_PERSONAL.DISTR
  is 'ss_ok_distr ����� �������� �����,����� ���������� �� s_distr';
comment on column OK_PERSONAL.NATIONALITY_CODE
  is '��� �������������� 	���������� �� ����������� SS_OK_NATIONALITY  ���� NATIONALITY_CODE, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.FAMILY_STATUS_CODE
  is '��� ��������� ���������	���������� �� �����������SS_OK_FAMILY_STATUS���� FAMILY_STATUS_CODE, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.REG_TYPE_CODE
  is '��� ���� ��������	���������� �� ����������� SS_OK_REGISTRATION_TYPE, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.HOME_ADDRESS
  is '������ �������� ����� ����������(��������) 	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.HOME_ADDRESSFACT
  is '����������� ����� ����������	�������� � ����������. ������� ����';
comment on column OK_PERSONAL.PASS_SERIYA
  is '����� ��������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.PASS_NUM
  is '����� ��������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.PASS_DATE
  is '���� ������ ��������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.PASS_REG
  is '����� ������ ��������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.RECORD_BOOK_NUMBER
  is '����� �������� ������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_PERSONAL.RECORD_BOOK_SERIES
  is '����� �������� ������	�������� � ����������, ������� ����, �������������� ��� ����������';
comment on column OK_PERSONAL.TELEFON
  is '���������� � ���������� ���������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.EMP_CODE
  is '��� ������������, ���������� 	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';
comment on column OK_PERSONAL.PROFMEMBER
  is '�������� 1-��';
comment on column OK_PERSONAL.TABNO
  is '��������� �����';
comment on column OK_PERSONAL.EDUCATION_TITLE_CODE
  is 'SS_OK_EDUCATION_TITLE';
comment on column OK_PERSONAL.BIRTHPLACE
  is '����� ��������';
comment on column OK_PERSONAL.MOTIVE_OUT
  is '������� ����������';
comment on column OK_PERSONAL.BASIS_NUM
  is '����� ������� ';
comment on column OK_PERSONAL.BASIS_DATE
  is '���� �������';
comment on column OK_PERSONAL.LEAVE_CODE
  is 'SS_OK_LEAVE';
comment on column OK_PERSONAL.DEPARTMENT_CODE
  is 'SS_OK_DEPARTMENT ��� �������������, ������������ ������ � branch ������� ������� ss_ok_department';
comment on column OK_PERSONAL.POST_CODE
  is 'SS_OK_POST ��� ������������ ��������� ���������� ss_ok_post';
comment on column OK_PERSONAL.NN
  is '���������� ����� � �������';
comment on column OK_PERSONAL.MOTIVE_DISMISSIAL_CODE
  is 'SS_OK_MOTIVE_DISMISSIAL';
comment on column OK_PERSONAL.NPS_ID
  is '���������� ��';
comment on column OK_PERSONAL.SPECIAL_CODE
  is '��� ������������� �� ss_ok_special';
comment on column OK_PERSONAL.COD_DISTR_UVD
  is 'ss_ok_distr ��� ������, �������������� ��� �������� ����� ������� (����)';
comment on column OK_PERSONAL.COD_DISTR_PRIM
  is '���������� � ��� ������, �������������� ��� �������� ����� ������� (����)';
comment on column OK_PERSONAL.COD_STR_BIRTH
  is 'ss_ok_str ��� ������ �������� �� ���������� �� s_str (����)';
comment on column OK_PERSONAL.COD_OBL_PRIM
  is '���������� � ���� ������� �������� (����)';
comment on column OK_PERSONAL.COD_PLACE_BIRTH_PRIM
  is '���������� � ���� ������ �������� (����)';
comment on column OK_PERSONAL.COD_SITIZENT
  is '����� ��� �����������';
comment on column OK_PERSONAL.COD_STR_SITIZENT
  is 'ss_ok_str ��� ������ �����������';
comment on column OK_PERSONAL.COD_STR_LIVE
  is 'ss_ok_str ��� ������ ���������� �� ���������� �� s_str (����)';
comment on column OK_PERSONAL.COD_OBL_LIVE
  is 'ss_ok_region  ��� ������� ���������� �� ���������� �� s_region (����) s_region';
comment on column OK_PERSONAL.COD_OBL_LIVE_PRIM
  is '���������� � ��� ������� ���������� (����)';
comment on column OK_PERSONAL.COD_DISTR_LIVE
  is 'ss_ok_distr ��� ������ ���������� �� ���������� �� s_distr (����)';
comment on column OK_PERSONAL.COD_DISTR_LIVE_PRIM
  is '���������� � ��� ������ ���������� (����)';
comment on column OK_PERSONAL.CODE_NACI_PRIM
  is '���������� � ���� �������������� (����)  ';
comment on column OK_PERSONAL.CHECK_KFS
  is '������ ������������ �������: 1-�� 2-���';
comment on column OK_PERSONAL.IS_BOSS
  is '����������� ������ 1-��  (����) ����� �����';
comment on column OK_PERSONAL.BANK_SPEC
  is '������� ���������� ������������� 1-�� ����� �����';
comment on column OK_PERSONAL.NOTICE
  is '����������';
comment on column OK_PERSONAL.PRICH_ID
  is '����� ��� ������� ����������';
comment on column OK_PERSONAL.NAME_PR
  is '������������ ������� ����������';
comment on column OK_PERSONAL.INN
  is '���';
comment on column OK_PERSONAL.SROK_DATE
  is '���� ��������� �������������� �����';
comment on column OK_PERSONAL.HOME_ADDRESSFACT_REGION_ID
  is 'ss_ok_region ����� ���-�� s_region.region_id';
comment on column OK_PERSONAL.HOME_ADDRESSFACT_DISTR
  is '����� ���-�� s_distr.distr';
comment on column OK_PERSONAL.HOME_ADDRESS_REGION_ID
  is 'ss_ok_region ����� �������� s_region.region_id';
comment on column OK_PERSONAL.HOME_ADDRESS_DISTR
  is '����� �������� s_distr.distr';
comment on column OK_PERSONAL.PASSPORT_TYPE_CODE
  is '��� ��������� 1-������� 2-��� �� ���-�� 3-��������� ss_ok_passport_type';
comment on column OK_PERSONAL.REGPLACE_CODE
  is 'ss_ok_regplace ��� ����� �����������';


comment on table OK_POST
  is '���������� � �����������';
-- Add comments to the columns 
comment on column OK_POST.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_POST.BRANCH
  is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_POST.PERSONAL_CODE
  is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_POST.APPOINTMENT_DATE
  is '���� � ������ ����� ��������� � ���������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_POST.APPOINTMENT_MOTIVE
  is '������� �����������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_POST.DEPARTMENT_CODE
  is '������������ ������ ���� ���������	���������� �� ����������� SS_OK_DEPARTAMENT ���� DEPARTAMENT_CODE  � ����������� �� ���� ������ . ������� ����, ������������ ��� ����������';
comment on column OK_POST.POST_CODE
  is '�� ����� ��������� ���������	���������� �� ����������� SS_OK_POST ���� POST_CODE, ������� ����, ������������ ��� ����������';
comment on column OK_POST.GRADE
  is '������ 	�������� � ����������, ��������� ����, �������������� ��� ����������';
comment on column OK_POST.SALARY_FACT
  is '����������� �����	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_POST.RAISE_PERSONAL
  is '������������ �������� 	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_POST.RAISE_ADD
  is '������ ��������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_POST.BASIS_NUM
  is '����� �������/���������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_POST.BASIS_DATE
  is '���� �������/���������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_POST.EMP_CODE
  is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_POST.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';
comment on column OK_POST.STATE
  is '��������� A - �������, P (�� A)- ���������';
comment on column OK_POST.BASE_MOVE_CODE
  is '��� ������� ����������� �� ss_ok_base_move ';


comment on table OK_RELATION
  is '�������� � ������� �������������';
-- Add comments to the columns 
comment on column OK_RELATION.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_RELATION.BRANCH
  is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_RELATION.PERSONAL_CODE
  is '��� ���������� � ���������	���������� �� ������� OK_PERSONAL  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_RELATION.RELATION_CODE
  is '��� ������������ ���������	���������� �� SS_OK_RELATION  ���� RELATION_CODE, ������� ����, ������������ ��� ����������';
comment on column OK_RELATION.RELATION_FAMILY
  is '�������  ������������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_RELATION.RELATION_NAME
  is '��� ������������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_RELATION.RELATION_PATRONYMIC
  is '�������� ������������	�������� � ���������� ������� ����, ������������ ��� ����������,';
comment on column OK_RELATION.RELATION_BIRTHDAY
  is '��� ���� �������� ������������ DDMMYYYY	�������� � ���������� , ������� ����, ������������ ��� ����������';
comment on column OK_RELATION.RELATION_BIRTHPLACE
  is '����� ��������  ������������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_RELATION.RELATION_OFFICE
  is '����� ������ ������������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_RELATION.RELATION_POST
  is '���������� ��������� ������������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_RELATION.RELATION_HOME_ADDRESS
  is '����� ���������� ������������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_RELATION.EMP_CODE
  is '��� ������������, ���������� ����������	���������� �� ������� USERS  ����  ID, ������� ����, ������������ ��� ����������';
comment on column OK_RELATION.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ������� ����, ������������ ��� ����������';
comment on column OK_RELATION.RELATION_DEATHDAY
  is '��� ������ ������������ ������ ��� ��';
comment on column OK_RELATION.COD_STR_LIVE
  is 'SS_OK_STR ����� ���������� ��� ������ s_str ������ ��� ��';
comment on column OK_RELATION.COD_OBL_LIVE
  is 'SS_OK_REGION  ����� ���������� ��� ������� s_region ��� ������ ��� ��';
comment on column OK_RELATION.COD_OBL_LIVE_PRIM
  is '����� ���������� ���������� � ��� ������� ������ ��� ��';
comment on column OK_RELATION.COD_CITY
  is 'SS_OK_CITY ����� ���������� ��� ������-������ s_distr ������ ��� ��';
comment on column OK_RELATION.COD_CITY_PRIM
  is '���������� � ����� ���������� ��� ������-������ ������ ��� ��';
comment on column OK_RELATION.COD_STR_LIVE_PRIM
  is '���������� � ����� ���������� ��� ������ ������ ��� ��';
comment on column OK_RELATION.COD_STR_BIRTH
  is 'SS_OK_STR ����� �������� ��� ������ s_str ������ ��� ��';
comment on column OK_RELATION.COD_STR_BIRTH_PRIM
  is '���������� � ����� �������� ��� ������ ������ ��� �������� ��� ��';
comment on column OK_RELATION.COD_OBL_BIRTH
  is 'SS_OK_REGION  ����� �������� ��� ������� s_region ��� ������ ��� ��';
comment on column OK_RELATION.COD_OBL_BIRTH_PRIM
  is ' ����� �������� ���������� � ��� ������� ������ ��� �� ';
comment on column OK_RELATION.COD_CITY_BIRTH
  is 'SS_OK_CITY ����� �������� ��� ������-������ s_distr ������ ��� ��';
comment on column OK_RELATION.COD_CITY_BIRTH_PRIM
  is '���������� � ����� �������� ��� ������-������ ������ ��� ��';
comment on column OK_RELATION.DD
  is '���� dd �������� ������������  ������ ��� ��';
comment on column OK_RELATION.MM
  is '����� mm �������� ������������� ������ ��� ��';
comment on column OK_RELATION.DD_DEATH
  is '���� ������ ������������ ������ ��� ��  ';
comment on column OK_RELATION.MM_DEATH
  is '����� ������ ������������ ������ ��� ��';



comment on table OK_STAT
  is '������� ���������� - �������� �����';
-- Add comments to the columns 
comment on column OK_STAT.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_STAT.BRANCH
  is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_STAT.STAT_CODE
  is '��� ���� �������� �����';
comment on column OK_STAT.DEPARTMENT_CODE
  is '��� ������	���������� �� ����������� SS_OK_DEPARTAMENT  ���� DEPARTAMENT_CODE, � �������� �����  ��������� ������������ ������, ������� ����, ������������ ��� ����������';
comment on column OK_STAT.POST_CODE
  is '��� ���������	���������� �� ����������� SS_OK_POST ���� POST_CODE, �� ����� � � �������� ����� ��������� ������������ ���������, ������� ����, ������������ ��� ����������';
comment on column OK_STAT.QUANTITY_POST
  is '����� ���������� ����������� �  ������ ��������� �  ����� ������	��������� ����. �����������  ������  �� ������ ������ � ���������� ����� ��������� POST_CODE, ������� ����, ������������ ��� ����������';
comment on column OK_STAT.SALARY_FACT
  is '������������ ����������� ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_STAT.EMP_CODE
  is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_STAT.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';
comment on column OK_STAT.SPECIAL_CODE
  is '��� ������������� SS_OK_SPECIAL';

-- Add comments to the table 
comment on table OK_VOYAGE
  is '�������� � ���������� ��������';
-- Add comments to the columns 
comment on column OK_VOYAGE.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_VOYAGE.BRANCH
  is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_VOYAGE.PERSONAL_CODE
  is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL, ��������� ����, ������������ ��� ����������';
comment on column OK_VOYAGE.VOYAGE_DATE
  is '��� ���� �������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_VOYAGE.VOYAGE_LAND
  is '������ ������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_VOYAGE.VOYAGE_INFO
  is '�������� � ���������� ��������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column OK_VOYAGE.EMP_CODE
  is '��� ������������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column OK_VOYAGE.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';
comment on column OK_VOYAGE.VOYAGE_STR
  is 'SS_OK_STR ��� ������ s_str ';
comment on column OK_VOYAGE.DATA_IN
  is '��� ����������� �� �������';


comment on table SS_OK_ARMY_GROUP
  is '������ �����';
-- Add comments to the columns 
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

comment on table SS_OK_BASE_MOVE
  is '������� �����������';
-- Add comments to the columns 
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


comment on table SS_OK_CATEGORY_ARMY
  is '��������� ����� (��)';
-- Add comments to the columns 
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


comment on table SS_OK_ELECTION
  is '���������� �������������� ������� ';
-- Add comments to the columns 
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

comment on table SS_OK_MILITARY_RANK
  is '�������� ������';
-- Add comments to the columns 
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


comment on table SS_OK_PROFMEMBER
  is '��������';
-- Add comments to the columns 
comment on column SS_OK_PROFMEMBER.PROFMEMBER
  is '0 ��� ���          1-�� ��';
comment on column SS_OK_PROFMEMBER.PROFMEMBER_NAME
  is '0 ��� ���          1-�� ��';


comment on table SS_OK_SPECIAL
  is '�������������';
-- Add comments to the columns 
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

comment on table SS_OK_STAFF
  is '��� ������� (��)';
-- Add comments to the columns 
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


comment on table SS_OK_TYPE_FORCE
  is '���� �����';
-- Add comments to the columns 
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
