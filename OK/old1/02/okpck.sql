CREATE OR REPLACE
PACKAGE ok_service is
  Version constant char(12) := '#~04032005~#';
TYPE cur IS REF CURSOR;
-- MODIFICATION HISTORY
-- Person    Date         Comments
-- -------   ----------   ------------------------------------------
-- ildar-y   29-04-2004   Отдел Кадров.Процедуры
--           02-12-2004   OK_SERVICE.GETACADEMICNAME(AC.ACADEMIC_CODE)
--                        appoint_colleague записать в штатное расписание
--           21-02-2005   appoint_colleague_set сохранить в данных сотрудника
procedure CheckTabNo(
  branch_             OK_PERSONAL.BRANCH%type,
  personal_code_      OK_PERSONAL.PERSONAL_CODE%type,
  tabno_      OK_PERSONAL.TabNo%type
);
function GET_QuantityPostReal(Department_CODE_ OK_STAT.department_CODE%type, post_CODE_ OK_STAT.post_CODE%type) return OK_STAT.quantity_post%type;
pragma restrict_references (GET_QuantityPostReal,WNDS,WNPS);
function GET_QuantityPost(Department_CODE_ OK_STAT.department_CODE%type, post_CODE_ OK_STAT.post_CODE%type) return OK_STAT.quantity_post%type;
pragma restrict_references (GET_QuantityPost,WNDS,WNPS);
function GETBANKNAME(bank_id_ S_mfo.bank_id%type) return S_mfo.bank_NAME%type;
pragma restrict_references (GETBANKNAME,WNDS,WNPS);
function isJoin(branch_ ok_personal.branch%type,personal_code_ ok_personal.personal_code%type)
  return integer;
pragma restrict_references (isJoin,WNDS,WNPS);
function appoint_colleague_check(branch_ ok_period.branch%type,personal_code_ ok_period.personal_code%type,appointment_date_ ok_period.in_office_date%type)
  return integer;
pragma restrict_references (appoint_colleague_check,WNDS,WNPS);
function GETACADEMICNAME(CODE_ SS_OK_ACADEMIC.ACADEMIC_CODE%type) return SS_OK_ACADEMIC.ACADEMIC_NAME%type;
pragma restrict_references (GETACADEMICNAME,WNDS,WNPS);
function getarmytype(CODE_ SS_OK_ARMY.ARMY_CODE%type) return SS_OK_ARMY.ARMY_TYPE%type;
pragma restrict_references (getarmytype,WNDS,WNPS);
function GETDEGREENAME(CODE_ SS_OK_DEGREE.DEGREE_CODE%type) return SS_OK_DEGREE.DEGREE_NAME%type;
pragma restrict_references (GETDEGREENAME,WNDS,WNPS);
function getfitnessarmytype(CODE_ SS_OK_FITNESS_ARMY.FITNESS_ARMY_CODE%type) return SS_OK_FITNESS_ARMY.FITNESS_ARMY_TYPE%type;
pragma restrict_references (getfitnessarmytype,WNDS,WNPS);
function GETEDUCATIONNAME(CODE_ SS_OK_EDUCATION.EDUCATION_CODE%type) return SS_OK_EDUCATION.EDUCATION_NAME%type;
pragma restrict_references (GETEDUCATIONNAME,WNDS,WNPS);
function GETBASISNAME(CODE_ SS_OK_BASIS.BASIS_CODE%type) return SS_OK_BASIS.BASIS_NAME%type;
pragma restrict_references (GETBASISNAME,WNDS,WNPS);
function GETINSTITUTIONNAME(CODE_ SS_OK_INSTITUTION.INSTITUTION_CODE%type) return SS_OK_INSTITUTION.INSTITUTION_NAME%type;
pragma restrict_references (GETINSTITUTIONNAME,WNDS,WNPS);
function GETQUALIFICATIONNAME(CODE_ SS_OK_QUALIFICATION.QUALIFICATION_CODE%type) return SS_OK_QUALIFICATION.QUALIFICATION_NAME%type;
pragma restrict_references (GETQUALIFICATIONNAME,WNDS,WNPS);
function GETLANGUAGENAME(CODE_ SS_OK_LANGUAGE.LANGUAGE_CODE%type) return SS_OK_LANGUAGE.LANGUAGE_NAME%type;
pragma restrict_references (GETLANGUAGENAME,WNDS,WNPS);
function GETLEVELNAME(CODE_ SS_OK_LEVEL_LANGUAGE.LEVEL_LANGUAGE_CODE%type) return SS_OK_LEVEL_LANGUAGE.LEVEL_LANGUAGE_NAME%type;
pragma restrict_references (GETLEVELNAME,WNDS,WNPS);
function GETLEAVENAME(CODE_ SS_OK_LEAVE.LEAVE_CODE%type) return SS_OK_LEAVE.LEAVE_NAME%type;
pragma restrict_references (GETLEAVENAME,WNDS,WNPS);
function GETPARTYNAME(CODE_ SS_OK_PARTY.PARTY_CODE%type) return SS_OK_PARTY.PARTY_NAME%type;
pragma restrict_references (GETPARTYNAME,WNDS,WNPS);
function GETPENALTYNAME(CODE_ SS_OK_PENALTY.PENALTY_CODE%type) return SS_OK_PENALTY.PENALTY_NAME%type;
pragma restrict_references (GETPENALTYNAME,WNDS,WNPS);
function GETTYPEPERIODNAME(CODE_ SS_OK_TYPE_PERIOD.TYPE_PERIOD_CODE%type) return SS_OK_TYPE_PERIOD.TYPE_PERIOD_NAME%type;
pragma restrict_references (GETTYPEPERIODNAME,WNDS,WNPS);
function GETARTICLENAME(CODE_ SS_OK_ARTICLE.ARTICLE_CODE%type) return SS_OK_ARTICLE.ARTICLE_NAME%type;
pragma restrict_references (GETARTICLENAME,WNDS,WNPS);
function GETDEPARTMENTNAME(CODE_ SS_OK_DEPARTMENT.DEPARTMENT_CODE%type) return SS_OK_DEPARTMENT.DEPARTMENT_NAME%type;
pragma restrict_references (GETDEPARTMENTNAME,WNDS,WNPS);
function GETBIRTHPLACE(BIRTHPLACE_ OK_PERSONAL.BIRTHPLACE%type,REGION_ID_ OK_PERSONAL.REGION_ID%type,DISTR_ OK_PERSONAL.DISTR%type) return OK_PERSONAL.BIRTHPLACE%type;
pragma restrict_references (GETBIRTHPLACE,WNDS,WNPS);
function GetDepartmentCode(branch_ char, personal_code_ char) return integer;
pragma restrict_references (GetDepartmentCode,WNDS,WNPS);
function GET_DEPARTMENTNAME(CODE_ SS_OK_DEPARTMENT.DEPARTMENT_CODE%type) return SS_OK_DEPARTMENT.DEPARTMENT_NAME%type;
pragma restrict_references (GET_DEPARTMENTNAME,WNDS,WNPS);
function GETDISTRNAME(distr_ S_distr.distr%type) return S_distr.distr_name%type;
pragma restrict_references (GETDISTRNAME,WNDS,WNPS);
function GETEDUCATIONTITLENAME(EDUCATION_TITLE_CODE_ SS_OK_EDUCATION_TITLE.EDUCATION_TITLE_code%type) return SS_OK_EDUCATION_TITLE.EDUCATION_TITLE_name%type;
pragma restrict_references (GETEDUCATIONTITLENAME,WNDS,WNPS);
function GETFAMILYSTATUSNAME(FAMILY_STATUS_CODE_ SS_OK_FAMILY_STATUS.FAMILY_STATUS_code%type) return SS_OK_FAMILY_STATUS.FAMILY_STATUS_name%type;
pragma restrict_references (GETFAMILYSTATUSNAME,WNDS,WNPS);
function GETGENDERNAME(GENDER_CODE_ SS_OK_GENDER.gender_code%type) return SS_OK_GENDER.gender_name%type;
pragma restrict_references (GETGENDERNAME,WNDS,WNPS);
function GETNATIONALITYNAME(NATIONALITY_CODE_ SS_OK_NATIONALITY.NATIONALITY_code%type) return SS_OK_NATIONALITY.NATIONALITY_name%type;
pragma restrict_references (GETNATIONALITYNAME,WNDS,WNPS);
function GetPostCode(branch_ char, personal_code_ char) return integer;
pragma restrict_references (GetPostCode,WNDS,WNPS);
function GET_POSTNAME(post_code_ ss_OK_post.post_code%type) return SS_OK_POST.post_name%type;
pragma restrict_references (GET_POSTNAME,WNDS,WNPS);
function GET_BASEMOVENAME(base_move_code_ ss_ok_base_move.base_move_code%type) return ss_ok_base_move.base_move_name%type;
pragma restrict_references (GET_BASEMOVENAME,WNDS,WNPS);
function GETPROFMEMBERNAME(PROFMEMBER_ SS_OK_PROFMEMBER.PROFMEMBER%type) return SS_OK_PROFMEMBER.PROFMEMBER_name%type;
pragma restrict_references (GETPROFMEMBERNAME,WNDS,WNPS);
function GETREGIONNAME(region_id_ S_region.region_id%type) return S_region.region_nam%type;
pragma restrict_references (GETREGIONNAME,WNDS,WNPS);
function GETREGTYPENAME(REG_TYPE_CODE_ SS_OK_REG_TYPE.REG_TYPE_code%type) return SS_OK_REG_TYPE.REG_TYPE_name%type;
pragma restrict_references (GETREGTYPENAME,WNDS,WNPS);
function GETSTATUSNAME(STATUS_CODE_ SS_OK_STATUS.status_code%type) return SS_OK_STATUS.status_name%type;
pragma restrict_references (GETSTATUSNAME,WNDS,WNPS);
procedure new_colleague(
  id_                 OK_PERSONAL.ID%type := param.getparam('ID'),
  branch_             OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_      OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  colleague_code_     OK_PERSONAL.COLLEAGUE_CODE%type := param.getparam('COLLEAGUE_CODE'),
  status_code_	      OK_PERSONAL.STATUS_CODE%type := param.getparam('STATUS_CODE'),
  family_             OK_PERSONAL.FAMILY%type := param.getparam('FAMILY'),
  first_name_         OK_PERSONAL.FIRST_NAME%type := param.getparam('FIRST_NAME'),
  patronymic_         OK_PERSONAL.PATRONYMIC%type := param.getparam('PATRONYMIC'),
  gender_code_        OK_PERSONAL.GENDER_CODE%type := param.getparam('GENDER_CODE'),
  birthday_           OK_PERSONAL.BIRTHDAY%type := param.getparam('BIRTHDAY'),
  region_id_          OK_PERSONAL.region_id%type := param.getparam('REGION_ID'),
  distr_              OK_PERSONAL.distr%type := param.getparam('DISTR'),
  nationality_code_   OK_PERSONAL.NATIONALITY_CODE%type := param.getparam('NATIONALITY_CODE'),
  family_status_code_ OK_PERSONAL.FAMILY_STATUS_CODE%type := param.getparam('FAMILY_STATUS_CODE'),
  reg_type_code_      OK_PERSONAL.REG_TYPE_CODE%type := param.getparam('REG_TYPE_CODE'),
  home_address_       OK_PERSONAL.HOME_ADDRESS%type := param.getparam('HOME_ADDRESS'),
  home_addressfact_   OK_PERSONAL.HOME_ADDRESSFACT%type := param.getparam('HOME_ADDRESSFACT'),
  pass_seriya_        OK_PERSONAL.PASS_SERIYA%type := param.getparam('PASS_SERIYA'),
  pass_num_           OK_PERSONAL.PASS_NUM%type := param.getparam('PASS_NUM'),
  pass_date_          OK_PERSONAL.PASS_DATE%type := param.getparam('PASS_DATE'),
  pass_reg_           OK_PERSONAL.PASS_REG%type := param.getparam('PASS_REG'),
  record_book_number_ OK_PERSONAL.RECORD_BOOK_NUMBER%type := param.getparam('RECORD_BOOK_NUMBER'),
  record_book_series_ OK_PERSONAL.RECORD_BOOK_SERIES%type := param.getparam('RECORD_BOOK_SERIES'),
  telefon_            OK_PERSONAL.TELEFON%type := param.getparam('TELEFON'),
  emp_code_           OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE'),
  tabno_              OK_PERSONAL.tabno%type := param.getparam('TABNO'),
  education_title_code_ OK_PERSONAL.education_title_code%type := param.getparam('EDUCATION_TITLE_CODE'),
  birthplace_          OK_PERSONAL.birthplace%type := param.getparam('BIRTHPLACE'),
  nn_          OK_PERSONAL.nn%type := param.getparam('NN')
);
procedure SetPostState(
  branch_             OK_POST.BRANCH%type := param.getparam('BRANCH'),
  personal_code_      OK_POST.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE')
);
procedure SendAll;
procedure OKChangePassport(
  branch_             OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_      OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  PASS_NUM_           OK_PERSONAL.PASS_NUM%type := param.getparam('PASS_NUM'),
  PASS_SERIYA_        OK_PERSONAL.PASS_SERIYA%type := param.getparam('PASS_SERIYA'),
  emp_code_           OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
);
procedure OKChangeFIO(
  branch_             OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_      OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  family_             OK_PERSONAL.FAMILY%type := param.getparam('FAMILY'),
  first_name_         OK_PERSONAL.FIRST_NAME%type := param.getparam('FIRST_NAME'),
  patronymic_         OK_PERSONAL.PATRONYMIC%type := param.getparam('PATRONYMIC'),
  change_date_	      OK_CHANGE_FIO.CHANGE_DATE%type := param.getparam('CHANGE_DATE'),
  change_motive_      OK_CHANGE_FIO.CHANGE_MOTIVE%type := param.getparam('CHANGE_MOTIVE'),
  emp_code_           OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
);
procedure dismiss_colleague(
  branch_          OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_   OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  out_office_date_ OK_PERIOD.OUT_OFFICE_DATE%type := param.getparam('OUT_OFFICE_DATE'),
  MOTIVE_DISMISSIAL_CODE_      OK_PERsonal.MOTIVE_DISMISSIAL_CODE%type := param.getparam('MOTIVE_DISMISSIAL_CODE'),
  article_code_    OK_PERIOD.ARTICLE_CODE%type := param.getparam('ARTICLE_CODE'),
  basis_num_       OK_PERIOD.BASIS_NUM%type := param.getparam('BASIS_NUM'),
  basis_date_      OK_PERIOD.BASIS_DATE%type := param.getparam('BASIS_DATE'),
  emp_code_        OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE'),
  office_address_  OK_PERIOD.OFFICE_ADDRESS%type := param.getparam('OFFICE_ADDRESS')
);
procedure appoint_colleague(
  OFFICE_NAME_ OK_Period.OFFICE_NAME%type := param.getparam('OFFICE_NAME'),
  OFFICE_ADDRESS_ OK_Period.OFFICE_ADDRESS%type := param.getparam('OFFICE_ADDRESS'),
  branch_          OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_   OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  department_code_   OK_PERSONAL.department_CODE%type := param.getparam('DEPARTMENT_CODE'),
  post_code_   OK_PERSONAL.post_CODE%type := param.getparam('POST_CODE'),
  IN_OFFICE_DATE_   OK_PERIOD.IN_OFFICE_DATE%type := param.getparam('IN_OFFICE_DATE'),
  base_move_code_ OK_period.base_move_code%type := param.getparam('BASE_MOVE_CODE'),
  basis_num_   OK_Period.BASIS_NUM%type := param.getparam('BASIS_NUM'),
  basis_date_  OK_Period.BASIS_DATE%type := param.getparam('BASIS_DATE'),
  status_code_   OK_PERSONAL.status_CODE%type := param.getparam('STATUS_CODE'),
  ARTICLE_CODE_ OK_PERIOD.ARTICLE_CODE%type := param.getparam('ARTICLE_CODE'),
  emp_code_        OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
);
procedure appoint_colleague_set(
  branch_          OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_   OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  appointment_date_   OK_POST.APPOINTMENT_DATE%type := param.getparam('APPOINTMENT_DATE'),
  appointment_motive_ OK_POST.APPOINTMENT_MOTIVE%type := param.getparam('APPOINTMENT_MOTIVE'),
  department_code_    OK_POST.DEPARTMENT_CODE%type := param.getparam('DEPARTMENT_CODE'),
  post_code_   OK_POST.POST_CODE%type := param.getparam('POST_CODE'),
  grade_       OK_POST.GRADE%type := param.getparam('GRADE'),
  salary_fact_ OK_POST.SALARY_FACT%type := param.getparam('SALARY_FACT'),
  raise_personal_ OK_POST.RAISE_PERSONAL%type := param.getparam('RAISE_PERSONAL'),
  raise_add_   OK_POST.RAISE_ADD%type := param.getparam('RAISE_ADD'),
  basis_num_   OK_POST.BASIS_NUM%type := param.getparam('BASIS_NUM'),
  basis_date_  OK_POST.BASIS_DATE%type := param.getparam('BASIS_DATE'),
  emp_code_        OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
);
procedure CalcDate(begin_date_ date,
				   end_date_ date,
				   stag_day in out integer,
				   stag_month in out integer,
				   stag_year in out integer
);
END; -- Package spec
/


