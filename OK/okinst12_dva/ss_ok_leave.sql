prompt PL/SQL Developer import file
prompt Created on 25 ������ 2010 �. by user
set feedback off
set define off
prompt Dropping SS_OK_LEAVE...
drop table SS_OK_LEAVE cascade constraints;
prompt Creating SS_OK_LEAVE...
create table SS_OK_LEAVE
(
  LEAVE_ID    NUMBER(8) not null,
  LEAVE_CODE  NUMBER(2) not null,
  LEAVE_NAME  VARCHAR2(150) not null,
  STATE_NOTES CHAR(1) not null,
  EMP_CODE    NUMBER(6) not null,
  INS_DATE    DATE not null
)
;
comment on table SS_OK_LEAVE
  is '���������� ����� ��������';
comment on column SS_OK_LEAVE.LEAVE_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_LEAVE.LEAVE_CODE
  is '��� ���� �������	�������������  ������� � "1" ��� ������ ������� "��������",  ������� ����, ������������ ��� ����������';
comment on column SS_OK_LEAVE.LEAVE_NAME
  is '��� ���������������, ������� � �.�.	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_LEAVE.STATE_NOTES
  is '������� ����������: A - ��������, P - ���������.�������� � ����������, ������� ����, �� ��������� �������� ������� � ��������';
comment on column SS_OK_LEAVE.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column SS_OK_LEAVE.INS_DATE
  is '���� � �����  ����� ����������	SYSdate not null, ��������� ���� ������������ ��� ����������';
alter table SS_OK_LEAVE
  add constraint SS_OK_LEAVE_PK primary key (LEAVE_CODE, STATE_NOTES);
alter table SS_OK_LEAVE
  add constraint SS_OK_LEAVE_UK unique (LEAVE_CODE);
alter table SS_OK_LEAVE
  add constraint SS_OK_LEAVE_CHK_CODE
  check (LEAVE_code>0);

prompt Disabling triggers for SS_OK_LEAVE...
alter table SS_OK_LEAVE disable all triggers;
prompt Loading SS_OK_LEAVE...
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (1, 1, '������ �������(�������� ������)', 'A', 114, to_date('25-01-2010 15:07:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (2, 2, '���� �������(����������� ������)', 'A', 114, to_date('25-01-2010 15:07:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (3, 3, '�� ���� �����������(������ ��� ����������)', 'A', 114, to_date('25-01-2010 15:07:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (4, 4, '����� ����� �������������(����������� �� ���������������� ������ ��� ����������)', 'A', 114, to_date('25-01-2010 15:07:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (5, 5, '������ �������(��������� ������)', 'A', 114, to_date('25-01-2010 15:07:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (6, 6, '�������� ������(���������� ������)', 'A', 114, to_date('25-01-2010 15:07:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (7, 7, '������ ������� �������������(����������� �� ���������������� �������� ������)', 'A', 114, to_date('25-01-2010 15:07:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (8, 8, '������ �����(��������������� �����������)', 'A', 114, to_date('25-01-2010 15:07:25', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 8 records loaded
prompt Enabling triggers for SS_OK_LEAVE...
alter table SS_OK_LEAVE enable all triggers;
set feedback on
set define on
drop public synonym SS_OK_LEAVE;
create public synonym SS_OK_LEAVE for SS_OK_LEAVE;

alter package ok_service compile body;

prompt Done.
