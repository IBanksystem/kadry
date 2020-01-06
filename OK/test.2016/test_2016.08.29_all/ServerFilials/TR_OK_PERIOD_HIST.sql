CREATE OR REPLACE TRIGGER "TR_OK_PERIOD_HIST" 
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_PERIOD
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~18032016~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type;
BEGIN
-- 09_003
  if inserting then
    if :NEW.ID is null
    then
      select SEQ_OK_PERIOD.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
    if :NEW.POST_CODE <>:OLD.POST_CODE  -- Код должности
    or :NEW.type_period_code <>:OLD.type_period_code -- Признак системы
    or :NEW.COD_BANK <>:OLD.COD_BANK  -- Код отделения банка
    or :NEW.OFFICE_NAME <>:OLD.OFFICE_NAME -- Место работы
    or :NEW.ESTABLISHED_POST <>:OLD.ESTABLISHED_POST -- Должность
    or :NEW.IN_OFFICE_DATE <>:OLD.IN_OFFICE_DATE -- Дата начала работы в должности
    or :NEW.BASIS_NUM <>:OLD.BASIS_NUM -- Номер приказа-основания для начала работы в должности
    or :NEW.BASIS_DATE <>:OLD.BASIS_DATE -- Дата  приказа-основания для начала работы в должности
    or (:NEW.NUM_PR_OFF <>:OLD.NUM_PR_OFF and :OLD.NUM_PR_OFF is not null) -- Номер приказа-основания для прекращения работы в должности
    or :NEW.DATE_UTV_KM <>:OLD.DATE_UTV_KM -- Дата утверждения Кабинетом Министров
    or :NEW.NUMB_UTV_KM <>:OLD.NUMB_UTV_KM -- Номер постановления Кабинета Министров об утверждении в занимаемой должности
    or :NEW.DATE_PR_KVL <>:OLD.DATE_PR_KVL -- Дата  прохождения Квалификационной комиссии Центрального банка
    or :NEW.NUMB_PR_KVL <>:OLD.NUMB_PR_KVL -- Номер протокола Квалификационной комиссии Центрального банка о соответствии должности, на которую выдвигается
    or :NEW.DATE_ATTEST <>:OLD.DATE_ATTEST -- Дата аттестации
    or :NEW.RESH_ATTEST <>:OLD.RESH_ATTEST -- Решение аттестационной комиссии
    then
      new_id:=3;
    end if;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
--  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_PERIOD',new_id,null,null,null,null,null,null,id_table_,null);
--  end if;
END;
/
