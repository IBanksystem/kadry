CREATE OR REPLACE TRIGGER TR_OK_EDUCATION_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_EDUCATION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~11102017~#';
 to_send_ number(1);
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
--  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
  select count(*) into to_send_
  from ok_personal where branch=branch_ and personal_code=personal_code_ and status_code<>1;
  if to_send_>0
  then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_EDUCATION',new_id,null,null,null,null,null,null,id_table_, null);
  end if;
END;
/
