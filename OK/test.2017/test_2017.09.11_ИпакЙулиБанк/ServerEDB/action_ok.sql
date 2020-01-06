prompt PL/SQL Developer import file
prompt Created on 30 ���� 2017 �. by user
set feedback off
set define off
prompt Creating ACTION_OK...
create table ACTION_OK
(
  DEAL_ID NUMBER(6),
  ID      NUMBER(6) not null,
  NAME    VARCHAR2(80),
  MANUAL  NUMBER(1)
)
;
alter table ACTION_OK
  add constraint XPK_ACTION_OK primary key (ID);

prompt Truncating ACTION_OK...
truncate table ACTION_OK;
prompt Loading ACTION_OK...
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 3, '�H����H �������', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 6, '������ �������', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 8, '������ �������', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 10, '�������Ш �������', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 12, '������ �������', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 14, '����H��H �������', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 18, '�������H� �������', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 22, '�����H��Ш �������', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 24, '�����Ш �������', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 26, '�����H� �����', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 27, '�����H� �������', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 30, '�����H� �������', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 33, '������ �������', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (10, 35, '��������������� ������������', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (20, 214, '���������', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (20, 222, '�����������', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (20, 233, '���������', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (20, 206, '��������� �������', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (20, 201, '������� ������', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (20, 208, '������������� ������ � �������', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (20, 209, '��� ������� ������ � �������', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (30, 301, '������ �����', 1);
insert into ACTION_OK (DEAL_ID, ID, NAME, MANUAL)
values (30, 302, '������ ���������', 2);
commit;
prompt 23 records loaded
set feedback on
set define on
prompt Done.
