
set feedback off
set define off
prompt Deleting SS_OK_GOSUBMIT...
delete from SS_OK_GOSUBMIT;

insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (6, '��������� �������');
insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (14, '������� ��');
insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (22, '���������� ��');

insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (29, '��������� � ��');
insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (30, '������ �� ����������');

insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (33, '�������� ��');

commit;
set feedback on
set define on
prompt Done.
