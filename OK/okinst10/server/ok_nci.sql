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

delete from ss_ok;
INSERT INTO ss_ok(ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME,
     SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
) VALUES(1,'72','���������-��������������',
'S_NATION','NAT_ID','NAT_NAME', 
'SS_OK_NATIONALITY','NATIONALITY_CODE','NATIONALITY_NAME');

INSERT INTO ss_ok(ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME,
     SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
) VALUES(2,'73','���������-������',
'S_PARTY','PART_ID','PART_NAME', 
'SS_OK_PARTY','PARTY_CODE','PARTY_NAME');

INSERT INTO ss_ok(ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME,
     SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
) VALUES(3,'74','��������-�����������',
'S_OBRAZ','OBR_ID','OBR_NAME', 
'SS_OK_EDUCATION_TITLE','EDUCATION_TITLE_CODE','EDUCATION_TITLE_NAME');

INSERT INTO ss_ok(ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME,
     SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
) VALUES(4,'75','����� ���������-������ �������',
'S_UCH_STEP','ZVN_ID','ZVN_NAME', 
'SS_OK_DEGREE','DEGREE_CODE','DEGREE_NAME');

INSERT INTO ss_ok(ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME,
     SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
) VALUES(5,'76','����� ��������-������ ������',
'S_UCH_ZVN','ZVN_ID','ZVN_NAME', 
'SS_OK_ACADEMIC','ACADEMIC_CODE','ACADEMIC_NAME');

INSERT INTO ss_ok(ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME,
     SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
) VALUES(6,'77','��� �������-����������� �����',
'S_LANGS','LANG_ID','LANG_NAME', 
'SS_OK_LANGUAGE','LANGUAGE_CODE','LANGUAGE_NAME');

INSERT INTO ss_ok(ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME,
     SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
) VALUES(7,'78','��� ������ ����� ����������-������� �������� ������������ �������',
'S_LANG','UROV_ID','UROV_NAME', 
'SS_OK_LEVEL_LANGUAGE','LEVEL_LANGUAGE_CODE','LEVEL_LANGUAGE_NAME');

INSERT INTO ss_ok(ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME,
     SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
) VALUES(8,'79','����������-���������',
'S_DOLJN','DOLJ_ID','DOLJ_NAME', 
'SS_OK_POST','POST_CODE','POST_NAME');

INSERT INTO ss_ok(ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME,
     SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
) VALUES(9,'80','���� �������-������� ���������',
'S_UCH_ZAV','ZAV_ID','ZAV_NAME', 
'SS_OK_INSTITUTION','INSTITUTION_CODE','INSTITUTION_NAME');

INSERT INTO ss_ok(ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME,
     SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
) VALUES(10,'81','����������� �������������-����������� ���������',
'S_FAMILY','FAM_ID','FAM_NAME', 
'SS_OK_RELATION','RELATION_CODE','RELATION_NAME');



