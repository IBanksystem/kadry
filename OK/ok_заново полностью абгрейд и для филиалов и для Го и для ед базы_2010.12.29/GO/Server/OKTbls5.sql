

--5 ����������

create table ss_ok_category(
category_code number(2) not null,
category_name number(10,2) not null,
category_rate number(9,3) not null,
salary number(15) not null,
STATE_NOTES           CHAR(1),
EMP_CODE              NUMBER(6),
INS_DATE              DATE 
);

ALTER TABLE ss_ok_category ADD CONSTRAINT ss_ok_category_PK
  PRIMARY KEY ( category_code );

comment on table ss_ok_category is '���������� "�������"';
comment on column ss_ok_category.category_code is '����� � �������� �����';
comment on column ss_ok_category.category_name is '������ ������ �����';
comment on column ss_ok_category.category_rate is '�������� ������������';
comment on column ss_ok_category.salary is '�����';
comment on column ss_ok_category.STATE_NOTES is 'A-��������';
comment on column ss_ok_category.EMP_CODE is '��� ���������� ��';
comment on column ss_ok_category.INS_DATE is '���� ������� ������';





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

