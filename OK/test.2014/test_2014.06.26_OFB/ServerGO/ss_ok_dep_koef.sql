create table ss_ok_dep_koef(
branch varchar2(5) not null,
DEPARTMENT_CODE NUMBER(9) not null,
region_koef  NUMBER(8,2),
region_summa NUMBER(20),
TERMINAL     VARCHAR2(100) default SYS_CONTEXT('USERENV','TERMINAL'),
SESSION_USER VARCHAR2(100) default SYS_CONTEXT('USERENV','SESSION_USER'),
ID_ADDRESS   VARCHAR2(100) default SYS_CONTEXT('USERENV','IP_ADDRESS'),
TIMESTAMP    DATE default sysdate
);

alter table ss_ok_dep_koef
  add constraint XPK_ss_ok_dep_koef primary key (branch,DEPARTMENT_CODE);

create or replace public synonym ss_ok_dep_koef for ss_ok_dep_koef;
grant all on ss_ok_dep_koef to public;

CREATE OR REPLACE TRIGGER TR_ss_ok_dep_koef
 BEFORE
 UPDATE
 ON ss_ok_dep_koef
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



