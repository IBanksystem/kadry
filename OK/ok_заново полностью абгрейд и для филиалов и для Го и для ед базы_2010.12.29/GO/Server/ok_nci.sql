prompt # ok_nci.sql 16-08-2006

create table ss_ok_nci(
NCI_ID      CHAR(2) NOT NULL,
S_ID        VARCHAR(5) NOT NULL,
OK_ID       NUMBER(8) NOT NULL,
STATE_NOTES CHAR(1),
EMP_CODE    NUMBER(6),
INS_DATE    DATE
);

ALTER TABLE ss_ok_nci ADD CONSTRAINT ss_ok_nci_PK
  PRIMARY KEY ( NCI_ID, OK_ID );

ALTER TABLE ss_ok_nci ADD CONSTRAINT ss_ok_nci_UK
  UNIQUE ( NCI_ID, S_ID, OK_id ) ;
  
comment on table ss_ok_nci is '���������� ������������ ����������� ������������ �� �� ������';
comment on column ss_ok_nci.NCI_ID	is	'��� ����������� ��';
comment on column ss_ok_nci.s_ID	is	'���������� ��� � ����������� ��';
comment on column ss_ok_nci.ok_ID	is	'���������� ��� � ����������� ������ �����';
comment on column ss_ok_nci.STATE_NOTES 	is '������� ���������� ������A - �������� ������P - ��������� ������	�������� � ����������, ������� ����, �� ��������� �������� �������  -� -�������� ������';
comment on column ss_ok_nci.EMP_CODE 	is	'��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, �� ������� ����, ������������ ��� ����������';
comment on column ss_ok_nci.INS_date 	is	'���� � �����  ����� ���������� 	SYSdate, �� ������� ����, ������������ ��� ����������';
  

create table ss_ok(
ID            NUMBER(6) NOT NULL,
NCI_ID        CHAR(2),
SS_NAME       VARCHAR(250),
NCI_TBL_NAME  VARCHAR(50),
NCI_ID_NAME   VARCHAR(50),
NCI_NAME      VARCHAR(50),
SS_OK_TBL_NAME    VARCHAR(50),
SS_OK_ID_NAME VARCHAR(50),
SS_OK_NAME    VARCHAR(50)
);

ALTER TABLE ss_ok ADD CONSTRAINT ss_ok_PK
  PRIMARY KEY ( NCI_ID );

comment on table ss_ok is '���������� �� ������������ � ������ �����';

comment on column ss_ok.ID	is	'��� ����������� � ������ �����';
comment on column ss_ok.NCI_ID	is	'��� ����������� ��';
comment on column ss_ok.SS_NAME	is	'������������ �����������';

comment on column ss_ok.NCI_TBL_NAME	is	 '������������ ������� ����������� ��';
comment on column ss_ok.NCI_ID_NAME	is '������������ ���� id � ����������� ��';
comment on column ss_ok.NCI_NAME	is '������������ ���� name � ����������� ��';

comment on column ss_ok.SS_OK_TBL_NAME	is	 '������������ ������� ����������� � ������ �����';
comment on column ss_ok.SS_OK_ID_NAME	is '������������ ���� id � ����������� ������ �����';
comment on column ss_ok.SS_OK_NAME	is '������������ ���� name � ����������� ������ �����';

