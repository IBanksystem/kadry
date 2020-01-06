prompt # oktables.sql 18.09.2006

-- drop table OK_PERSONAL;
create table OK_PERSONAL(
ID	NUMBER(8) not null, 
BRANCH	char(5) not null,
PERSONAL_CODE  	NUMBER (9) not null,
COLLEAGUE_CODE	NUMBER (10),	
STATUS_CODE	NUMBER (1),
SALARY_CODE 	NUMBER(9),
FAMILY	VARCHAR2(50) not null,
FIRST_NAME 	VARCHAR2(50) not null,
PATRONYMIC	VARCHAR2(50),	
GENDER_CODE 	NUMBER (1) not null,
BIRTHDAY	DATE  not null,
REGION_ID CHAR(2),
DISTR CHAR(3),    
NATIONALITY_CODE	NUMBER(3) not null, 
FAMILY_STATUS_CODE	NUMBER(1) not null,
REG_TYPE_CODE	NUMBER(1) not null,	
HOME_ADDRESS	VARCHAR2(250) not null,
HOME_ADDRESSFACT	VARCHAR2(250) not null,	
PASS_SERIYA 	VARCHAR2(9) not null,	
PASS_NUM	VARCHAR2(9) not null,	
PASS_DATE	DATE not null,
PASS_REG	VARCHAR2(200) not null,
RECORD_BOOK_NUMBER	VARCHAR(10) ,
RECORD_BOOK_SERIES	VARCHAR(10) ,
TELEFON 	VARCHAR2(200),
EMP_CODE 	NUMBER(6) not null,
INS_DATE	DATE not null,
PROFMEMBER number(1) default '1',
tabno number(9),
Education_Title_CODE number(3),
BIRTHPLACE	VARCHAR2(250),
MOTIVE_OUT VARCHAR2(150),
BASIS_NUM VARCHAR2(30),
BASIS_DATE	DATE,
LEAVE_CODE 	NUMBER(2),
DEPARTMENT_CODE	NUMBER(9),
POST_CODE number(3),
NN NUMBER(9),
MOTIVE_DISMISSIAL_CODE number(2),
nps_id NUMBER (14),
SPECIAL_CODE	number (3),
cod_distr_uvd varchar2(3),
cod_distr_prim varchar2(50),
cod_str_birth varchar2(3),
cod_obl_prim varchar2(50),
cod_place_birth_prim varchar2(50),
cod_sitizent varchar2(1),
cod_str_sitizent varchar2(3),
cod_str_live varchar2(3),
cod_obl_live varchar2(2),
cod_obl_live_prim varchar2(50),
cod_distr_live varchar2(3),
cod_distr_live_prim varchar2(50),
code_naci_prim varchar2(50),
check_kfs varchar2(1),
is_boss varchar2(1),
bank_spec varchar2(1),
NOTICE varchar2(200)
) ;



ALTER TABLE OK_PERSONAL ADD (
PROFMEMBER number(1) default '1'
 );
ALTER TABLE OK_PERSONAL ADD (
tabno number(9)
 );
ALTER TABLE OK_PERSONAL ADD (
Education_Title_CODE number(3)
 );
ALTER TABLE OK_PERSONAL ADD (
BIRTHPLACE	VARCHAR2(250)
 );
ALTER TABLE OK_PERSONAL ADD (
MOTIVE_OUT VARCHAR2(150)
 );
ALTER TABLE OK_PERSONAL ADD (
BASIS_NUM VARCHAR2(30)
 );
ALTER TABLE OK_PERSONAL ADD (
BASIS_DATE	DATE
 );
ALTER TABLE OK_PERSONAL ADD (
LEAVE_CODE 	NUMBER(2)
 );
ALTER TABLE OK_PERSONAL ADD (
DEPARTMENT_CODE	NUMBER(9)
 );
ALTER TABLE OK_PERSONAL ADD (
POST_CODE number(3)
 );
ALTER TABLE OK_PERSONAL ADD (
NN NUMBER(9)
 );
ALTER TABLE OK_PERSONAL ADD (
MOTIVE_DISMISSIAL_CODE number(2)
 );
ALTER TABLE OK_PERSONAL ADD (
nps_id NUMBER (14)
 );
ALTER TABLE OK_PERSONAL ADD (
SPECIAL_CODE	number (3)
 );

ALTER TABLE OK_PERSONAL ADD (
cod_distr_uvd varchar2(3)
 );

ALTER TABLE OK_PERSONAL ADD (
cod_distr_prim varchar2(50)
 );

ALTER TABLE OK_PERSONAL ADD (
cod_str_birth varchar2(3)
 );

ALTER TABLE OK_PERSONAL ADD (
cod_obl_prim varchar2(50)
 );

ALTER TABLE OK_PERSONAL ADD (
cod_place_birth_prim varchar2(50)
 );

ALTER TABLE OK_PERSONAL ADD (
cod_sitizent varchar2(1)
 );

ALTER TABLE OK_PERSONAL ADD (
cod_str_sitizent varchar2(3)
 );

ALTER TABLE OK_PERSONAL ADD (
cod_str_live varchar2(3)
 );

ALTER TABLE OK_PERSONAL ADD (
cod_obl_live varchar2(2)
 );
ALTER TABLE OK_PERSONAL ADD (
cod_obl_live_prim varchar2(50)
 );

ALTER TABLE OK_PERSONAL ADD (
cod_distr_live varchar2(3)
 );
ALTER TABLE OK_PERSONAL ADD (
cod_distr_live_prim varchar2(50)
 );

ALTER TABLE OK_PERSONAL ADD (
code_naci_prim varchar2(50)
 );

ALTER TABLE OK_PERSONAL ADD (
check_kfs varchar2(1)
 );

ALTER TABLE OK_PERSONAL ADD (
is_boss varchar2(1)
);

ALTER TABLE OK_PERSONAL ADD (
bank_spec varchar2(1)
 );

ALTER TABLE OK_PERSONAL ADD (
NOTICE varchar2(200)
 );
 
comment on table OK_PERSONAL is 'рабочая таблица "Сведения о сотруднике"';
comment on column OK_PERSONAL.department_code	is	'код подразделения, используется вместе с branch рабочая таблица ss_ok_department';
comment on column OK_PERSONAL.post_code	is	'код наименования должности справочник ss_ok_post';
comment on column OK_PERSONAL.ID	is	'Системный номер	В порядке возрастания, начиная   с "1"';
comment on column OK_PERSONAL.BRANCH	is 'МФО отделения	Выбирается из таблицы S_MFO поле BANK_ID, невидимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.PERSONAL_CODE  	is 'Код сотрудника в отделении	Автоматически присваивается в отделении и передается в Головной офис  в файле - уникален в отделении, невидимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.COLLEAGUE_CODE	is 'Код сотрудника в Головном офисе 	Автоматически присваивается сотруднику после получения файла из отделения и спускается в отделение с ответным файлом - уникальный в системе банка  по Республике независимо от номера МФО отделения, невидимое поле';
comment on column OK_PERSONAL.STATUS_CODE	is 'Статус сотрудника ';
comment on column OK_PERSONAL.SALARY_CODE is 'Код Рабочего Места в отделении ok_stat_salary';
comment on column OK_PERSONAL.FAMILY	is 'Фамилия сотрудника	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.FIRST_NAME 	is 'Имя сотрудника	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.PATRONYMIC	is 'Отчество сотрудника	Вводится с клавиатуры. невидимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.GENDER_CODE 	is 'Пол сотрудника	Выбирается  из системного справочника SS_OK_GENDER, поле GENDER_CODE В отчетную форму выводится наименование пола, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.BIRTHDAY	is 'День рождения сотрудника DDMMYYYY	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.NATIONALITY_CODE	is 'Код национальности 	Выбирается из справочника SS_OK_NATIONALITY  поле NATIONALITY_CODE, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.FAMILY_STATUS_CODE	is 'Код семейного положения	Выбирается из справочникаSS_OK_FAMILY_STATUSполе FAMILY_STATUS_CODE, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.REG_TYPE_CODE	is 'Код типа прописки	Выбирается из справочника SS_OK_REGISTRATION_TYPE, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.HOME_ADDRESS	is 'Полный домашний адрес сотрудника(прописка) 	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.HOME_ADDRESSFACT	is 'Фактическое место проживания	Вводится с клавиатуры. Видимое поле';
comment on column OK_PERSONAL.PASS_SERIYA is 'Серия паспорта	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.PASS_NUM	is 'Номер паспорта	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.PASS_DATE	is 'Дата выдачи паспорта	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.PASS_REG	is 'Место выдачи паспорта	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.RECORD_BOOK_NUMBER is 'Номер трудовой книжки	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column OK_PERSONAL.RECORD_BOOK_SERIES	is 'Серия трудовой книжки	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column OK_PERSONAL.TELEFON is 'Информация о контактных Телефонах	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.EMP_CODE is 'Код пользователя, вводившего 	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.INS_DATE is 'Дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_PERSONAL ADD CONSTRAINT OK_PERSONAL_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE );

ALTER TABLE OK_PERSONAL ADD CONSTRAINT OK_PERSONAL_UK
  UNIQUE ( branch, id ) ;

ALTER TABLE OK_PERSONAL ADD CONSTRAINT OK_PERSONAL_CHK_CODE
  CHECK (personal_code>0);