CREATE OR REPLACE
PACKAGE BODY ok_service IS
  Version constant char(12) := '#~04032005~#';
-- Person      Date         Comments
-- ---------   ----------   ----------------------------------------
-- ildar-y     29-04-2004   Отдел Кадров.Процедуры
--
function GET_QuantityPostReal(Department_CODE_ OK_STAT.department_CODE%type, post_CODE_ OK_STAT.post_CODE%type) return OK_STAT.quantity_post%type
is
quantity_ OK_STAT.quantity_post%type;
begin
  select count(*) into quantity_
  from ok_personal
  where department_code= department_code_
  and post_code = post_code_
  and status_code=2;
  return quantity_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 0;
end;
--
function GET_QuantityPost(Department_CODE_ OK_STAT.department_CODE%type, post_CODE_ OK_STAT.post_CODE%type) return OK_STAT.quantity_post%type
is
quantity_ OK_STAT.quantity_post%type;
begin
  select quantity_post into quantity_
  from ok_stat
  where department_code= department_code_
  and post_code = post_code_;
  return quantity_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN -1;
end;
--
function GETACADEMICNAME(CODE_ SS_OK_ACADEMIC.ACADEMIC_CODE%type) return SS_OK_ACADEMIC.ACADEMIC_NAME%type
is
name_ SS_OK_ACADEMIC.ACADEMIC_name%type;
begin
  select ACADEMIC_name into name_
  from ss_ok_ACADEMIC
  where ACADEMIC_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-----------------
function GETBankNAME(bank_id_ S_mfo.bank_id%type) return S_mfo.bank_NAME%type
is
name_ S_mfo.bank_NAME%type;
begin
  select bank_name into name_
  from s_mfo
  where bank_id= bank_id_
  and act='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'мфо '||bank_id_||' не найдено в справочнике s_mfo';
end;
--------------
function getarmytype(CODE_ SS_OK_ARMY.ARMY_CODE%type) return SS_OK_ARMY.ARMY_TYPE%type
is
name_ SS_OK_ARMY.ARMY_TYPE%type;
begin
  select ARMY_TYPE into name_
  from ss_ok_ARMY
  where ARMY_code=code_;
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-------------------------------
function GETARTICLENAME(CODE_ SS_OK_ARTICLE.ARTICLE_CODE%type) return SS_OK_ARTICLE.ARTICLE_NAME%type
is
name_ SS_OK_ARTICLE.ARTICLE_name%type;
begin
  select ARTICLE_name into name_
  from ss_ok_ARTICLE
  where ARTICLE_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-------------------------------
