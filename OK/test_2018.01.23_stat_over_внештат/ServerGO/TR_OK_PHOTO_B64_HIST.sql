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
    cSql varchar(5000);
    cur_hdl       int;
    rows_proc1    integer;
    bank_ varchar2(15);
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
--raise_application_error(-20000,'ok_service2.is_boss_now(branch_,personal_code_)='||ok_service2.is_boss_now(branch_,personal_code_)||
--'branch='||branch_||' and personal_code='||personal_code_
--);
  select USER_NAME into bank_ from ss_dblink_branch where branch=branch_;
  cSql:='  select count(*) nn from '||bank_||'.ok_personal okp, SS_OK_NCI son
    where okp.branch=okp.branch and okp.STATUS_CODE in (2,5)
     and okp.post_code=son.ok_id and son.NCI_ID=79
     and okp.branch= :P_BRANCH
     and okp.personal_code= :P_PERS
     and okp.department_code not in (select department_code from ss_ok_stat_over)';

    cur_hdl := dbms_sql.open_cursor;
    dbms_sql.parse(cur_hdl, cSql,dbms_sql.native);
    dbms_sql.bind_variable(cur_hdl,':P_BRANCH',branch_);
    dbms_sql.bind_variable(cur_hdl,':P_PERS',personal_code_);
    rows_proc1 := dbms_sql.execute(cur_hdl);
    rows_proc1:=dbms_sql.fetch_rows(cur_hdl);
    dbms_sql.close_cursor(cur_hdl);
--
  if rows_proc1 is null then rows_proc1:=0; 
  end if;
--
  if rows_proc1>0 then
  insert into ok_hist(BRANCH,PERSONAL_CODE,V_DATE,INS_DATE,NOM_UI,
         TABLE_NAME,ACTION_HIST_ID, id_table
   ) values (BRANCH_,PERSONAL_CODE_,V_DATE_,INS_DATE_,'09_012',
         'OK_PHOTO_B64',new_id, id_table_
   );
  end if;
--  
END;
/
