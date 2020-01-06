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



create table ok_zp_rate(
branch char(5),
PERSONAL_CODE NUMBER (9) not null,
zp_rate_code number not null,
zp_rate_type_code number not null,
zp_rate_order_num varchar2(15),
zp_rate_order_date date,
zp_rate_date date not null,
EMP_CODE              NUMBER(6),
INS_DATE              DATE 
);

ALTER TABLE ok_zp_rate ADD CONSTRAINT ok_zp_rate_PK
  PRIMARY KEY ( branch,PERSONAL_CODE,zp_rate_code,zp_rate_date );

alter table OK_ZP_RATE modify ZP_RATE_ORDER_NUM VARCHAR2(15);

comment on table ok_zp_rate   is '������';

comment on column ok_zp_rate.branch is '���';
comment on column ok_zp_rate.PERSONAL_CODE is '��� ����������';
comment on column ok_zp_rate.zp_rate_code  is '��� ������';
comment on column ok_zp_rate.zp_rate_type_code  is '��� ���� ������';
comment on column ok_zp_rate.zp_rate_order_num  is '����� �������';
comment on column ok_zp_rate.zp_rate_order_date  is '���� �������';
comment on column ok_zp_rate.zp_rate_date is '���� ���������� ������';

comment on column ok_zp_rate.EMP_CODE is '��� ���������� ��';
comment on column ok_zp_rate.INS_DATE is '���� ������� ������';




create table ss_ok_str(
CODE_STR char(3),
NAME       VARCHAR2(60)
);

comment on table ss_ok_str is '��������� � �������� ������';

comment on column ss_ok_str.CODE_STR  is '���';
comment on column ss_ok_str.NAME  is '��������';


