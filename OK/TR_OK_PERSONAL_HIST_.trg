CREATE OR REPLACE TRIGGER TR_OK_PERSONAL_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_PERSONAL
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
Version constant char(12) := '#~11102011~#';
new_id           NUMBER;
branch_          ok_personal.branch%type;
personal_code_   ok_personal.personal_code%type;
PASS_SERIYA_OLD_ VARCHAR2(20);
PASS_NUM_OLD_    VARCHAR2(20);
PASS_DATE_OLD_   DATE;
PASS_SERIYA_NEW_ VARCHAR2(20);
PASS_NUM_NEW_    VARCHAR2(20);
PASS_DATE_NEW_   DATE;
old_post_code_   ok_personal.post_code%type;
new_post_code_   ok_personal.post_code%type;
BEGIN
  if inserting then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1;
    PASS_SERIYA_OLD_ :=null;
    PASS_NUM_OLD_    :=null;
    PASS_DATE_OLD_   :=null;
    old_post_code_   :=null;
    PASS_SERIYA_NEW_ :=:NEW.PASS_SERIYA;
    PASS_NUM_NEW_    :=:NEW.PASS_NUM;
    PASS_DATE_NEW_   :=:NEW.PASS_DATE;
    new_post_code_   :=:NEW.POST_CODE;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2;
    PASS_SERIYA_OLD_ :=:OLD.PASS_SERIYA;
    PASS_NUM_OLD_    :=:OLD.PASS_NUM;
    PASS_DATE_OLD_   :=:OLD.PASS_DATE;
    old_post_code_   :=:OLD.POST_CODE;
    PASS_SERIYA_NEW_ :=:NEW.PASS_SERIYA;
    PASS_NUM_NEW_    :=:NEW.PASS_NUM;
    PASS_DATE_NEW_   :=:NEW.PASS_DATE;
    new_post_code_   :=:NEW.POST_CODE;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=3;
    PASS_SERIYA_OLD_ :=:OLD.PASS_SERIYA;
    PASS_NUM_OLD_    :=:OLD.PASS_NUM;
    PASS_DATE_OLD_   :=:OLD.PASS_DATE;
    old_post_code_   :=:OLD.POST_CODE;
    PASS_SERIYA_NEW_ :=null;
    PASS_NUM_NEW_    :=null;
    PASS_DATE_NEW_   :=null;
    new_post_code_   :=null;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
      if (ok_service2.is_boss_post(old_post_code_)=1) then
      -- ���������
        if (PASS_SERIYA_OLD_<>PASS_SERIYA_NEW_)
        or (PASS_NUM_OLD_<>PASS_NUM_NEW_)
        then -- ��������� ��������
          ok_service2.ok_hist_proc(branch_,personal_code_,'OK_PERSONAL',4,
            PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_);
        else -- ������� ��������� 
          ok_service2.ok_hist_proc(branch_,personal_code_,'OK_PERSONAL',2,
            PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_);
        end if;  
      else
      -- �������
        ok_service2.ok_hist_proc(branch_,personal_code_,'OK_PERSONAL',1,
          PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_);
      end if;
  else
    if (deleting) or (updating) then
      if (ok_service2.is_boss_post(old_post_code_)=1) then
       ok_service2.ok_hist_proc(branch_,personal_code_,'OK_PERSONAL',3,
         PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_);
      end if;  
    end if;  
  end if;
--  
END;
/