function GETBASISNAME(CODE_ SS_OK_BASIS.BASIS_CODE%type) return SS_OK_BASIS.BASIS_NAME%type
is
name_ SS_OK_BASIS.BASIS_name%type;
begin
  select BASIS_name into name_
  from ss_ok_BASIS
  where BASIS_code=code_;
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-------------------------------
function GETDEGREENAME(CODE_ SS_OK_DEGREE.DEGREE_CODE%type) return SS_OK_DEGREE.DEGREE_NAME%type
is
name_ SS_OK_DEGREE.DEGREE_name%type;
begin
  select DEGREE_name into name_
  from ss_ok_DEGREE
  where DEGREE_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-------------------------------
function GETDEPARTMENTNAME(CODE_ SS_OK_DEPARTMENT.DEPARTMENT_CODE%type) return SS_OK_DEPARTMENT.DEPARTMENT_NAME%type
is
name_ SS_OK_DEPARTMENT.DEPARTMENT_name%type;
begin
  select DEPARTMENT_name into name_
  from ss_ok_DEPARTMENT
  where DEPARTMENT_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-------------------------------
function GETEDUCATIONNAME(CODE_ SS_OK_EDUCATION.EDUCATION_CODE%type) return SS_OK_EDUCATION.EDUCATION_NAME%type
is
name_ SS_OK_EDUCATION.EDUCATION_name%type;
begin
  select EDUCATION_name into name_
  from ss_ok_EDUCATION
  where EDUCATION_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-------------------------------
function getfitnessarmytype(CODE_ SS_OK_FITNESS_ARMY.FITNESS_ARMY_CODE%type) return SS_OK_FITNESS_ARMY.FITNESS_ARMY_TYPE%type
is
name_ SS_OK_FITNESS_ARMY.FITNESS_ARMY_TYPE%type;
begin
  select FITNESS_ARMY_TYPE into name_
  from ss_ok_FITNESS_ARMY
  where FITNESS_ARMY_code=code_;
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-------------------------------
function GETINSTITUTIONNAME(CODE_ SS_OK_INSTITUTION.INSTITUTION_CODE%type) return SS_OK_INSTITUTION.INSTITUTION_NAME%type
is
name_ SS_OK_INSTITUTION.INSTITUTION_name%type;
begin
  select INSTITUTION_name into name_
  from ss_ok_INSTITUTION
  where INSTITUTION_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-------------------------------
function GETLANGUAGENAME(CODE_ SS_OK_LANGUAGE.LANGUAGE_CODE%type) return SS_OK_LANGUAGE.LANGUAGE_NAME%type
is
name_ SS_OK_LANGUAGE.LANGUAGE_name%type;
begin
  select LANGUAGE_name into name_
  from ss_ok_LANGUAGE
  where LANGUAGE_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-------------------------------
function GETLEAVENAME(CODE_ SS_OK_LEAVE.LEAVE_CODE%type) return SS_OK_LEAVE.LEAVE_NAME%type
is
name_ SS_OK_LEAVE.LEAVE_name%type;
begin
  select LEAVE_name into name_
  from ss_ok_LEAVE
  where LEAVE_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-------------------------------
function GETLEVELNAME(CODE_ SS_OK_LEVEL_LANGUAGE.LEVEL_LANGUAGE_CODE%type) return SS_OK_LEVEL_LANGUAGE.LEVEL_LANGUAGE_NAME%type
is
name_ SS_OK_LEVEL_LANGUAGE.LEVEL_LANGUAGE_name%type;
begin
  select level_LANGUAGE_name into name_
  from ss_ok_LEVEL_LANGUAGE
  where level_LANGUAGE_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-------------------------------
function GETPARTYNAME(CODE_ SS_OK_PARTY.PARTY_CODE%type) return SS_OK_PARTY.PARTY_NAME%type
is
name_ SS_OK_PARTY.PARTY_name%type;
begin
  select PARTY_name into name_
  from ss_ok_PARTY
  where PARTY_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-------------------------------
function GETPENALTYNAME(CODE_ SS_OK_PENALTY.PENALTY_CODE%type) return SS_OK_PENALTY.PENALTY_NAME%type
is
name_ SS_OK_PENALTY.PENALTY_name%type;
begin
  select PENALTY_name into name_
  from ss_ok_PENALTY
  where PENALTY_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-------------------------------
function GETQUALIFICATIONNAME(CODE_ SS_OK_QUALIFICATION.QUALIFICATION_CODE%type) return SS_OK_QUALIFICATION.QUALIFICATION_NAME%type
is
name_ SS_OK_QUALIFICATION.QUALIFICATION_name%type;
begin
  select QUALIFICATION_name into name_
  from ss_ok_QUALIFICATION
  where QUALIFICATION_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-------------------------------
function GETTYPEPERIODNAME(CODE_ SS_OK_TYPE_PERIOD.TYPE_PERIOD_CODE%type) return SS_OK_TYPE_PERIOD.TYPE_PERIOD_NAME%type
is
name_ SS_OK_TYPE_PERIOD.TYPE_PERIOD_name%type;
begin
  select TYPE_PERIOD_name into name_
  from ss_ok_TYPE_PERIOD
  where TYPE_PERIOD_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-------------------------------
/*
function GETNAME(CODE_ SS_OK_._code%type) return SS_OK_._name%type
is
name_ SS_OK_._name%type;
begin
  select _name into name_
  from ss_ok_
  where _code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-------------------------------
function GETNAME(CODE_ SS_OK_._code%type) return SS_OK_._name%type
is
name_ SS_OK_._name%type;
begin
  select _name into name_
  from ss_ok_
  where _code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
*/
-------------------------------
-------------------------------
function GETBIRTHPLACE(BIRTHPLACE_ OK_PERSONAL.BIRTHPLACE%type,REGION_ID_ OK_PERSONAL.REGION_ID%type,DISTR_ OK_PERSONAL.DISTR%type) return OK_PERSONAL.BIRTHPLACE%type
is
BIRTHPLACE_NAME_ OK_PERSONAL.BIRTHPLACE%type;
begin
  if BIRTHPLACE_ is null
  then
--raise_application_error(-20000,'BIRTHPLACE_ = null' );
    BIRTHPLACE_NAME_:= substr(getregionname(REGION_ID_)||','||getdistrname(DISTR_),1,250);
  else
--raise_application_error(-20000,'BIRTHPLACE_ не null' );
    BIRTHPLACE_NAME_:= BIRTHPLACE_;
  end if;
  return BIRTHPLACE_NAME_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
--function OK_SERVICE.GETBIRTHPLACE(PP.BIRTHPLACE,PP.REGION_ID,PP.DISTR)','C','Место рождения','Место рождения(обл+город или не Узбекистан)',3,null,null);
function GET_DEPARTMENTNAME(CODE_ SS_OK_DEPARTMENT.DEPARTMENT_CODE%type) return SS_OK_DEPARTMENT.DEPARTMENT_NAME%type
is
name_ SS_OK_DEPARTMENT.DEPARTMENT_name%type;
begin
  select DEPARTMENT_name into name_
  from ss_ok_DEPARTMENT
  where DEPARTMENT_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
function GET_POSTNAME(post_code_ ss_OK_post.post_code%type) return SS_OK_POST.post_name%type
is
post_name_ SS_OK_POST.post_name%type;
begin
  SELECT d.post_name into post_name_
                 from ss_ok_post d
                 where d.post_code= post_code_
                 and d.state_notes like 'A';
  return post_name_;
  EXCEPTION when no_data_found
  then
    RETURN 'нет в справочнике "Должности"!';
end;
function GET_BASEMOVENAME(base_move_code_ ss_ok_base_move.base_move_code%type) return ss_ok_base_move.base_move_name%type
is
base_move_name_ ss_ok_base_move.base_move_name%type;
begin
  SELECT d.base_move_name into base_move_name_
                 from ss_ok_base_move d
                 where d.base_move_code= base_move_code_
                 and d.state_notes like 'A';
  return base_move_name_;
  EXCEPTION when no_data_found
  then
    RETURN 'нет в справочнике "Основание перемещения"!';
end;
function GETGENDERNAME(GENDER_CODE_ SS_OK_GENDER.gender_code%type) return SS_OK_GENDER.gender_name%type
is
gender_name_ SS_OK_GENDER.gender_name%type;
begin
  select gender_name into gender_name_
  from ss_ok_gender
  where gender_code=gender_code_;
  return gender_name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
--function OK_SERVICE.GETGENDERNAME(PP.GENDER_CODE)','C','Пол','Пол',1,null,
--'select to_char(gender_code) id,gender_name name from ss_ok_gender');
function GETREGIONNAME(region_id_ S_region.region_id%type) return S_region.region_nam%type
is
region_nam_ S_region.region_nam%type;
begin
  select region_nam into region_nam_
  from s_region
  where region_id=region_id_;
  return region_nam_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
--function OK_SERVICE.GETREGIONNAME(PP.REGION_ID)','C','Место рождения (область)','Место рождения область',2,null,
--'select region_id id,region_nam name from s_region');
function GETDISTRNAME(distr_ S_distr.distr%type) return S_distr.distr_name%type
is
distr_name_ S_distr.distr_name%type;
begin
  select distr_name into distr_name_
  from s_distr
  where distr=distr_;
  return distr_name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
--function OK_SERVICE.GETDISTRNAME(PP.DISTR)','C','Место рождения город','Место рождения (город)',3,null,
--'select distr id, distr_name name from s_distr');
function GETNATIONALITYNAME(NATIONALITY_CODE_ SS_OK_NATIONALITY.NATIONALITY_code%type) return SS_OK_NATIONALITY.NATIONALITY_name%type
is
NATIONALITY_name_ SS_OK_NATIONALITY.NATIONALITY_name%type;
begin
  select NATIONALITY_name into NATIONALITY_name_
  from ss_ok_NATIONALITY
  where NATIONALITY_code=NATIONALITY_code_
  and state_notes='A';
  return NATIONALITY_name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
--function OK_SERVICE.GETNATIONALITYNAME(PP.NATIONALITY_CODE)','C','Национальность','Национальность',3,null,'select to_char(nationality_code) id, nationality_name name from ss_ok_nationality');
function GETFAMILYSTATUSNAME(FAMILY_STATUS_CODE_ SS_OK_FAMILY_STATUS.FAMILY_STATUS_code%type) return SS_OK_FAMILY_STATUS.FAMILY_STATUS_name%type
is
FAMILY_STATUS_name_ SS_OK_FAMILY_STATUS.FAMILY_STATUS_name%type;
begin
  select FAMILY_STATUS_name into FAMILY_STATUS_name_
  from SS_OK_FAMILY_STATUS
  where FAMILY_STATUS_code= FAMILY_STATUS_code_;
  return FAMILY_STATUS_name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
