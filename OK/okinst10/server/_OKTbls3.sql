



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

