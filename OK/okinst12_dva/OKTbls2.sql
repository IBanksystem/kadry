




--4 ���������

alter table ss_ok_post add(
category_code number(2)
);

comment on column ss_ok_post.category_code is '��� ������� ������ ����� ���������� ss_ok_category';

--5 ����������
--drop table ss_ok_category;
create table ss_ok_category(
category_code number(2) not null,
category_name varchar2(10) not null,
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
 values (1,'18',8.180 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (2,'18.1',7.950 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (3,'17',7.781 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (4,'17.2',7.393 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (5,'16',7.388 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (6,'15',7.000 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (7,'14',6.617 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (8,'13',6.242 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (9,'12',5.870 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (10,'11',5.503 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (11,'10',5.147 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (12,'9',4.797 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (13,'8',4.454 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (14,'7',4.112 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (15,'5',3.467 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (16,'4',3.165 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (17,'2',2.616 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (18,'1',2.377 ,0 ,'A');
insert into ss_ok_category (category_code, category_name, category_rate, salary, STATE_NOTES)
 values (19,'0',1.000 ,0 ,'A');
commit;




--6 ���������� ���� ����������
--drop table ss_ok_hospital;
create table ss_ok_hospital(
hospital_code NUMBER (9) not null,
hospital_name varchar2(50) not null,
work_period_from NUMBER (3) not null,
work_period_to NUMBER (3) not null,
percentage number(5,2),
STATE_NOTES           CHAR(1),
EMP_CODE              NUMBER(6),
INS_DATE              DATE 
);
ALTER TABLE ss_ok_hospital ADD CONSTRAINT ss_ok_hospital_PK
  PRIMARY KEY ( hospital_code,work_period_from );

alter table SS_OK_HOSPITAL
  add constraint chk_HOSPITAL_CODE
  check (HOSPITAL_CODE>1000);

comment on table ss_ok_hospital is '���������� ����� �����������';
comment on column ss_ok_hospital.hospital_code  is '��� ';
comment on column ss_ok_hospital.hospital_name  is '1���������� ��� 2���������� �� �����';
comment on column ss_ok_hospital.work_period_from is '������ ��� � 0 ��� 8 � ��� ��� 0';
comment on column ss_ok_hospital.work_period_to is '���������� ��� � 8 ��� 999 � ��� ��� 999';
comment on column ss_ok_hospital.percentage is ' ��� � 0-8 �� 8 ��� =60, ��� � 8-999 � 8 ��� � ���� =80, ��� ��������� ��� =100';
comment on column ss_ok_hospital.STATE_NOTES is 'A-��������';
comment on column ss_ok_hospital.EMP_CODE is '��� ���������� ��';
comment on column ss_ok_hospital.INS_DATE is '���� ������� ������';

--6 ���������� ���� ����������
delete from ss_ok_hospital;
insert into ss_ok_hospital (hospital_code,hospital_name,work_period_from,work_period_to,percentage,STATE_NOTES)
 values (1001,'����������',0,8,60,'A');
insert into ss_ok_hospital (hospital_code,hospital_name,work_period_from,work_period_to,percentage,STATE_NOTES)
 values (1001,'����������',8,999,80,'A');
insert into ss_ok_hospital (hospital_code,hospital_name,work_period_from,work_period_to,percentage,STATE_NOTES)
 values (1002,'���������� �� �����',0,999,100,'A');
commit;



--7 ����������� ��������
create table ss_ok_min_zp(
salary number(15) not null,
rate number(9,3) not null,
category_zero_salary number(15) not null,
date_open date not null,
date_close date,
STATE_NOTES CHAR(1),
EMP_CODE NUMBER(6),
INS_DATE DATE
);

ALTER TABLE ss_ok_min_zp ADD CONSTRAINT ss_ok_min_zp_PK
  PRIMARY KEY ( date_open );


comment on table ss_ok_min_zp is '���������� ������������ ��������';
comment on column ss_ok_min_zp.salary  is '����������� �������� ';
comment on column ss_ok_min_zp.rate  is ' ��������� ';
comment on column ss_ok_min_zp.category_zero_salary  is ' ������ �������� �������';
comment on column ss_ok_min_zp.date_open  is ' ������ ';
comment on column ss_ok_min_zp.date_close is ' ����������';
comment on column ss_ok_min_zp.STATE_NOTES is 'A-��������';
comment on column ss_ok_min_zp.EMP_CODE is '��� ���������� ��';
comment on column ss_ok_min_zp.INS_DATE is '���� ������� ������';


