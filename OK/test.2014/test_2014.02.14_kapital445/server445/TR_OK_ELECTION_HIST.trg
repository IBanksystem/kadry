CREATE OR REPLACE TRIGGER TR_OK_ELECTION_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_ELECTION
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
    or :NEW.ELECTION_DATE_BEGIN <>:OLD.ELECTION_DATE_BEGIN -- Год избрания
    or :NEW.ELECTION_DATE_BEGIN_MM <>:OLD.ELECTION_DATE_BEGIN_MM -- Месяц избрания
    or :NEW.ELECTION_DATE_BEGIN_DD <>:OLD.ELECTION_DATE_BEGIN_DD -- День месяца избрания
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
