
CREATE OR REPLACE TRIGGER "TR_OK_PHOTO_B64_HIST"
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_PHOTO_B64
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
--  AUTHID CURRENT_USER -- invalid trigger cpecification
declare
 Version constant char(12) := '#~08012018~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type;
 to_send_ number(1);
 v_date_ date;
 ins_date_ date;
BEGIN
-- 09_012
  select curdate into v_date_ from sets where rownum<2;
  ins_date_ := sysdate;
--
  if inserting then
    if :NEW.ID is null
    then
      select seq_OK_PHOTO_B64.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
--
  select count(*) into to_send_
  from ok_personal where branch=branch_ and personal_code=personal_code_ and status_code<>1;
  if to_send_>0
  then
  insert into ok_hist(BRANCH,PERSONAL_CODE,V_DATE,INS_DATE,NOM_UI,
         TABLE_NAME,ACTION_HIST_ID, id_table
   ) values (BRANCH_,PERSONAL_CODE_,V_DATE_,INS_DATE_,'09_012',
         'OK_PHOTO_B64',new_id, id_table_
   );
--
  end if;
END;
/



-- лупинг чейн синоним create or replace public synonym TR_OK_PHOTO_B64_HIST for TR_OK_PHOTO_B64_HIST;
-- не работает grant all on TR_OK_PHOTO_B64_HIST to public;

--SQL> create or replace public synonym TR_OK_PHOTO_B64_HIST for TR_OK_PHOTO_B64_HIST;
--Synonym created

--SQL> grant all on TR_OK_PHOTO_B64_HIST to public;
--grant all on TR_OK_PHOTO_B64_HIST to public
--ORA-01775: looping chain of synonyms

--SQL> drop public synonym TR_OK_PHOTO_B64_HIST;
--Synonym dropped

--SQL> grant all on TR_OK_PHOTO_B64_HIST to public;
--grant all on TR_OK_PHOTO_B64_HIST to public
--ORA-00942: table or view does not exist

--SQL> GRANT EXECUTE ON TR_OK_PHOTO_B64_HIST TO public;
--GRANT EXECUTE ON TR_OK_PHOTO_B64_HIST TO public
--ORA-04042: procedure, function, package, or package body does not exist

--SQL> grant all on TR_OK_PHOTO_B64_HIST to public;
--grant all on TR_OK_PHOTO_B64_HIST to public
--ORA-00942: table or view does not exist