CREATE INDEX ok_personal_passport ON ok_personal
  ( branch, pass_num, pass_seriya) ;

-- drop SEQUENCE SEQ_OK_PERSONAL;
CREATE SEQUENCE SEQ_OK_PERSONAL
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_PERSONAL.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_PERSONAL
 BEFORE 
 INSERT
 ON OK_PERSONAL
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
  nullFieldName  VarChar2(35);
BEGIN

  if :new.home_address is null then :new.home_address := :new.home_addressfact;
  end if;

  if    :new.id        is NULL then nullfieldname := 'id'       ;
  elsif :new.INS_DATE  is NULL then nullfieldname := 'INS_DATE' ;
  elsif :new.EMP_code  is NULL then nullfieldname := 'EMP_CODE' ;
  elsif :new.BRANCH    is NULL Then nullfieldname := 'branch'   ;
  else  nullfieldname :=  null ;
  end if;
  if nullfieldname is not null then
    Raise_Application_Error( -20666, 'Поле ' || nullfieldname || ' должно быть со значением!!');
  end if;

END;
/

-----------------------------------------
-- drop table OK_CHANGE_FIO;
create table OK_CHANGE_FIO( -- 'Cведения об изменении Фамилии, Имени, Отчества'
ID	NUMBER(8) not null, --	'Системный номер	В порядке возрастания, начиная   с "1"'
BRANCH	char(5) not null, 	-- 'МФО отделения	Выбирается из таблицы S_MFO поле BANK_ID, невидимое поле, обязательное для заполнения'
PERSONAL_CODE  	NUMBER (9) not null,	-- 'Код сотрудника в отделении	Автоматически присваивается в отделении и передается в Головной офис  в файле - уникален в отделении, невидимое поле, обязательное для заполнения'
FAMILY	VARCHAR2(20) not null, -- 'Фамилия сотрудника	Выбирается из таблицы OK_PERSONAL  поле  FAMILY или вводится  с клавиатурывидимое поле, обязательное для заполнения'
FIRST_NAME 	VARCHAR2(20) not null, -- 'Имя сотрудника	Выбирается из таблицы OK_PERSONAL  поле NAME или вводится  с клавиатуры. видимое поле, обязательное для заполнения'
PATRONYMIC	VARCHAR2(20), -- 'Отчество сотрудника	Выбирается из таблицы OK_PERSONAL  поле PATRONIMIC или вводится  с клавиатуры, видимое поле, обязательное для заполнения'
CHANGE_DATE	DATE not null, -- 'Дата изменения ФИО	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
CHANGE_MOTIVE	VARCHAR2(50) not null, -- 'Причина изменения ФИО	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
EMP_CODE 	NUMBER (6) not null, -- 'Код пользователя вводившего информацию	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения'
INS_DATE	DATE  not null -- 'Дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения'
) ;

comment on table OK_CHANGE_FIO is 'Cведения об изменении Фамилии, Имени, Отчества';
comment on column OK_CHANGE_FIO.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_CHANGE_FIO.BRANCH	 is 'МФО отделения	Выбирается из таблицы S_MFO поле BANK_ID, невидимое поле, обязательное для заполнения';
comment on column OK_CHANGE_FIO.PERSONAL_CODE  is 'Код сотрудника в отделении	Выбирается из таблицы OK_PERSONAL  поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_CHANGE_FIO.FAMILY	 is 'Фамилия сотрудника	Выбирается из таблицы OK_PERSONAL  поле  FAMILY или вводится  с клавиатурывидимое поле, обязательное для заполнения';
comment on column OK_CHANGE_FIO.FIRST_NAME 	 is 'Имя сотрудника	Выбирается из таблицы OK_PERSONAL  поле NAME или вводится  с клавиатуры. видимое поле, обязательное для заполнения';
comment on column OK_CHANGE_FIO.PATRONYMIC	 is 'Отчество сотрудника	Выбирается из таблицы OK_PERSONAL  поле PATRONIMIC или вводится  с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_CHANGE_FIO.CHANGE_DATE	 is 'Дата изменения ФИО	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_CHANGE_FIO.CHANGE_MOTIVE is 'Причина изменения ФИО	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_CHANGE_FIO.EMP_CODE is 'Код пользователя вводившего информацию	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_CHANGE_FIO.INS_DATE is 'Дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_CHANGE_FIO ADD CONSTRAINT OK_CHANGE_FIO_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, CHANGE_DATE ) ;

ALTER TABLE OK_CHANGE_FIO ADD CONSTRAINT OK_CHANGE_FIO_UK
  UNIQUE ( BRANCH, ID ) ;

-- drop SEQUENCE SEQ_OK_CHANGE_FIO;
CREATE SEQUENCE SEQ_OK_CHANGE_FIO
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_CHANGE_FIO.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_CHANGE_FIO_SEQ
 BEFORE 
 INSERT
 ON OK_CHANGE_FIO
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
  new_id NUMBER;
BEGIN

  if :new.CHANGE_DATE is null and :new.CHANGE_MOTIVE is null then
    Raise_Application_Error( -20666, 'Пожалуйста, Укажите дату и причину изменения ФИО сотрудника!!');
  end if;
  if :new.CHANGE_MOTIVE is null then
    Raise_Application_Error( -20666, 'Пожалуйста, Укажите причину изменения ФИО сотрудника!!');
  end if;
  if :new.CHANGE_DATE is null   then
    Raise_Application_Error( -20666, 'Пожалуйста, Укажите дату изменения ФИО сотрудника!!');
  end if;

  select seq_OK_CHANGE_FIO.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;

END;
/

----------------------
-- drop table OK_RELATION;
create table OK_RELATION(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
RELATION_CODE 	 NUMBER(2) not null,
RELATION_FAMILY	VARCHAR2(50) not null,
RELATION_NAME	VARCHAR2(50) not null,
RELATION_PATRONYMIC	VARCHAR2(50),
RELATION_BIRTHDAY  	NUMBER(4),
RELATION_DEATHDAY  	NUMBER(4),
RELATION_BIRTHPLACE	VARCHAR2(200),
RELATION_OFFICE  	VARCHAR2(200),
RELATION_POST	VARCHAR2(100),
RELATION_HOME_ADDRESS	VARCHAR2(200),
EMP_CODE 	NUMBER(6),
INS_DATE	DATE,
COD_STR_LIVE  	varchar2(3),
COD_OBL_LIVE  	varchar2(2),
COD_OBL_LIVE_PRIM   	varchar2(50),
COD_CITY  	varchar2(3),
COD_CITY_PRIM   	varchar2(50)
);

ALTER TABLE ok_relation MODIFY (
RELATION_PATRONYMIC	VARCHAR2(50)  null
);
ALTER TABLE ok_relation MODIFY (
RELATION_BIRTHDAY  	NUMBER(4)  null
);
ALTER TABLE ok_relation MODIFY (
RELATION_BIRTHPLACE	VARCHAR2(200)  null
);
ALTER TABLE ok_relation MODIFY (
RELATION_OFFICE  	VARCHAR2(200) null
);
ALTER TABLE ok_relation MODIFY (
RELATION_POST	VARCHAR2(100) null
);
ALTER TABLE ok_relation MODIFY (
RELATION_HOME_ADDRESS	VARCHAR2(200)  null
);

ALTER TABLE ok_relation ADD (
RELATION_DEATHDAY  	NUMBER(4)
);

ALTER TABLE ok_relation MODIFY (
RELATION_DEATHDAY  	NUMBER(4) null
);

ALTER TABLE ok_relation ADD (
COD_STR_LIVE  	varchar2(3)
);

ALTER TABLE ok_relation ADD (
COD_OBL_LIVE  	varchar2(2)
);

ALTER TABLE ok_relation ADD (
COD_OBL_LIVE_PRIM   	varchar2(50)
);

ALTER TABLE ok_relation ADD (
COD_CITY  	varchar2(3)
);

ALTER TABLE ok_relation ADD (
COD_CITY_PRIM   	varchar2(50)
);

comment on table OK_RELATION is 'сведения о близких родственниках';
comment on column OK_RELATION.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_RELATION.BRANCH is  'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_RELATION.PERSONAL_CODE  is  'Код сотрудника в отделении	Выбирается из таблицы OK_PERSONAL  поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_RELATION.RELATION_CODE is 'Код родственного отношения	Выбирается из SS_OK_RELATION  поле RELATION_CODE, видимое поле, обязательное для заполнения';
comment on column OK_RELATION.RELATION_FAMILY	 is  'Фамилия  родственника	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_RELATION.RELATION_NAME	 is  'Имя родственника	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_RELATION.RELATION_PATRONYMIC is  'Отчество родственника	Вводится с клавиатуры видимое поле, обязательное для заполнения,';
comment on column OK_RELATION.RELATION_BIRTHDAY  is  'год День рождения родственника DDMMYYYY	Вводится с клавиатуры , видимое поле, обязательное для заполнения';
comment on column OK_RELATION.RELATION_BIRTHPLACE	 is  'Место рождения  родственника	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_RELATION.RELATION_OFFICE  is  'Место работы родственника	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_RELATION.RELATION_POST	 is  'Занимаемая должность родственника	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_RELATION.RELATION_HOME_ADDRESS is  'Место жительства родственника	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_RELATION.EMP_CODE  is  'Код пользователя, вводившего информацию	Выбирается из таблицы USERS  поле  ID, видимое поле, обязательное для заполнения';
comment on column OK_RELATION.INS_DATE	 is  'Дата и время ввода данных	SYSDATE, видимое поле, обязательное для заполнения';