--function OK_SERVICE.GETFAMILYSTATUSNAME(PP.FAMILY_STATUS_CODE)','C','Семейное положение','Семейное положение',1,null,'select family_status_code id, family_status_name name from ss_ok_family_status');
function GETREGTYPENAME(REG_TYPE_CODE_ SS_OK_REG_TYPE.REG_TYPE_code%type) return SS_OK_REG_TYPE.REG_TYPE_name%type
is
REG_TYPE_name_ SS_OK_REG_TYPE.REG_TYPE_name%type;
begin
  select REG_TYPE_name into REG_TYPE_name_
  from SS_OK_REG_TYPE
  where REG_TYPE_code=REG_TYPE_code_;
  return REG_TYPE_name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
--function OK_SERVICE.GETREGTYPENAME(PP.REG_TYPE_CODE)','C','Тип прописки','Тип прописки',1,null,'select reg_type_code id, reg_type_name name from ss_ok_reg_type');
function GETPROFMEMBERNAME(PROFMEMBER_ SS_OK_PROFMEMBER.PROFMEMBER%type) return SS_OK_PROFMEMBER.PROFMEMBER_name%type
is
  PROFMEMBER_name_ SS_OK_PROFMEMBER.PROFMEMBER_name%type;
begin
  select PROFMEMBER_name into PROFMEMBER_name_
    from SS_OK_PROFMEMBER
   where PROFMEMBER = PROFMEMBER_;
  return PROFMEMBER_name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
--function OK_SERVICE.GETPROFMEMBERNAME(PP.PROFMEMBER)','C','Профсоюз','Профсоюз',5,null,'select ''0'' id, ''ДА'' name from dual inion all select ''1'' id, ''НЕТ'' name from dual');
function GETEDUCATIONTITLENAME(EDUCATION_TITLE_CODE_ SS_OK_EDUCATION_TITLE.EDUCATION_TITLE_code%type) return SS_OK_EDUCATION_TITLE.EDUCATION_TITLE_name%type
is
  EDUCATION_TITLE_name_ SS_OK_EDUCATION_TITLE.EDUCATION_TITLE_name%type;
begin
  select EDUCATION_TITLE_name into EDUCATION_TITLE_name_
    from SS_OK_EDUCATION_TITLE
   where EDUCATION_TITLE_code = EDUCATION_TITLE_code_
   and state_notes='A';
  return EDUCATION_TITLE_name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
--function OK_SERVICE.GETEDUCATIONTITLENAME(PP.EDUCATION_TITLE_CODE)','C','Образование','Образование',3,null,'select to_char (EDUCATION_TITLE_CODE) id, EDUCATION_TITLE_NAME name from SS_OK_EDUCATION_TITLE');
function GETSTATUSNAME(STATUS_CODE_ SS_OK_STATUS.status_code%type) return SS_OK_STATUS.status_name%type
is
  status_name_ SS_OK_STATUS.status_name%type;
begin
  select status_name into status_name_
    from SS_OK_STATUS
   where status_code = status_code_;
  return status_name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
procedure CheckTabNo(
  branch_             OK_PERSONAL.BRANCH%type,
  personal_code_      OK_PERSONAL.PERSONAL_CODE%type,
  tabno_      OK_PERSONAL.TabNo%type
)
is
 old_tabno OK_PERSONAL.TabNo%type;
 count_tabno integer;
begin
  begin
    select tabno into old_tabno
    from ok_personal
    where branch=branch_
    and personal_code=personal_code_
    and status_code=2;
  EXCEPTION when NO_DATA_FOUND then
    old_tabno := null;
  end;
  if (old_tabno is null)
  or (old_tabno <> tabno_)
  then
    select count(tabno) into count_tabno
    from ok_personal
    where branch=branch_
    and tabno=tabno_
    and status_code=2;
    if count_tabno<>0
    then
      raise_application_error( -20000, 'Табельный номер:'|| tabno_ ||' уже используется !');
    end if;
  end if;
end;
-- если id is null то Новый(actSaveNew)  сотрудник
-- иначе Известный(actSaveExist) сотрудник
procedure new_colleague(
  id_                 OK_PERSONAL.ID%type := param.getparam('ID'),
  branch_             OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_      OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  colleague_code_     OK_PERSONAL.COLLEAGUE_CODE%type := param.getparam('COLLEAGUE_CODE'),
  status_code_	      OK_PERSONAL.STATUS_CODE%type := param.getparam('STATUS_CODE'),
  family_             OK_PERSONAL.FAMILY%type := param.getparam('FAMILY'),
  first_name_         OK_PERSONAL.FIRST_NAME%type := param.getparam('FIRST_NAME'),
  patronymic_         OK_PERSONAL.PATRONYMIC%type := param.getparam('PATRONYMIC'),
  gender_code_        OK_PERSONAL.GENDER_CODE%type := param.getparam('GENDER_CODE'),
  birthday_           OK_PERSONAL.BIRTHDAY%type := param.getparam('BIRTHDAY'),
  region_id_          OK_PERSONAL.region_id%type := param.getparam('REGION_ID'),
  distr_              OK_PERSONAL.distr%type := param.getparam('DISTR'),
  nationality_code_   OK_PERSONAL.NATIONALITY_CODE%type := param.getparam('NATIONALITY_CODE'),
  family_status_code_ OK_PERSONAL.FAMILY_STATUS_CODE%type := param.getparam('FAMILY_STATUS_CODE'),
  reg_type_code_      OK_PERSONAL.REG_TYPE_CODE%type := param.getparam('REG_TYPE_CODE'),
  home_address_       OK_PERSONAL.HOME_ADDRESS%type := param.getparam('HOME_ADDRESS'),
  home_addressfact_   OK_PERSONAL.HOME_ADDRESSFACT%type := param.getparam('HOME_ADDRESSFACT'),
  pass_seriya_        OK_PERSONAL.PASS_SERIYA%type := param.getparam('PASS_SERIYA'),
  pass_num_           OK_PERSONAL.PASS_NUM%type := param.getparam('PASS_NUM'),
  pass_date_          OK_PERSONAL.PASS_DATE%type := param.getparam('PASS_DATE'),
  pass_reg_           OK_PERSONAL.PASS_REG%type := param.getparam('PASS_REG'),
  record_book_number_ OK_PERSONAL.RECORD_BOOK_NUMBER%type := param.getparam('RECORD_BOOK_NUMBER'),
  record_book_series_ OK_PERSONAL.RECORD_BOOK_SERIES%type := param.getparam('RECORD_BOOK_SERIES'),
  telefon_            OK_PERSONAL.TELEFON%type := param.getparam('TELEFON'),
  emp_code_           OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE'),
  tabno_              OK_PERSONAL.tabno%type := param.getparam('TABNO'),
  education_title_code_ OK_PERSONAL.education_title_code%type := param.getparam('EDUCATION_TITLE_CODE'),
  birthplace_          OK_PERSONAL.birthplace%type := param.getparam('BIRTHPLACE'),
  NN_          OK_PERSONAL.nn%type := param.getparam('NN')
)
IS
  OldId_  ok_personal.id%type;
  OutId_  ok_personal.id%type;
  in_personal_code_      OK_PERSONAL.PERSONAL_CODE%type;
  in_tabno_      OK_PERSONAL.tabno%type;
  in_birthplace_           OK_PERSONAL.birthplace%type ;
  in_region_id_          OK_PERSONAL.region_id%type ;
  in_distr_              OK_PERSONAL.distr%type ;
  function isNew
  return boolean is begin
       select /*+ index ( c ok_personal_passport)*/ c.id into oldId_
       from ok_personal c where c.pass_num = pass_num_ and upper(c.pass_seriya) = upper( trim( pass_seriya_)) and  rownum=1;
       raise_application_error( -20000, 'Сотрудник с паспортом серия:'|| pass_seriya_ ||' номер:'|| pass_num_||' уже зарегистрирован в подсистеме ОК!');
  exception when no_data_found then return true;
  end isNew;
--  function isNewNN
--  return boolean is begin
--       select c.id into oldId_
--       from ok_personal c where c.NN = NN_ and rownum=1;
--       raise_application_error( -20000, 'Сотрудник с порядковым номером:'|| nn_ ||' уже зарегистрирован в подсистеме ОК!');
--  exception when no_data_found then return true;
--  end isNewNN;
BEGIN
-- raise_application_error( -20000, 'Сотрудник:'|| emp_code_ ||'  !');
--raise_application_error( -20000, 'Сотрудник:'|| param.getparam('EMP_CODE') ||'  !');
  if not isnew
  then
       raise_application_error( -20000, 'Сотрудник с паспортом серия:'|| pass_seriya_ ||' номер:'|| pass_num_||' уже зарегистрирован в подсистеме ОК!');
  end if;
--
--  if not isnewNN
--  then
--       raise_application_error( -20000, 'Сотрудник с порядковым номером:'|| nn_ ||' уже зарегистрирован в подсистеме ОК!');
--  end if;
--
  if birthday_ >= pass_date_ then
    raise_application_error( -20000, 'Дата рождения ('|| to_char( birthday_, 'dd/mm/yyyy')||') больше даты выдачи паспорта ('|| to_char( pass_date_, 'dd/mm/yyyy')||')!!!');
  elsif birthday_ >= info.getday then
    raise_application_error( -20000, 'Дата рождения ('|| to_char( birthday_, 'dd/mm/yyyy')||') больше даты опер.дня ('|| to_char( info.getday, 'dd/mm/yyyy')||')!!!');
  elsif pass_date_ >= info.getday then
    raise_application_error( -20000, 'Дата выдачи паспорта ('|| to_char( pass_date_, 'dd/mm/yyyy')||') больше даты опер.дня ('|| to_char( sd_input.oper_date, 'dd/mm/yyyy')||')!!!');
  end if;
