
create table ok_tabel(
branch char(5) not null,
tabel_month  	NUMBER (2) not null,
tabel_year  	NUMBER (4) not null,
tabel_name VARCHAR2(30), 
PERSONAL_CODE  	NUMBER (9) not null,
nn NUMBER (9),
department_nn NUMBER (9),
department_code NUMBER (9),
department_name VARCHAR2(250),
fio varchar2(100),
tabno NUMBER (9),
salary number(15,2),
post_code NUMBER (9),
post_name VARCHAR2(80), 
work_days number(3),
work_hours number(5,2),
work_holidays number(3),
dekret_days number(3),
business_tour_days number(3),
ill_days number(3),
vacation_days number(3),
educational_vacation_days number(3),
nosalary_vacation_days number(3),
day01 varchar2(1),
day02 varchar2(1),
day03 varchar2(1),
day04 varchar2(1),
day05 varchar2(1),
day06 varchar2(1),
day07 varchar2(1),
day08 varchar2(1),
day09 varchar2(1),
day10 varchar2(1),
day11 varchar2(1),
day12 varchar2(1),
day13 varchar2(1),
day14 varchar2(1),
day15 varchar2(1),
day16 varchar2(1),
day17 varchar2(1),
day18 varchar2(1),
day19 varchar2(1),
day20 varchar2(1),
day21 varchar2(1),
day22 varchar2(1),
day23 varchar2(1),
day24 varchar2(1),
day25 varchar2(1),
day26 varchar2(1),
day27 varchar2(1),
day28 varchar2(1),
day29 varchar2(1),
day30 varchar2(1),
day31 varchar2(1),
EMP_CODE NUMBER(6),
INS_DATE DATE
);

ALTER TABLE ok_tabel ADD CONSTRAINT ok_tabel_PK
  PRIMARY KEY ( BRANCH, tabel_month,tabel_year, PERSONAL_CODE );
 
comment on  table ok_tabel is '������';
comment on column ok_tabel.branch is '���';
comment on column ok_tabel.tabel_month is '�����';
comment on column ok_tabel.tabel_year is '���';
comment on column ok_tabel.tabel_name is '������������';
comment on column ok_tabel.PERSONAL_CODE is '��� ����������';
comment on column ok_tabel.nn is '�� ����������';
comment on column ok_tabel.department_nn is '�� ������';
comment on column ok_tabel.department_code is '��� ������';
comment on column ok_tabel.department_name is '�����';
comment on column ok_tabel.fio is '���';
comment on column ok_tabel.tabno is '��� �����';
comment on column ok_tabel.salary is '�����';
comment on column ok_tabel.post_code is '��� ���������';
comment on column ok_tabel.post_name is '������������ ���������';
comment on column ok_tabel.work_days is '���.����';
comment on column ok_tabel.work_hours is '���.�����';
comment on column ok_tabel.work_holidays is '���.���.��';
comment on column ok_tabel.dekret_days is '��� � ����.';
comment on column ok_tabel.business_tour_days is '��� � ������';
comment on column ok_tabel.ill_days is '��� �� �/�';
comment on column ok_tabel.vacation_days is '��� � ���.';
comment on column ok_tabel.educational_vacation_days is '��� � �� ���';
comment on column ok_tabel.nosalary_vacation_days is '��� ��� ����.��';
comment on column ok_tabel.EMP_CODE is '��� ���������';
comment on column ok_tabel.ins_date is '���� �������';