ALTER TABLE OK_RELATION ADD CONSTRAINT OK_RELATION_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_RELATION ADD CONSTRAINT OK_RELATION_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_RELATION;
CREATE SEQUENCE SEQ_OK_RELATION
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_RELATION.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_RELATION_SEQ
 BEFORE 
 INSERT
 ON OK_RELATION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_RELATION.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-- drop table OK_PERIOD;
create table OK_PERIOD(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_code 	NUMBER(9) not null,
IN_OFFICE_DATE	DATE not null,
OUT_OFFICE_DATE	 DATE,
OFFICE_NAME	VARCHAR2(150) not null,
OFFICE_ADDRESS	VARCHAR2(150),
ESTABLISHED_POST	VARCHAR2(150) not null,
ESTABLISHED_DEPARTMENT	VARCHAR2(150),
base_move_code NUMBER (9),
TYPE_PERIOD_CODE 	NUMBER (1) not null,
ARTICLE_CODE NUMBER(3),
BASIS_NUM VARCHAR2(30),
BASIS_DATE DATE,
EMP_CODE NUMBER (6) not null,
INS_DATE DATE not null,
priz_system VARCHAR2(1),
cod_bank VARCHAR2(5),
cod_type_prn VARCHAR2(2),
cod_pr_off VARCHAR2(2),
pr_off VARCHAR2(100),
date_utv_km date,
numb_utv_km VARCHAR2(10),
date_pr_kvl date,
numb_pr_kvl VARCHAR2(10),
date_attest date,
resh_attest VARCHAR2(100),
doljn_id varchar2(3),
num_pr_off varchar2(10),
date_pr_off date
);

ALTER TABLE ok_period MODIFY (
OFFICE_ADDRESS null
);

ALTER TABLE ok_period ADD (
BASE_MOVE_CODE NUMBER(9)
);
ALTER TABLE ok_period ADD (
ESTABLISHED_DEPARTMENT VARCHAR2(150)
);

ALTER TABLE ok_period ADD (
priz_system VARCHAR2(1)
);
ALTER TABLE ok_period ADD (
cod_bank VARCHAR2(5)
);

ALTER TABLE ok_period ADD (
cod_type_prn VARCHAR2(2)
);

ALTER TABLE ok_period ADD (
cod_pr_off VARCHAR2(2)
);
ALTER TABLE ok_period ADD (
pr_off VARCHAR2(100)
);
ALTER TABLE ok_period ADD (
date_utv_km date
);
ALTER TABLE ok_period ADD (
numb_utv_km VARCHAR2(10)
);
ALTER TABLE ok_period ADD (
date_pr_kvl date
);
ALTER TABLE ok_period ADD (
numb_pr_kvl VARCHAR2(10)
);
ALTER TABLE ok_period ADD (
date_attest date
);
ALTER TABLE ok_period ADD (
resh_attest VARCHAR2(100)
);

ALTER TABLE ok_period ADD (
doljn_id varchar2(3)
);
ALTER TABLE ok_period ADD (
num_pr_off varchar2(10)
);
ALTER TABLE ok_period ADD (
date_pr_off date
);

ALTER TABLE OK_PERIOD  MODIFY (
  OFFICE_NAME VARCHAR2 (250)
);
ALTER TABLE OK_PERIOD  MODIFY (
  OFFICE_ADDRESS VARCHAR2 (250)
);
ALTER TABLE OK_PERIOD  MODIFY (
  ESTABLISHED_POST VARCHAR2 (250)
);
ALTER TABLE OK_PERIOD  MODIFY (
  ESTABLISHED_DEPARTMENT VARCHAR2 (250)
);

comment on table OK_PERIOD is 'Сведения о работе';
comment on column OK_PERIOD.IN_OFFICE_DATE is 'Дата поступления';
comment on column OK_PERIOD.OUT_OFFICE_DATE is 'Дата увольнения';
comment on column OK_PERIOD.OFFICE_NAME is 'Наименование организации';
comment on column OK_PERIOD.OFFICE_ADDRESS is 'Адрес организации';
comment on column OK_PERIOD.ESTABLISHED_POST is 'Занимаемая должность';
comment on column OK_PERIOD.MOTIVE_OUT is 'Причина (перемещения)';
comment on column OK_PERIOD.TYPE_PERIOD_CODE is 'Код типа стажа';
comment on column OK_PERIOD.ARTICLE_CODE is 'Номер статьи';
comment on column OK_PERIOD.BASIS_NUM is 'Номер приказа/основания';
comment on column OK_PERIOD.BASIS_DATE is 'Дата приказа/основания';
comment on column OK_PERIOD.ESTABLISHED_DEPARTMENT is 'Отдел';
comment on column OK_PERIOD.base_move_code is 'основание перемещения';
comment on column OK_PERIOD.priz_system is 'признак системы';
comment on column OK_PERIOD.cod_bank is 'код банка';
comment on column OK_PERIOD.cod_type_prn is '';
comment on column OK_PERIOD.cod_pr_off is '';
comment on column OK_PERIOD.pr_off is '';
comment on column OK_PERIOD.date_utv_km is 'Дата утверждения КМ';
comment on column OK_PERIOD.numb_utv_km is 'Номер постановления КМ';
comment on column OK_PERIOD.date_pr_kvl is 'Дата прохождения КК ЦБ';
comment on column OK_PERIOD.numb_pr_kvl is 'Номер протокола КК ЦБ';
comment on column OK_PERIOD.date_attest is 'Дата аттестации';
comment on column OK_PERIOD.resh_attest is 'Решение аттестационной комиссии';

ALTER TABLE OK_PERIOD ADD CONSTRAINT OK_PERIOD_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, IN_OFFICE_DATE ) ;

ALTER TABLE OK_PERIOD ADD CONSTRAINT OK_PERIOD_UK
  UNIQUE ( BRANCH, PERSONAL_CODE, OUT_OFFICE_DATE ) ;

-- drop SEQUENCE SEQ_OK_PERIOD;
CREATE SEQUENCE SEQ_OK_PERIOD
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_PERIOD.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_PERIOD_SEQ
 BEFORE 
 INSERT
 ON OK_PERIOD
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_PERIOD.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- если негоден то некоторые поля не заполняются
-- drop table OK_ARMY;
create table OK_ARMY( -- 'Отношение к воинской службе'
ID	NUMBER(8) not null, -- 'Системный номер	Автоматически присваивается при заполнении, невидимое поле, обязательное для заполнения'
BRANCH	CHAR(5) not null, -- 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения'
PERSONAL_CODE 	NUMBER(9) not null, -- 'Код сотрудника в отделении	Выбирается из таблицы OK_PERSONAL  поле ID, невидимое поле, обязательное для заполнения'
ARMY_CODE 	NUMBER(1) not null, --	'Отношение к военной службе 	Выбирается из справочника SS_OK_ARMY  поле ARMY_CODE  обязательное для заполнения'
FITNESS_ARMY_CODE	NUMBER (1), --	'Годность к службе	Выбирается из справочника SS_OK_Fitness_ARMY  поле fitness_ARMY_Code'
--STAFF 	VARCHAR2(50) , --,--	'Вид состава	Вводится с клавиатуры, идимое поле, обязательное для заполнения'
--TYPE_FORCE	VARCHAR2(50) , --,--	'Род войск	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
--ARMY_GROUP	VARCHAR2(50) , --,--	'Группа учета	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
--CATEGORY_ARMY	VARCHAR2(50) , --,--	'Категория учета	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
SPECIAL_ARMY 	VARCHAR2(50) , --,--	'Воинская Специальность	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
--MILITARY_RANK	VARCHAR2      (50),--	'Воинское звание	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
NUMBER_VUS	VARCHAR2(50),	--'Номер военной учетной специальности (ВУС)	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
CODE_ARMY_POST	VARCHAR2(50),--	'Код должности и особые признаки военной службы	Вводится с клавиатуры, видимое поле, обязательное для заполнния'
NAME_ARMY_OFFICE	VARCHAR2(50),--	'Военкомат	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
SPECREG_NUMBER	VARCHAR2      (50),--	'Состоит на спецучете N	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
EMP_CODE 	NUMBER(6) not null, --	'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения'
INS_DATE	DATE not null, --	 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения'
ARMY_GROUP_CODE	number(5),
CATEGORY_ARMY_CODE	number(5),
MILITARY_RANK_code	number(5),
STAFF_CODE 	number(5),
TYPE_FORCE_CODE	number(5)
) ;

ALTER TABLE OK_ARMY ADD (  army_group_code NUMBER (5) );
ALTER TABLE OK_ARMY ADD (  CATEGORY_ARMY_code NUMBER (5) );
ALTER TABLE OK_ARMY ADD (  MILITARY_RANK_code NUMBER (5) );
ALTER TABLE OK_ARMY ADD (  STAFF_code NUMBER (5) );
ALTER TABLE OK_ARMY ADD (  TYPE_FORCE_code NUMBER (5) );

