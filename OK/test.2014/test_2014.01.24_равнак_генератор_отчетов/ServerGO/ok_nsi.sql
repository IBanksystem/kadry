prompt PL/SQL Developer import file
prompt Created on 24 ������ 2014 �. by user
set feedback off
set define off
delete from OK_NSI where ok_id in ('001','002','003','004','005','006','007','008','009','010',
'011','012','013','014','015','016','017','018','019','020',
'021','022','023','024','025','026','027');
prompt Loading OK_NSI...
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('001', '�������� ������', 'OK_PERSONAL', 'H', '�������� ������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('002', '������ ������', 'OK_ACADEMIC', 'H', '������ ������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('003', '�������������� ��������', 'OK_ADDINFORM', 'H', '�������������� ��������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('004', '�������� ������', 'OK_ARMY', 'H', '�������� ������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('005', '����������', 'OK_ATTESTATION', 'H', '����������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('006', '�������� � ��������', 'OK_AWARD', 'H', '�������� � ��������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('007', 'C������� �� ��������� ���', 'OK_CHANGE_FIO', 'H', 'C������� �� ��������� ���');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('008', '�������� � �������� ���������������', 'OK_CONVICTIONS', 'H', '�������� � �������� ���������������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('009', '�������� �� ������ ��������', 'OK_DEGREE', 'H', '�������� �� ������ ��������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('010', '�������� �� �����������', 'OK_EDUCATION', 'H', '�������� �� �����������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('011', '�������� �� �������� � �������������� ������', 'OK_ELECTION', 'H', '�������� �� �������� � �������������� ������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('012', '�������� �� ����������� ������', 'OK_LANGUAGE', 'H', '�������� �� ����������� ������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('013', '�������', 'OK_LEAVE', 'H', '�������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('014', '������', 'OK_PARTY', 'H', '������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('015', '�������� � ��������� ���������', 'OK_PENALTY', 'H', '�������� � ��������� ���������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('016', '�������� � ������', 'OK_PERIOD', 'H', '�������� � ���������� ������ ������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('017', '���������� �����������', 'OK_YOUTH', 'H', '���������� �����������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('018', '������', 'OK_PREMIUM', 'H', '������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('019', '����������� ���������', 'OK_RELATION', 'H', '����������� ���������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('020', '������������', 'OK_RISE', 'H', '������������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('021', '�������� � ������� �������', 'OK_SCIENTIFIC', 'H', '�������� � ������� �������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('022', '�������� � ���������� ��������', 'OK_VOYAGE', 'H', '�������� � ���������� ��������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('023', '����� ��������� ������������', 'SS_OK_KV_KURS KUKU, OK_KURS', 'H', '����� ��������� ������������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('024', '����������', 'OK_HOSPITAL', 'H', '����������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('025', '������', 'OK_PRIVILEGE', 'H', '������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('026', '��������', 'OK_INCREASE', 'H', '��������');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('027', '������������', 'OK_BUSINESS_VOYAGE', 'H', '������������');
commit;
prompt 27 records loaded
set feedback on
set define on
prompt Done.
