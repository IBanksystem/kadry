
drop trigger TR_OK_AWARD_SEQ;
drop trigger TR_OK_AWARD_HIST;

CREATE OR REPLACE TRIGGER TR_OK_AWARD_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_AWARD
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~31032015~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type; 
BEGIN
-- 09_005
  if inserting then
    if :NEW.ID is null
    then  
      select SEQ_OK_AWARD.NEXTVAL into seq_new_ID from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
    if :NEW.AWARD_INFO <>:OLD.AWARD_INFO -- Государственная награда
    or (:NEW.AWARD_INFO is null and :OLD.AWARD_INFO is not null)
    or (:NEW.AWARD_INFO is not null and :OLD.AWARD_INFO is null)
    or :NEW.AWARD_DATE <>:OLD.AWARD_DATE -- Год награждения 
    or (:NEW.AWARD_DATE is null and :OLD.AWARD_DATE is not null)
    or (:NEW.AWARD_DATE is not null and :OLD.AWARD_DATE is null)
    or :NEW.AWARD_DATE_MM <>:OLD.AWARD_DATE_MM -- Месяц награждения 
    or (:NEW.AWARD_DATE_MM is null and :OLD.AWARD_DATE_MM is not null)
    or (:NEW.AWARD_DATE_MM is not null and :OLD.AWARD_DATE_MM is null)
    or :NEW.AWARD_DATE_DD <>:OLD.AWARD_DATE_DD -- День месяца награждения
    or (:NEW.AWARD_DATE_DD is null and :OLD.AWARD_DATE_DD is not null)
    or (:NEW.AWARD_DATE_DD is not null and :OLD.AWARD_DATE_DD is null)
    then
      new_id:=3;
    end if;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_AWARD',new_id,null,null,null,null,null,null,id_table_, null);
  end if;
END;
/




drop trigger TR_OK_EDUCATION_seq;
drop trigger TR_OK_EDUCATION_HIST;

CREATE OR REPLACE TRIGGER TR_OK_EDUCATION_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_EDUCATION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~31032015~#';
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
    or (:NEW.INSTITUTION_CODE is null and :OLD.INSTITUTION_CODE is not null)
    or (:NEW.INSTITUTION_CODE is not null and :OLD.INSTITUTION_CODE is null)
    or :NEW.COD_VUZ_PRIM <>:OLD.COD_VUZ_PRIM -- Примечание для  кода учебного заведения
    or (:NEW.COD_VUZ_PRIM is null and :OLD.COD_VUZ_PRIM is not null)
    or (:NEW.COD_VUZ_PRIM is not null and :OLD.COD_VUZ_PRIM is null)
    or :NEW.BEGIN_DATE <>:OLD.BEGIN_DATE -- Год поступления в учебное заведение 
    or (:NEW.BEGIN_DATE is null and :OLD.BEGIN_DATE is not null)
    or (:NEW.BEGIN_DATE is not null and :OLD.BEGIN_DATE is null)
    or :NEW.BEGIN_DATE_MM <>:OLD.BEGIN_DATE_MM -- Месяц поступления в учебное заведение 
    or (:NEW.BEGIN_DATE_MM is null and :OLD.BEGIN_DATE_MM is not null)
    or (:NEW.BEGIN_DATE_MM is not null and :OLD.BEGIN_DATE_MM is null)
    or :NEW.BEGIN_DATE_DD <>:OLD.BEGIN_DATE_DD -- День месяца поступления в учебное заведение
    or (:NEW.BEGIN_DATE_DD is null and :OLD.BEGIN_DATE_DD is not null)
    or (:NEW.BEGIN_DATE_DD is not null and :OLD.BEGIN_DATE_DD is null)
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

drop trigger TR_OK_ELECTION_seq;
drop trigger TR_OK_ELECTION_HIST;

CREATE OR REPLACE TRIGGER TR_OK_ELECTION_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_ELECTION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~31032015~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type; 
BEGIN
-- 09_006
  if inserting then
    if :NEW.ID is null
    then
      select SEQ_OK_ELECTION.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
    if :NEW.ELECTION_CODE <>:OLD.ELECTION_CODE -- Выборность (Наименование органа)
    or (:NEW.ELECTION_CODE is null and :OLD.ELECTION_CODE is not null)
    or (:NEW.ELECTION_CODE is not null and :OLD.ELECTION_CODE is null)
    or :NEW.ELECTION_DATE_BEGIN <>:OLD.ELECTION_DATE_BEGIN -- Год избрания
    or (:NEW.ELECTION_DATE_BEGIN is null and :OLD.ELECTION_DATE_BEGIN is not null)
    or (:NEW.ELECTION_DATE_BEGIN is not null and :OLD.ELECTION_DATE_BEGIN is null)
    or :NEW.ELECTION_DATE_BEGIN_MM <>:OLD.ELECTION_DATE_BEGIN_MM -- Месяц избрания
    or (:NEW.ELECTION_DATE_BEGIN_MM is null and :OLD.ELECTION_DATE_BEGIN_MM is not null)
    or (:NEW.ELECTION_DATE_BEGIN_MM is not null and :OLD.ELECTION_DATE_BEGIN_MM is null)
    or :NEW.ELECTION_DATE_BEGIN_DD <>:OLD.ELECTION_DATE_BEGIN_DD -- День месяца избрания
    or (:NEW.ELECTION_DATE_BEGIN_DD is null and :OLD.ELECTION_DATE_BEGIN_DD is not null)
    or (:NEW.ELECTION_DATE_BEGIN_DD is not null and :OLD.ELECTION_DATE_BEGIN_DD is null)
    then
      new_id:=3;
    end if;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_ELECTION',new_id,null,null,null,null,null,null,id_table_, null);
  end if;
