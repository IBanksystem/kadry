CREATE OR REPLACE PACKAGE ok_service2 AUTHID CURRENT_USER IS
  Version constant char(12) := '#~25012018~#';
--TYPE cur IS REF CURSOR;
-- MODIFICATION HISTORY
-- Person    Date         Comments
-- -------   ----------   ------------------------------------------
-- ildar-y   29-04-2004   ����� ������.���������
--           02-12-2004   OK_SERVICE.GETACADEMICNAME(AC.ACADEMIC_CODE)
--                        appoint_colleague �������� � ������� ����������
--           21-02-2005   appoint_colleague_set ��������� � ������ ����������
--
function get_IN_OFFICE(branch_ OK_period.branch%type,personal_code_ OK_period.personal_code%type) return OK_period.IN_OFFICE_DATE%type;
pragma restrict_references (get_IN_OFFICE,WNDS,WNPS);
--
procedure OpenDay(a_date date:=null);
--
procedure ok_hist_proc (
  branch_          ok_hist.branch%type,
  PERSONAL_CODE_   ok_hist.PERSONAL_CODE%type,
  TABLE_NAME_      ok_hist.TABLE_NAME%type,
  ACTION_HIST_ID_  ok_hist.ACTION_HIST_ID%type,
  PASS_SERIYA_OLD_ ok_hist.PASS_SERIYA_OLD%type,
  PASS_NUM_OLD_    ok_hist.PASS_NUM_OLD%type,
  PASS_DATE_OLD_   ok_hist.PASS_DATE_OLD%type,
  PASS_SERIYA_NEW_ ok_hist.PASS_SERIYA_NEW%type,
  PASS_NUM_NEW_    ok_hist.PASS_NUM_NEW%type,
  PASS_DATE_NEW_   ok_hist.PASS_DATE_NEW%type,
  id_table_2   ok_hist.id_table%type,
  v_date_2 date
);
--
function IS_BOSS_NOW(branch_ OK_period.branch%type,personal_code_ OK_period.personal_code%type) return number;
pragma restrict_references (IS_BOSS_NOW,WNDS,WNPS);
--
function IS_BOSS_POST(post_code_ OK_period.post_code%type) return number;
pragma restrict_references (IS_BOSS_POST,WNDS,WNPS);
--
END; -- Package spec
/
CREATE OR REPLACE PACKAGE BODY ok_service2 IS
  Version constant char(12) := '#~25012018~#';
-- constantS
-- ��� "��������� �����"
  IS_NEW_STATUS_ constant ok_personal.status_code%type := 1;
-- ��� "��������� ������"
  IS_JOIN_STATUS_ constant ok_personal.status_code%type := 2;
-- ��� ��������� ������
  DISMISS_STATUS_CODE_ constant ok_personal.status_code%type := 4;
-- � �������
  DEKRET_STATUS_ constant ok_personal.status_code%type := 5;
-- ��� ���� ����� "� ���� �����"
  IS_THIS_BANK_ constant number(1):=3;
--
-- Person      Date         Comments
-- ---------   ----------   ----------------------------------------
-- ildar-y     29-04-2004   ����� ������.���������
--
--
--
function get_IN_OFFICE(branch_ OK_period.branch%type,personal_code_ OK_period.personal_code%type) return OK_period.IN_OFFICE_DATE%type
is
IN_OFFICE_DATE_ date;
begin
  SELECT min(IN_OFFICE_DATE) into IN_OFFICE_DATE_
                 from ok_period d
                 where branch=branch_
    and personal_code=personal_code_
                 and TYPE_PERIOD_CODE=3;
  return IN_OFFICE_DATE_;
  EXCEPTION when no_data_found
  then
    RETURN sysdate;
end;
--
procedure OpenDay(a_date date:=null)
is
  d_ date;
  branch_ char(5):=info.GetBranch;
begin
  d_ := nvl(a_date,info.GetDay);
  -- ������� ������� � �������� ������
  update ok_personal set STATUS_CODE=4 
  where branch=branch_ and department_code in (select department_code from ss_ok_stat_over)
  and SROK_DATE<d_
  and STATUS_CODE<>4;
  begin
    update ok_period
    set out_office_date=d_
     where branch = branch_
     and personal_code in (select personal_code from ok_personal
  where branch=branch_ and department_code in (select department_code from ss_ok_stat_over)
  and SROK_DATE<d_)
     and out_office_date is null;
  exception when others
  then
    null;
  end;
