-- ������ ��� ��

alter table okedb_appoints add EMP_NAME_POD varchar2(250);
alter table okedb_appoints add INS_DATE_POD DATE;

comment on column okedb_appoints.INS_DATE_POD 
  is '���� �������������';
comment on column okedb_appoints.EMP_NAME_POD 
  is '��������� ����������';

alter table okedb_appoints add EMP_NAME_UTV varchar2(250);
alter table okedb_appoints add INS_DATE_UTV DATE;

comment on column okedb_appoints.INS_DATE_UTV 
  is '���� ���';
comment on column okedb_appoints.EMP_NAME_UTV 
  is '��������� ���';

alter table okedb_appoints add EMP_NAME_UVOL varchar2(250);
alter table okedb_appoints add INS_DATE_UVOL DATE;

comment on column okedb_appoints.INS_DATE_UVOL 
  is '���� ��������� �������';
comment on column okedb_appoints.EMP_NAME_UVOL 
  is '��������� �������� �������';

alter table okedb_appoints add EMP_NAME_OTKAZ varchar2(250);
alter table okedb_appoints add INS_DATE_OTKAZ DATE;

comment on column okedb_appoints.INS_DATE_OTKAZ 
  is '���� ������';
comment on column okedb_appoints.EMP_NAME_OTKAZ 
  is '��������� �������';




alter table okedb_appoints_arh add EMP_NAME_POD varchar2(250);
alter table okedb_appoints_arh add INS_DATE_POD DATE;

comment on column okedb_appoints_arh.INS_DATE_POD 
  is '���� �������������';
comment on column okedb_appoints_arh.EMP_NAME_POD 
  is '��������� ����������';

alter table okedb_appoints_arh add EMP_NAME_UTV varchar2(250);
alter table okedb_appoints_arh add INS_DATE_UTV DATE;

comment on column okedb_appoints_arh.INS_DATE_UTV 
  is '���� ���';
comment on column okedb_appoints_arh.EMP_NAME_UTV 
  is '��������� ���';

alter table okedb_appoints_arh add EMP_NAME_UVOL varchar2(250);
alter table okedb_appoints_arh add INS_DATE_UVOL DATE;

comment on column okedb_appoints_arh.INS_DATE_UVOL 
  is '���� ��������� �������';
comment on column okedb_appoints_arh.EMP_NAME_UVOL 
  is '��������� �������� �������';

alter table okedb_appoints_arh add EMP_NAME_OTKAZ varchar2(250);
alter table okedb_appoints_arh add INS_DATE_OTKAZ DATE;

comment on column okedb_appoints_arh.INS_DATE_OTKAZ 
  is '���� ������';
comment on column okedb_appoints_arh.EMP_NAME_OTKAZ 
  is '��������� �������';