comment on table OK_ARMY is 'Отношение к воинской службе';
comment on column OK_ARMY.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_ARMY.BRANCH is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_ARMY.PERSONAL_CODE is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_ARMY.ARMY_CODE     is 'Отношение к военной службе 	Выбирается из справочника SS_OK_ARMY  поле ARMY_CODE  обязательное для заполнения';
comment on column OK_ARMY.FITNESS_ARMY_CODE is 	'Годность к службе	Выбирается из справочника   поле fitness_ARMY_Code';
comment on column OK_ARMY.STAFF_code 	    is 	'Вид состава	Вводится с клавиатуры, идимое поле, обязательное для заполнения';
comment on column OK_ARMY.TYPE_FORCE_code	is 	'Род войск	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ARMY.ARMY_GROUP_code	is 	'Группа учета	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ARMY.CATEGORY_ARMY_code is 	'Категория учета	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ARMY.SPECIAL_ARMY  is 	'Воинская Специальность	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ARMY.MILITARY_RANK_code is 	'Воинское звание	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ARMY.NUMBER_VUS	is 'Номер военной учетной специальности (ВУС)	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ARMY.CODE_ARMY_POST	 is 	'Код должности и особые признаки военной службы	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ARMY.NAME_ARMY_OFFICE	 is 	'Военкомат	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ARMY.SPECREG_NUMBER	 is 	'Состоит на спецучете N	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ARMY.EMP_CODE is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_ARMY.INS_DATE is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_ARMY ADD CONSTRAINT OK_ARMY_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE ) ;

ALTER TABLE OK_ARMY ADD CONSTRAINT OK_ARMY_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_ARMY;
CREATE SEQUENCE SEQ_OK_ARMY
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_ARMY.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_ARMY_SEQ
 BEFORE 
 INSERT
 ON OK_ARMY
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_ARMY.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
--drop table OK_POST;
--drop SEQUENCE SEQ_OK_POST;
create table ok_post(
ID NUMBER(8)                 NOT NULL ,
BRANCH CHAR(5)               NOT NULL ,
PERSONAL_CODE NUMBER(9)      NOT NULL ,
APPOINTMENT_DATE DATE        NOT NULL ,
APPOINTMENT_MOTIVE VARCHAR2(100),
DEPARTMENT_CODE NUMBER(9)    NOT NULL ,
POST_CODE NUMBER(3)          NOT NULL ,
GRADE            NUMBER(2),
SALARY_FACT  NUMBER(10,2)    NOT NULL ,
RAISE_PERSONAL NUMBER(10,2)  NOT NULL ,
RAISE_ADD NUMBER(10,2)       NOT NULL ,
BASIS_NUM            VARCHAR2(30),
BASIS_DATE DATE              NOT NULL ,
EMP_CODE NUMBER(6)           NOT NULL ,
INS_DATE DATE                NOT NULL ,
STATE        CHAR(1),
BASE_MOVE_CODE NUMBER(9)
);
-----------------------------------------
-- drop table OK_LEAVE;
create table	OK_LEAVE(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
LEAVE_CODE 	NUMBER(2) not null,
BEGIN_YEAR 	DATE not null,
END_YEAR	DATE not null,
PERIOD_LEAVE 	NUMBER (4) not null,
DATE_IN_LEAVE 	DATE not null,
DATE_OUT_LEAVE	DATE not null,
MOTIVE_LEAVE	VARCHAR2(250),
NUM_BASIS 	VARCHAR2(100)	 not null,
DATE_BASIS	DATE,
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null
) ;
alter table ok_leave modify(
MOTIVE_LEAVE null
);
alter table ok_leave modify(
DATE_BASIS null
);

comment on table OK_LEAVE is 'Таблица отпусков';
comment on column OK_LEAVE.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_LEAVE.BRANCH is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_LEAVE.PERSONAL_CODE is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_LEAVE.LEAVE_CODE  is 'Вид отпуска	Выбирается из таблицы SS_OK_LEAVE  поле LEAVE_CODE, видимое поле, обязательное для заполнения';
comment on column OK_LEAVE.BEGIN_YEAR 	 is 'Рабочий год -начало	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_LEAVE.END_YEAR	 is 'Рабочий год - окончание	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_LEAVE.PERIOD_LEAVE 	 is 'Количество дней отпуска	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_LEAVE.DATE_IN_LEAVE  is 'Дата выхода в отпуск	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_LEAVE.DATE_OUT_LEAVE	 is 'Дата выхода из  отпуска	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_LEAVE.MOTIVE_LEAVE	 is 'Причина/основание выхода в отпуск	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_LEAVE.NUM_BASIS is 'Номер приказа/основания	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_LEAVE.DATE_BASIS	 is 'Дата приказа/основания	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_LEAVE.EMP_CODE is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_LEAVE.INS_DATE is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_LEAVE ADD CONSTRAINT OK_LEAVE_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, DATE_IN_LEAVE ) ;

ALTER TABLE OK_LEAVE ADD CONSTRAINT OK_LEAVE_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_LEAVE;
CREATE SEQUENCE SEQ_OK_LEAVE
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_LEAVE.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_LEAVE_SEQ
 BEFORE 
 INSERT
 ON OK_LEAVE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
   select SEQ_OK_LEAVE.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_EDUCATION;
create table OK_EDUCATION(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
EDUCATION_CODE 	NUMBER(3) not null,
BASIS_CODE 	NUMBER(1) not null, 
INSTITUTION_CODE	NUMBER(5), 
BEGIN_DATE 	NUMBER(4),
END_DATE	NUMBER(4),
PROFESSION_PERSONAL  	VARCHAR2(250), 
QUALIFICATION_CODE	NUMBER(2), 
DIPLOM_NUM	VARCHAR2(10), 
EMP_CODE NUMBER(6) not null, 
INS_DATE DATE not null, 
cod_vuz_prim varchar2(50),
curs varchar2(1), 
fakultet varchar2(20) 
) ;

ALTER TABLE OK_EDUCATION ADD (
cod_vuz_prim varchar2(50) 
 );
ALTER TABLE OK_EDUCATION ADD (
curs varchar2(1) 
 );
ALTER TABLE OK_EDUCATION ADD (
fakultet varchar2(20) 
 );
ALTER TABLE OK_EDUCATION modify (
fakultet varchar2(20) 
 );

comment on table OK_EDUCATION is 'Сведения об образовании';
comment on column OK_EDUCATION.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_EDUCATION.BRANCH is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_EDUCATION.PERSONAL_CODE is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_EDUCATION.EDUCATION_CODE is 'Код  образования	выбирается из справочника SS_OK_EDUCATION поле  EDUCATION_CODE, в отчетную форму выводится наименование характера образования, видимое поле, обязательное для заполнения';
comment on column OK_EDUCATION.BASIS_CODE is 'Код наличия базового образования	выбирается из справочника SS_OK_BASIS  поле  BASIS_CODE,  видимое поле, обязательное для заполнения';
comment on column OK_EDUCATION.INSTITUTION_CODE is 'Код учебного заведения	выбирается из справочника  SS_OK_INSTITUTION  поле  INSTITUTION_CODE,в отчетную форму может выводиться и аббревиатура и полное наименование учебного заведения, видимое поле, необязательное для заполнения';
comment on column OK_EDUCATION.BEGIN_DATE is 'Дата поступления в учебное заведение	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column OK_EDUCATION.END_DATE is 'Дата окончания учебного заведения	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column OK_EDUCATION.PROFESSION_PERSONAL is 'Специальность по диплому	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column OK_EDUCATION.QUALIFICATION_CODE is 'Код квалификации по диплому	выбирается из справочника SS_OK_QUALIFICATION  поле QUALIFICATION_CODE , в отчетные формы  выводится  наименование, видимое поле, необязательное для заполнения';
comment on column OK_EDUCATION.DIPLOM_NUM is 'Номер диплома или удостоверения	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column OK_EDUCATION.EMP_CODE is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_EDUCATION.INS_DATE is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_EDUCATION ADD CONSTRAINT OK_EDUCATION_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_EDUCATION ADD CONSTRAINT OK_EDUCATION_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_EDUCATION;
CREATE SEQUENCE SEQ_OK_EDUCATION
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_EDUCATION.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_EDUCATION_SEQ
 BEFORE 
 INSERT
 ON OK_EDUCATION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_EDUCATION.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_PARTY;
create table	OK_PARTY(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
PARTY_CODE	NUMBER(2) not null,
OUT_PARTY 	VARCHAR2(200),
PARTY_DATE NUMBER(4),
PARTY_OUTDATE	NUMBER(4),
PUNISHMENT_MOTIVE	VARCHAR2(200),
PUNISHMENT_DATE	NUMBER(4),
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null,
code_partii_prim varchar2(50)
) ;

ALTER TABLE OK_PARTY ADD (
code_partii_prim varchar2(50)
 );

