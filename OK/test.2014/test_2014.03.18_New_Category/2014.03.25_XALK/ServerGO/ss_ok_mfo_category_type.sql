create table ss_ok_mfo_category_type(
mfo_category_type_code number(5) not null,
mfo_category_type_group number(5) not null,
mfo_category_type_name varchar2(50),
mfo_category_type_purp varchar2(50),
TERMINAL     VARCHAR2(100) default SYS_CONTEXT('USERENV','TERMINAL'),
SESSION_USER VARCHAR2(100) default SYS_CONTEXT('USERENV','SESSION_USER'),
ID_ADDRESS   VARCHAR2(100) default SYS_CONTEXT('USERENV','IP_ADDRESS'),
TIMESTAMP    DATE default sysdate
);

alter table ss_ok_mfo_category_type
  add constraint XPK_ss_ok_mfo_category_type primary key (mfo_category_type_code);

create or replace public synonym ss_ok_mfo_category_type for ss_ok_mfo_category_type;
grant all on ss_ok_mfo_category_type to public;


CREATE OR REPLACE TRIGGER TR_ss_ok_mfo_category_type
 BEFORE
 UPDATE
 ON ss_ok_mfo_category_type
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
BEGIN
  IF UPDATING THEN
    :NEW.TERMINAL     := SYS_CONTEXT('USERENV','TERMINAL');
    :NEW.SESSION_USER := SYS_CONTEXT('USERENV','SESSION_USER');
    :NEW.ID_ADDRESS   := SYS_CONTEXT('USERENV','IP_ADDRESS');
    :NEW.TIMESTAMP    := sysdate;
  END IF;
END;
/






create table ss_ok_mfo_category(
branch varchar2(5) not null,
mfo_category_type_code number(5) not null,
region_koef  NUMBER(8,2),
region_summa NUMBER(20),
REGION_ID   varCHAR2(2),
UNION_ID    varCHAR2(5),
level_department_code number(5),
TERMINAL     VARCHAR2(100) default SYS_CONTEXT('USERENV','TERMINAL'),
SESSION_USER VARCHAR2(100) default SYS_CONTEXT('USERENV','SESSION_USER'),
ID_ADDRESS   VARCHAR2(100) default SYS_CONTEXT('USERENV','IP_ADDRESS'),
TIMESTAMP    DATE default sysdate
);

alter table ss_ok_mfo_category
  add constraint XPK_ss_ok_mfo_category primary key (branch);

create or replace public synonym ss_ok_mfo_category for ss_ok_mfo_category;
grant all on ss_ok_mfo_category to public;

CREATE OR REPLACE TRIGGER TR_ss_ok_mfo_category
 BEFORE
 UPDATE
 ON ss_ok_mfo_category
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
BEGIN
  IF UPDATING THEN
    :NEW.TERMINAL     := SYS_CONTEXT('USERENV','TERMINAL');
    :NEW.SESSION_USER := SYS_CONTEXT('USERENV','SESSION_USER');
    :NEW.ID_ADDRESS   := SYS_CONTEXT('USERENV','IP_ADDRESS');
    :NEW.TIMESTAMP    := sysdate;
  END IF;
END;
/



create table ss_ok_post_category(
POST_CODE             NUMBER(3) not null,
mfo_category_type_code number(5) not null,
TERMINAL     VARCHAR2(100) default SYS_CONTEXT('USERENV','TERMINAL'),
SESSION_USER VARCHAR2(100) default SYS_CONTEXT('USERENV','SESSION_USER'),
ID_ADDRESS   VARCHAR2(100) default SYS_CONTEXT('USERENV','IP_ADDRESS'),
TIMESTAMP    DATE default sysdate,
CATEGORY_CODE NUMBER(2)
);

alter table ss_ok_post_category add CATEGORY_CODE NUMBER(2);

alter table ss_ok_post_category
  add constraint XPK_ss_ok_post_category primary key (POST_CODE,mfo_category_type_code);

create or replace public synonym ss_ok_post_category for ss_ok_post_category;
grant all on ss_ok_post_category to public;

CREATE OR REPLACE TRIGGER TR_ss_ok_post_category
 BEFORE
 UPDATE
 ON ss_ok_post_category
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
BEGIN
  IF UPDATING THEN
    :NEW.TERMINAL     := SYS_CONTEXT('USERENV','TERMINAL');
    :NEW.SESSION_USER := SYS_CONTEXT('USERENV','SESSION_USER');
    :NEW.ID_ADDRESS   := SYS_CONTEXT('USERENV','IP_ADDRESS');
    :NEW.TIMESTAMP    := sysdate;
  END IF;
END;
/


alter table SS_OK_CATEGORY modify CATEGORY_RATE NUMBER(15,5);

alter table SS_OK_CATEGORY drop column MFO_CATEGORY_TYPE_CODE;