--  
end;
--
procedure ok_hist_proc (
  branch_          ok_hist.branch%type,
  PERSONAL_CODE_   ok_hist.PERSONAL_CODE%type,
  TABLE_NAME_      ok_hist.TABLE_NAME%type,
  ACTION_HIST_ID_  ok_hist.ACTION_HIST_ID%type,
  PASS_SERIYA_OLD_ ok_hist.PASS_SERIYA_OLD%type,
  PASS_NUM_OLD_    ok_hist.PASS_NUM_OLD%type,
  PASS_DATE_OLD_   ok_hist.PASS_DATE_OLD%type,
  PASS_SERIYA_NEW_ ok_hist.PASS_SERIYA_NEW%type,
  PASS_NUM_NEW_    ok_hist.PASS_NUM_NEW%type,
  PASS_DATE_NEW_   ok_hist.PASS_DATE_NEW%type,
  id_table_2   ok_hist.id_table%type,
  v_date_2 date
)
is
  NOM_UI_ ok_hist.nom_ui%type;
  v_date_ ok_hist.v_date%type;
  id_table_   ok_hist.id_table%type;
  ins_date_ ok_hist.ins_date%type;
  MY_ACTION_HIST_ID_  ok_hist.ACTION_HIST_ID%type;
  OLD_department_code_ ok_personal.department_code%type;
  NEW_department_code_ ok_personal.department_code%type;
  is_vnestat_ number;
  is_vnestat_OLD number;
  is_vnestat_NEW number;
begin
  select department_code, DEPARTMENT_CODE_NEW into OLD_department_code_,NEW_department_code_
  from ok_personal where branch=branch_ and personal_code=personal_code_;
--  
  select count(*) into is_vnestat_NEW
  from ss_ok_stat_over where department_code=NEW_department_code_;
--  
  select count(*) into is_vnestat_OLD
  from ss_ok_stat_over where department_code=OLD_department_code_;
--  
  is_vnestat_ := is_vnestat_NEW+is_vnestat_OLD;
--  
  if is_vnestat_=0
  then
       -- ���������� �� �����
    if v_date_2 is null
    then
      select curdate into v_date_ from sets where rownum<2;
    else
      v_date_:=v_date_2;
    end if;
    ins_date_ := sysdate;
-- ��������� ����� ��� ������ - ��� 4 ��������� ��������
-- (��������� ����� ��� ������) � ��� ����-����- ��� 4 ��������� ��������
-- �� ����� �� ����� �� ���������� - ��� 2 ���������
    MY_ACTION_HIST_ID_ := ACTION_HIST_ID_;
    id_table_ := id_table_2;
    if (TABLE_NAME_='OK_PERSONAL')
    then
      NOM_UI_:='09_001'; id_table_ := PERSONAL_CODE_;
      if MY_ACTION_HIST_ID_=1
      then
--        update OK_RELATION set EMP_CODE=EMP_CODE where branch=BRANCH_ and PERSONAL_CODE=PERSONAL_CODE_;
       insert into ok_hist(BRANCH,PERSONAL_CODE,V_DATE,INS_DATE,NOM_UI,
         TABLE_NAME,ACTION_HIST_ID,PASS_SERIYA_OLD,PASS_NUM_OLD,PASS_DATE_OLD,
         PASS_SERIYA_NEW,PASS_NUM_NEW,PASS_DATE_NEW,id_table
       ) select BRANCH_,PERSONAL_CODE_,V_DATE_,INS_DATE_,'09_002',
         TABLE_NAME_,MY_action_hist_id_,PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,
         PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_,id
       from OK_RELATION
       where branch=BRANCH_ and PERSONAL_CODE=PERSONAL_CODE_;
--        update OK_PERIOD set EMP_CODE=EMP_CODE where branch=BRANCH_ and PERSONAL_CODE=PERSONAL_CODE_;
       insert into ok_hist(BRANCH,PERSONAL_CODE,V_DATE,INS_DATE,NOM_UI,
         TABLE_NAME,ACTION_HIST_ID,PASS_SERIYA_OLD,PASS_NUM_OLD,PASS_DATE_OLD,
         PASS_SERIYA_NEW,PASS_NUM_NEW,PASS_DATE_NEW,id_table
       ) select BRANCH_,PERSONAL_CODE_,V_DATE_,INS_DATE_,'09_003',
         TABLE_NAME_,MY_action_hist_id_,PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,
         PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_,id
       from OK_period
       where branch=BRANCH_ and PERSONAL_CODE=PERSONAL_CODE_;
