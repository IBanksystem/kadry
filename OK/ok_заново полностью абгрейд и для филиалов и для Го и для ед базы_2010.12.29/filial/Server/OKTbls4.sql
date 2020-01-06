
create table ok_business_voyage(
branch char(5),
PERSONAL_CODE NUMBER (9) not null,
kv_kurs_code number(9), 
date_open date not null,
date_close date,
number_day number(9),
org_business_voyage_code number(9),
theme_business_voyage_code number(9),
CODE_STR CHAR(3),
order_num varchar2(20),
order_date date,
prim  varchar2(150),
EMP_CODE NUMBER(6),
INS_DATE DATE
);

ALTER TABLE ok_business_voyage ADD CONSTRAINT ok_business_voyage_PK
  PRIMARY KEY (  BRANCH, PERSONAL_CODE, date_open   );

comment on table ok_business_voyage is '������� ������� �������������';
comment on column ok_business_voyage.branch is '���';
comment on column ok_business_voyage.PERSONAL_CODE is '��� ����������';
comment on column ok_business_voyage.kv_kurs_code   is '��� ����� ��������� ������������';

comment on column ok_business_voyage.date_open  is '����� ���������';
comment on column ok_business_voyage.date_close  is '����� ���������';
comment on column ok_business_voyage.number_day is '������������ ���-�� ����';

comment on column ok_business_voyage.org_business_voyage_code   is '��� ������������ ������������ ss_org_business_voyage';
comment on column ok_business_voyage.theme_business_voyage_code   is '��� ���� ������������ ss_theme_business_voyage';
comment on column ok_business_voyage.CODE_STR   is '��� ������ s_str';
comment on column ok_business_voyage.order_num   is '����� �������';
comment on column ok_business_voyage.order_date   is '���� �������';

comment on column ok_business_voyage.prim is '����������';
comment on column ok_business_voyage.EMP_CODE is '��� ���������� ��';
comment on column ok_business_voyage.INS_DATE is '���� ������� ������';







--1   30 ���� 1 ����� � 12 ������� 1 ���

create table ok_hospital(
branch char(5) not null,
PERSONAL_CODE  	NUMBER (9) not null,
hospital_code NUMBER (9) not null,
hospital_doc varchar2(50),
date_open date not null,
date_close date,
number_day number(5),
work_period varchar2(30),
percentage number(5,2),
diagnosis varchar2(150),
date_hospital date,
prim_hospital varchar2(150),
shifr varchar2(10),
prim  varchar2(150),
EMP_CODE NUMBER(6),
INS_DATE DATE
); 

ALTER TABLE ok_hospital ADD CONSTRAINT ok_hospital_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, date_open );

comment on table ok_hospital is '������� ������� �����������';
comment on column ok_hospital.branch is '���';
comment on column ok_hospital.PERSONAL_CODE is '��� ����������';
comment on column ok_hospital.hospital_code  is '���� - ���������� �� ����������� � 1���������� ��� 2���������� �� �����';
comment on column ok_hospital.hospital_doc  is '������ �����������';
comment on column ok_hospital.date_open  is '����� ���������';
comment on column ok_hospital.date_close  is '����� ���������';
comment on column ok_hospital.number_day is '������������ ���-�� ����  - ���������� �� ���� �������� �� ���� �������� � ����';
comment on column ok_hospital.work_period is '������ ���� ������� - ���������� �� ��������� � ������ � ������� ��.��.����';
comment on column ok_hospital.percentage is '�� - ���������� � ����������� �� ����� �� 8 ��� =60, � 8 ��� � ���� =80, ��� ��������� =100';
comment on column ok_hospital.diagnosis is '��������';
comment on column ok_hospital.date_hospital is   '���� ������ �����������';
comment on column ok_hospital.prim_hospital is '����� ������ �����������';
comment on column ok_hospital.shifr is '�����';
comment on column ok_hospital.prim is '�����������';



create table ok_increase(
branch char(5),
PERSONAL_CODE  	NUMBER (9) not null,
increase_code  	NUMBER (9),
increase_percentage number(5,2),
razn NUMBER (9),
date_open date,
date_close date,
order_num varchar2(20),
order_date date,
prim varchar2(150),
EMP_CODE NUMBER(6),
INS_DATE DATE
);

ALTER TABLE ok_increase ADD CONSTRAINT ok_increase_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, date_open );
 
comment on table ok_increase is '������� "��������"';
comment on column ok_increase.branch is '���';
comment on column ok_increase.PERSONAL_CODE is '��� ����������';
comment on column ok_increase.increase_code is '��� �������� � 1������������ ��������, 2�������� ��  ����������';
comment on column ok_increase.increase_percentage is '% �������� ���� 1������������ ��������';
comment on column ok_increase.razn is '����� ���� 2�������� ��  ����������';
comment on column ok_increase.date_open is '���� ������';
comment on column ok_increase.date_close is '���� ���������';
comment on column ok_increase.order_num   is '����� �������';
comment on column ok_increase.order_date   is '���� �������';
comment on column ok_increase.prim   is '����������';

create table ok_privilege(
branch char(5),
PERSONAL_CODE NUMBER (9) not null,
privilege_CODE NUMBER (9),
privilege_doc varchar2(150),
date_open date not null,
date_close date,
prim varchar2(150),
EMP_CODE NUMBER(6),
INS_DATE DATE
); 

ALTER TABLE ok_privilege ADD CONSTRAINT ok_privilege_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, date_open );

comment on table ok_privilege is '������� ������� ��������� � ��������';
comment on column ok_privilege.branch is '���';
comment on column ok_privilege.PERSONAL_CODE is '��� ����������';
comment on column ok_privilege.privilege_code   is '��� ��� ������ ss_ok_privilege';
comment on column ok_privilege.privilege_doc   is '��������-��������� ������';
comment on column ok_privilege.date_open  is '���� ������ ��������';
comment on column ok_privilege.date_close  is '���� ���������� ��������';
comment on column ok_privilege.prim   is '����������';
comment on column ok_privilege.EMP_CODE is '��� ���������� ��';
comment on column ok_privilege.INS_DATE is '���� ������� ������';



--ok_personal �������� ����

alter table ok_personal add srok_date date;
alter table ok_personal add HOME_ADDRESSFACT_REGION_ID varCHAR2(2);
alter table ok_personal add HOME_ADDRESSFACT_DISTR varCHAR2(3);
alter table ok_personal add HOME_ADDRESS_REGION_ID varCHAR2(2);
alter table ok_personal add HOME_ADDRESS_DISTR varCHAR2(3);
alter table ok_personal add passport_type_code number(9);
 
comment on column ok_personal.srok_date is '���� ��������� �������������� �����';
comment on column ok_personal.HOME_ADDRESSFACT_REGION_ID  is '����� ���-�� s_region.region_id';
comment on column ok_personal.HOME_ADDRESSFACT_DISTR  is '����� ���-�� s_distr.distr';
comment on column ok_personal.HOME_ADDRESS_REGION_ID  is '����� �������� s_region.region_id';
comment on column ok_personal.HOME_ADDRESS_DISTR  is '����� �������� s_distr.distr';
comment on column ok_personal.passport_type_code is '��� ��������� 1-������� 2-��� �� ���-�� 3-��������� ss_ok_passport_type';




