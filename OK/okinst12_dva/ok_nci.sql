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
  
comment on table ss_ok_nci is 'справочник соответствия содержимого справочников ЦБ по кадрам';
comment on column ss_ok_nci.NCI_ID	is	'код справочника цб';
comment on column ss_ok_nci.s_ID	is	'уникальный код в справочнике цб';
comment on column ss_ok_nci.ok_ID	is	'уникальный код в справочнике модуля кадры';
comment on column ss_ok_nci.STATE_NOTES 	is 'Признак активности записиA - активная записьP - пассивная запись	Вводится с клавиатуры, видимое поле, по умолчанию ставится признак  -А -активная запись';
comment on column ss_ok_nci.EMP_CODE 	is	'Код пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, не видимое поле, обязательное для заполнения';
comment on column ss_ok_nci.INS_date 	is	'Дата и время  ввода информации 	SYSdate, не видимое поле, обязательное для заполнения';
  

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

comment on table ss_ok is 'информация по справочникам в модуле кадры';

comment on column ss_ok.ID	is	'код справочника в модуле кадры';
comment on column ss_ok.NCI_ID	is	'код справочника цб';
comment on column ss_ok.SS_NAME	is	'наименование справочника';

comment on column ss_ok.NCI_TBL_NAME	is	 'наименование таблицы справочника цб';
comment on column ss_ok.NCI_ID_NAME	is 'наименование поля id в справочнике цб';
comment on column ss_ok.NCI_NAME	is 'наименование поля name в справочнике цб';

comment on column ss_ok.SS_OK_TBL_NAME	is	 'наименование таблицы справочника в модуле кадры';
comment on column ss_ok.SS_OK_ID_NAME	is 'наименование поля id в справочнике модуля кадры';
comment on column ss_ok.SS_OK_NAME	is 'наименование поля name в справочнике модуля кадры';

delete from ss_ok;
INSERT INTO ss_ok(ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME,
     SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
) VALUES(1,'72','Миллатлар-Национальности',
'S_NATION','NAT_ID','NAT_NAME', 
'SS_OK_NATIONALITY','NATIONALITY_CODE','NATIONALITY_NAME');

INSERT INTO ss_ok(ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME,
     SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
) VALUES(2,'73','Партиялар-Партии',
'S_PARTY','PART_ID','PART_NAME', 
'SS_OK_PARTY','PARTY_CODE','PARTY_NAME');

INSERT INTO ss_ok(ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME,
     SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
) VALUES(3,'74','Маълумот-Образование',
'S_OBRAZ','OBR_ID','OBR_NAME', 
'SS_OK_EDUCATION_TITLE','EDUCATION_TITLE_CODE','EDUCATION_TITLE_NAME');

INSERT INTO ss_ok(ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME,
     SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
) VALUES(4,'75','Илмий даражалар-Ученые степени',
'S_UCH_STEP','ZVN_ID','ZVN_NAME', 
'SS_OK_DEGREE','DEGREE_CODE','DEGREE_NAME');

INSERT INTO ss_ok(ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME,
     SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
) VALUES(5,'76','Илмий унвонлар-Ученые звания',
'S_UCH_ZVN','ZVN_ID','ZVN_NAME', 
'SS_OK_ACADEMIC','ACADEMIC_CODE','ACADEMIC_NAME');

INSERT INTO ss_ok(ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME,
     SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
) VALUES(6,'77','Чет тиллари-Иностранные языки',
'S_LANGS','LANG_ID','LANG_NAME', 
'SS_OK_LANGUAGE','LANGUAGE_CODE','LANGUAGE_NAME');

INSERT INTO ss_ok(ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME,
     SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
) VALUES(7,'78','Чет тилини билиш даражалари-Степень владения иностранными языками',
'S_LANG','UROV_ID','UROV_NAME', 
'SS_OK_LEVEL_LANGUAGE','LEVEL_LANGUAGE_CODE','LEVEL_LANGUAGE_NAME');

INSERT INTO ss_ok(ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME,
     SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
) VALUES(8,'79','Лавозимлар-Должности',
'S_DOLJN','DOLJ_ID','DOLJ_NAME', 
'SS_OK_POST','POST_CODE','POST_NAME');

INSERT INTO ss_ok(ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME,
     SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
) VALUES(9,'80','Укув юртлари-Учебные заведения',
'S_UCH_ZAV','ZAV_ID','ZAV_NAME', 
'SS_OK_INSTITUTION','INSTITUTION_CODE','INSTITUTION_NAME');

INSERT INTO ss_ok(ID, NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME,
     SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
) VALUES(10,'81','Кариндошлик мунособатлари-Родственные отношения',
'S_FAMILY','FAM_ID','FAM_NAME', 
'SS_OK_RELATION','RELATION_CODE','RELATION_NAME');