comment on table OK_PARTY is 'Сведения о партийности';
comment on column OK_PARTY.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_PARTY.BRANCH is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_PARTY.PERSONAL_CODE is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_PARTY.PARTY_CODE is 'Код партийности	выбирается из справочникаSS_OK_PARTY поле PARTY_CODE , в отчетные формы выводится название партии из справочника, видимое поле, обязательное для заполнения';
comment on column OK_PARTY.OUT_PARTY is 'Причина выхода из партии	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column OK_PARTY.PARTY_OUTDATE is 'год Дата выхода	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column OK_PARTY.PUNISHMENT_MOTIVE is 'Причина партийного наказания	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column OK_PARTY.PUNISHMENT_DATE is 'год Дата получения парт.наказания	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column OK_PARTY.EMP_CODE is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_PARTY.INS_DATE is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_PARTY ADD CONSTRAINT OK_PARTY_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_PARTY ADD CONSTRAINT OK_PARTY_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_PARTY;
CREATE SEQUENCE SEQ_OK_PARTY
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

CREATE OR REPLACE TRIGGER TR_OK_PARTY_SEQ
 BEFORE 
 INSERT
 ON OK_PARTY
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_PARTY.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table OK_ACADEMIC;
create table OK_ACADEMIC( -- Сведения об ученых званиях
ID	NUMBER(8) not null, -- 'Системный номер	Автоматически присваивается при заполнении, невидимое поле, обязательное для заполнения'
BRANCH	CHAR(5) not null, -- 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения'
PERSONAL_CODE 	NUMBER(9) not null, -- 'Код сотрудника в отделении	Выбирается из таблицы OK_PERSONAL  поле ID, невидимое поле, обязательное для заполнения'
ACADEMIC_CODE	NUMBER(1) not null, --Код ученого звания	выбирается из справочника SS_OK_ACADEMIC поле ACADEMIC_CODE, видимое поле, обязательное для заполнения
ACADEMIC_DATE	NUMBER(4) not null, --Дата  получения ученого звания	Вводится с клавиатуры, видимое поле, обязательное для заполнения
EMP_CODE NUMBER(6) not null, -- Код пользователя, вводившего информацию	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения
INS_DATE DATE not null, -- Дата и время ввода данных	SYSDATE , невидимое поле, обязательное для заполнения
STATE char(1)
) ;

comment on table OK_ACADEMIC is 'Сведения об ученых званиях';
comment on column OK_ACADEMIC.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_ACADEMIC.BRANCH is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_ACADEMIC.PERSONAL_CODE is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_ACADEMIC.ACADEMIC_CODE is 'Код ученого звания	выбирается из справочника SS_OK_ACADEMIC поле ACADEMIC_CODE, видимое поле, обязательное для заполнения';
comment on column OK_ACADEMIC.ACADEMIC_DATE is 'Дата  получения ученого звания	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ACADEMIC.EMP_CODE is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_ACADEMIC.INS_DATE is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_ACADEMIC ADD CONSTRAINT OK_ACADEMIC_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_ACADEMIC ADD CONSTRAINT OK_ACADEMIC_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_ACADEMIC;
CREATE SEQUENCE SEQ_OK_ACADEMIC
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_ACADEMIC.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_ACADEMIC_SEQ
 BEFORE 
 INSERT
 ON OK_ACADEMIC
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_ACADEMIC.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_DEGREE;
create table	OK_DEGREE( -- Сведения об ученых степенях
ID	NUMBER(8) not null, -- 'Системный номер	Автоматически присваивается при заполнении, невидимое поле, обязательное для заполнения'
BRANCH	CHAR(5) not null, -- 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения'
PERSONAL_CODE 	NUMBER(9) not null, -- 'Код сотрудника в отделении	Выбирается из таблицы OK_PERSONAL  поле ID, невидимое поле, обязательное для заполнения'
DEGREE_CODE	NUMBER(1) not null, -- 	Код ученой степени	выбирается из справочника SS_OK_DEGREE поле DEGREE_CODE в отчетные формы подставляется полное наименование, видимое поле, обязательное для заполнения
DEGREE_DATE	number(4) not null, -- 	Дата получения ученой степени	Вводится с клавиатуры, видимое поле, обязательное для заполнения
EMP_CODE NUMBER(6) not null, -- Код пользователя, вводившего информацию	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения
INS_DATE DATE not null, -- Дата и время ввода данных	SYSDATE , невидимое поле, обязательное для заполнения
STATE CHAR(1)
) ;

comment on table OK_DEGREE is 'Сведения об ученых степенях';
comment on column OK_DEGREE.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_DEGREE.BRANCH is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_DEGREE.PERSONAL_CODE is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_DEGREE.DEGREE_CODE	is 	'Код ученой степени	выбирается из справочника SS_OK_DEGREE поле DEGREE_CODE в отчетные формы подставляется полное наименование, видимое поле, обязательное для заполнения';
comment on column OK_DEGREE.DEGREE_DATE	is	'Дата получения ученой степени	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_DEGREE.EMP_CODE is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_DEGREE.INS_DATE is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_DEGREE ADD CONSTRAINT OK_DEGREE_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_DEGREE ADD CONSTRAINT OK_DEGREE_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_DEGREE;
CREATE SEQUENCE SEQ_OK_DEGREE
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_DEGREE.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_DEGREE_SEQ
 BEFORE 
 INSERT
 ON OK_DEGREE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_DEGREE.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_AWARD;
create table OK_AWARD( -- Сведения о наградах
ID	NUMBER(8) not null, -- 'Системный номер	Автоматически присваивается при заполнении, невидимое поле, обязательное для заполнения'
BRANCH	CHAR(5) not null, -- 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения'
PERSONAL_CODE 	NUMBER(9) not null, -- 'Код сотрудника в отделении	Выбирается из таблицы OK_PERSONAL  поле ID, невидимое поле, обязательное для заполнения'
AWARD_DATE  	number(4)	 not null, --Дата получения награды	Вводится с клавиатуры, видимое поле, обязательное для заполнения
AWARD_INFO 	VARCHAR2(255)	 not null, --Сведения о наградах - текст	Вводится с клавиатуры, видимое поле, обязательное для заполнения
EMP_CODE NUMBER(6) not null, -- Код пользователя, вводившего информацию	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения
INS_DATE DATE not null -- Дата и время ввода данных	SYSDATE , невидимое поле, обязательное для заполнения
) ;

comment on table OK_AWARD is 'Сведения о наградах';
comment on column OK_AWARD.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_AWARD.BRANCH is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_AWARD.PERSONAL_CODE is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_AWARD.AWARD_DATE  is 'год Дата получения награды	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_AWARD.AWARD_INFO  is 'Сведения о наградах - текст	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_AWARD.EMP_CODE is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_AWARD.INS_DATE is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_AWARD ADD CONSTRAINT OK_AWARD_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_AWARD ADD CONSTRAINT OK_AWARD_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_AWARD;
CREATE SEQUENCE SEQ_OK_AWARD
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_AWARD.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_AWARD_SEQ
 BEFORE 
 INSERT
 ON OK_AWARD
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_AWARD.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_SCIENTIFIC;
create table	OK_SCIENTIFIC( -- сведения о научных работах
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
SCIENTIFIC_INFO 	VARCHAR2(255) not null,
SCIENTIFIC_DATE 	NUMBER(4) not null,
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null
) ;

comment on table OK_SCIENTIFIC is 'Сведения о научных работах';
comment on column OK_SCIENTIFIC.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_SCIENTIFIC.BRANCH is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_SCIENTIFIC.PERSONAL_CODE is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_SCIENTIFIC.SCIENTIFIC_INFO is 'Сведения о научных работах - текст 	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_SCIENTIFIC.SCIENTIFIC_DATE is 'год Дата написания научной работы	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_SCIENTIFIC.EMP_CODE is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_SCIENTIFIC.INS_DATE is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_SCIENTIFIC ADD CONSTRAINT OK_SCIENTIFIC_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_SCIENTIFIC ADD CONSTRAINT OK_SCIENTIFIC_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_SCIENTIFIC;
CREATE SEQUENCE SEQ_OK_SCIENTIFIC
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_SCIENTIFIC.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_SCIENTIFIC_SEQ
 BEFORE 
 INSERT
 ON OK_SCIENTIFIC
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_SCIENTIFIC.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-- drop table	OK_VOYAGE;
create table	OK_VOYAGE(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
VOYAGE_DATE 	number(4) not null,
VOYAGE_LAND 	VARCHAR2(100) not null,
VOYAGE_INFO	VARCHAR2(255) not null,
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null,
voyage_str varchar2(3),
data_in number(4)
) ;

alter table ok_voyage modify(
VOYAGE_DATE null
);
alter table ok_voyage modify(
VOYAGE_LAND null
);
alter table ok_voyage modify(
VOYAGE_INFO null
);

ALTER TABLE ok_voyage ADD (  
voyage_str varchar2(3) 
);

ALTER TABLE ok_voyage ADD (  
data_in number(4)
);




comment on table OK_VOYAGE is 'Сведения о зарубежных поездках';
comment on column OK_VOYAGE.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_VOYAGE.BRANCH is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_VOYAGE.PERSONAL_CODE is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_VOYAGE.VOYAGE_DATE  is 'год Дата поездки	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_VOYAGE.VOYAGE_LAND  is 'Страна выезда	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_VOYAGE.VOYAGE_INFO is 'Сведения о зарубежных поездках	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_VOYAGE.EMP_CODE is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_VOYAGE.INS_DATE is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_VOYAGE ADD CONSTRAINT OK_VOYAGE_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_VOYAGE ADD CONSTRAINT OK_VOYAGE_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_VOYAGE;
CREATE SEQUENCE SEQ_OK_VOYAGE
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_VOYAGE.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_VOYAGE_SEQ
 BEFORE 
 INSERT
 ON OK_VOYAGE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_VOYAGE.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_RISE;
