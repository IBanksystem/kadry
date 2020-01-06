alter table ok_education drop constraint ok_education_pk;
alter table OK_EDUCATION drop constraint OK_EDUCATION_UK;

drop trigger TR_OK_EDUCATION_HIST;
drop trigger TR_OK_EDUCATION_HIST_DEL;

rename ok_education to ok_education_temp;

create table ok_education as select
ID,
BRANCH,
PERSONAL_CODE,
EDUCATION_CODE,
BASIS_CODE,
INSTITUTION_CODE,
BEGIN_DATE,
END_DATE,
PROFESSION_PERSONAL,
QUALIFICATION_CODE,
DIPLOM_NUM,
EMP_CODE,
INS_DATE,
COD_VUZ_PRIM,
CURS,
FAKULTET,
NOSTRA,
NOSTRA_SERIES,
NOSTRA_NUMBER,
NOSTRA_DATE,
DIPLOM_DATE,
BEGIN_DATE_MM,
BEGIN_DATE_DD,
END_DATE_MM,
END_DATE_DD,
EDUCATION_END,
EDUCATION_CITY,
EDUCATION_COUNT_CODE,
VID_EDUCATION_CODE
from ok_education_temp;
commit;

alter table OK_EDUCATION  add constraint OK_EDUCATION_PK primary key (BRANCH, PERSONAL_CODE, ID);
alter table OK_EDUCATION  add constraint OK_EDUCATION_UK unique (BRANCH, ID);

CREATE OR REPLACE TRIGGER TR_OK_EDUCATION_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_EDUCATION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~29022012~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type;
BEGIN
-- 09_004
  if inserting then
    if :NEW.ID is null
    then
      select SEQ_OK_EDUCATION.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
    if :NEW.INSTITUTION_CODE <>:OLD.INSTITUTION_CODE -- Код учебного заведения
    or :NEW.COD_VUZ_PRIM <>:OLD.COD_VUZ_PRIM -- Примечание для  кода учебного заведения
    or :NEW.BEGIN_DATE <>:OLD.BEGIN_DATE -- Год поступления в учебное заведение
    or :NEW.BEGIN_DATE_MM <>:OLD.BEGIN_DATE_MM -- Месяц поступления в учебное заведение
    or :NEW.BEGIN_DATE_DD <>:OLD.BEGIN_DATE_DD -- День месяца поступления в учебное заведение
    then
      new_id:=3;
    end if;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_EDUCATION',new_id,null,null,null,null,null,null,id_table_, null);
  end if;
END;
/

CREATE OR REPLACE TRIGGER TR_OK_EDUCATION_HIST_DEL
 BEFORE
 DELETE
 ON OK_EDUCATION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~09032012~#';
BEGIN
-- 09_003
  if deleting then
    insert into OK_EDUCATION_HIST_DEL (
ID,
BRANCH,
PERSONAL_CODE,
EDUCATION_CODE,
BASIS_CODE,
INSTITUTION_CODE,
BEGIN_DATE,
END_DATE,
PROFESSION_PERSONAL,
QUALIFICATION_CODE,
DIPLOM_NUM,
EMP_CODE,
INS_DATE,
COD_VUZ_PRIM,
CURS,
FAKULTET,
NOSTRA,
NOSTRA_SERIES,
NOSTRA_NUMBER,
NOSTRA_DATE,
DIPLOM_DATE,
BEGIN_DATE_MM,
BEGIN_DATE_DD,
END_DATE_MM,
END_DATE_DD,
EDUCATION_END,
EDUCATION_CITY,
EDUCATION_COUNT_CODE,
VID_EDUCATION_CODE
)
select
:OLD.ID,
:OLD.BRANCH,
:OLD.PERSONAL_CODE,
:OLD.EDUCATION_CODE,
:OLD.BASIS_CODE,
:OLD.INSTITUTION_CODE,
:OLD.BEGIN_DATE,
:OLD.END_DATE,
:OLD.PROFESSION_PERSONAL,
:OLD.QUALIFICATION_CODE,
:OLD.DIPLOM_NUM,
:OLD.EMP_CODE,
:OLD.INS_DATE,
:OLD.COD_VUZ_PRIM,
:OLD.CURS,
:OLD.FAKULTET,
:OLD.NOSTRA,
:OLD.NOSTRA_SERIES,
:OLD.NOSTRA_NUMBER,
:OLD.NOSTRA_DATE,
:OLD.DIPLOM_DATE,
:OLD.BEGIN_DATE_MM,
:OLD.BEGIN_DATE_DD,
:OLD.END_DATE_MM,
:OLD.END_DATE_DD,
:OLD.EDUCATION_END,
:OLD.EDUCATION_CITY,
:OLD.EDUCATION_COUNT_CODE,
:OLD.VID_EDUCATION_CODE
from dual;
  end if;
END;
/
