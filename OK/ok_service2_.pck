CREATE OR REPLACE PACKAGE ok_service2 AUTHID CURRENT_USER IS
  Version constant char(12) := '#~10102011~#';
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
  PASS_DATE_NEW_   ok_hist.PASS_DATE_NEW%type
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
  Version constant char(12) := '#~10102011~#';
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
  PASS_DATE_NEW_   ok_hist.PASS_DATE_NEW%type
)
is
  NOM_UI_ ok_hist.nom_ui%type;
  v_date_ ok_hist.v_date%type;
  ins_date_ ok_hist.ins_date%type;
  MY_ACTION_HIST_ID_  ok_hist.ACTION_HIST_ID%type;
begin
  v_date_ := info.GetDay;
  ins_date_ := sysdate;
-- ��������� ����� ��� ������ - ��� 4 ��������� ��������
-- (��������� ����� ��� ������) � ��� ����-����- ��� 4 ��������� ��������
-- �� ����� �� ����� �� ���������� - ��� 2 ���������
  MY_ACTION_HIST_ID_ := ACTION_HIST_ID_;
  if (TABLE_NAME_='OK_PERSONAL')
  and (ACTION_HIST_ID_=2)
  then
    if  (PASS_NUM_OLD_=PASS_NUM_NEW_)
    and (PASS_SERIYA_OLD_=PASS_SERIYA_NEW_)
    then  -- ��� ��������� �������� � ������- ��� 2 ���������
      NOM_UI_:='09_001';
      MY_ACTION_HIST_ID_ := 2;
    else -- ��������� �������� ��� ������- ��� 4 ��������� ��������
      NOM_UI_:='09_012';
      MY_ACTION_HIST_ID_ := 4;
    end if;
  else
    if (TABLE_NAME_='OK_PERSONAL') then NOM_UI_:='09_001'; end if;
    if (TABLE_NAME_='OK_ACADEMIC') then NOM_UI_:='09_001';MY_ACTION_HIST_ID_ := 2; end if;
    if (TABLE_NAME_='OK_DEGREE') then NOM_UI_:='09_001';MY_ACTION_HIST_ID_ := 2; end if;
    if (TABLE_NAME_='OK_PARTY') then NOM_UI_:='09_001';MY_ACTION_HIST_ID_ := 2; end if;
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
--    if (TABLE_NAME_='OK_') then NOM_UI_:='09_012'; end if; ��������� �������� ������� ����
  end if;

  insert into ok_hist(BRANCH,PERSONAL_CODE,V_DATE,INS_DATE,NOM_UI,
         TABLE_NAME,ACTION_HIST_ID,PASS_SERIYA_OLD,PASS_NUM_OLD,PASS_DATE_OLD,
         PASS_SERIYA_NEW,PASS_NUM_NEW,PASS_DATE_NEW
   ) values (BRANCH_,PERSONAL_CODE_,V_DATE_,INS_DATE_,NOM_UI_,
         TABLE_NAME_,MY_action_hist_id_,PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,
         PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_
   );
end;
--
function IS_BOSS_NOW(branch_ OK_period.branch%type,personal_code_ OK_period.personal_code%type) return number
is
  boss_ number(1);
begin
-- 1 ��������� ��� 0 �� ���������
-- ��� ������ � 09_002 - 09_009
  select count(*) into boss_ from ok_personal okp, SS_OK_NCI son
    where okp.branch=okp.branch and okp.STATUS_CODE in (2,5)
     and okp.post_code=son.ok_id and son.NCI_ID=79
     and okp.branch= branch_
     and okp.personal_code= personal_code_;
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