create table	OK_RISE(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
RISE_DATE_YEAR NUMBER(4),
RISE_INFO 	VARCHAR2(250) not null,
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null
) ;

comment on table OK_RISE is 'Сведения о повышении квалификации';
comment on column OK_RISE.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_RISE.BRANCH is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_RISE.PERSONAL_CODE is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_RISE.RISE_DATE_YEAR  is 'Год прохождения повышения квалификации';
comment on column OK_RISE.RISE_INFO  is 'Сведения о повышении квалификации';
comment on column OK_RISE.EMP_CODE is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_RISE.INS_DATE is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

--ALTER TABLE OK_RISE ADD CONSTRAINT OK_RISE_PK
--  PRIMARY KEY ( BRANCH, PERSONAL_CODE, RISE_DATE_YEAR ) ;
ALTER TABLE OK_RISE drop CONSTRAINT OK_RISE_PK; 

ALTER TABLE OK_RISE ADD CONSTRAINT OK_RISE_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_RISE;
CREATE SEQUENCE SEQ_OK_RISE
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

CREATE OR REPLACE TRIGGER TR_OK_RISE_SEQ
 BEFORE 
 INSERT
 ON OK_RISE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_RISE.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_PENALTY;
create table	OK_PENALTY( -- Сведения о получении наказания
ID	NUMBER(8) not null, -- 'Системный номер	Автоматически присваивается при заполнении, невидимое поле, обязательное для заполнения'
BRANCH	CHAR(5) not null, -- 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения'
PERSONAL_CODE 	NUMBER(9) not null, -- 'Код сотрудника в отделении	Выбирается из таблицы OK_PERSONAL  поле ID, невидимое поле, обязательное для заполнения'
PENALTY_CODE	NUMBER(2) not null, --	Код наказания 	выбирается из справочника SS_OK_PENALTY  поле PENALTY_CODE , в отчетные формы выводится название наказания  из справочника, видимое поле, обязательное для заполнения
PENALTY_MOTIVE	VARCHAR2(200), --	Причина  наказания	Вводится с клавиатуры, видимое поле, необязательное для заполнения
PENALTY_DATE	DATE, --	Дата получения наказания	Вводится с клавиатуры, видимое поле, необязательное для заполнения
PENALTY_NUM	VARCHAR2(7), --	Номер протокола	Вводится с клавиатуры, видимое поле, необязательное для заполнения
EMP_CODE NUMBER(6) not null, -- Код пользователя, вводившего информацию	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения
INS_DATE DATE not null -- Дата и время ввода данных	SYSDATE , невидимое поле, обязательное для заполнения
) ;

comment on table OK_PENALTY is 'Сведения о получении наказания';
comment on column OK_PENALTY.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_PENALTY.BRANCH is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_PENALTY.PERSONAL_CODE is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_PENALTY.PENALTY_CODE	 is 'Код наказания 	выбирается из справочника SS_OK_PENALTY  поле PENALTY_CODE , в отчетные формы выводится название наказания  из справочника, видимое поле, обязательное для заполнения';
comment on column OK_PENALTY.PENALTY_MOTIVE is 'Причина  наказания	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column OK_PENALTY.PENALTY_DATE  is 'Дата получения наказания	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column OK_PENALTY.PENALTY_NUM	 is 'Номер протокола	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column OK_PENALTY.EMP_CODE is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_PENALTY.INS_DATE is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_PENALTY ADD CONSTRAINT OK_PENALTY_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_PENALTY ADD CONSTRAINT OK_PENALTY_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_PENALTY;
CREATE SEQUENCE SEQ_OK_PENALTY
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_PENALTY.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_PENALTY_SEQ
 BEFORE 
 INSERT
 ON OK_PENALTY
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_PENALTY.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_LANGUAGE;
create table	OK_LANGUAGE(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
LANGUAGE_CODE 	NUMBER (3) not null,
LEVEL_CODE	NUMBER (1) not null, 
EMP_CODE NUMBER(6) not null, 
INS_DATE DATE not null, 
STATE CHAR(1),
cod_lang_prim varchar2(50)
) ;


ALTER TABLE OK_LANGUAGE ADD (
cod_lang_prim varchar2(50)
 );

comment on table OK_LANGUAGE is 'Сведения об иностранных языках';
comment on column OK_LANGUAGE.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_LANGUAGE.BRANCH is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_LANGUAGE.PERSONAL_CODE is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_LANGUAGE.LANGUAGE_CODE is 'Код иностранного языка	Количество иностранных языков может быть сколько угодно, необходимо внести все языки указанные сотрудником. В Отчетные формы  выводятся наименования всех указанных иностранных языков вместе с уровнем знаний этих языков язык - уровень и т.д.Выбирается из таблицы SS_OK_LANGUAGE  поле LANGUAGE_CODE , видимое поле, обязательное для заполнения';
comment on column OK_LANGUAGE.LEVEL_CODE is 'Код уровня знаний иностранного языка	Код уровня знаний предлагается из списка при выборе языка В отчетные формы  выводятся наименования всех указанных иностранных языков вместе с уровнем знаний этих языков язык - уровень и т.д. Выбирается из таблицы SS_OK_LEVEL _LANGUAGE  поле LEVEL_CODE, видимое поле, обязательное для заполнения';
comment on column OK_LANGUAGE.EMP_CODE is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_LANGUAGE.INS_DATE is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_LANGUAGE ADD CONSTRAINT OK_LANGUAGE_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, LANGUAGE_CODE ) ;

ALTER TABLE OK_LANGUAGE ADD CONSTRAINT OK_LANGUAGE_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_LANGUAGE;
CREATE SEQUENCE SEQ_OK_LANGUAGE
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_LANGUAGE.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_LANGUAGE_SEQ
 BEFORE 
 INSERT
 ON OK_LANGUAGE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_LANGUAGE.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
--drop table	OK_ELECTION;
create table OK_ELECTION(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
ELECTION_CODE	number (3) not null,
ELECTION_POST 	VARCHAR2(250) not null,
ELECTION_DATE_BEGIN 	NUMBER(4) not null,
ELECTION_DATE_END  	NUMBER(4),
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null
) ;

alter table OK_ELECTION modify(ELECTION_ADDRESS null);

alter table OK_ELECTION
add (
ELECTION_code number(3)
);

comment on table OK_ELECTION is 'Сведения об избрании в исполнительные органы';
comment on column OK_ELECTION.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_ELECTION.BRANCH is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_ELECTION.PERSONAL_CODE is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_ELECTION.ELECTION_POST is 'Кем был избран	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ELECTION.ELECTION_DATE_BEGIN is 'год Дата избрания в органы	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ELECTION.ELECTION_DATE_END is 'год Дата окончания срока работы в органах	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ELECTION.EMP_CODE is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_ELECTION.INS_DATE is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_ELECTION ADD CONSTRAINT OK_ELECTION_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_ELECTION ADD CONSTRAINT OK_ELECTION_UK
  UNIQUE ( branch, id ) ;

--drop SEQUENCE SEQ_OK_ELECTION;
CREATE SEQUENCE SEQ_OK_ELECTION
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

CREATE OR REPLACE TRIGGER TR_OK_ELECTION_SEQ
 BEFORE 
 INSERT
 ON OK_ELECTION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_ELECTION.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_PREMIUM;
create table	OK_PREMIUM(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
PREMIUM_DATE 	NUMBER(4) not null,
PREMIUM_NAME	VARCHAR2(250) not null,
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null
) ;

comment on table OK_PREMIUM is 'Сведения о получении Государственных премий';
comment on column OK_PREMIUM.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_PREMIUM.BRANCH is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_PREMIUM.PERSONAL_CODE is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_PREMIUM.PREMIUM_DATE is 'год Дата получения премии	Вводится с клавиатуры, невидимое поле, обязательное для заполнения';
comment on column OK_PREMIUM.PREMIUM_NAME is 'Наименование премии	Вводится с клавиатуры, невидимое поле, обязательное для заполнения';
comment on column OK_PREMIUM.EMP_CODE is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_PREMIUM.INS_DATE is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_PREMIUM ADD CONSTRAINT OK_PREMIUM_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_PREMIUM ADD CONSTRAINT OK_PREMIUM_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_PREMIUM;
CREATE SEQUENCE SEQ_OK_PREMIUM
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

