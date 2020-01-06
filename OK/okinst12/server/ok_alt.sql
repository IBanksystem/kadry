


truncate table SS_OK_FAMILY_STATUS;

insert into SS_OK_FAMILY_STATUS select 1,1, 'Женат' from dual;
insert into SS_OK_FAMILY_STATUS select 2,1, 'Холост' from dual;
insert into SS_OK_FAMILY_STATUS select 3,2, 'Замужем' from dual;
insert into SS_OK_FAMILY_STATUS select 4,2, 'Незамужем' from dual;
insert into SS_OK_FAMILY_STATUS select 5,1, 'Разведен' from dual;
insert into SS_OK_FAMILY_STATUS select 6,2, 'Разведена' from dual;

ALTER TABLE OK_EDUCATION
 MODIFY (
  QUALIFICATION_CODE NUMBER (2)
 );

alter table SS_OK_PERS_COL_DFLT add real_name  varchar2(200);

delete from SS_OK_PERS_COL_DFLT
where code_table='004' and code_num in ('03','04','05','06','08');
insert into SS_OK_PERS_COL_DFLT values('004','03','ok_service.get_staffname(AR.STAFF_CODE)','C','Вид состава','Вид состава',15,null,null,'AR.STAFF_CODE');
insert into SS_OK_PERS_COL_DFLT values('004','04','ok_service.get_typeforcename(AR.TYPE_FORCE_CODE)','C','Род войск','Род войск',15,null,null,'AR.STAFF_CODE');
insert into SS_OK_PERS_COL_DFLT values('004','05','ok_service.get_armygroupname(AR.ARMY_GROUP_CODE)','C','Группа учета','Гр.учета',15,null,null,'AR.STAFF_CODE');
insert into SS_OK_PERS_COL_DFLT values('004','06','ok_service.get_categoryarmyname(AR.CATEGORY_ARMY_CODE)','C','Категория учета','Категория учета',15,null,null,'AR.STAFF_CODE');
insert into SS_OK_PERS_COL_DFLT values('004','08','ok_service.get_militaryrankname(AR.MILITARY_RANK_CODE)','C','Воинское звание','Воинское звание',15,null,null,'AR.STAFF_CODE');

delete from SS_OK_PERS_COL_DFLT where code_table='001' and code_num ='03';
insert into SS_OK_PERS_COL_DFLT values('001','03','OK_SERVICE.GET_DEPARTMENTNAME(PP.DEPARTMENT_CODE)','C','Отдел','Отдел',60,null,'select to_char(department_code) id, department_name name from ss_ok_department where state_notes=''A'' order by department_code','PP.DEPARTMENT_CODE');

commit;

ALTER TABLE OK_EDUCATION
 MODIFY (
  QUALIFICATION_CODE NUMBER (2)
 );

ALTER TABLE OK_PERSONAL ADD (
SPECIAL_CODE	number (3)
 );

alter table ok_personal
add inn number(9);

---------------
ALTER TABLE OK_STAT ADD (
SPECIAL_CODE	number (3)
 );


-- военные справочники
-- 1.группа учета
ALTER TABLE OK_ARMY ADD (  army_group_code NUMBER (5) );
--drop table SS_OK_army_group;
create table SS_OK_army_group(
army_group_ID	number (8) not null,
army_group_CODE	number (5) not null,
army_group_NAME	VARCHAR2(250) not null,
STATE_NOTES CHAR(1) not null,
EMP_CODE 	NUMBER(6) not null,
INS_date 	date not null
) ;

ALTER TABLE SS_OK_army_group ADD CONSTRAINT SS_OK_army_group_PK
  PRIMARY KEY ( army_group_code, state_notes ) ;

--drop SEQUENCE SEQ_SS_OK_army_group;
CREATE SEQUENCE SEQ_SS_OK_army_group
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_army_group.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_army_group_SEQ
 BEFORE 
 INSERT
 ON SS_OK_army_group
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_army_group.NEXTVAL into new_ID from dual;
   :NEW.army_group_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_army_group ADD CONSTRAINT SS_OK_army_group_UK
  UNIQUE ( army_group_CODE ) ;

