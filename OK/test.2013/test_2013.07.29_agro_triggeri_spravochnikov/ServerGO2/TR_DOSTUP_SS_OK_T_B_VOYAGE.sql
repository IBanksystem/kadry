CREATE OR REPLACE TRIGGER TR_DOSTUP_SS_OK_T_B_VOYAGE
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON SS_OK_THEME_BUSINESS_VOYAGE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
Version constant char(12) := '#~02082013~#';
Table_name_ VARCHAR2(50);
User_name_ VARCHAR2(50);
dostup_ number(5);
BEGIN
--
  Table_name_:='SS_OK_THEME_BUSINESS_VOYAGE';
  User_name_:=USER;
--
  select count(*) into dostup_ from ss_ok_dostup
  where table_name=Table_name_
  and user_name=User_name_;
  if dostup_=0
  then
    if inserting then
      raise_application_error(-20000,'��� �������. ������ ��������.');
    end if;
    if updating then
      raise_application_error(-20000,'��� �������. ������ ��������.');
    end if;
    if deleting then
      raise_application_error(-20000,'��� �������. ������ �������.');
    end if;
  end if;
--
END;
/