CREATE OR REPLACE TRIGGER TR_OK_PREMIUM_SEQ
 BEFORE 
 INSERT
 ON OK_PREMIUM
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_PREMIUM.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_YOUTH;
create table	OK_YOUTH(
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
YOUTH_CODE	NUMBER (2) not null,
IN_DATE	DATE not null,
OUT_DATE DATE,
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null
) ;
alter table ok_youth modify(
OUT_DATE null
);
comment on table OK_YOUTH is 'Членство в молодежной организации';
comment on column OK_YOUTH.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_YOUTH.BRANCH is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_YOUTH.PERSONAL_CODE is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_YOUTH.YOUTH_CODE is 'Код  молод.  организации	выбирается из справочника SS_OK_YOUTH поле YOUTH_CODE , в отчетные формы выводится название орг-и из справочника, видимое поле, обязательное для заполнения';
comment on column OK_YOUTH.IN_DATE is 'Дата  вступления 	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_YOUTH.OUT_DATE is 'Дата выхода	Вводится с клавиатуры, видимое поле';
comment on column OK_YOUTH.EMP_CODE is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_YOUTH.INS_DATE is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_YOUTH ADD CONSTRAINT OK_YOUTH_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_YOUTH ADD CONSTRAINT OK_YOUTH_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_YOUTH;
CREATE SEQUENCE SEQ_OK_YOUTH
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_YOUTH.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_YOUTH_SEQ
 BEFORE 
 INSERT
 ON OK_YOUTH
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_YOUTH.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_CONVICTIONS;
create table	OK_CONVICTIONS( -- Сведения о судебной ответственности
ID	NUMBER(8) not null,
BRANCH	CHAR(5) not null,
PERSONAL_CODE 	NUMBER(9) not null,
CONVICTIONS_DATE 	NUMBER(4) not null,
CONVICTIONS_MOTIVE	VARCHAR2(200) not null,
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null
) ;

comment on table OK_CONVICTIONS is 'Сведения о судебной ответственности';
comment on column OK_CONVICTIONS.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_CONVICTIONS.BRANCH is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_CONVICTIONS.PERSONAL_CODE is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_CONVICTIONS.CONVICTIONS_DATE is 'год Дата привлечения	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_CONVICTIONS.CONVICTIONS_MOTIVE is 'Причина привлечения	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_CONVICTIONS.EMP_CODE is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_CONVICTIONS.INS_DATE is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_CONVICTIONS ADD CONSTRAINT OK_CONVICTIONS_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_CONVICTIONS ADD CONSTRAINT OK_CONVICTIONS_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_CONVICTIONS;
CREATE SEQUENCE SEQ_OK_CONVICTIONS
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_CONVICTIONS.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_CONVICTIONS_SEQ
 BEFORE 
 INSERT
 ON OK_CONVICTIONS
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_CONVICTIONS.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_ADDINFORM;
create table	OK_ADDINFORM(  -- Дополнительные сведения
ID	NUMBER(8) not null, -- 'Системный номер	Автоматически присваивается при заполнении, невидимое поле, обязательное для заполнения'
BRANCH	CHAR(5) not null, -- 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения'
PERSONAL_CODE 	NUMBER(9) not null, -- 'Код сотрудника в отделении	Выбирается из таблицы OK_PERSONAL  поле ID, невидимое поле, обязательное для заполнения'
ADDINFORM_DATE 	DATE not null, --Дата 	Вводится с клавиатуры, видимое поле, обязательное для заполнения
CHARACTER_ADDINFORM	VARCHAR2(200) not null, --Содержание доп.сведений	Вводится с клавиатуры, видимое поле, обязательное для заполнения
EMP_CODE NUMBER(6) not null, -- Код пользователя, вводившего информацию	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения
INS_DATE DATE not null -- Дата и время ввода данных	SYSDATE , невидимое поле, обязательное для заполнения
) ;

comment on table OK_ADDINFORM is 'Дополнительные сведения';
comment on column OK_ADDINFORM.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_ADDINFORM.BRANCH is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_ADDINFORM.PERSONAL_CODE is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_ADDINFORM.ADDINFORM_DATE is 'Дата 	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ADDINFORM.CHARACTER_ADDINFORM is 'Содержание доп.сведений	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ADDINFORM.EMP_CODE is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_ADDINFORM.INS_DATE is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_ADDINFORM ADD CONSTRAINT OK_ADDINFORM_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_ADDINFORM ADD CONSTRAINT OK_ADDINFORM_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_ADDINFORM;
CREATE SEQUENCE SEQ_OK_ADDINFORM
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_ADDINFORM.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_ADDINFORM_SEQ
 BEFORE 
 INSERT
 ON OK_ADDINFORM
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_ADDINFORM.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table	OK_STAT;
create table	OK_STAT( -- штатное расписание - основная часть
ID	NUMBER(8) not null, -- 'Системный номер	Автоматически присваивается при заполнении, невидимое поле, обязательное для заполненя'
BRANCH	CHAR(5) not null, -- 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения'
STAT_CODE NUMBER(8) not null, --код типа рабочего места (заполняется пользователем либо по умолчанию)
DEPARTMENT_CODE NUMBER(9) not null, --Код отдела	Выбирается из справочника SS_OK_DEPARTAMENT  поле DEPARTAMENT_CODE, в отчетные формы  выводится наименование отдела, видимое поле, обязательное для заполнения
POST_CODE	NUMBER (3) not null, --Код должности	Выбирается из справочника SS_OK_POST поле POST_CODE, на экран и в отчетные формы выводится наименование должности, видимое поле, обязательное для заполнения
QUANTITY_POST NUMBER (3) not null, --Общее количество сотрудников в  данной должности в  одном отделе итоговое поле. Суммируются  записи  по одному отделу с одинаковым кодом должности POST_CODE, видимое поле, обязательное для заполнения
SALARY_FACT 	NUMBER(10,2) not null, -- Утвержденные должностные оклады	Вводится с клавиатуры, видимое поле, обязательное для заполнения
EMP_CODE NUMBER(6) not null, -- Код пользователя, вводившего информацию	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения
INS_DATE DATE not null, -- Дата и время ввода данных	SYSDATE , невидимое поле, обязательное для заполнения
SPECIAL_CODE	number (3) not null
) ;

ALTER TABLE OK_STAT ADD (
SPECIAL_CODE	number (3)
 );

update ok_stat set SPECIAL_CODE=0
where special_code is null;

ALTER TABLE OK_STAT
 MODIFY (
  SPECIAL_CODE NOT NULL
 );

comment on table OK_STAT is 'штатное расписание - основная часть';
comment on column OK_STAT.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_STAT.BRANCH is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_STAT.STAT_CODE is 'Код типа рабочего места';
comment on column OK_STAT.DEPARTMENT_CODE  is 'Код отдела	Выбирается из справочника SS_OK_DEPARTAMENT  поле DEPARTAMENT_CODE, в отчетные формы  выводится наименование отдела, видимое поле, обязательное для заполнения';
comment on column OK_STAT.POST_CODE	 is 'Код должности	Выбирается из справочника SS_OK_POST поле POST_CODE, на экран и в отчетные формы выводится наименование должности, видимое поле, обязательное для заполнения';
comment on column OK_STAT.QUANTITY_POST  is 'Общее количество сотрудников в  данной должности в  одном отделе	Ситоговое поле. Суммируются  записи  по одному отделу с одинаковым кодом должности POST_CODE, видимое поле, обязательное для заполнения';
comment on column OK_STAT.SALARY_FACT is 'Утвержденные должностные оклады	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_STAT.EMP_CODE is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_STAT.INS_DATE is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_STAT drop CONSTRAINT OK_STAT_PK;

ALTER TABLE OK_STAT ADD CONSTRAINT OK_STAT_PK
  PRIMARY KEY ( BRANCH, DEPARTMENT_CODE, POST_CODE, SPECIAL_CODE ) ;

ALTER TABLE OK_STAT ADD CONSTRAINT OK_STAT_UK
  UNIQUE ( branch, stat_code ) ;

-- drop SEQUENCE SEQ_OK_STAT;
CREATE SEQUENCE SEQ_OK_STAT
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;


CREATE OR REPLACE TRIGGER TR_OK_STAT_SEQ
 BEFORE 
 INSERT
 ON OK_STAT
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_STAT.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- drop table OK_STAT_SALARY;
create table OK_STAT_SALARY( --штатное расписание-дополнительная часть
ID	NUMBER(8) not null, -- 'Системный номер	Автоматически присваивается при заполнении, невидимое поле, обязательное для заполнения'
BRANCH	CHAR(5) not null, -- 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения'
SALARY_CODE 	NUMBER(9) not null, -- 'Код Рабочего Места в отделении'
STAT_CODE NUMBER(8) not null, --код типа рабочего места
VACANCY_CODE	NUMBER (1) not null, --'Вакансия'	Признак наличия/отсутствия вакансии	Выбирается из справочника SS_OK_VACANCY поле VACANCY_CODE, невидимое поле обязательное для заполнения, заполняется автоматически после установки признака "сотрудник уволен"
VACANCY_DATE	DATE, --	'Дата образования вакансии'	Дата выводится в формате 'DDMMYYYY', по умолчанию предлагается дата операционного дня появления признака "1-Вакансия", видимое поле, обязательное для заполнения, вводится  с клавиатуры, подлежит корректировке.
REZERVE_CODE	NUMBER (1) not null, --'Резерв'   Признак наличия/отсутствия резерва 	Выбирается из справочника SS_OK_REZERVE  поле REZERVE_CODE, видимое поле необязательное для заполнения, заполняется  с клавиатуры
EMP_CODE NUMBER(6) not null, -- Код пользователя, вводившего информацию	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения
INS_DATE DATE not null -- Дата и время ввода данных	SYSDATE , невидимое поле, обязательное для заполнения
) ;

