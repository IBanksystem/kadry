drop trigger TR_OK_CHANGE_FIO_seq;
drop trigger TR_OK_CHANGE_FIO_HIST;
CREATE OR REPLACE TRIGGER TR_OK_CHANGE_FIO_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_CHANGE_FIO
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
-- 09_001 изменение фио готово как есть
  if inserting then
    if :NEW.ID is null
    then
      select seq_OK_CHANGE_FIO.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
  end if;
END;
/
