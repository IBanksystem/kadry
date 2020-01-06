
--drop table ok_business_voyage;
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




--drop table ss_ok_org_business_voyage ;
create table ss_ok_org_business_voyage(
org_business_voyage_code number(9) not null,
org_business_voyage_name varchar2(150),
STATE_NOTES CHAR(1),
EMP_CODE NUMBER(6),
INS_DATE DATE
);

comment on table ss_ok_org_business_voyage is '���������� ������������ ���������� ������������';
comment on column ss_ok_org_business_voyage.org_business_voyage_code is '���';
comment on column ss_ok_org_business_voyage.org_business_voyage_name is '��������';
comment on column ss_ok_org_business_voyage.STATE_NOTES is 'A-��������';
comment on column ss_ok_org_business_voyage.EMP_CODE is '��� ���������� ��';
comment on column ss_ok_org_business_voyage.INS_DATE is '���� ������� ������';


ALTER TABLE ss_ok_org_business_voyage ADD CONSTRAINT ss_ok_org_business_voyage_PK
  PRIMARY KEY (  org_business_voyage_CODE  );

--drop table ss_ok_theme_business_voyage ;
create table ss_ok_theme_business_voyage(
theme_business_voyage_code number(9) not null,
theme_business_voyage_name varchar2(150),
STATE_NOTES CHAR(1),
EMP_CODE NUMBER(6),
INS_DATE DATE
);
comment on table ss_ok_theme_business_voyage is '���������� ����� ������������';
comment on column ss_ok_theme_business_voyage.theme_business_voyage_code is '���';
comment on column ss_ok_theme_business_voyage.theme_business_voyage_name is '��������';
comment on column ss_ok_theme_business_voyage.STATE_NOTES is 'A-��������';
comment on column ss_ok_theme_business_voyage.EMP_CODE is '��� ���������� ��';
comment on column ss_ok_theme_business_voyage.INS_DATE is '���� ������� ������';


ALTER TABLE ss_ok_theme_business_voyage ADD CONSTRAINT ss_ok_theme_business_voyage_PK
  PRIMARY KEY (  theme_business_voyage_CODE  );





--1   30 ���� 1 ����� � 12 ������� 1 ���
--drop table ok_hospital;
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



drop table ok_increase;
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

create table ss_ok_increase(
increase_code number(9) not null,
increase_name varchar2(150)
);
comment on table ss_ok_increase is '���������� ���������';
comment on column ss_ok_increase.increase_code is '��� ��� �������� � 1������������ ��������, 2�������� ��  ����������';
comment on column ss_ok_increase.increase_name is '��� �������� � 1������������ ��������, 2�������� ��  ����������';

ALTER TABLE ss_ok_increase ADD CONSTRAINT ss_ok_increase_PK
  PRIMARY KEY (  increase_CODE  );

delete from ss_ok_increase;
insert into ss_ok_increase select 1,'������������ ��������' from dual;
insert into ss_ok_increase select 2,'�������� ��  ����������' from dual;
commit;

--drop table ok_privilege;
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



create table ss_ok_privilege(
privilege_code NUMBER (9) not null,
privilege_name varchar2(150),
STATE_NOTES CHAR(1),
EMP_CODE NUMBER(6),
INS_DATE DATE
);

ALTER TABLE ss_ok_privilege ADD CONSTRAINT ss_ok_privilege_PK
  PRIMARY KEY ( privilege_code );

comment on column ss_ok_privilege.privilege_code   is '��� ��� ������ ss_ok_privilege';
comment on column ss_ok_privilege.privilege_name   is '������������ ��� ������ ss_ok_privilege';
comment on column ss_ok_privilege.STATE_NOTES is 'A-��������';
comment on column ss_ok_privilege.EMP_CODE is '��� ���������� ��';
comment on column ss_ok_privilege.INS_DATE is '���� ������� ������';










--ok_personal �������� ����

alter table ok_personal add srok_date date;
alter table ok_personal add HOME_ADDRESSFACT_REGION_ID CHAR(2);
alter table ok_personal add HOME_ADDRESSFACT_DISTR CHAR(3);
alter table ok_personal add HOME_ADDRESS_REGION_ID CHAR(2);
alter table ok_personal add HOME_ADDRESS_DISTR CHAR(3);
alter table ok_personal add passport_type_code number(9);
 
comment on column ok_personal.srok_date is '���� ��������� �������������� �����';
comment on column ok_personal.HOME_ADDRESSFACT_REGION_ID  is '����� ���-�� s_region.region_id';
comment on column ok_personal.HOME_ADDRESSFACT_DISTR  is '����� ���-�� s_distr.distr';
comment on column ok_personal.HOME_ADDRESS_REGION_ID  is '����� �������� s_region.region_id';
comment on column ok_personal.HOME_ADDRESS_DISTR  is '����� �������� s_distr.distr';
comment on column ok_personal.passport_type_code is '��� ��������� 1-������� 2-��� �� ���-�� 3-��������� ss_ok_passport_type';

create table ss_ok_passport_type(
passport_type_code number(9),
passport_type_name varchar2(50)
);

ALTER TABLE ss_ok_passport_type ADD CONSTRAINT ss_ok_passport_type_PK
  PRIMARY KEY ( passport_type_code );

comment on column ss_ok_passport_type.passport_type_code is '��� ��������� 1-������� 2-��� �� ���-�� 3-���������';
comment on column ss_ok_passport_type.passport_type_name is '��� ��������� 1-������� 2-��� �� ���-�� 3-���������';

delete from ss_ok_passport_type; 
insert into ss_ok_passport_type select 1,'�������' from dual; 
insert into ss_ok_passport_type select 2,'��� �� ����������' from dual;
insert into ss_ok_passport_type select 3,'������� �����' from dual;
commit;