comment on table OK_STAT_SALARY is 'штатное расписание-дополнительная часть';
comment on column OK_STAT_SALARY.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_STAT_SALARY.BRANCH is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_STAT_SALARY.SALARY_CODE is 'Код Рабочего Места в отделении';
comment on column OK_STAT_SALARY.STAT_CODE is 'Код типа рабочего места';
comment on column OK_STAT_SALARY.VACANCY_CODE is 'Признак наличия/отсутствия вакансии	Выбирается из справочника SS_OK_VACANCY поле VACANCY_CODE, невидимое поле обязательное для заполнения, заполняется автоматически после установки признака "сотрудник уволен"';
comment on column OK_STAT_SALARY.VACANCY_DATE is 'Дата образования вакансии	Дата выводится в формате DDMMYYYY, по умолчанию предлагается дата операционного дня появления признака "1-Вакансия", видимое поле, обязательное для заполнения, вводится  с клавиатуры, подлежит корректировке.';
comment on column OK_STAT_SALARY.REZERVE_CODE is 'Признак наличия/отсутствия резерва 	Выбирается из справочника SS_OK_REZERVE  поле REZERVE_CODE, видимое поле необязательное для заполнения, заполняется  с клавиатуры';
comment on column OK_STAT_SALARY.EMP_CODE is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_STAT_SALARY.INS_DATE is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_STAT_SALARY ADD CONSTRAINT OK_STAT_SALARY_PK
  PRIMARY KEY ( BRANCH, SALARY_CODE ) ;

ALTER TABLE OK_STAT_SALARY ADD CONSTRAINT OK_STAT_SALARY_UK
  UNIQUE ( branch, id ) ;

-- drop SEQUENCE SEQ_OK_STAT_SALARY;
CREATE SEQUENCE SEQ_OK_STAT_SALARY
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_STAT_SALARY.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_STAT_SALARY_SEQ
 BEFORE 
 INSERT
 ON OK_STAT_SALARY
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_STAT_SALARY.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

-----------------------------------------
-- если тип отдела стоит -обменный пункт-заполнение обязательно, в остальных случаях необязательно для заполнения
-- drop table OK_ATTESTATION;
create table OK_ATTESTATION( --данные о прохождении аттестации (в основном заполняется для работников обменных пунктов)
ID	NUMBER(8) not null, -- 'Системный номер	Автоматически присваивается при заполнении, невидимое поле, обязательное для заполнения'
BRANCH	CHAR(5) not null, -- 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения'
PERSONAL_CODE 	NUMBER(9) not null, -- 'Код сотрудника в отделении	Выбирается из таблицы OK_PERSONAL  поле ID, невидимое поле, обязательное для заполнения'
DATE_ATTESTATION 	DATE not null, --Дата прохождения аттестации видимое поле
NUM_ATTESTATION 	NUMBER (9) not null, --Номер удостоверения 	 видимое поле
EMP_CODE NUMBER(6) not null, -- Код пользователя, вводившего информацию	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения
INS_DATE DATE not null -- Дата и время ввода данных	SYSDATE , невидимое поле, обязательное для заполнения
) ;

comment on table OK_ATTESTATION is 'данные о прохождении аттестации (в основном заполняется для работников обменных пунктов)';
comment on column OK_ATTESTATION.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_ATTESTATION.BRANCH is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_ATTESTATION.PERSONAL_CODE is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_ATTESTATION.DATE_ATTESTATION is 'Дата прохождения аттестации 	 видимое поле';
comment on column OK_ATTESTATION.NUM_ATTESTATION is 'Номер удостоверения видимое поле';
comment on column OK_ATTESTATION.EMP_CODE is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_ATTESTATION.INS_DATE is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_ATTESTATION ADD CONSTRAINT OK_ATTESTATION_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, ID ) ;

ALTER TABLE OK_ATTESTATION ADD CONSTRAINT OK_ATTESTATION_UK
  UNIQUE ( branch, id ) ;


-- drop SEQUENCE SEQ_OK_ATTESTATION;
CREATE SEQUENCE SEQ_OK_ATTESTATION
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_OK_ATTESTATION.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_ATTESTATION_SEQ
 BEFORE 
 INSERT
 ON OK_ATTESTATION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
   select SEQ_OK_ATTESTATION.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/
-----------------------------------------
-- drop table OK_SEND_ALL;
create table OK_SEND_ALL(
branch char(5),
personal_code number(9),
a varchar2(2000),
b varchar2(2000),
c varchar2(2000),
d varchar2(2000),
e varchar2(2000),
f varchar2(2000),
g varchar2(2000),
h varchar2(2000),
i varchar2(2000),
ia  varchar2(250),
j varchar2(2000),
k varchar2(2000),
l varchar2(2000),
m varchar2(2000),
n varchar2(2000),
o varchar2(2000),
p varchar2(2000),
q varchar2(2000),
r varchar2(2000),
s varchar2(2000),
t varchar2(2000),
u varchar2(2000),
v varchar2(2000),
w varchar2(2000),
x varchar2(2000),
y varchar2(2000),
z varchar2(2000),
aa varchar2(2000),
bb varchar2(2000),
cc varchar2(2000),
dd varchar2(2000),
ee varchar2(2000),
ff varchar2(2000),
gg varchar2(2000),
hh varchar2(2000),
ii varchar2(2000),
jj varchar2(2000),
kk varchar2(2000),
ll varchar2(2000)
);
----------------------------
alter table ok_send_all add ia varchar2(250);

-- drop table OK_PHOTO;
create table OK_PHOTO(
ID	NUMBER(8) not null, --	'Системный номер	В порядке возрастания, начиная   с "1"'
BRANCH	char(5) not null, 	-- 'МФО отделения	Выбирается из таблицы S_MFO поле BANK_ID, невидимое поле, обязательное для заполнения'
PERSONAL_CODE  	NUMBER (9) not null,	-- 'Код сотрудника в отделении	Автоматически присваивается в отделении и передается в Головной офис  в файле - уникален в отделении, невидимое поле, обязательное для заполнения'
PHOTO long raw not null,
EMP_CODE 	NUMBER (6) not null, -- 'Код пользователя вводившего информацию	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения'
INS_DATE	DATE  not null -- 'Дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения'
) ;

comment on table OK_PHOTO is 'Фотографии';
comment on column OK_PHOTO.ID is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_PHOTO.BRANCH	 is 'МФО отделения	Выбирается из таблицы S_MFO поле BANK_ID, невидимое поле, обязательное для заполнения';
comment on column OK_PHOTO.PERSONAL_CODE  is 'Код сотрудника в отделении	Выбирается из таблицы OK_PERSONAL  поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_PHOTO.PHOTO  is 'Фото';
comment on column OK_PHOTO.EMP_CODE is 'Код пользователя вводившего информацию	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_PHOTO.INS_DATE is 'Дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';

ALTER TABLE OK_PHOTO ADD CONSTRAINT OK_PHOTO_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE) ;

ALTER TABLE OK_PHOTO ADD CONSTRAINT OK_PHOTO_UK
  UNIQUE ( BRANCH, ID ) ;

-- drop SEQUENCE SEQ_OK_PHOTO;
CREATE SEQUENCE SEQ_OK_PHOTO
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select SEQ_OK_CHANGE_FIO.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_OK_PHOTO_SEQ
 BEFORE 
 INSERT
 ON OK_PHOTO
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
  new_id NUMBER;
BEGIN

  select seq_OK_PHOTO.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;

END;
/

--
-- drop table ok_rezerv;
create table ok_rezerv(
MASTER_ID NUMBER(9) not null,
BRANCH VARCHAR2(5) not null,
BRANCH_show VARCHAR2(5) not null,
Department_CODE	NUMBER(9) not null,
Post_CODE NUMBER(9) not null,
PERSONAL_CODE NUMBER(9) not null,
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null
);

--drop SEQUENCE SEQ_OK_REZERV;
CREATE SEQUENCE SEQ_OK_REZERV
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

CREATE OR REPLACE TRIGGER TR_OK_REZERV_SEQ
 BEFORE 
 INSERT
 ON OK_REZERV
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_REZERV.NEXTVAL into new_ID from dual;
   :NEW.MASTER_ID:=new_ID;
END;
/
------

--
-- drop table ok_rezerv_detail;
create table ok_rezerv_detail(
ID NUMBER(9) not null,
MASTER_ID NUMBER(8) not null,
BRANCH VARCHAR2(5) not null,
BRANCH_show VARCHAR2(5) not null,
Department_CODE	NUMBER(9) not null,
Post_CODE NUMBER(9) not null,
FAMILY	VARCHAR2(50) not null,
FIRST_NAME 	VARCHAR2(50) not null,
PATRONYMIC	VARCHAR2(50),
EMP_CODE NUMBER(6) not null,
INS_DATE DATE not null
);

-- drop SEQUENCE SEQ_OK_REZERV_DETAIL;
CREATE SEQUENCE SEQ_OK_REZERV_DETAIL
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

CREATE OR REPLACE TRIGGER TR_OK_REZERV_DETAIL_SEQ
 BEFORE 
 INSERT
 ON OK_REZERV_DETAIL
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_OK_REZERV_DETAIL.NEXTVAL into new_ID from dual;
   :NEW.ID:=new_ID;
END;
/

ALTER TABLE OK_rezerv ADD CONSTRAINT OK_rezerv_PK
  PRIMARY KEY ( BRANCH, master_id) ;
ALTER TABLE OK_rezerv_detail ADD CONSTRAINT OK_rezerv_detail_PK
  PRIMARY KEY ( BRANCH, id) ;