--ID, BRANCH	,PERSONAL_CODE ,COLLEAGUE_CODE	,FAMILY,FIRST_NAME,PATRONYMIC,GENDER_CODE,BIRTHDAY	,BIRTHPLACE,NATIONALITY_CODE,FAMILY_STATUS_CODE,REG_TYPE_CODE	,HOME_ADDRESS,HOME_ADDRESSFACT,PASS_SERIYA,PASS_NUM,PASS_DATE,PASS_REG,RECORD_BOOK_NUMBER,RECORD_
--BOOK_SERIES,TELEFON,EMP_CODE,INS_DATE
     if tabno_ is null or tabno_=0 then
        select max(tabno)+1 into in_tabno_ from ok_personal;
      else
        in_tabno_ := tabno_;
     end if;
     if in_tabno_ is null then
        in_tabno_ := 1;
     end if;
     if personal_code_ is null or personal_code_=0 then
        select max(personal_code)+1 into in_personal_code_ from ok_personal;
      else
        in_personal_code_ := personal_code_;
     end if;
     if in_personal_code_ is null then
        in_personal_code_ := 1;
     end if;
     checktabno(branch_,in_personal_code_,in_tabno_);
  param.setparam('ID',Id_);
  if id_ is null then
    if isNew then
      if birthplace_ = '0'
      then in_birthplace_ := null;
      else in_birthplace_ := birthplace_ ;
      end if;
      if region_id_ = '00'
      then in_region_id_ := null;
      else in_region_id_ := region_id_ ;
      end if;
      if distr_ = '000'
      then in_distr_ := null;
      else in_distr_ := distr_ ;
      end if;
      select SEQ_OK_personal.Nextval into OutId_ from dual;
      insert into OK_personal
           (ID, BRANCH, PERSONAL_CODE, COLLEAGUE_CODE, STATUS_CODE, FAMILY, FIRST_NAME, PATRONYMIC, GENDER_CODE, BIRTHDAY,
            region_id, distr,
             NATIONALITY_CODE, FAMILY_STATUS_CODE, REG_TYPE_CODE, HOME_ADDRESS, HOME_ADDRESSFACT,
            PASS_SERIYA, PASS_NUM, PASS_DATE, PASS_REG, RECORD_BOOK_NUMBER, RECORD_BOOK_SERIES, TELEFON,
            EMP_CODE,INS_DATE,tabno,education_title_code, birthplace,nn)
      values (OutID_, BRANCH_, in_personal_code_, COLLEAGUE_CODE_, STATUS_CODE_, upper( trim( FAMILY_)), upper( trim( FIRST_NAME_)),
            upper( trim(  PATRONYMIC_)), GENDER_CODE_, BIRTHDAY_,
            in_region_id_, in_distr_,
            NATIONALITY_CODE_,
            FAMILY_STATUS_CODE_, REG_TYPE_CODE_, HOME_ADDRESS_, HOME_ADDRESSFACT_, upper( trim( PASS_SERIYA_)),
            PASS_NUM_, PASS_DATE_, PASS_REG_, RECORD_BOOK_NUMBER_, RECORD_BOOK_SERIES_, TELEFON_,
            EMP_CODE_, sysdate, in_tabno_,education_title_code_,in_birthplace_, nn_);
    end if;
  else
    for r in( select /*+ index_desc (c ok_personal_pk )*/ cr.rowId, cr.* from  ok_personal cr
              where cr.branch = branch_ and cr.id = id_)
    loop
-- изменение ФИО фиксируется отдельно, здесь можно исправить опечатки в написании ФИО
      update /*+ index_desc (c ok_personal_uk )*/  ok_personal c
       set c.family = upper( trim( FAMILY_)), c.first_name = upper( trim( FIRST_NAME_)),
           c.patronymic = upper( trim(  PATRONYMIC_)), c.gender_code = GENDER_CODE_, c.birthday = BIRTHDAY_,
           c.region_id =  in_region_id_,
           c.distr = in_distr_,
           c.nationality_code = NATIONALITY_CODE_,
           c.family_status_code = FAMILY_STATUS_CODE_, c.reg_type_code = REG_TYPE_CODE_,
           c.home_address = HOME_ADDRESS_, c.home_addressfact = HOME_ADDRESSFACT_,
           c.pass_seriya = upper( trim( PASS_SERIYA_)), c.pass_num = PASS_NUM_, c.pass_date = PASS_DATE_,
           c.pass_reg = PASS_REG_, c.record_book_number = RECORD_BOOK_NUMBER_,
           c.record_book_series = RECORD_BOOK_SERIES_, c.telefon = TELEFON_,
           c.status_code = STATUS_CODE_,
           c.emp_code = EMP_CODE_, c.ins_date = sysdate,
           c.tabno =in_tabno_,
           c.education_title_code =education_title_code_,
           c.birthplace = in_birthplace_,
           c.nn = nn_
      where c.branch = branch_ and c.id = id_;
      OutId_ := id_;
    end loop;
  end if;
  param.setparam('ID',OutId_);
END; -- new_colleague
procedure SetPostState(
  branch_             OK_POST.BRANCH%type := param.getparam('BRANCH'),
  personal_code_      OK_POST.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE')
)
is
 app_date_  ok_post.appointment_date%type;
BEGIN
-- УЖЕ НЕ ИСПОЛЬЗУЕТСЯ
-- SetPostState(personal_code,branch)
-- работает с таблицей OK_POST (назначения и перемещения)
-- 1)устанавливает 'A'-запись сотрудника в состояние 'P'
-- 2)устанавливает в состояние 'A' последнюю по дате запись сотрудника
-- это используется при поиске сотрудников в данной должности, отделе
  NULL;
-- update ok_post set state='P'
--  where branch = branch_
--    and personal_code = personal_code_
--    and state= 'A';
-- select max(appointment_date) into app_date_
--   from ok_post
--  where branch = branch_
--    and personal_code = personal_code_;
-- update ok_post set state='A'
--  where appointment_date = app_date_
--    and branch = branch_
--    and personal_code = personal_code_;
END;
procedure SendAll
is
BASIS_CODE_ 	NUMBER(1);
BEGIN
  delete from ok_send_all;
--  insert into ok_send_all (a) select 'a' from dual;
  insert into ok_send_all (branch,personal_code, a,b,c,d, f,g,h,i,j,k,l,bb, ia)
  select okp.branch, okp.personal_code, okp.branch a, okp.family b, okp.first_name c, okp.patronymic d , okp.pass_seriya||okp.pass_num f,
         okp.pass_reg g, to_char(okp.birthday,'dd.mm.yyyy') h, okp.distr i, okp.nationality_code j,
         okp.home_address k, okp.telefon l, okp.profmember, okp.birthplace
  from ok_personal okp
  where status_code=2;
--e код должности
-- ok_post.post_code // where (ok_personal.personal_code = ok_post.personal_code) and (ok_personal.branch = ok_post.branch) and state='A'
  for r1 in (select branch, personal_code, post_code e
        from ok_post where state='A')
  loop
    update ok_send_all set e = r1.e
     where branch = r1.branch
       and personal_code = r1.personal_code;
  end loop;
--m код пртии
-- ok_party.party_code // where (ok_personal.personal_code = ok_party.personal_code) and (ok_personal.branch = ok_party.branch) and party_outdate is null
--n дата вступл в партию
-- ok_party.party_date // ^
  for r2 in (select branch, personal_code, party_code m, party_date n
        from ok_party where party_outdate is null)
  loop
    update ok_send_all set m = r2.m, n= to_char(r2.n)
     where branch = r2.branch
       and personal_code = r2.personal_code;
  end loop;
--o код образования
-- ok_education.education_code
--p ВУЗ год оконч// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch)
-- ok_education.end_date
-- наим ВУЗа
-- ok_education.institution_code (ss_ok_institution.institution_name)
-- спец по диплому
-- ok_education.profession_personal
--q текущее обучение (нет курса и фака)
-- ok_education.end_date is null
  basis_code_ := 2;
--         1 Базовое
--         2 Другое
  for r3 in (select a.branch, a.personal_code, a.education_code o, a.end_date,
    b.institution_name||' '||a.profession_personal pq, a.basis_code
        from ok_education a, ss_ok_institution b where a.institution_code = b.institution_code)
  loop
    if r3.basis_code = 1
    then  basis_code_ := 1;
    end if;
    if r3.end_date is null
    then
             update ok_send_all set o = o||';'||r3.o, q= q||';'||r3.pq, r =  basis_code_
              where branch = r3.branch
                and personal_code = r3.personal_code
                and o is not null;
             update ok_send_all set o = r3.o, q= r3.pq
              where branch = r3.branch
                and personal_code = r3.personal_code
                and o is null;
    else
             update ok_send_all set o = o||';'||r3.o, p= p||';'||to_char(r3.end_date)||' '||r3.pq, r =  basis_code_
              where branch = r3.branch
                and personal_code = r3.personal_code
                and o is not null;
             update ok_send_all set o = r3.o, p= to_char(r3.end_date)||' '||r3.pq
              where branch = r3.branch
                and personal_code = r3.personal_code
                and o is null;
    end if;
  end loop;
-- ученая степень// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch) and state='A'
-- ok_degree.degree_code
  for r4 in (select branch, personal_code, degree_code s
        from ok_degree where state='A')
  loop
    update ok_send_all set s = r4.s
     where branch = r4.branch
       and personal_code = r4.personal_code;
  end loop;
-- ученое звание// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch) and state='A'
-- ok_academic.academic_code
  for r5 in (select branch, personal_code, academic_code t
        from ok_academic where state='A')
  loop
    update ok_send_all set t = r5.t
     where branch = r5.branch
       and personal_code = r5.personal_code;
  end loop;
-- язык// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch) and state='A'
-- ok_language.language_code
  for r6 in (select branch, personal_code, language_code u
        from ok_language where state='A')
  loop
    update ok_send_all set u = r6.u
     where branch = r6.branch
       and personal_code = r6.personal_code;
  end loop;
