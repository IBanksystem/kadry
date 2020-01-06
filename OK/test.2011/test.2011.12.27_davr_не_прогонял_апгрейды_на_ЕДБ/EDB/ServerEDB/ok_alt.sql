



ALTER TABLE OK_EDUCATION
 MODIFY (
  QUALIFICATION_CODE NUMBER (2)
 );


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

