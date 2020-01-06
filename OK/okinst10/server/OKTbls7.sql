alter table ok_leave add date_recall_begin date;
alter table ok_leave add date_recall_end date;
alter table ok_leave add date_order_recall date;
alter table ok_leave add  num_order_recall varchar2(25);
alter table ok_leave add prim varchar2(150);

comment on column OK_LEAVE.date_recall_begin is '���� ������ ������';
comment on column OK_LEAVE.date_recall_end is '���� ��������� ������';
comment on column OK_LEAVE.date_order_recall is '���� ������� ������';
comment on column OK_LEAVE.num_order_recall is '����� ������� ������';
comment on column OK_LEAVE.prim is '����������';


alter table OK_PERIOD add post_code number(3);
alter table OK_PERIOD add department_code number(9);
comment on column OK_PERIOD.post_code is '��� ���������';
comment on column OK_PERIOD.department_code is '��� ������';


-- ����� ��������� ������������
--drop table ss_ok_kv_kurs;
create table ss_ok_kv_kurs(
kv_kurs_code number(9) not null,
kv_kurs_name varchar2(150),
kv_organizer varchar2(150),
kv_place varchar2(150),
CODE_STR   CHAR(3),
kv_number_pers number(9),
date_open date,
date_close date,
number_day  number(9),
pay_sum number(15,2),
pay_sum_trener number(15,2),
order_num varchar2(50),
order_date date,
order_business_voyage number(1),
org_business_voyage_code number(9),
theme_business_voyage_code number(9),
prim varchar2(150),
STATE_NOTES    CHAR(1),
EMP_CODE NUMBER(6),
INS_DATE DATE
);

ALTER TABLE ss_ok_kv_kurs ADD CONSTRAINT ss_ok_kv_kurs_PK
  PRIMARY KEY ( kv_kurs_code );

comment on table ss_ok_kv_kurs   is '���������� ����� ��������� ������������';

comment on column ss_ok_kv_kurs.kv_kurs_code   is '���';
comment on column ss_ok_kv_kurs.kv_kurs_name   is '������������';
comment on column ss_ok_kv_kurs.kv_organizer   is ' �����������';
comment on column ss_ok_kv_kurs.kv_place    is ' ����� ����������';
comment on column ss_ok_kv_kurs.CODE_STR   is '��� ������ s_str';
comment on column ss_ok_kv_kurs.kv_number_pers    is '���������� ���������� ';
comment on column ss_ok_kv_kurs.date_open    is '���� ������ ';
comment on column ss_ok_kv_kurs.date_close     is '���� ���������� ';
comment on column ss_ok_kv_kurs.number_day     is '���-�� ���� ';

comment on column ss_ok_kv_kurs.org_business_voyage_code   is '��� ������������ ������������ ss_org_business_voyage';
comment on column ss_ok_kv_kurs.theme_business_voyage_code   is '��� ���� ������������ ss_theme_business_voyage';

comment on column ss_ok_kv_kurs.pay_sum     is ' ������ �� ��������� ��� �������';
comment on column ss_ok_kv_kurs.pay_sum_trener     is ' ������ �������� ';
comment on column ss_ok_kv_kurs.order_num     is ' ����� �������';
comment on column ss_ok_kv_kurs.order_date    is '���� ������� ';
comment on column ss_ok_kv_kurs.order_business_voyage    is ' ������������ 1-�� 2-��� ';
comment on column ss_ok_kv_kurs.prim     is ' ���������� ';
comment on column ss_ok_kv_kurs.STATE_NOTES is 'A-��������';
comment on column ss_ok_kv_kurs.EMP_CODE is '��� ���������� ��';
comment on column ss_ok_kv_kurs.INS_DATE is '���� ������� ������';

--drop table ok_kurs;
create table ok_kurs(
branch char(5),
PERSONAL_CODE NUMBER (9) not null,
fio varchar2(150),
kv_kurs_code number(9) not null,
EMP_CODE NUMBER(6),
INS_DATE DATE
);

comment on table ok_kurs   is '����� ��������� ������������';

comment on column ok_kurs.branch is '���';
comment on column ok_kurs.PERSONAL_CODE is '��� ����������';
comment on column ok_kurs.fio is '��� ����������';
comment on column ok_kurs.kv_kurs_code   is '��� ������';
comment on column ok_kurs.EMP_CODE is '��� ���������� ��';
comment on column ok_kurs.INS_DATE is '���� ������� ������';

ALTER TABLE ok_kurs ADD CONSTRAINT ok_kurs_PK
  PRIMARY KEY ( branch,PERSONAL_CODE,kv_kurs_code );