ALTER TABLE SS_OK_army_group ADD CONSTRAINT SS_OK_army_group_CHK_CODE
  CHECK (army_group_code>0);

-- 2.категория учета

ALTER TABLE OK_ARMY ADD (  CATEGORY_ARMY_code NUMBER (5) );
--drop table SS_OK_CATEGORY_ARMY;
create table SS_OK_CATEGORY_ARMY(
CATEGORY_ARMY_ID	number (8) not null,
CATEGORY_ARMY_CODE	number (5) not null,
CATEGORY_ARMY_NAME	VARCHAR2(250) not null,
STATE_NOTES CHAR(1) not null,
EMP_CODE 	NUMBER(6) not null,
INS_date 	date not null
) ;

ALTER TABLE SS_OK_CATEGORY_ARMY ADD CONSTRAINT SS_OK_CATEGORY_ARMY_PK
  PRIMARY KEY ( CATEGORY_ARMY_code, state_notes ) ;

--drop SEQUENCE SEQ_SS_OK_CATEGORY_ARMY;
CREATE SEQUENCE SEQ_SS_OK_CATEGORY_ARMY
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_CATEGORY_ARMY.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_CATEGORY_ARMY_SEQ
 BEFORE 
 INSERT
 ON SS_OK_CATEGORY_ARMY
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_CATEGORY_ARMY.NEXTVAL into new_ID from dual;
   :NEW.CATEGORY_ARMY_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_CATEGORY_ARMY ADD CONSTRAINT SS_OK_CATEGORY_ARMY_UK
  UNIQUE ( CATEGORY_ARMY_CODE ) ;

ALTER TABLE SS_OK_CATEGORY_ARMY ADD CONSTRAINT SS_OK_CATEGORY_ARMY_CHK_CODE
  CHECK (CATEGORY_ARMY_code>0);

-- 3.воинское звание

ALTER TABLE OK_ARMY ADD (  MILITARY_RANK_code NUMBER (5) );
--drop table SS_OK_MILITARY_RANK;
create table SS_OK_MILITARY_RANK(
MILITARY_RANK_ID	number (8) not null,
MILITARY_RANK_CODE	number (5) not null,
MILITARY_RANK_NAME	VARCHAR2(250) not null,
STATE_NOTES CHAR(1) not null,
EMP_CODE 	NUMBER(6) not null,
INS_date 	date not null
) ;

ALTER TABLE SS_OK_MILITARY_RANK ADD CONSTRAINT SS_OK_MILITARY_RANK_PK
  PRIMARY KEY ( MILITARY_RANK_code, state_notes ) ;

--drop SEQUENCE SEQ_SS_OK_MILITARY_RANK;
CREATE SEQUENCE SEQ_SS_OK_MILITARY_RANK
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_MILITARY_RANK.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_MILITARY_RANK_SEQ
 BEFORE 
 INSERT
 ON SS_OK_MILITARY_RANK
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_MILITARY_RANK.NEXTVAL into new_ID from dual;
   :NEW.MILITARY_RANK_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_MILITARY_RANK ADD CONSTRAINT SS_OK_MILITARY_RANK_UK
  UNIQUE ( MILITARY_RANK_CODE ) ;

ALTER TABLE SS_OK_MILITARY_RANK ADD CONSTRAINT SS_OK_MILITARY_RANK_CHK_CODE
  CHECK (MILITARY_RANK_code>0);

-- 4.вид состава

ALTER TABLE OK_ARMY ADD (  STAFF_code NUMBER (5) );
--drop table SS_OK_STAFF;
create table SS_OK_STAFF(
STAFF_ID	number (8) not null,
STAFF_CODE	number (5) not null,
STAFF_NAME	VARCHAR2(250) not null,
STATE_NOTES CHAR(1) not null,
EMP_CODE 	NUMBER(6) not null,
INS_date 	date not null
) ;

ALTER TABLE SS_OK_staff ADD CONSTRAINT SS_OK_STAFF_PK
  PRIMARY KEY ( STAFF_code, state_notes ) ;