-- награды// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch)
-- ok_award.award_date
-- ok_award.award_info
  for r7 in (select branch, personal_code, award_date v1, award_info v2
        from ok_award)
  loop
    update ok_send_all set v = v||';'||to_char(r7.v1)||' '||r7.v2
     where branch = r7.branch
       and personal_code = r7.personal_code
       and v is not null;
    update ok_send_all set v = to_char(r7.v1)||' '||r7.v2
     where branch = r7.branch
       and personal_code = r7.personal_code
       and v is null;
  end loop;
-- избрание// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch)
-- ok_election.election_post
-- ok_election.election_date_begin
-- ok_election.election_date_end
  for r8 in (select branch, personal_code, election_date_begin w1, election_date_end w2, election_post w3
        from ok_election)
  loop
    update ok_send_all set w = w||';'||to_char(r8.w1)||'-'||to_char(r8.w2)||' '||r8.w3
     where branch = r8.branch
       and personal_code = r8.personal_code
       and w is not null;
    update ok_send_all set w = to_char(r8.w1)||'-'||to_char(r8.w2)||' '||r8.w3
     where branch = r8.branch
       and personal_code = r8.personal_code
       and w is null;
  end loop;
-- трудовая деятельность// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch)
-- ok_period.IN_OFFICE_DATE
-- ok_period.OUT_OFFICE_DATE
-- ok_period.OFFICE_NAME
-- ok_period.ESTABLISHED_POST
  for r9 in (select branch, personal_code,  IN_OFFICE_DATE x1, OUT_OFFICE_DATE x2, OFFICE_NAME x3, ESTABLISHED_POST x4
        from ok_period)
  loop
    update ok_send_all set x = x||';'||to_char(r9.x1,'dd.mm.yyyy')||'-'||to_char(r9.x2,'dd.mm.yyyy')||' '||r9.x3||' '||r9.x4
     where branch = r9.branch
       and personal_code = r9.personal_code
       and x is not null;
    update ok_send_all set x = to_char(r9.x1,'dd.mm.yyyy')||'-'||to_char(r9.x2,'dd.mm.yyyy')||' '||r9.x3||' '||r9.x4
     where branch = r9.branch
       and personal_code = r9.personal_code
       and x is null;
  end loop;
--y родственники// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch)
-- ok_relation.RELATION_BIRTHDAY
-- ok_relation.RELATION_OFFICE
-- ok_relation.RELATION_HOME_ADDRESS
--cc семейное положение как родственники
  for r10 in (select a.branch, a.personal_code,  b.relation_name y1, a.RELATION_BIRTHDAY y2, a.RELATION_OFFICE y3,
                a.RELATION_HOME_ADDRESS y4, a.relation_family y5, a.relation_name y6, a.relation_patronymic y7
        from ok_relation a, ss_ok_relation b where a.relation_code=b.relation_code)
  loop
    update ok_send_all set y = y||';'||r10.y1||'-'||to_char(r10.y2)||' '||r10.y3||' '||r10.y4,
                           cc= cc||';'||r10.y1||'-'||to_char(r10.y2)||' '||r10.y5||' '||r10.y6||' '||r10.y7
     where branch = r10.branch
       and personal_code = r10.personal_code
       and y is not null;
    update ok_send_all set y = r10.y1||'-'||to_char(r10.y2)||' '||r10.y3||' '||r10.y4,
                           cc= r10.y1||'-'||to_char(r10.y2)||' '||r10.y5||' '||r10.y6||' '||r10.y7
     where branch = r10.branch
       and personal_code = r10.personal_code
       and y is null;
  end loop;
-- заграница ok_voyage.// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch)
-- ok_voyage.VOYAGE_DATE
-- ok_voyage.VOYAGE_LAND
-- ok_voyage.VOYAGE_INFO
  for r11 in (select branch, personal_code,  VOYAGE_DATE z1, VOYAGE_INFO z2, VOYAGE_LAND z3
        from ok_voyage)
  loop
    update ok_send_all set z = z||';'||to_char(r11.z1)||' '||r11.z2||' '||r11.z3
     where branch = r11.branch
       and personal_code = r11.personal_code
       and z is not null;
    update ok_send_all set z = to_char(r11.z1)||' '||r11.z2||' '||r11.z3
     where branch = r11.branch
       and personal_code = r11.personal_code
       and z is null;
  end loop;
-- повыш квалификации ok_rise.// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch)
-- ok_rise.RISE_DATE_BEGIN
-- ok_rise.RISE_DATE_END
-- ok_rise.RISE_INFO
  for r12 in (select branch, personal_code,  RISE_DATE_YEAR aa1,  RISE_INFO aa3
        from ok_rise)
  loop
    update ok_send_all set aa = aa||';'||r12.aa1||' '||r12.aa3
     where branch = r12.branch
       and personal_code = r12.personal_code
       and aa is not null;
    update ok_send_all set aa = to_char(r12.aa1)||' '||r12.aa3
     where branch = r12.branch
       and personal_code = r12.personal_code
       and aa is null;
  end loop;
-- АРМЕЙКА // where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch)
-- группа военного учета
-- ok_army.ARMY_GROUP dd
-- категория учета
-- ok_army.CATEGORY_ARMY ee
-- состав
-- ok_army.STAFF ff
-- воинское звание
-- ok_army.MILITARY_RANK gg
-- спец по воин учету
-- ok_army.SPECIAL_ARMY hh
-- годность к воинск службе
-- ok_army.FITNESS_ARMY_CODE	NUMBER (1) not null, --	'Годность к службе	Выбирается из справочника SS_OK_Fitness_ARMY  поле fitness_ARMY_Code';
-- военкомат
-- ok_army.NAME_ARMY_OFFICE jj
-- n учета в особом списке
-- ok_army.SPECREG_NUMBER kk
  for r13 in (select a.branch, a.personal_code,  b.fitness_army_type ii,
              a.ARMY_GROUP dd, a.CATEGORY_ARMY ee, a.STAFF ff, a.MILITARY_RANK gg,
              a.SPECIAL_ARMY hh, a.NAME_ARMY_OFFICE jj, a.SPECREG_NUMBER kk
        from ok_army a, ss_ok_fitness_army b where a.fitness_army_code=b.fitness_army_code)
  loop
    update ok_send_all set dd = r13.dd,
                           ee = r13.ee,
                           ff = r13.ff,
                           gg = r13.gg,
                           hh = r13.hh,
                           ii = r13.ii,
                           jj = r13.jj,
                           kk = r13.kk
     where branch = r13.branch
       and personal_code = r13.personal_code;
  end loop;
-- примечания// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch)
-- ok_addinform.CHARACTER_ADDINFORM
  for r14 in (select branch, personal_code,  CHARACTER_ADDINFORM ll
        from ok_addinform)
  loop
    update ok_send_all set ll = ll||';'||r14.ll
     where branch = r14.branch
       and personal_code = r14.personal_code
       and ll is not null;
    update ok_send_all set ll = r14.ll
     where branch = r14.branch
       and personal_code = r14.personal_code
       and ll is null;
  end loop;
----------------------------------------
----------------------------------------
-- Ф
-- ok_personal.family
-- И
-- ok_personal.first_name
-- О
-- ok_personal.patronymic
--e код должности
-- ok_post.post_code // where (ok_personal.personal_code = ok_post.personal_code) and (ok_personal.branch = ok_post.branch) and state='A'
--f паспорт серия и номер
-- ok_personal.pass_serya||ok_personal.pass_num
-- кем выдан
-- ok_personal.pass_reg
-- день рожд
-- ok_personal.birthday
--i место рожд
-- ok_personal.distr
--ia  место рожд
--  ok_personal.birthplace
--j нац
-- ok_personal.nationality_code
-- дом адр
-- ok_personal.home_address
-- телефон
-- ok_personal.telefon
--m код пртии
-- ok_party.party_code // where (ok_personal.personal_code = ok_party.personal_code) and (ok_personal.branch = ok_party.branch) and party_outdate is null
--n дата вступл в партию
-- ok_party.party_date // ^
--o код образования
-- ok_education.education_code
--p ВУЗ год оконч// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch)
-- ok_education.end_date
-- наим ВУЗа
-- ok_education.institution_code (ss_ok_institution.institution_name)
-- спец по диплому
-- ok_education.profession_personal
-- текущее обучение (нет курса и фака)
-- ok_education.end_date is null
--r банк специальность
-- 1-базовое, 2-другое
-- ученая степень// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch) and state='A'
-- ok_degree.degree_code
-- ученое звание// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch) and state='A'
-- ok_academic.academic_code
-- язык// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch) and state='A'
-- ok_language.language_code
-- награды// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch)
-- ok_award.award_date
-- ok_award.award_info
-- избрание// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch)
-- ok_election.election_post
-- ok_election.election_date_begin
-- ok_election.election_date_end
-- трудовая деятельность// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch)
-- ok_period.IN_OFFICE_DATE
-- ok_period.OUT_OFFICE_DATE
-- ok_period.OFFICE_NAME
-- ok_period.ESTABLISHED_POST
-- родственники// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch)
-- ok_relation.RELATION_BIRTHDAY
-- ok_relation.RELATION_OFFICE
-- ok_relation.RELATION_HOME_ADDRESS
-- семейное положение как родственники
-- заграница ok_voyage.// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch)
-- ok_voyage.VOYAGE_DATE
-- ok_voyage.VOYAGE_LAND
-- ok_voyage.VOYAGE_INFO
-- повыш квалификации ok_rise.// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch)
-- ok_rise.RISE_DATE_BEGIN
-- ok_rise.RISE_DATE_END
-- ok_rise.RISE_INFO
--bb профсоюз
-- ok_personal.profmember
-- АРМЕЙКА // where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch)
-- группа военного учета
-- ok_army.ARMY_GROUP
-- категория учета
-- ok_army.CATEGORY_ARMY
-- состав
-- ok_army.STAFF
-- воинское звание
-- ok_army.MILITARY_RANK
-- спец по воин учету
-- ok_army.SPECIAL_ARMY
-- годность к воинск службе
-- ok_army.FITNESS_ARMY_CODE	NUMBER (1) not null, --	'Годность к службе	Выбирается из справочника SS_OK_Fitness_ARMY  поле fitness_ARMY_Code';
-- военкомат
-- ok_army.NAME_ARMY_OFFICE
-- n учета в особом списке
-- ok_army.SPECREG_NUMBER
-- примечания// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch)
-- ok_addinform.CHARACTER_ADDINFORM
END;
-----------
procedure OKChangePassport(
  branch_             OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_      OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  PASS_NUM_           OK_PERSONAL.PASS_NUM%type := param.getparam('PASS_NUM'),
  PASS_SERIYA_        OK_PERSONAL.PASS_SERIYA%type := param.getparam('PASS_SERIYA'),
  emp_code_           OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
)
IS
  OldId_  ok_personal.id%type;
  function isNew
  return boolean is begin
       select /*+ index ( c ok_personal_passport)*/ c.id into oldId_
       from ok_personal c where c.pass_num = pass_num_ and upper(c.pass_seriya) = upper( trim( pass_seriya_)) and  rownum=1;
       raise_application_error( -20000, 'Сотрудник с паспортом серия:'|| upper(pass_seriya_) ||' номер:'|| pass_num_||' уже зарегистрирован в подсистеме ОК!');
  exception when no_data_found then return true;
  end isNew;
