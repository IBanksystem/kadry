
create table OK_STAT_HIST
(
  ID              NUMBER(8) not null,
  BRANCH          CHAR(5) not null,
  STAT_CODE       NUMBER(8) not null,
  DEPARTMENT_CODE NUMBER(9) not null,
  POST_CODE       NUMBER(3) not null,
  QUANTITY_POST   NUMBER(5,2) not null,
  ACT         varchar2(1) not null,
  Emp_name        varchar2(200) not null,
  User_name       varchar2(200) not null,
  INS_DATE        DATE not null,
  SPECIAL_CODE    NUMBER(3)
  );

-- Add comments to the table 
comment on table OK_STAT_HIST
  is '������� ���������� - �������� �����';
-- Add comments to the columns 
comment on column OK_STAT_HIST.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column OK_STAT_HIST.BRANCH
  is '��� ���������	���������� �� �������S_MFO ���� ID, ��������� ����, ������������ ��� ����������';
comment on column OK_STAT_HIST.STAT_CODE
  is '��� ���� �������� �����';
comment on column OK_STAT_HIST.DEPARTMENT_CODE
  is '��� ������	���������� �� ����������� SS_OK_DEPARTAMENT  ���� DEPARTAMENT_CODE, � �������� �����  ��������� ������������ ������, ������� ����, ������������ ��� ����������';
comment on column OK_STAT_HIST.POST_CODE
  is '��� ���������	���������� �� ����������� SS_OK_POST ���� POST_CODE, �� ����� � � �������� ����� ��������� ������������ ���������, ������� ����, ������������ ��� ����������';
comment on column OK_STAT_HIST.QUANTITY_POST
  is '����� ���������� ����������� �  ������ ��������� �  ����� ������	��������� ����. �����������  ������  �� ������ ������ � ���������� ����� ��������� POST_CODE, ������� ����, ������������ ��� ����������';
comment on column OK_STAT_HIST.User_name
  is '����� ������������';
comment on column OK_STAT_HIST.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';
comment on column OK_STAT_HIST.SPECIAL_CODE
  is '��� ������������� SS_OK_SPECIAL';

-- Create/Recreate primary, unique and foreign key constraints 
create index OK_STAT_HIST_PP on OK_STAT_HIST (BRANCH, DEPARTMENT_CODE, POST_CODE, INS_DATE);
create index OK_STAT_HIST_UU on OK_STAT_HIST (INS_DATE);


create or replace public synonym OK_STAT_HIST for OK_STAT_HIST;


