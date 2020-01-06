--3
--drop table ok_increase;
create table ok_increase(
branch char(5),
PERSONAL_CODE  	NUMBER (9) not null,
increase_code  	NUMBER (9),
increase_view  varchar2(150),
increase_percentage number(5,2),
razn NUMBER (9),
date_open date,
date_close date,
EMP_CODE NUMBER(6),
INS_DATE DATE
);

ALTER TABLE ok_increase ADD CONSTRAINT ok_increase_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, date_open );
 
comment on table ok_increase is '������� "��������"';
comment on column ok_increase.branch is '���';
comment on column ok_increase.PERSONAL_CODE is '��� ����������';
comment on column ok_increase.increase_view is '��� �������� � ���������� �� ����������� � 1������������ ��������, 2�������� ��  ����������';
comment on column ok_increase.increase_percentage is '% ��������';
comment on column ok_increase.razn is '������� ����. �������';
comment on column ok_increase.date_open is '���� ������ ��������';
comment on column ok_increase.date_close is '���� ���������� ��������';


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

