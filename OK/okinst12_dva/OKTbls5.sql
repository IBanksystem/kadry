

--5 ����������
--drop table ss_ok_category;
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


-- �������� ����� �������
delete from ss_ok_category; 
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (1,18,8.180 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (2,18.1,7.950 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (3,17,7.781 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (4,17.2,7.393 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (5,16,7.388 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (6,15,7.000 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (7,14,6.617 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (8,13,6.242 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (9,12,5.870 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (10,11,5.503 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (11,10,5.147 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (12,9,4.797 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (13,8,4.454 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (14,7,4.112 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (15,5,3.467 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (16,4,3.165 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (17,2,2.616 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (18,1,2.377 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (19,0,1.000 ,0 ,'A');
commit;







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



