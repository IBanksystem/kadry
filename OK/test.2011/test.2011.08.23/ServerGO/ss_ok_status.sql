
prompt Created on 19 ������ 2011 �. by user
alter table SS_OK_STATUS modify STATUS_CODE NUMBER(2);
set feedback off
set define off
prompt Deleting SS_OK_STATUS...
delete from SS_OK_STATUS;
commit;
prompt Loading SS_OK_STATUS...
insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (1, '�����');
insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (2, '������');
insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (3, '�� ������');
insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (4, '������');
insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (5, '��������� ������');

insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (6, '��������� �������');

insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (14, '��������� ��');

insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (22, '����������� ��');

insert into SS_OK_STATUS (STATUS_CODE, STATUS_NAME)
values (29, '��������� � ��');

commit;
set feedback on
set define on
prompt Done.