END;
/

drop trigger TR_OK_LANGUAGE_seq;
drop trigger TR_OK_LANGUAGE_HIST;

CREATE OR REPLACE TRIGGER TR_OK_LANGUAGE_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_LANGUAGE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~31032015~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type; 
BEGIN
-- 09_008
  if inserting then
    if :NEW.ID is null
    then
      select SEQ_OK_LANGUAGE.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
    if :NEW.LANGUAGE_CODE <>:OLD.LANGUAGE_CODE -- Код иностранного языка, которым владеет сотрудник
    or (:NEW.LANGUAGE_CODE is null and :OLD.LANGUAGE_CODE is not null)
    or (:NEW.LANGUAGE_CODE is not null and :OLD.LANGUAGE_CODE is null)
    or :NEW.LEVEL_CODE <>:OLD.LEVEL_CODE -- Степень владения иностранным языком 
    or (:NEW.LEVEL_CODE is null and :OLD.LEVEL_CODE is not null)
    or (:NEW.LEVEL_CODE is not null and :OLD.LEVEL_CODE is null)
    then
      new_id:=3;
    end if;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_LANGUAGE',new_id,null,null,null,null,null,null,id_table_, null);
  end if;
END;
/


drop trigger TR_OK_RISE_seq;
drop trigger TR_OK_RISE_HIST;

CREATE OR REPLACE TRIGGER TR_OK_RISE_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_RISE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~31032015~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type; 
BEGIN
-- 09_009
  if inserting then
    if :NEW.ID is null
    then
      select SEQ_OK_RISE.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
    if :NEW.RISE_INFO <>:OLD.RISE_INFO -- Повышение квалификации
    or (:NEW.RISE_INFO is null and :OLD.RISE_INFO is not null)
    or (:NEW.RISE_INFO is not null and :OLD.RISE_INFO is null)
    or :NEW.RISE_DATE_YEAR <>:OLD.RISE_DATE_YEAR -- Год 
    or (:NEW.RISE_DATE_YEAR is null and :OLD.RISE_DATE_YEAR is not null)
    or (:NEW.RISE_DATE_YEAR is not null and :OLD.RISE_DATE_YEAR is null)
    or :NEW.RISE_DATE_MM <>:OLD.RISE_DATE_MM -- Месяц 
    or (:NEW.RISE_DATE_MM is null and :OLD.RISE_DATE_MM is not null)
    or (:NEW.RISE_DATE_MM is not null and :OLD.RISE_DATE_MM is null)
    or :NEW.RISE_DATE_DD <>:OLD.RISE_DATE_DD -- День месяца 
    or (:NEW.RISE_DATE_DD is null and :OLD.RISE_DATE_DD is not null)
    or (:NEW.RISE_DATE_DD is not null and :OLD.RISE_DATE_DD is null)
    then
      new_id:=3;
    end if;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_RISE',new_id,null,null,null,null,null,null,id_table_, null);
  end if;
END;
/

drop trigger TR_OK_VOYAGE_seq;
drop trigger TR_OK_VOYAGE_HIST;

CREATE OR REPLACE TRIGGER TR_OK_VOYAGE_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_VOYAGE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~31032015~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type; 
BEGIN
  if inserting then
    if :NEW.ID is null
    then
      select SEQ_OK_VOYAGE.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
    if :NEW.VOYAGE_STR <>:OLD.VOYAGE_STR -- Код страны пребывание
    or (:NEW.VOYAGE_STR is null and :OLD.VOYAGE_STR is not null)
    or (:NEW.VOYAGE_STR is not null and :OLD.VOYAGE_STR is null)
    or :NEW.VOYAGE_INFO <>:OLD.VOYAGE_INFO -- Цель поездки
    or (:NEW.VOYAGE_INFO is null and :OLD.VOYAGE_INFO is not null)
    or (:NEW.VOYAGE_INFO is not null and :OLD.VOYAGE_INFO is null)
    or :NEW.VOYAGE_DATE <>:OLD.VOYAGE_DATE -- Год выезда 
    or (:NEW.VOYAGE_DATE is null and :OLD.VOYAGE_DATE is not null)
    or (:NEW.VOYAGE_DATE is not null and :OLD.VOYAGE_DATE is null)
    or :NEW.VOYAGE_DATE_MM <>:OLD.VOYAGE_DATE_MM -- Месяц выезда
    or (:NEW.VOYAGE_DATE_MM is null and :OLD.VOYAGE_DATE_MM is not null)
    or (:NEW.VOYAGE_DATE_MM is not null and :OLD.VOYAGE_DATE_MM is null)
    or :NEW.VOYAGE_DATE_DD <>:OLD.VOYAGE_DATE_DD -- День месяца выезда
    or (:NEW.VOYAGE_DATE_DD is null and :OLD.VOYAGE_DATE_DD is not null)
    or (:NEW.VOYAGE_DATE_DD is not null and :OLD.VOYAGE_DATE_DD is null)
    then
      new_id:=3;
    end if;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_VOYAGE',new_id,null,null,null,null,null,null,id_table_, null);
  end if;
END;
/
