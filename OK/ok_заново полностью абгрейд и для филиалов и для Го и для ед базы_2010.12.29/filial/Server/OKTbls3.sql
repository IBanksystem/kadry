
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


