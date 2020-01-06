CREATE OR REPLACE TRIGGER TR_DOSTUP_SS_OK_PRIVILEGE
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON SS_OK_PRIVILEGE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
Version constant char(12) := '#~02082013~#';
Table_name_ VARCHAR2(50);
User_name_ VARCHAR2(50);
dostup_ number(5);
BEGIN
--
  Table_name_:='SS_OK_PRIVILEGE';
  User_name_:=USER;
--
  select count(*) into dostup_ from ss_ok_dostup
  where table_name=Table_name_
  and user_name=User_name_;
  if dostup_=0
  then
    if inserting then
      raise_application_error(-20000,'Нет доступа. Нельзя добавить.');
    end if;
    if updating then
      raise_application_error(-20000,'Нет доступа. Нельзя изменить.');
    end if;
    if deleting then
      raise_application_error(-20000,'Нет доступа. Нельзя удалить.');
    end if;
  end if;
--
END;
/