--
BEGIN
--  изменение Паспорта
  if not isnew
  then
       raise_application_error( -20000, 'Сотрудник с паспортом серия:'|| pass_seriya_ ||' номер:'|| pass_num_||' уже зарегистрирован в подсистеме ОК!');
  end if;
--
    update ok_personal
     set pass_seriya = pass_seriya_,
         pass_num = pass_num_
   where branch= branch_
     and personal_code= personal_code_;
--
END; -- OKChangePassport
-----------
----------
procedure OKChangeFIO(
  branch_             OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_      OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  family_             OK_PERSONAL.FAMILY%type := param.getparam('FAMILY'),
  first_name_         OK_PERSONAL.FIRST_NAME%type := param.getparam('FIRST_NAME'),
  patronymic_         OK_PERSONAL.PATRONYMIC%type := param.getparam('PATRONYMIC'),
  change_date_	      OK_CHANGE_FIO.CHANGE_DATE%type := param.getparam('CHANGE_DATE'),
  change_motive_      OK_CHANGE_FIO.CHANGE_MOTIVE%type := param.getparam('CHANGE_MOTIVE'),
  emp_code_           OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
)
IS
BEGIN
-- фиксирует изменение ФИО
  insert into OK_change_fio
          (BRANCH, PERSONAL_CODE, FAMILY, FIRST_NAME,
           PATRONYMIC, CHANGE_DATE, CHANGE_MOTIVE, EMP_CODE, INS_DATE)
    select o.branch, o.PERSONAL_CODE, upper( trim( o.FAMILY)), upper( trim( o.FIRST_NAME)),
           upper( trim(  o.PATRONYMIC)), CHANGE_DATE_, CHANGE_MOTIVE_, o.EMP_CODE, o.ins_date
      from ok_personal o
     where o.branch= branch_
       and o.personal_code= personal_code_;
  update ok_personal
     set family = FAMILY_,
         first_name = FIRST_NAME_,
         patronymic = PATRONYMIC_
   where branch= branch_
     and personal_code= personal_code_;
END; -- OKChangeFIO
-----------
procedure dismiss_colleague(
  branch_          OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_   OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  out_office_date_ OK_PERIOD.OUT_OFFICE_DATE%type := param.getparam('OUT_OFFICE_DATE'),
  MOTIVE_DISMISSIAL_CODE_      OK_PERsonal.MOTIVE_DISMISSIAL_CODE%type := param.getparam('MOTIVE_DISMISSIAL_CODE'),
  article_code_    OK_PERIOD.ARTICLE_CODE%type := param.getparam('ARTICLE_CODE'),
  basis_num_       OK_PERIOD.BASIS_NUM%type := param.getparam('BASIS_NUM'),
  basis_date_      OK_PERIOD.BASIS_DATE%type := param.getparam('BASIS_DATE'),
  emp_code_        OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE'),
  office_address_  OK_PERIOD.OFFICE_ADDRESS%type := param.getparam('OFFICE_ADDRESS')
)
IS
  personal_code_2  ok_personal.personal_code%type;
  ok_period_in_date_ ok_period.in_office_date%type;
-- код состояния уволен
  dismiss_status_code_ constant ok_personal.status_code%type := 4;
-- код "место вакантно"
  is_vacant_ constant ok_stat_salary.vacancy_code%type := 1;
-- код стажа "Общий банковский"
  is_bank_period_ constant ss_ok_type_period.type_period_code%type := 1;
  SHORT_NAME_ VARCHAR2(30);
  k number;
        IN_OFFICE_DATE_OLD  ok_post.appointment_date%type;
        that_POST_name_OLD  ss_ok_post.post_name%type;
        that_base_move_name_OLD  ss_ok_base_move.base_move_name%type;
        BASIS_NUM_OLD   ok_post.BASIS_NUM%type;
        BASIS_DATE_OLD  ok_post.BASIS_DATE%type;
        EMP_CODE_OLD    ok_post.EMP_CODE%type;
        INS_DATE_OLD    ok_post.INS_DATE%type;
IN_OFFICE_DATE_ date;
BEGIN
  if office_address_ is null
  then
    raise_application_error( -20000, 'Пожалуйста, Укажите адрес офиса на вкладке Настройки в модуле "Отдел кадров"!');
  end if;
  select short_name into SHORT_NAME_
  from branch;
-- проверка наличия сотрудника. код его должности в ok_stat_salary.salary_code
  personal_code_2 := null;
  select /*+ index ( c ok_personal_pk)*/ c.personal_code into personal_code_2
    from ok_personal c
   where c.branch = branch_
     and c.personal_code = personal_code_;
  if personal_code_2 is null then
      raise_application_error( -20000, 'Сотрудник не найден. Операция Увольнение прервана!');
  end if;
-- установить состояние сотрудника в "уволен"
  update ok_personal c
     set c.status_code = dismiss_status_code_,
         c.MOTIVE_DISMISSIAL_CODE = MOTIVE_DISMISSIAL_CODE_,
         c.BASIS_NUM = BASIS_NUM_,
         c.BASIS_DATE = BASIS_DATE_,
         c.post_code=null,
         c.department_code=null
   where c.branch = branch_
     and c.personal_code = personal_code_;
--
  begin
    select max(IN_OFFICE_DATE) into IN_OFFICE_DATE_
    from ok_period
    where branch = branch_
     and personal_code = personal_code_;
  exception when others
  then
      raise_application_error(-20000,' Нет данных в сведениях о работе!' );
  end;
--
  begin
    update ok_period
    set out_office_date=out_office_date_
     where branch = branch_
     and personal_code = personal_code_
     and IN_OFFICE_DATE=IN_OFFICE_DATE_;
  exception when others
  then
      raise_application_error(-20000,' Не удалось сохранить дату увольнения!' );
  end;
--
--
END;-- dismiss_colleague
--------------------------------------------------------------------------------
-- код подразделения, где работает сотрудник (а наименование в SS_OK_DEPARTMENT)
function GetDepartmentCode(branch_ char, personal_code_ char) return integer
is
  department_code_ ok_stat.department_code%type;
  salary_code_ ok_personal.salary_code%type;
begin
  department_code_ := 0;
  select salary_code into salary_code_
    from ok_personal
   where branch= branch_
     and personal_code= personal_code;
  select a.department_code into department_code_
    from ok_stat a, ok_stat_salary b
   where a.stat_code=b.stat_code
     and a.branch= branch_
     and b.branch= branch_
     and b.salary_code= salary_code;
/*{ Подразделение
select a.department_code
from ok_stat a, ok_stat_salary b
where a.stat_code=b.stat_code
and a.branch='00820'
and b.branch='00820'
and b.salary_code=0
}*/
  if department_code_ is null then department_code_ := 0;
  end if;
  return department_code_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 0;
end;
------------------------------------------------------------------------------
-- код должности , где работает сотрудник (а наименование в SS_OK_POST)
function GetPostCode(branch_ char, personal_code_ char) return integer
is
  post_code_ ok_stat.post_code%type;
  salary_code_ ok_personal.salary_code%type;
begin
  post_code_ := 0;
  select salary_code into salary_code_
    from ok_personal
   where branch= branch_
     and personal_code= personal_code;
  select a.post_code into post_code_
    from ok_stat a, ok_stat_salary b
   where a.stat_code=b.stat_code
     and a.branch= branch_
     and b.branch= branch_
     and b.salary_code= salary_code;
/*{ Должность
select a.post_code
from ok_stat a, ok_stat_salary b
where a.stat_code=b.stat_code
and a.branch='00820'
and b.branch='00820'
and b.salary_code=0
}*/
  if post_code_ is null then post_code_ := 0;
  end if;
  return post_code_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 0;
end;
------------------------------------------------------------------------------
function isJoin(branch_ ok_personal.branch%type,personal_code_ ok_personal.personal_code%type)
  return integer
is
    code_  ok_personal.status_code%type;
begin
   select status_code into code_
     from ok_personal
    where branch = branch_
      and personal_code = personal_code_;
  return code_;
  exception when no_data_found then return -1;
end;
------------------------------------------------------------------------------
function appoint_colleague_check(branch_ ok_period.branch%type,personal_code_ ok_period.personal_code%type,appointment_date_ ok_period.in_office_date%type)
  return integer
is
  count_ integer;
begin
   select count(id) into count_
     from ok_period
    where branch = branch_
      and personal_code = personal_code_
      and in_office_date = appointment_date_;
  return count_;
  exception when no_data_found then return 0;