--        update OK_EDUCATION set EMP_CODE=EMP_CODE where branch=BRANCH_ and PERSONAL_CODE=PERSONAL_CODE_;
       insert into ok_hist(BRANCH,PERSONAL_CODE,V_DATE,INS_DATE,NOM_UI,
         TABLE_NAME,ACTION_HIST_ID,PASS_SERIYA_OLD,PASS_NUM_OLD,PASS_DATE_OLD,
         PASS_SERIYA_NEW,PASS_NUM_NEW,PASS_DATE_NEW,id_table
       ) select BRANCH_,PERSONAL_CODE_,V_DATE_,INS_DATE_,'09_004',
         TABLE_NAME_,MY_action_hist_id_,PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,
         PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_,id
       from OK_EDUCATION
       where branch=BRANCH_ and PERSONAL_CODE=PERSONAL_CODE_;
--        update OK_AWARD set EMP_CODE=EMP_CODE where branch=BRANCH_ and PERSONAL_CODE=PERSONAL_CODE_;
       insert into ok_hist(BRANCH,PERSONAL_CODE,V_DATE,INS_DATE,NOM_UI,
         TABLE_NAME,ACTION_HIST_ID,PASS_SERIYA_OLD,PASS_NUM_OLD,PASS_DATE_OLD,
         PASS_SERIYA_NEW,PASS_NUM_NEW,PASS_DATE_NEW,id_table
       ) select BRANCH_,PERSONAL_CODE_,V_DATE_,INS_DATE_,'09_005',
         TABLE_NAME_,MY_action_hist_id_,PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,
         PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_,id
       from OK_AWARD
       where branch=BRANCH_ and PERSONAL_CODE=PERSONAL_CODE_;
--
       insert into ok_hist(BRANCH,PERSONAL_CODE,V_DATE,INS_DATE,NOM_UI,
         TABLE_NAME,ACTION_HIST_ID,PASS_SERIYA_OLD,PASS_NUM_OLD,PASS_DATE_OLD,
         PASS_SERIYA_NEW,PASS_NUM_NEW,PASS_DATE_NEW,id_table
       ) select BRANCH_,PERSONAL_CODE_,V_DATE_,INS_DATE_,'09_006',
         TABLE_NAME_,MY_action_hist_id_,PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,
         PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_,id
       from OK_ELECTION
       where branch=BRANCH_ and PERSONAL_CODE=PERSONAL_CODE_;
--        update OK_VOYAGE set EMP_CODE=EMP_CODE where branch=BRANCH_ and PERSONAL_CODE=PERSONAL_CODE_;
       insert into ok_hist(BRANCH,PERSONAL_CODE,V_DATE,INS_DATE,NOM_UI,
         TABLE_NAME,ACTION_HIST_ID,PASS_SERIYA_OLD,PASS_NUM_OLD,PASS_DATE_OLD,
         PASS_SERIYA_NEW,PASS_NUM_NEW,PASS_DATE_NEW,id_table
       ) select BRANCH_,PERSONAL_CODE_,V_DATE_,INS_DATE_,'09_007',
         TABLE_NAME_,MY_action_hist_id_,PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,
         PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_,id
       from OK_VOYAGE
       where branch=BRANCH_ and PERSONAL_CODE=PERSONAL_CODE_;
--        update OK_LANGUAGE set EMP_CODE=EMP_CODE where branch=BRANCH_ and PERSONAL_CODE=PERSONAL_CODE_;
       insert into ok_hist(BRANCH,PERSONAL_CODE,V_DATE,INS_DATE,NOM_UI,
         TABLE_NAME,ACTION_HIST_ID,PASS_SERIYA_OLD,PASS_NUM_OLD,PASS_DATE_OLD,
         PASS_SERIYA_NEW,PASS_NUM_NEW,PASS_DATE_NEW,id_table
       ) select BRANCH_,PERSONAL_CODE_,V_DATE_,INS_DATE_,'09_008',
         TABLE_NAME_,MY_action_hist_id_,PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,
         PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_,id
       from OK_LANGUAGE
       where branch=BRANCH_ and PERSONAL_CODE=PERSONAL_CODE_;
--        update OK_RISE set EMP_CODE=EMP_CODE where branch=BRANCH_ and PERSONAL_CODE=PERSONAL_CODE_;
       insert into ok_hist(BRANCH,PERSONAL_CODE,V_DATE,INS_DATE,NOM_UI,
         TABLE_NAME,ACTION_HIST_ID,PASS_SERIYA_OLD,PASS_NUM_OLD,PASS_DATE_OLD,
         PASS_SERIYA_NEW,PASS_NUM_NEW,PASS_DATE_NEW,id_table
       ) select BRANCH_,PERSONAL_CODE_,V_DATE_,INS_DATE_,'09_009',
         TABLE_NAME_,MY_action_hist_id_,PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,
         PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_,id
       from OK_RISE
       where branch=BRANCH_ and PERSONAL_CODE=PERSONAL_CODE_;
