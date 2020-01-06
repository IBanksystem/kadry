CREATE OR REPLACE TRIGGER TR_OK_ACADEMIC_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_ACADEMIC
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~11102011~#';
 new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
BEGIN
  if inserting then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=3;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_ACADEMIC',new_id,null,null,null,null,null,null);
  end if;
END;
/
CREATE OR REPLACE TRIGGER TR_OK_AWARD_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_AWARD
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~11102011~#';
 new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
BEGIN
  if inserting then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=3;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_AWARD',new_id,null,null,null,null,null,null);
  end if;
END;
/
CREATE OR REPLACE TRIGGER TR_OK_CHANGE_FIO_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_CHANGE_FIO
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~11102011~#';
 new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
BEGIN
  if inserting then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=3;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_CHANGE_FIO',new_id,null,null,null,null,null,null);
  end if;
END;
/
CREATE OR REPLACE TRIGGER TR_OK_DEGREE_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_DEGREE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~11102011~#';
 new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
BEGIN
  if inserting then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=3;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_DEGREE',new_id,null,null,null,null,null,null);
  end if;
END;
/
CREATE OR REPLACE TRIGGER TR_OK_EDUCATION_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_EDUCATION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~11102011~#';
 new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
BEGIN
  if inserting then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=3;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_EDUCATION',new_id,null,null,null,null,null,null);
  end if;
END;
/
CREATE OR REPLACE TRIGGER TR_OK_ELECTION_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_ELECTION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~11102011~#';
 new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
BEGIN
  if inserting then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=3;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_ELECTION',new_id,null,null,null,null,null,null);
  end if;
END;
/
CREATE OR REPLACE TRIGGER TR_OK_LANGUAGE_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_LANGUAGE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~11102011~#';
 new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
BEGIN
  if inserting then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=3;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_LANGUAGE',new_id,null,null,null,null,null,null);
  end if;
END;
/
CREATE OR REPLACE TRIGGER TR_OK_PARTY_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_PARTY
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~11102011~#';
 new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
BEGIN
  if inserting then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=3;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_PARTY',new_id,null,null,null,null,null,null);
  end if;
END;
/
CREATE OR REPLACE TRIGGER TR_OK_RELATION_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_RELATION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~11102011~#';
 new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
BEGIN
  if inserting then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=3;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_RELATION',new_id,null,null,null,null,null,null);
  end if;
END;
/
CREATE OR REPLACE TRIGGER TR_OK_RISE_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_RISE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~11102011~#';
 new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
BEGIN
  if inserting then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=3;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_RISE',new_id,null,null,null,null,null,null);
  end if;
END;
/
CREATE OR REPLACE TRIGGER TR_OK_VOYAGE_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_VOYAGE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~11102011~#';
 new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
BEGIN
  if inserting then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=3;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_VOYAGE',new_id,null,null,null,null,null,null);
  end if;
END;
/