end;
-----------
procedure appoint_colleague(
  OFFICE_NAME_ OK_Period.OFFICE_NAME%type := param.getparam('OFFICE_NAME'),
  OFFICE_ADDRESS_ OK_Period.OFFICE_ADDRESS%type := param.getparam('OFFICE_ADDRESS'),
  branch_          OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_   OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  department_code_   OK_PERSONAL.department_CODE%type := param.getparam('DEPARTMENT_CODE'),
  post_code_   OK_PERSONAL.post_CODE%type := param.getparam('POST_CODE'),
  IN_OFFICE_DATE_   OK_PERIOD.IN_OFFICE_DATE%type := param.getparam('IN_OFFICE_DATE'),
  base_move_code_ OK_period.base_move_code%type := param.getparam('BASE_MOVE_CODE'),
  basis_num_   OK_Period.BASIS_NUM%type := param.getparam('BASIS_NUM'),
  basis_date_  OK_Period.BASIS_DATE%type := param.getparam('BASIS_DATE'),
  status_code_   OK_PERSONAL.status_CODE%type := param.getparam('STATUS_CODE'),
  ARTICLE_CODE_ OK_PERIOD.ARTICLE_CODE%type := param.getparam('ARTICLE_CODE'),
  emp_code_        OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
)
IS
  st_code_  ok_personal.status_code%type;
  salary_code_  ok_personal.salary_code%type;
  k_ integer;
  st_name_  ss_ok_status.status_name%type;
-- код "сотрудник новый"
  is_new_status_ constant ok_personal.status_code%type := 1;
-- код "сотрудник принят"
  is_join_status_ constant ok_personal.status_code%type := 2;
-- код типа стажа "в этом банке"
  is_this_bank_ constant number(1):=3;
  QuantityPost_ ok_stat.quantity_post%type;
  QuantityPostReal_ ok_stat.quantity_post%type;
 ESTABLISHED_POST_ ss_ok_post.post_name%type;
 ESTABLISHED_DEPARTMENT_ ss_ok_department.department_name%type ; -- наименование отдела
BEGIN
-- проверка "статус сотрудника"
--  status_code = is_join_status_
  k_ := ok_service.isJoin(branch_,personal_code_);
  if (k_ =-1) or (k_ is null) then
    raise_application_error( -20000, 'Сотрудник не найден!!! Операция Назначение прервана.');
  end if;
--
  if (status_code_ = is_new_status_)
    and (k_ <> is_new_status_)
  then
    select status_name into st_name_
    from ss_ok_status
    where status_code = k_;
    raise_application_error( -20000, 'Статус сотрудника - '||st_name_||'. Операция Назначение прервана!');
  end if;
--
  if (status_code_ = is_join_status_)
    and (k_ <> is_join_status_)
  then
    select status_name into st_name_
    from ss_ok_status
    where status_code = k_;
    raise_application_error( -20000, 'Статус сотрудника - '||st_name_||'. Операция Перемещение прервана!');
  end if;
-- проверка наличия вакантного места по параметрам department_code и post_code и branch_
-- через количество должностей в OK_STAT
  QuantityPost_ := get_QuantityPost(department_code_, post_code_);
  QuantityPostReal_ := get_QuantityPostReal(department_code_, post_code_);
  if QuantityPost_ =-1 then
    raise_application_error( -20000, 'Указанное рабочее место не найдено . Операция Назначение прервана!');
  end if;
  if QuantityPostReal_ >=QuantityPost_ then
    raise_application_error( -20000, 'В штатном расписании указано '||To_char(QuantityPost_)||
      ' рабочих мест. Фактически назначено '||to_char(QuantityPostReal_)||' сотрудников. Операция Назначение прервана!');
  end if;
--
  if appoint_colleague_check(branch_,personal_code_,in_office_date_) <> 0
  then
    raise_application_error( -20000, 'На дату '||to_char( in_office_date_,'dd.mm.yyyy')||
      ' уже есть данные о том, что Сотрудник был назначен. Операция Назначение прервана!');
  end if;
--
  ESTABLISHED_POST_:= ok_service.get_postname(post_code_);
  ESTABLISHED_DEPARTMENT_ := ok_service.get_departmentname(department_code_);
-- установить в главной рабочей таблице ok_personal.salary_code
  update ok_personal
  set department_code= department_code_,
      post_code= post_code_,
      status_code= is_join_status_
   where branch = branch_
     and personal_code= personal_code_;
-- сапдейтить старую запись, если out_office_date is null
  update ok_period
  set out_office_date=  in_office_DATE_
   where branch = branch_
     and personal_code= personal_code_
     and out_office_date is null;
-- вставка в ok_period
  insert into ok_period ( BRANCH, PERSONAL_CODE,
    IN_OFFICE_DATE, OUT_OFFICE_DATE,
    OFFICE_NAME, OFFICE_ADDRESS, ESTABLISHED_POST, ESTABLISHED_DEPARTMENT,
    TYPE_PERIOD_CODE, ARTICLE_CODE, BASIS_NUM, BASIS_DATE, EMP_CODE,
    INS_DATE, base_move_code
  ) values (
    BRANCH_, PERSONAL_CODE_,    in_office_DATE_,    null, OFFICE_NAME_,
    OFFICE_ADDRESS_, ESTABLISHED_POST_, ESTABLISHED_DEPARTMENT_, -- наименование отдела
    is_this_bank_, ARTICLE_CODE_, BASIS_NUM_, BASIS_DATE_,
    EMP_CODE_, sysdate,base_move_code_
  );
--
--  insert into ok_post (
--        BRANCH, PERSONAL_CODE, APPOINTMENT_DATE, base_MOVE_code, DEPARTMENT_CODE, POST_CODE, GRADE,
--        SALARY_FACT, RAISE_PERSONAL, RAISE_ADD, BASIS_NUM, BASIS_DATE, EMP_CODE, INS_DATE
--  )
--       values (
--        BRANCH_, PERSONAL_CODE_, APPOINTMENT_DATE_, base_MOVE_code_, DEPARTMENT_CODE_, POST_CODE_, GRADE_,
--        SALARY_FACT_, RAISE_PERSONAL_, RAISE_ADD_, BASIS_NUM_, BASIS_DATE_, EMP_CODE_, sysdate
--       );
--
--  OK_SERVICE.SetPostState(branch_, personal_code_ );
END;-- appoint_colleague
------------------------------------------------------------------------------
procedure appoint_colleague_set(
  branch_          OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_   OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  appointment_date_   OK_POST.APPOINTMENT_DATE%type := param.getparam('APPOINTMENT_DATE'),
  appointment_motive_ OK_POST.APPOINTMENT_MOTIVE%type := param.getparam('APPOINTMENT_MOTIVE'),
  department_code_    OK_POST.DEPARTMENT_CODE%type := param.getparam('DEPARTMENT_CODE'),
  post_code_   OK_POST.POST_CODE%type := param.getparam('POST_CODE'),
  grade_       OK_POST.GRADE%type := param.getparam('GRADE'),
  salary_fact_ OK_POST.SALARY_FACT%type := param.getparam('SALARY_FACT'),
  raise_personal_ OK_POST.RAISE_PERSONAL%type := param.getparam('RAISE_PERSONAL'),
  raise_add_   OK_POST.RAISE_ADD%type := param.getparam('RAISE_ADD'),
  basis_num_   OK_POST.BASIS_NUM%type := param.getparam('BASIS_NUM'),
  basis_date_  OK_POST.BASIS_DATE%type := param.getparam('BASIS_DATE'),
  emp_code_        OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
)
IS
  k_ integer;
BEGIN
-- проверка "сотрудник принят"
--  status_code = is_join_status_
  k_ := isJoin(branch_,personal_code_);
  if k_ =-1 then
    raise_application_error( -20000, 'Сотрудник не найден!!! Операция "Сохранение в данных сотрудника" прервана.');
  end if;
-- вставка в ok_post
  if appoint_colleague_check(branch_,personal_code_,appointment_date_) <> 0
  then
    raise_application_error( -20000, 'На дату '+to_char(appointment_date_,'dd.mm.yyyy')+' уже есть данные о том, что Сотрудник был назначен. Операция Назначение прервана!');
  end if;
  insert into ok_post (
        BRANCH, PERSONAL_CODE, APPOINTMENT_DATE, APPOINTMENT_MOTIVE, DEPARTMENT_CODE, POST_CODE, GRADE,
        SALARY_FACT, RAISE_PERSONAL, RAISE_ADD, BASIS_NUM, BASIS_DATE, EMP_CODE, INS_DATE
  )
       values (
        BRANCH_, PERSONAL_CODE_, APPOINTMENT_DATE_, APPOINTMENT_MOTIVE_, DEPARTMENT_CODE_, POST_CODE_, GRADE_,
        SALARY_FACT_, RAISE_PERSONAL_, RAISE_ADD_, BASIS_NUM_, BASIS_DATE_, EMP_CODE_, sysdate
       );
--
--  OK_SERVICE.SetPostState(branch_, personal_code_ );
END;-- appoint_colleague_set
-- процедура вычисления рабочего стажа по двум датам - начало и окончание
procedure CalcDate(begin_date_ date,
				   end_date_ date,
				   stag_day in out integer,
				   stag_month in out integer,
				   stag_year in out integer
)
is
  b_day   integer;
  b_month integer;
  b_year  integer;
  e_day   integer;
  e_month integer;
  e_year  integer;
begin
  if stag_day is null
  then
    stag_day := 0;
  end if;
  if stag_month is null
  then
    stag_month := 0;
  end if;
  if stag_year is null
  then
    stag_year := 0;
  end if;
  b_day   := to_number(to_char( begin_date_, 'dd'));
  b_month := to_number(to_char( begin_date_, 'mm'));
  b_year  := to_number(to_char( begin_date_, 'yyyy'));
  e_day   := to_number(to_char( end_date_, 'dd'));
  e_month := to_number(to_char( end_date_, 'mm'));
  e_year  := to_number(to_char( end_date_, 'yyyy'));
  if e_day < b_day
  then
    e_day   := e_day + 30;
    e_month := e_month - 1;
  end if;
  if e_month < b_month
  then
    e_month := e_month + 12;
    e_year  := e_year - 1;
  end if;
  stag_day   := stag_day   + e_day   - b_day;
  stag_month := stag_month + e_month - b_month;
  stag_year  := stag_year  + e_year  - b_year;
  if stag_year < 0
  then
    stag_day   := 0;
    stag_month := 0;
    stag_year  := 0;
  end if;
end; -- procedure CalcDate
--------------------------------------------------------------------------------
END;
/



-- End of DDL Script for Package Body BANK1.OK_SERVICE