--drop SEQUENCE SEQ_SS_OK_STAFF;
CREATE SEQUENCE SEQ_SS_OK_STAFF
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_STAFF.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_STAFF_SEQ
 BEFORE 
 INSERT
 ON SS_OK_STAFF
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_STAFF.NEXTVAL into new_ID from dual;
   :NEW.staff_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_STAFF ADD CONSTRAINT SS_OK_STAFF_UK
  UNIQUE ( STAFF_CODE ) ;

ALTER TABLE SS_OK_staff ADD CONSTRAINT SS_OK_STAFF_CHK_CODE
  CHECK (STAFF_code>0);

-- 5.род войск

ALTER TABLE OK_ARMY ADD (  TYPE_FORCE_code NUMBER (5) );

--drop table SS_OK_TYPE_FORCE;
create table SS_OK_TYPE_FORCE(
TYPE_FORCE_ID	number (8) not null,
TYPE_FORCE_CODE	number (5) not null,
TYPE_FORCE_NAME	VARCHAR2(250) not null,
STATE_NOTES CHAR(1) not null,
EMP_CODE 	NUMBER(6) not null,
INS_date 	date not null
) ;

ALTER TABLE SS_OK_TYPE_FORCE ADD CONSTRAINT SS_OK_TYPE_FORCE_PK
  PRIMARY KEY ( TYPE_FORCE_code, state_notes ) ;

--drop SEQUENCE SEQ_SS_OK_TYPE_FORCE;
CREATE SEQUENCE SEQ_SS_OK_TYPE_FORCE
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

--select seq_ss_ok_TYPE_FORCE.NEXTVAL  from dual;

CREATE OR REPLACE TRIGGER TR_SS_OK_TYPE_FORCE_SEQ
 BEFORE 
 INSERT
 ON SS_OK_TYPE_FORCE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_TYPE_FORCE.NEXTVAL into new_ID from dual;
   :NEW.type_force_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_TYPE_FORCE ADD CONSTRAINT SS_OK_TYPE_FORCE_UK
  UNIQUE ( TYPE_FORCE_CODE ) ;

ALTER TABLE SS_OK_type_force ADD CONSTRAINT SS_OK_TYPE_FORCE_CHK_CODE
  CHECK (TYPE_FORCE_code>0);

--drop table ok_rezerv;
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

--drop table SS_OK_SPECIAL;
create table SS_OK_SPECIAL(
SPECIAL_ID	number (8) not null,
SPECIAL_CODE	number (3) not null,
SPECIAL_NAME	VARCHAR2(20) not null,
STATE_NOTES CHAR(1) not null,
EMP_CODE 	NUMBER(6) not null,
INS_date 	date not null
) ;

ALTER TABLE SS_OK_SPECIAL ADD CONSTRAINT SS_OK_SPECIAL_PK
  PRIMARY KEY ( SPECIAL_code, state_notes ) ;

-- drop SEQUENCE SEQ_SS_OK_SPECIAL;
CREATE SEQUENCE SEQ_SS_OK_SPECIAL
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;


CREATE OR REPLACE TRIGGER TR_SS_OK_SPECIAL_SEQ
 BEFORE 
 INSERT
 ON SS_OK_SPECIAL
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select seq_ss_ok_SPECIAL.NEXTVAL into new_ID from dual;
   :NEW.SPECIAL_ID:=new_ID;
END;
/

ALTER TABLE SS_OK_SPECIAL ADD CONSTRAINT SS_OK_SPECIAL_UK
  UNIQUE ( SPECIAL_CODE ) ;

ALTER TABLE SS_OK_SPECIAL ADD CONSTRAINT SS_OK_SPECIAL_CHK_CODE
  CHECK (SPECIAL_code>0);


ALTER TABLE SS_OK_SPECIAL
 MODIFY (
  SPECIAL_NAME VARCHAR2 (250)
);

update ok_stat set SPECIAL_CODE=0
where special_code is null;

ALTER TABLE OK_STAT
 MODIFY (
  SPECIAL_CODE NOT NULL
 );

ALTER TABLE OK_STAT drop CONSTRAINT OK_STAT_PK;

ALTER TABLE OK_STAT ADD CONSTRAINT OK_STAT_PK
  PRIMARY KEY ( BRANCH, DEPARTMENT_CODE, POST_CODE, SPECIAL_CODE ) ;

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

