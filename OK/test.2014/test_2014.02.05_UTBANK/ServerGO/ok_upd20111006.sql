alter table ok_personal add maiden_family VARCHAR2(50);
alter table ok_personal add DEPARTMENT_CODE_OLD        NUMBER(9);
alter table ok_personal add POST_CODE_OLD              NUMBER(3);
alter table ok_personal add SPECIAL_CODE_OLD           NUMBER(3);

comment on column ok_personal.maiden_family
  is '������� ������� ����������';
comment on column ok_personal.DEPARTMENT_CODE_OLD
  is '���������� �����';
comment on column ok_personal.POST_CODE_OLD
  is '���������� ���������';
comment on column ok_personal.SPECIAL_CODE_OLD
  is '���������� �������������';
