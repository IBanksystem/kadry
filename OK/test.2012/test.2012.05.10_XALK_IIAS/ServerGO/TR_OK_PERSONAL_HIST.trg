CREATE OR REPLACE TRIGGER TR_OK_PERSONAL_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_PERSONAL
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
Version constant char(12) := '#~19042012~#';
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
id_table_   ok_hist.id_table%type;
 is_boss_now_ number(2);
BEGIN
-- 09_001
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
    id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2;
    PASS_SERIYA_OLD_ :=:OLD.PASS_SERIYA;
    PASS_NUM_OLD_    :=:OLD.PASS_NUM;
    PASS_DATE_OLD_   :=:OLD.PASS_DATE;
    old_post_code_   :=:OLD.POST_CODE;
    id_table_   :=:OLD.ID;
    PASS_SERIYA_NEW_ :=:NEW.PASS_SERIYA;
    PASS_NUM_NEW_    :=:NEW.PASS_NUM;
    PASS_DATE_NEW_   :=:NEW.PASS_DATE;
    new_post_code_   :=:NEW.POST_CODE;
    id_table_   :=:NEW.ID;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4;
    PASS_SERIYA_OLD_ :=:OLD.PASS_SERIYA;
    PASS_NUM_OLD_    :=:OLD.PASS_NUM;
    PASS_DATE_OLD_   :=:OLD.PASS_DATE;
    old_post_code_   :=:OLD.POST_CODE;
    id_table_   :=:OLD.ID;
    PASS_SERIYA_NEW_ :=null;
    PASS_NUM_NEW_    :=null;
    PASS_DATE_NEW_   :=null;
    new_post_code_   :=null;
    id_table_   :=:OLD.ID;
  end if;

  begin
-- 1 ��������� ��� 0 �� ���������
-- ��� ������ � 09_002 - 09_009
    select count(*) into is_boss_now_ from SS_OK_NCI son
    where son.ok_id=new_post_code_ and son.NCI_ID=79;
  EXCEPTION when no_data_found
    then
      is_boss_now_ := 0;
  end;

--  is_boss_now_ ���� ok_service2.is_boss_now(branch_,personal_code_)
  if is_boss_now_ >0 then
      if (ok_service2.is_boss_post(old_post_code_)=1) then
         -- �� � ��� ������ - - ������� 2-���������
         new_id:=2;
         -- ��� 3-����������� ���� ���������� ���� �� ���� ��
         if :NEW.NPS_ID <>:OLD.NPS_ID -- ���������� ����� ����������� ����� ����������
         or :NEW.FAMILY <>:OLD.FAMILY -- ������� ����������
         or :NEW.MAIDEN_FAMILY <>:OLD.MAIDEN_FAMILY -- ������� ������� ����������
         or :NEW.FIRST_NAME <>:OLD.FIRST_NAME -- ��� ����������
         or :NEW.PATRONYMIC <>:OLD.PATRONYMIC -- �������� ����������
         or :NEW.gender_code <>:OLD.gender_code -- ���
         or :NEW.birthday <>:OLD.birthday -- ��� �������� ����� �������� ����� ��������
         or :NEW.COD_STR_BIRTH <>:OLD.COD_STR_BIRTH -- ��� ������ ����� ��������
         or :NEW.REGION_ID <>:OLD.REGION_ID -- ��� �������  ����� ��������
         or :NEW.COD_OBL_PRIM <>:OLD.COD_OBL_PRIM -- ���������� ��� ���� �������
         or :NEW.DISTR <>:OLD.DISTR -- ��� ������ ��� ������ ����� ��������
         or :NEW.COD_PLACE_BIRTH_PRIM <>:OLD.COD_PLACE_BIRTH_PRIM -- ���������� ��� ���� ������ ��� ������
         or :NEW.BIRTHPLACE_POINT <>:OLD.BIRTHPLACE_POINT -- ����� �������� ������������ ����������� ������
         or :NEW.NATIONALITY_CODE <>:OLD.NATIONALITY_CODE -- ��� ��������������
         or :NEW.CODE_NACI_PRIM <>:OLD.CODE_NACI_PRIM -- ���������� ��� ���� ��������������
         or :NEW.BRANCH <>:OLD.BRANCH -- ��� ��������� �����
         then
           new_id:=3;
         end if;
          ok_service2.ok_hist_proc(branch_,personal_code_,'OK_PERSONAL',new_id,
            PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_,id_table_,null);
      else
      -- ��� �� ���� -- ���� ���� -- �������
        ok_service2.ok_hist_proc(branch_,personal_code_,'OK_PERSONAL',1,
          PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_,id_table_,null);
      end if;
  else
    if (updating) then
      if (ok_service2.is_boss_post(old_post_code_)=1) then
         -- �� ��� ������ �� �� �������� ������� - 5-��������� � ���������
       ok_service2.ok_hist_proc(branch_,personal_code_,'OK_PERSONAL',5,
         PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_,id_table_,null);
      end if;
    end if;
    if (deleting) then
      if (ok_service2.is_boss_post(old_post_code_)=1) then
       ok_service2.ok_hist_proc(branch_,personal_code_,'OK_PERSONAL',4,
         PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_,id_table_,null);
      end if;
    end if;
  end if;
--
END;
/
