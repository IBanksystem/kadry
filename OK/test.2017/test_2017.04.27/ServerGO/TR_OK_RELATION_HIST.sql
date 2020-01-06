CREATE OR REPLACE TRIGGER "TR_OK_RELATION_HIST" 
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_RELATION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~30032016~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type;
BEGIN
-- 09_002
  if inserting then
    if :NEW.ID is null
    then
      select SEQ_OK_RELATION.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
    if :NEW.RELATION_CODE <>:OLD.RELATION_CODE -- Код степени родства
    or (:NEW.RELATION_CODE is null and :OLD.RELATION_CODE is not null)
    or (:NEW.RELATION_CODE is not null and :OLD.RELATION_CODE is null)
    or :NEW.RELATION_BIRTHDAY <>:OLD.RELATION_BIRTHDAY -- Год рождения
    or (:NEW.RELATION_BIRTHDAY is null and :OLD.RELATION_BIRTHDAY is not null)
    or (:NEW.RELATION_BIRTHDAY is not null and :OLD.RELATION_BIRTHDAY is null)
    or :NEW.mm <>:OLD.mm -- Месяц рождения
    or (:NEW.mm is null and :OLD.mm is not null)
    or (:NEW.mm is not null and :OLD.mm is null)
    or :NEW.dd <>:OLD.dd -- Число рождения
    or (:NEW.dd is null and :OLD.dd is not null)
    or (:NEW.dd is not null and :OLD.dd is null)
    or :NEW.COD_STR_BIRTH <>:OLD.COD_STR_BIRTH -- Код страны места рождения
    or (:NEW.COD_STR_BIRTH is null and :OLD.COD_STR_BIRTH is not null)
    or (:NEW.COD_STR_BIRTH is not null and :OLD.COD_STR_BIRTH is null)
    or :NEW.COD_OBL_BIRTH <>:OLD.COD_OBL_BIRTH -- Код области  места рождения
    or (:NEW.COD_OBL_BIRTH is null and :OLD.COD_OBL_BIRTH is not null)
    or (:NEW.COD_OBL_BIRTH is not null and :OLD.COD_OBL_BIRTH is null)
    or :NEW.COD_OBL_BIRTH_PRIM <>:OLD.COD_OBL_BIRTH_PRIM -- Примечание для кода области
    or (:NEW.COD_OBL_BIRTH_PRIM is null and :OLD.COD_OBL_BIRTH_PRIM is not null)
    or (:NEW.COD_OBL_BIRTH_PRIM is not null and :OLD.COD_OBL_BIRTH_PRIM is null)
    or :NEW.COD_CITY_BIRTH <>:OLD.COD_CITY_BIRTH -- Код района или города места рождения
    or (:NEW.COD_CITY_BIRTH is null and :OLD.COD_CITY_BIRTH is not null)
    or (:NEW.COD_CITY_BIRTH is not null and :OLD.COD_CITY_BIRTH is null)
    or :NEW.COD_CITY_BIRTH_PRIM <>:OLD.COD_CITY_BIRTH_PRIM -- Примечание для кода района или города
    or (:NEW.COD_CITY_BIRTH_PRIM is null and :OLD.COD_CITY_BIRTH_PRIM is not null)
    or (:NEW.COD_CITY_BIRTH_PRIM is not null and :OLD.COD_CITY_BIRTH_PRIM is null)
    or :NEW.RELATION_BIRTHPLACE <>:OLD.RELATION_BIRTHPLACE -- Место рождения родственника
    or (:NEW.RELATION_BIRTHPLACE is null and :OLD.RELATION_BIRTHPLACE is not null)
    or (:NEW.RELATION_BIRTHPLACE is not null and :OLD.RELATION_BIRTHPLACE is null)
    then
      new_id:=3;
    end if;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
  ok_service2.ok_hist_proc(branch_,personal_code_,'OK_RELATION',new_id,null,null,null,null,null,null,id_table_, null);
END;
/