--        update ok_hist set ACTION_HIST_ID=1 where branch=BRANCH_ and PERSONAL_CODE=PERSONAL_CODE_
--          and V_DATE=V_DATE_;
      end if;
    end if;
    if (TABLE_NAME_='OK_ACADEMIC') then NOM_UI_:='09_001';MY_ACTION_HIST_ID_ := 2; id_table_ := PERSONAL_CODE_; end if;
    if (TABLE_NAME_='OK_DEGREE') then NOM_UI_:='09_001';MY_ACTION_HIST_ID_ := 2; id_table_ := PERSONAL_CODE_; end if;
    if (TABLE_NAME_='OK_PARTY') then NOM_UI_:='09_001';MY_ACTION_HIST_ID_ := 2; id_table_ := PERSONAL_CODE_; end if;
    if (TABLE_NAME_='OK_RELATION') then NOM_UI_:='09_002'; end if;
    if (TABLE_NAME_='OK_PERIOD') then NOM_UI_:='09_003'; end if;
    if (TABLE_NAME_='OK_EDUCATION') then NOM_UI_:='09_004'; end if;
    if (TABLE_NAME_='OK_AWARD') then NOM_UI_:='09_005'; end if;
    if (TABLE_NAME_='OK_ELECTION') then NOM_UI_:='09_006'; end if;
    if (TABLE_NAME_='OK_VOYAGE') then NOM_UI_:='09_007'; end if;
    if (TABLE_NAME_='OK_LANGUAGE') then NOM_UI_:='09_008'; end if;
    if (TABLE_NAME_='OK_RISE') then NOM_UI_:='09_009'; end if;
--    if (TABLE_NAME_='OK_') then NOM_UI_:='09_010'; end if; ������� ���������� ���������
--    if (TABLE_NAME_='OK_') then NOM_UI_:='09_011'; end if; ������ ���������� ���������

    insert into ok_hist(BRANCH,PERSONAL_CODE,V_DATE,INS_DATE,NOM_UI,
         TABLE_NAME,ACTION_HIST_ID,PASS_SERIYA_OLD,PASS_NUM_OLD,PASS_DATE_OLD,
         PASS_SERIYA_NEW,PASS_NUM_NEW,PASS_DATE_NEW,id_table
     ) values (BRANCH_,PERSONAL_CODE_,V_DATE_,INS_DATE_,NOM_UI_,
         TABLE_NAME_,MY_action_hist_id_,PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,
         PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_,id_table_
     );
  end if;
end;
--
function IS_BOSS_NOW(branch_ OK_period.branch%type,personal_code_ OK_period.personal_code%type) return number
is
  boss_ number(1);
--  branch_all varchar2(250);
begin
--
--branch_all:=' ';
--for rec in (select distinct branch from ok_personal)
--loop
--  branch_all:=branch_all||' '||rec.branch;
--end loop;
--
--raise_application_error(-20000,'branch_all='||branch_all);
-- 1 ��������� ��� 0 �� ���������
-- ��� ������ � 09_002 - 09_009
  select count(*) into boss_ from ok_personal okp, SS_OK_NCI son
    where okp.branch=okp.branch and okp.STATUS_CODE in (2,5)
     and okp.post_code=son.ok_id and son.NCI_ID=79
     and okp.branch= branch_
     and okp.personal_code= personal_code_
     and okp.department_code not in (select department_code from ss_ok_stat_over);
  return boss_;
  EXCEPTION when no_data_found
  then
    RETURN 0;
end;
--
function IS_BOSS_POST(post_code_ OK_period.post_code%type) return number
is
  boss_ number(1);
begin
-- 1 ��������� ��� 0 �� ���������
-- ��� ������ � 09_001 �� ������ � ����� ���������
-- okp.STATUS_CODE ������ ���� in (2,5)
-- ��� ��������� ���� �� ���������- �������� 3-��������
  select count(*) into boss_ from SS_OK_NCI son
    where son.NCI_ID=79
     and  son.ok_id= post_code_;
  return boss_;
  EXCEPTION when no_data_found
  then
    RETURN 0;
end;
--
----------------------------------------------------------------------
END;
/
