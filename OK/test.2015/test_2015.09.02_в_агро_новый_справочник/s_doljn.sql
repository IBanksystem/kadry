prompt PL/SQL Developer import file
prompt Created on 2 �������� 2015 �. by saule
set feedback off
set define off
prompt Creating S_DOLJN...
create table S_DOLJN
(
  NCI_ID     CHAR(2),
  DOLJ_ID    CHAR(3),
  DOLJ_NAME  VARCHAR2(80),
  UROV_ID    CHAR(1),
  DATE_OPEN  DATE,
  DATE_CLOSE DATE,
  ACT        CHAR(1)
)
;

prompt Loading S_DOLJN...
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '209', '����� ������� ����������', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '210', '��� ����������', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '211', '������ ����������', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '212', '1-������� ����������', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '213', '2-������� ����������', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '214', '����������', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '215', '�����', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '216', '����� ������', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '217', '������', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '218', '����� ������ ������', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '020', '1-������� ���������� (����������)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '021', '2-������� ���������� (����������)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '022', '���������� (����������)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '023', '����� (����������)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '024', '����� ������ (����������)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '025', '������ (����������)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '026', '����� ������ ������ (����������)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '111', '����� ������� ����������', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '112', '��� ����������', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '113', '������ ����������', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '114', '1-������� ����������', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '115', '2-������� ����������', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '116', '����������', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '117', '�����', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '118', '����� ������', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '119', '������', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '120', '����� ������ ������', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '017', '����� ������� ���������� (����������)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '018', '��� ���������� (����������)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '019', '������ ���������� (����������)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '001', '�������� �����', '0', to_date('01-08-2006', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '002', '�������� ��������� ������� ����������', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '003', '������ ���������� �������', '0', to_date('01-08-2006', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '004', '�������� ����� ����������', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '005', '����������� ���������', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '006', '����������� ��������� ����������', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '007', '�������� ������� (����������)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '008', '�������� ������� ���������� (����������)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '009', '������ ���������� ��� ����������', '0', to_date('01-08-2006', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '010', '��� ��������� (����������)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '011', '��� ��������� ���������� (����������)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '012', '����� ������� (����������)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '013', '����� ������ (����������)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '014', '���� ���� ������� (����������)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '015', '���� ����� ������� ��� ����������� (����������)', '0', to_date('01-08-2006', 'dd-mm-yyyy'), to_date('22-08-2015', 'dd-mm-yyyy'), 'Z');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '016', '������ ������� ������ ������ ����� (����������)', '0', to_date('01-08-2006', 'dd-mm-yyyy'), to_date('22-08-2015', 'dd-mm-yyyy'), 'Z');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '101', '������� ������ (��������) �������', '1', to_date('01-08-2006', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '102', '������� ������ (��������) ������� ����������', '1', to_date('01-08-2006', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '103', '��� ���������', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '104', '��� ��������� ����������', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '105', '������ ������ �������', '1', to_date('01-08-2006', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '106', '������ ������ ��� ����������', '1', to_date('25-02-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '107', '����� �������', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '108', '����� ������', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '109', '���� ���� �������', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '110', '������ ������� ������ ������ �����', '1', to_date('01-08-2006', 'dd-mm-yyyy'), to_date('22-08-2015', 'dd-mm-yyyy'), 'Z');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '201', '����������', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '202', '���������� ����������', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '203', '��� ���������', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '204', '��� ��������� ����������', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '205', '����� �������', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '206', '����� ������', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '207', '���� ���� �������', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '208', '������ ������� ������ ������ �����', '2', to_date('01-08-2006', 'dd-mm-yyyy'), to_date('22-08-2015', 'dd-mm-yyyy'), 'Z');
prompt 64 records loaded
set feedback on
set define on
prompt Done.
