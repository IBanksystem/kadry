create table okedb_appoints(
id number(10) not null,
branch varchar2(5) not null,
PERSONAL_CODE NUMBER(9) not null,
v_date date,
EMP_CODE NUMBER(6),
ins_date date,
state_code number(3),
comments varchar2(250),
DEPARTMENT_CODE NUMBER(9),
POST_CODE NUMBER(3),
SPECIAL_CODE NUMBER(3),
DEPARTMENT_CODE_NEW NUMBER(9),
POST_CODE_NEW NUMBER(3),
SPECIAL_CODE_NEW NUMBER(3),
FAMILY VARCHAR2(50),
FIRST_NAME VARCHAR2(50),
PATRONYMIC VARCHAR2(50),
BIRTHDAY DATE,
tabno number(9) 
);

ALTER TABLE okedb_appoints ADD CONSTRAINT okedb_appoints_PK
  PRIMARY KEY ( ID,branch,personal_code ) ;

create sequence okedb_appoints_seq order;

create or replace public synonym okedb_appoints for okedb_appoints;
create or replace public synonym okedb_appoints_seq for okedb_appoints_seq;

grant all on okedb_appoints to public;
grant all on okedb_appoints_seq to public;

select okedb_appoints_seq.nextval from dual;

comment on table okedb_appoints  is 'Сведения об утверждении в ГО';
comment on column okedb_appoints.ID  is 'Системный номер	Присваивается  начиная с "1" ';
comment on column okedb_appoints.BRANCH  is 'МФО отделения	Выбирается из таблицыS_MFO поле ID ';
comment on column okedb_appoints.PERSONAL_CODE  is 'Код сотрудника в отделении';
comment on column okedb_appoints.V_DATE  is 'опер день';
comment on column okedb_appoints.EMP_CODE  is 'Код пользователя	Выбирается из таблицы USERS  поле  ID ';
comment on column okedb_appoints.INS_DATE  is 'дата и время ввода данных	SYSDATE ';

comment on column okedb_appoints.state_code   is 'код SS_OK_GOSUBMIT';
comment on column okedb_appoints.comments   is 'комментарий';
comment on column okedb_appoints.DEPARTMENT_CODE   is 'отдел';
comment on column okedb_appoints.POST_CODE   is 'должность';
comment on column okedb_appoints.SPECIAL_CODE   is 'специализация';

-- при проверке проверять что в штатном есть место на эту должность
-- в филиале могут только дать заявку. если заявку еще не рассмотрели, могут ее отменить.
-- если дадут по тому же сотруднику еще заявку то предидущие 
--(сколько было-одна или все или ни одной) отменяется и убирается в архив


create table okedb_appoints_arh(
id number(10) not null,
branch varchar2(5) not null,
PERSONAL_CODE NUMBER(9) not null,
v_date date,
EMP_CODE NUMBER(6),
ins_date date,
state_code number(3),
comments varchar2(250),
DEPARTMENT_CODE NUMBER(9),
POST_CODE NUMBER(3),
SPECIAL_CODE NUMBER(3),
DEPARTMENT_CODE_NEW NUMBER(9),
POST_CODE_NEW NUMBER(3),
SPECIAL_CODE_NEW NUMBER(3),
FAMILY VARCHAR2(50),
FIRST_NAME VARCHAR2(50),
PATRONYMIC VARCHAR2(50),
BIRTHDAY DATE, 
tabno number(9)
);

ALTER TABLE okedb_appoints_arh ADD CONSTRAINT okedb_appoints_arh_PK
  PRIMARY KEY ( ID,branch,personal_code ) ;

create or replace public synonym okedb_appoints_arh for okedb_appoints_arh;
