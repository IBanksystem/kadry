CREATE OR REPLACE PACKAGE ok_service AUTHID CURRENT_USER
IS
  Version constant char(12) := '#~25042016~#';
TYPE cur IS REF CURSOR;
-- MODIFICATION HISTORY
-- Person    Date         Comments
-- -------   ----------   ------------------------------------------
-- ildar-y   29042004   Отдел Кадров.Процедуры
--           02122004   OK_SERVICE.GETACADEMICNAME(AC.ACADEMIC_CODE)
--                        appoint_colleague записать в штатное расписание
--           21022005   appoint_colleague_set сохранить в данных сотрудника
--           30032010   PROC_FORM.checkf
--           15092015   можно назначать на текущую должность много раз
--                      но каждый раз надо удалять строчку из сведений о работе
  procedure  CheckW;
  procedure  PrintCheckW(rep_cur IN OUT        CUR);
--
procedure NEW_DISMISS(
  p_branch_           OK_PERSONAL.BRANCH%type := param.getparam('P_BRANCH'),
  personal_code_      OK_PERSONAL.PERSONAL_CODE%type := param.getparam('P_PERSONAL_CODE'),
  department_code_    OK_PERSONAL.department_code%type := param.getparam('P_DEPARTMENT_CODE'),
  post_code_          OK_PERSONAL.post_code%type := param.getparam('P_POST_CODE'),
  emp_code_           OK_PERSONAL.EMP_CODE%type := param.getparam('P_USERID'),
  v_date_            OK_PERSONAL.INS_DATE%type := param.getparam('P_VDATE')
);
--
procedure NEW_APPOINT(
  p_branch_           OK_PERSONAL.BRANCH%type := param.getparam('P_BRANCH'),
  personal_code_      OK_PERSONAL.PERSONAL_CODE%type := param.getparam('P_PERSONAL_CODE'),
  department_code_    OK_PERSONAL.department_code%type := param.getparam('P_DEPARTMENT_CODE'),
  post_code_          OK_PERSONAL.post_code%type := param.getparam('P_POST_CODE'),
  department_code_new_    OK_PERSONAL.department_code_new%type := param.getparam('P_DEPARTMENT_CODE_NEW'),
  post_code_new_          OK_PERSONAL.post_code_new%type := param.getparam('P_POST_CODE_NEW'),
  emp_code_           OK_PERSONAL.EMP_CODE%type := param.getparam('P_USERID'),
  v_date_            OK_PERSONAL.INS_DATE%type := param.getparam('P_VDATE'),
  check_ number := param.getparam('P_CHECK')
);
--
procedure CHECK_SALARY_FAKT(branch_ ok_stat.branch%type);
--------------------------------------------------------------------------------
function GET_STAVKA(branch_ OK_personal.branch%type,personal_code_ OK_personal.personal_code%type) return ss_ok_zp_rate.zp_rate_name%type;
  pragma restrict_references (GET_STAVKA, WNDS);
--
  function CheckInn(a_inn char) return char;
  pragma restrict_references (CheckInn, WNDS);
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
  function CheckPc(a_pc char) return char;
  pragma restrict_references (CheckPc, WNDS);
--------------------------------------------------------------------------------
 procedure checkf(
   a_employer_inn                             char,
   a_employer_name                            varchar2,
   a_resident                                 number  :=0,
   a_last_name                                varchar2  ,
   a_first_name                               varchar2  ,
   a_middle_name                              varchar2  ,
   a_gender                                   number  :=0,
   a_birthday                                 date  ,
   a_region                                   varchar2  ,
   a_district                                 varchar2  ,
   a_settlement                               varchar2  ,
   a_birthplace                               varchar2  ,
   a_address_region                           varchar2  ,
   a_address_district                         varchar2  ,
   a_address_settlement                       varchar2  ,
   a_address_street                           varchar2  ,
   a_address_house                            varchar2  ,
   a_address_flat                             number  :=0,
   a_passport_series                          varchar2  ,
   a_passport_number                          varchar2  :=0,
   a_passport_date                            date  ,
   a_passport_place                           varchar2  ,
   a_identifier_number                        VARCHAR2 ,
   a_inn                                      char,
   a_dup_no                                   CHAR,
   a_s_deal_id                                NUMBER);
--
function GET_CATEGORY_CODE(post_code_ ss_OK_post.post_code%type) return ss_ok_category.category_code%type;
pragma restrict_references (GET_CATEGORY_CODE,WNDS,WNPS);
--
function GET_POST_Salary(post_code_ ss_OK_post.post_code%type) return ss_ok_category.salary%type;
pragma restrict_references (GET_POST_Salary,WNDS,WNPS);
--
function GET_WORK_PERIOD_BY_TYPE(branch_ ok_hospital.branch%type,
 personal_code_  ok_hospital.personal_code%type,date_rep_ ok_hospital.date_open%type,
 my_type_period_code_ ss_ok_type_period.type_period_code%type)
  return ok_hospital.work_period%type;
--
function GET_WORK_PERIOD(branch_ ok_hospital.branch%type,
 personal_code_  ok_hospital.personal_code%type,date_open_ ok_hospital.date_open%type)
  return ok_hospital.work_period%type;
--
procedure CHECKTABNO(
  branch_             OK_PERSONAL.BRANCH%type,
  personal_code_      OK_PERSONAL.PERSONAL_CODE%type,
  tabno_      OK_PERSONAL.TabNo%type
);
-- Вид состава
function GET_STAFFNAME(code_ ss_ok_staff.staff_code%type)
  return ss_ok_staff.staff_name%type;
pragma restrict_references (get_staffname,WNDS,WNPS);
-- Род войск
function GET_TYPEFORCENAME(code_ ss_ok_type_force.type_force_code%type)
  return ss_ok_type_force.type_force_name%type;
pragma restrict_references (get_typeforcename,WNDS,WNPS);
-- Группа учета
function GET_ARMYGROUPNAME(code_ ss_ok_army_group.army_group_code%type)
  return ss_ok_army_group.army_group_name%type;
pragma restrict_references (get_armygroupname,WNDS,WNPS);
-- Категория учета
function GET_CATEGORYARMYNAME(code_ ss_ok_category_army.category_army_code%type)
  return ss_ok_category_army.category_army_name%type;
pragma restrict_references (get_categoryarmyname,WNDS,WNPS);
-- Воинское звание
function GET_MILITARYRANKNAME(code_ ss_ok_military_rank.military_rank_code%type)
  return ss_ok_military_rank.military_rank_name%type;
pragma restrict_references (get_militaryrankname,WNDS,WNPS);
--
function GET_SPECIALNAME(special_code_ ss_ok_special.special_code%type)
  return ss_ok_special.special_name%type;
pragma restrict_references (get_specialname,WNDS,WNPS);
function GET_ELECTIONADDRESS(code_ ss_ok_ELection.ELECTION_CODE%type) return ss_ok_ELection.ELECTION_address%type;
pragma restrict_references (GET_ELECTIONADDRESS,WNDS,WNPS);
function GET_ELECTIONNAME(code_ ss_ok_ELection.ELECTION_CODE%type) return ss_ok_ELection.ELECTION_name%type;
pragma restrict_references (GET_ELECTIONNAME,WNDS,WNPS);
function GET_RELATIONNAME(CODE_ SS_OK_relation.relation_CODE%type) return SS_OK_relation.relation_NAME%type;
pragma restrict_references (GET_RELATIONNAME,WNDS,WNPS);
function GET_YOUTHNAME(CODE_ SS_OK_youth.youth_CODE%type) return SS_OK_youth.youth_NAME%type;
pragma restrict_references (GET_YOUTHNAME,WNDS,WNPS);
function GET_QUANTITYPOSTREAL(branch_ ok_personal.branch%type,Department_CODE_ OK_STAT.department_CODE%type,
  post_CODE_ OK_STAT.post_CODE%type, special_CODE_ OK_STAT.special_CODE%type) return OK_STAT.quantity_post%type;
pragma restrict_references (GET_QuantityPostReal,WNDS,WNPS);
function GET_QUANTITYPOST(branch_ ok_personal.branch%type,Department_CODE_ OK_STAT.department_CODE%type,
  post_CODE_ OK_STAT.post_CODE%type, special_CODE_ OK_STAT.special_CODE%type) return OK_STAT.quantity_post%type;
pragma restrict_references (GET_QuantityPost,WNDS,WNPS);
function GET_BANKNAME(bank_id_ S_mfo.bank_id%type) return S_mfo.bank_NAME%type;
pragma restrict_references (GET_BANKNAME,WNDS,WNPS);
function ISJOIN(branch_ ok_personal.branch%type,personal_code_ ok_personal.personal_code%type)
  return integer;
pragma restrict_references (isJoin,WNDS,WNPS);
function APPOINT_COLLEAGUE_CHECK(branch_ ok_period.branch%type,personal_code_ ok_period.personal_code%type,appointment_date_ ok_period.in_office_date%type)
  return integer;
pragma restrict_references (appoint_colleague_check,WNDS,WNPS);
function GET_ACADEMICNAME(CODE_ SS_OK_ACADEMIC.ACADEMIC_CODE%type) return SS_OK_ACADEMIC.ACADEMIC_NAME%type;
pragma restrict_references (GET_ACADEMICNAME,WNDS,WNPS);
function GET_ARMYTYPE(CODE_ SS_OK_ARMY.ARMY_CODE%type) return SS_OK_ARMY.ARMY_TYPE%type;
pragma restrict_references (get_armytype,WNDS,WNPS);
function GET_DEGREENAME(CODE_ SS_OK_DEGREE.DEGREE_CODE%type) return SS_OK_DEGREE.DEGREE_NAME%type;
pragma restrict_references (GET_DEGREENAME,WNDS,WNPS);
function GET_FITNESSARMYTYPE(CODE_ SS_OK_FITNESS_ARMY.FITNESS_ARMY_CODE%type) return SS_OK_FITNESS_ARMY.FITNESS_ARMY_TYPE%type;
pragma restrict_references (get_fitnessarmytype,WNDS,WNPS);
function GET_EDUCATIONNAME(CODE_ SS_OK_EDUCATION.EDUCATION_CODE%type) return SS_OK_EDUCATION.EDUCATION_NAME%type;
pragma restrict_references (GET_EDUCATIONNAME,WNDS,WNPS);
function GET_BASISNAME(CODE_ SS_OK_BASIS.BASIS_CODE%type) return SS_OK_BASIS.BASIS_NAME%type;
pragma restrict_references (GET_BASISNAME,WNDS,WNPS);
function GET_INSTITUTIONNAME(CODE_ SS_OK_INSTITUTION.INSTITUTION_CODE%type) return SS_OK_INSTITUTION.INSTITUTION_NAME%type;
pragma restrict_references (GET_INSTITUTIONNAME,WNDS,WNPS);
function GET_QUALIFICATIONNAME(CODE_ SS_OK_QUALIFICATION.QUALIFICATION_CODE%type) return SS_OK_QUALIFICATION.QUALIFICATION_NAME%type;
pragma restrict_references (GET_QUALIFICATIONNAME,WNDS,WNPS);
function GET_LANGUAGENAME(CODE_ SS_OK_LANGUAGE.LANGUAGE_CODE%type) return SS_OK_LANGUAGE.LANGUAGE_NAME%type;
pragma restrict_references (GET_LANGUAGENAME,WNDS,WNPS);
function GET_LEVELNAME(CODE_ SS_OK_LEVEL_LANGUAGE.LEVEL_LANGUAGE_CODE%type) return SS_OK_LEVEL_LANGUAGE.LEVEL_LANGUAGE_NAME%type;
pragma restrict_references (GET_LEVELNAME,WNDS,WNPS);
function GET_LEAVENAME(CODE_ SS_OK_LEAVE.LEAVE_CODE%type) return SS_OK_LEAVE.LEAVE_NAME%type;
pragma restrict_references (GET_LEAVENAME,WNDS,WNPS);
function GET_PARTYNAME(CODE_ SS_OK_PARTY.PARTY_CODE%type) return SS_OK_PARTY.PARTY_NAME%type;
pragma restrict_references (GET_PARTYNAME,WNDS,WNPS);
function GET_PENALTYNAME(CODE_ SS_OK_PENALTY.PENALTY_CODE%type) return SS_OK_PENALTY.PENALTY_NAME%type;
pragma restrict_references (GET_PENALTYNAME,WNDS,WNPS);
function GET_TYPEPERIODNAME(CODE_ SS_OK_TYPE_PERIOD.TYPE_PERIOD_CODE%type) return SS_OK_TYPE_PERIOD.TYPE_PERIOD_NAME%type;
pragma restrict_references (GET_TYPEPERIODNAME,WNDS,WNPS);
function GET_ARTICLENAME(CODE_ SS_OK_ARTICLE.ARTICLE_CODE%type) return SS_OK_ARTICLE.ARTICLE_NAME%type;
pragma restrict_references (GET_ARTICLENAME,WNDS,WNPS);
function GET_ARTICLENUM(CODE_ SS_OK_ARTICLE.ARTICLE_CODE%type) return SS_OK_ARTICLE.ARTICLE_NUM%type;
pragma restrict_references (GET_ARTICLENUM,WNDS,WNPS);
function GET_DEPARTMENTNAME(CODE_ SS_OK_DEPARTMENT.DEPARTMENT_CODE%type) return SS_OK_DEPARTMENT.DEPARTMENT_NAME%type;
pragma restrict_references (GET_DEPARTMENTNAME,WNDS,WNPS);
function GET_FULLDEPARTMENTNAME(CODE_ SS_OK_DEPARTMENT.DEPARTMENT_CODE%type) return OK_PERIOD.ESTABLISHED_DEPARTMENT%type;
pragma restrict_references (GET_FULLDEPARTMENTNAME,WNDS,WNPS);
function GET_BIRTHPLACE(BIRTHPLACE_ OK_PERSONAL.BIRTHPLACE%type,REGION_ID_ OK_PERSONAL.REGION_ID%type,DISTR_ OK_PERSONAL.DISTR%type) return OK_PERSONAL.BIRTHPLACE%type;
pragma restrict_references (GET_BIRTHPLACE,WNDS,WNPS);
--
function GET_S_STR(CODE_STR_ S_STR.CODE_STR%type) return S_STR.name%type;
pragma restrict_references (GET_S_STR,WNDS,WNPS);
function GET_ORG_BUSINESS_VOYAGE(CODE_ SS_OK_ORG_BUSINESS_VOYAGE.ORG_BUSINESS_VOYAGE_CODE%type) return SS_OK_ORG_BUSINESS_VOYAGE.ORG_BUSINESS_VOYAGE_NAME%type;
pragma restrict_references (GET_ORG_BUSINESS_VOYAGE,WNDS,WNPS);
function GET_THEME_BUSINESS_VOYAGE(CODE_ SS_OK_THEME_BUSINESS_VOYAGE.THEME_BUSINESS_VOYAGE_CODE%type) return SS_OK_THEME_BUSINESS_VOYAGE.THEME_BUSINESS_VOYAGE_NAME%type;
pragma restrict_references (GET_THEME_BUSINESS_VOYAGE,WNDS,WNPS);
function GET_HOSPITAL(hospital_CODE_ SS_OK_hospital.hospital_code%type) return SS_OK_hospital.hospital_name%type;
pragma restrict_references (GET_HOSPITAL,WNDS,WNPS);
function GET_PRIVILEGE(PRIVILEGE_CODE_ SS_OK_PRIVILEGE.PRIVILEGE_code%type) return SS_OK_PRIVILEGE.PRIVILEGE_name%type;
pragma restrict_references (GET_PRIVILEGE,WNDS,WNPS);
function GET_KV_KURS(KV_KURS_CODE_ SS_OK_KV_KURS.KV_KURS_code%type) return SS_OK_KV_KURS.KV_KURS_name%type;
pragma restrict_references (GET_KV_KURS,WNDS,WNPS);
function GET_INCREASE(INCREASE_CODE_ SS_OK_INCREASE.INCREASE_code%type) return SS_OK_INCREASE.INCREASE_name%type;
pragma restrict_references (GET_INCREASE,WNDS,WNPS);
function GET_HIGH_NAME(department_CODE_ SS_OK_department.department_code%type) return ss_ok_department.department_name%type;
pragma restrict_references (GET_high_name,WNDS,WNPS);
function GET_REGPLACENAME(CODE_ SS_OK_regplace.regplace_CODE%type) return SS_OK_regplace.regplace_NAME%type;
pragma restrict_references (GET_REGPLACENAME,WNDS,WNPS);
--
function GET_DISTRNAME(distr_ S_distr.distr%type) return S_distr.distr_name%type;
pragma restrict_references (GET_DISTRNAME,WNDS,WNPS);
function GET_EDUCATIONTITLENAME(EDUCATION_TITLE_CODE_ SS_OK_EDUCATION_TITLE.EDUCATION_TITLE_code%type) return SS_OK_EDUCATION_TITLE.EDUCATION_TITLE_name%type;
pragma restrict_references (GET_EDUCATIONTITLENAME,WNDS,WNPS);
function GET_FAMILYSTATUSNAME(FAMILY_STATUS_CODE_ SS_OK_FAMILY_STATUS.FAMILY_STATUS_code%type) return SS_OK_FAMILY_STATUS.FAMILY_STATUS_name%type;
pragma restrict_references (GET_FAMILYSTATUSNAME,WNDS,WNPS);
function GET_GENDERNAME(GENDER_CODE_ SS_OK_GENDER.gender_code%type) return SS_OK_GENDER.gender_name%type;
pragma restrict_references (GET_GENDERNAME,WNDS,WNPS);
function GET_NATIONALITYNAME(NATIONALITY_CODE_ SS_OK_NATIONALITY.NATIONALITY_code%type) return SS_OK_NATIONALITY.NATIONALITY_name%type;
pragma restrict_references (GET_NATIONALITYNAME,WNDS,WNPS);
function GET_POSTNAME(post_code_ ss_OK_post.post_code%type) return SS_OK_POST.post_name%type;
pragma restrict_references (GET_POSTNAME,WNDS,WNPS);
function GET_BASEMOVENAME(base_move_code_ ss_ok_base_move.base_move_code%type) return ss_ok_base_move.base_move_name%type;
pragma restrict_references (GET_BASEMOVENAME,WNDS,WNPS);
function GET_PROFMEMBERNAME(PROFMEMBER_ SS_OK_PROFMEMBER.PROFMEMBER%type) return SS_OK_PROFMEMBER.PROFMEMBER_name%type;
pragma restrict_references (GET_PROFMEMBERNAME,WNDS,WNPS);
function GET_REGIONNAME(region_id_ S_region.region_id%type) return S_region.region_nam%type;
pragma restrict_references (GET_REGIONNAME,WNDS,WNPS);
function GET_REGTYPENAME(REG_TYPE_CODE_ SS_OK_REG_TYPE.REG_TYPE_code%type) return SS_OK_REG_TYPE.REG_TYPE_name%type;
pragma restrict_references (GET_REGTYPENAME,WNDS,WNPS);
function GET_STATUSNAME(STATUS_CODE_ SS_OK_STATUS.status_code%type) return SS_OK_STATUS.status_name%type;
pragma restrict_references (GET_STATUSNAME,WNDS,WNPS);
function GET_MOTIVNAME(code_ ss_ok_MOTIVE_DISMISSIAL.MOTIVE_DISMISSIAL_code%type)
  return ss_ok_MOTIVE_DISMISSIAL.MOTIVE_DISMISSIAL_name%type;
pragma restrict_references (get_motivname,WNDS,WNPS);
procedure OKNEWDEP(
  branch_             OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  DEPARTMENT_CODE_ ss_ok_department.department_code%type := Param.getParam('DEPARTMENTCODE'),
  DEPARTMENT_NAME_ ss_ok_department.department_name%type := Param.getParam('DEPARTMENTNAME'),
  DEPARTMENT_NUM_ ss_ok_department.department_num%type := Param.getParam('DEPARTMENTNUM'),
  HIGH_DEP_CODE_ ss_ok_department.high_dep_code%type := Param.getParam('HIGHDEPCODE'),
  DEPARTMENT_TYPE_CODE_ ss_ok_department.department_type_code%type := Param.getParam('DEPARTMENTTYPECODE'),
  LEVEL_DEPARTMENT_CODE_ ss_ok_department.level_department_code%type := Param.getParam('LEVELDEPARTMENTCODE'),
  emp_code_           OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
);
procedure OKDEP(
  branch_             OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  DEPARTMENT_CODE_ ss_ok_department.department_code%type := Param.getParam('DEPARTMENTCODE'),
  DEPARTMENT_NAME_ ss_ok_department.department_name%type := Param.getParam('DEPARTMENTNAME'),
  DEPARTMENT_NUM_ ss_ok_department.department_num%type := Param.getParam('DEPARTMENTNUM'),
  DEPARTMENT_TYPE_CODE_ ss_ok_department.department_type_code%type := Param.getParam('DEPARTMENTTYPECODE'),
  LEVEL_DEPARTMENT_CODE_ ss_ok_department.LEVEL_DEPARTMENT_CODE%type := Param.getParam('LEVELDEPARTMENTCODE'),
  emp_code_           OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
  );
procedure NEW_COLLEAGUE(
  id_                 OK_PERSONAL.ID%type := param.getparam('ID'),
  branch2             OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_      OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  colleague_code_     OK_PERSONAL.COLLEAGUE_CODE%type := param.getparam('COLLEAGUE_CODE'),
  status_code_              OK_PERSONAL.STATUS_CODE%type := param.getparam('STATUS_CODE'),
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
  home_address_distr_       OK_PERSONAL.HOME_ADDRESS_distr%type := param.getparam('HOME_ADDRESS_DISTR'),
  home_address_region_id_   OK_PERSONAL.HOME_ADDRESS_region_id%type := param.getparam('HOME_ADDRESS_REGION_ID'),
  home_addressfact_   OK_PERSONAL.HOME_ADDRESSFACT%type := param.getparam('HOME_ADDRESSFACT'),
  home_addressfact_distr_     OK_PERSONAL.HOME_ADDRESSFACT_distr%type := param.getparam('HOME_ADDRESSFACT_DISTR'),
  home_addressfact_region_id_ OK_PERSONAL.HOME_ADDRESSFACT_region_id%type := param.getparam('HOME_ADDRESSFACT_REGION_ID'),
  REGPLACE_CODE_          OK_PERSONAL.REGPLACE_CODE%type := param.getparam('REGPLACE_CODE'),
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
  nn_          OK_PERSONAL.nn%type := param.getparam('NN'),
  nps_id_                 OK_PERSONAL.NPS_ID%type := param.getparam('NPS_ID'),
  INN_          OK_PERSONAL.inn%type := param.getparam('OK_INN'),
  cod_str_birth_ OK_PERSONAL.cod_str_birth%type := param.getparam('COD_STR_BIRTH'), -- страна рождения
  cod_obl_prim_ OK_PERSONAL.cod_obl_prim%type := param.getparam('COD_OBL_PRIM'), -- примечание к обл рождения
  cod_place_birth_prim_ OK_PERSONAL.cod_place_birth_prim%type := param.getparam('COD_PLACE_BIRTH_PRIM'), -- примечание к район рождения
  PASS_DATE_END_ OK_PERSONAL.PASS_DATE_END%type := param.getparam('PASS_DATE_END'), -- дата истечения паспорта
  cod_str_live_ OK_PERSONAL.cod_str_live%type := param.getparam('COD_STR_LIVE'), -- код страны проживания
  cod_obl_live_ OK_PERSONAL.cod_obl_live%type := param.getparam('COD_OBL_LIVE'),
  cod_obl_live_prim_ OK_PERSONAL.cod_obl_live_prim%type := param.getparam('COD_OBL_LIVE_PRIM'),
  cod_distr_live_    OK_PERSONAL.cod_distr_live%type := param.getparam('COD_DISTR_LIVE'),
  cod_distr_live_prim_    OK_PERSONAL.cod_distr_live_prim%type := param.getparam('COD_DISTR_LIVE_PRIM'),
  COD_DISTR_UVD_    OK_PERSONAL.COD_DISTR_UVD%type := param.getparam('COD_DISTR_UVD'),
  PASSPORT_TYPE_CODE_    OK_PERSONAL.COD_DISTR_UVD%type := param.getparam('PASSPORT_TYPE_CODE'),
  TRUD_SOGL_ ok_personal.TRUD_SOGL%type := param.getparam('TRUD_SOGL'),
  COD_DISTR_PRIM_    OK_PERSONAL.COD_DISTR_UVD%type := param.getparam('COD_DISTR_PRIM')
);
procedure SENDALL;
procedure OKCHANGEPASSPORT(
  branch_             OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_      OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  PASS_NUM_           OK_PERSONAL.PASS_NUM%type := param.getparam('PASS_NUM'),
  PASS_SERIYA_        OK_PERSONAL.PASS_SERIYA%type := param.getparam('PASS_SERIYA'),
  emp_code_           OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
);
procedure OKCHANGEFIO(
  branch_             OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_      OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  family_             OK_PERSONAL.FAMILY%type := param.getparam('FAMILY'),
  first_name_         OK_PERSONAL.FIRST_NAME%type := param.getparam('FIRST_NAME'),
  patronymic_         OK_PERSONAL.PATRONYMIC%type := param.getparam('PATRONYMIC'),
  change_date_              OK_CHANGE_FIO.CHANGE_DATE%type := param.getparam('CHANGE_DATE'),
  change_motive_      OK_CHANGE_FIO.CHANGE_MOTIVE%type := param.getparam('CHANGE_MOTIVE'),
  emp_code_           OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
);
procedure DISMISS_COLLEAGUE(
  branch_          OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_   OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  out_office_date_ OK_PERIOD.OUT_OFFICE_DATE%type := param.getparam('OUT_OFFICE_DATE'),
  MOTIVE_DISMISSIAL_CODE_      OK_PERsonal.MOTIVE_DISMISSIAL_CODE%type := param.getparam('MOTIVE_DISMISSIAL_CODE'),
  article_code_    OK_PERIOD.ARTICLE_CODE%type := param.getparam('ARTICLE_CODE'),
  basis_num_       OK_PERIOD.BASIS_NUM%type := param.getparam('BASIS_NUM'),
  basis_date_      OK_PERIOD.BASIS_DATE%type := param.getparam('BASIS_DATE'),
  emp_code_        OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE'),
  office_address_  OK_PERIOD.OFFICE_ADDRESS%type := param.getparam('OFFICE_ADDRESS'),
  prich_id_        OK_PERsonal.prich_id%type := param.getparam('PRICH_ID'),
  name_pr_         OK_PERsonal.name_pr%type := param.getparam('NAME_PR')
);
procedure DEKRET(
  branch_          OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_   OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  num_basis_       OK_LEAVE.NUM_basis%type := param.getparam('NUM_BASIS'),
  date_basis_      OK_LEAVE.DATE_basis%type := param.getparam('DATE_BASIS'),
  DATE_IN_LEAVE_      OK_LEAVE.DATE_IN_LEAVE%type  := param.getparam('DATE_IN_LEAVE'),
  DATE_OUT_LEAVE_     OK_LEAVE.DATE_OUT_LEAVE%type := param.getparam('DATE_OUT_LEAVE'),
  BEGIN_YEAR_    OK_LEAVE.BEGIN_YEAR%type := param.getparam('BEGIN_YEAR'),
  END_YEAR_      OK_LEAVE.END_YEAR%type :=   param.getparam('END_YEAR'),
  LEAVE_CODE_      OK_LEAVE.LEAVE_CODE%type := param.getparam('LEAVE_CODE'),
  PERIOD_LEAVE_      OK_LEAVE.PERIOD_LEAVE%type := param.getparam('PERIOD_LEAVE'),
  MOTIVE_LEAVE_      OK_LEAVE.MOTIVE_LEAVE%type := param.getparam('MOTIVE_LEAVE'),
  emp_code_        OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
);
procedure DEKRETOUT(
  branch_          OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_   OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  emp_code_        OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
);
procedure ACADEM(
  branch_          OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_   OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  num_basis_       OK_LEAVE.NUM_basis%type := param.getparam('NUM_BASIS'),
  date_basis_      OK_LEAVE.DATE_basis%type := param.getparam('DATE_BASIS'),
  DATE_IN_LEAVE_      OK_LEAVE.DATE_IN_LEAVE%type  := param.getparam('DATE_IN_LEAVE'),
  DATE_OUT_LEAVE_     OK_LEAVE.DATE_OUT_LEAVE%type := param.getparam('DATE_OUT_LEAVE'),
  BEGIN_YEAR_    OK_LEAVE.BEGIN_YEAR%type := param.getparam('BEGIN_YEAR'),
  END_YEAR_      OK_LEAVE.END_YEAR%type :=   param.getparam('END_YEAR'),
  LEAVE_CODE_      OK_LEAVE.LEAVE_CODE%type := param.getparam('LEAVE_CODE'),
  PERIOD_LEAVE_      OK_LEAVE.PERIOD_LEAVE%type := param.getparam('PERIOD_LEAVE'),
  MOTIVE_LEAVE_      OK_LEAVE.MOTIVE_LEAVE%type := param.getparam('MOTIVE_LEAVE'),
  emp_code_        OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
);
procedure ACADEMOUT(
  branch_          OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_   OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  emp_code_        OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
);
procedure APPOINT_COLLEAGUE(
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
  emp_code_        OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE'),
  special_code_   OK_PERSONAL.special_CODE%type := param.getparam('SPECIAL_CODE'),
  rotation_   OK_PERSONAL.special_CODE%type := param.getparam('ROTATION')
);
/*
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
*/
procedure CALCDATE(begin_date_ date,
                                   end_date_ date,
                                   stag_day in out integer,
                                   stag_month in out integer,
                                   stag_year in out integer
);
--
function GET_STATUS(branch_ ok_personal.branch%type, personal_CODE_ ok_personal.personal_CODE%type,
  first_day_month date,last_day_of_month date,first_day_of_next_month date,gender_code_ ok_personal.gender_code%type) return char;
pragma restrict_references (GET_STATUS,WNDS,WNPS);
--
procedure new_tabel(BRANCH_ ok_tabel.branch%type,
TABEL_MONTH_ ok_tabel.TABEL_MONTH%type,
TABEL_YEAR_ ok_tabel.TABEL_YEAR%type
);
--
function post_date(branch_ OK_personal.branch%type,personal_code_ OK_personal.personal_code%type) return ss_ok_department.department_name%type;
  pragma restrict_references (post_date, WNDS);
--
function shu_bankda_date(branch_ OK_personal.branch%type,personal_code_ OK_personal.personal_code%type) return ss_ok_department.department_name%type;
  pragma restrict_references (shu_bankda_date, WNDS);
--
function GET_KOEFSUM(branch_ ok_personal.branch%type,department_code_ ok_stat.department_code%type,SALARY_FACT_ OK_STAT.SALARY_FACT%type) return OK_STAT.SALARY_FACT%type;
  pragma restrict_references (GET_KOEFSUM, WNDS);
--
--
END; -- Package spec


 
/
CREATE OR REPLACE PACKAGE BODY ok_service IS
  Version constant char(12) := '#~25042016~#';
--  08.11.2012 теперь и в агро подтв. в ГО
--    is_submit_needed_:=1; -- 13.02.2012 требовать подтверждение для всех должностей
-- constantS
-- сотрудник Отправлен в ГО
  is_goSended29 constant ok_personal.gosubmit_code%type := 29;
-- сотрудник в завке на увольнение
  is_forDismiss30 constant ok_personal.gosubmit_code%type := 30;
-- сотрудник потвержден ГО
  is_gosubmit constant ok_personal.gosubmit_code%type := 22;
-- сотрудник Утвержден ГО
  is_gosubmitOK constant ok_personal.gosubmit_code%type := 33;
-- сотрудник удален ГО
  is_gosubmit_del6 constant ok_personal.gosubmit_code%type := 6;
-- код "сотрудник новый"
  IS_NEW_STATUS_ constant ok_personal.status_code%type := 1;
-- код "сотрудник принят"
  IS_JOIN_STATUS_ constant ok_personal.status_code%type := 2;
-- код состояния уволен
  DISMISS_STATUS_CODE_ constant ok_personal.status_code%type := 4;
-- в декрете
  DEKRET_STATUS_ constant ok_personal.status_code%type := 5;
-- в академическом отпуске
  ACADEM_STATUS_ constant ok_personal.status_code%type := 8;
-- код типа стажа "в этом банке"
  IS_THIS_BANK_ constant number(1):=3;
--
-- Person      Date         Comments
-- ---------   ----------   ----------------------------------------
-- ildar-y     29-04-2004   Отдел Кадров.Процедуры
--
procedure CheckW is
begin
-- Проверка разрешения отправки W
  Proc_Check_W.ErrOrPrint := 'E';
  Proc_Check_W.Check_IIAS_OK;
end;
--
procedure PrintCheckW(rep_cur IN OUT        CUR) is
begin
  Proc_Check_W.ErrOrPrint := 'P';
  delete from rep_temp where ses_id=userenv('sessionid');
  Proc_Check_W.Check_IIAS_OK;
  OPEN rep_cur FOR
     SELECT name_1          as Наименование
     FROM rep_temp where ses_id=userenv('sessionid') order by id;
end;
--
procedure NEW_DISMISS(
  p_branch_           OK_PERSONAL.BRANCH%type := param.getparam('P_BRANCH'),
  personal_code_      OK_PERSONAL.PERSONAL_CODE%type := param.getparam('P_PERSONAL_CODE'),
  department_code_    OK_PERSONAL.department_code%type := param.getparam('P_DEPARTMENT_CODE'),
  post_code_          OK_PERSONAL.post_code%type := param.getparam('P_POST_CODE'),
  emp_code_           OK_PERSONAL.EMP_CODE%type := param.getparam('P_USERID'),
  v_date_            OK_PERSONAL.INS_DATE%type := param.getparam('P_VDATE')
)
IS
  branch_ OK_PERSONAL.BRANCH%type;
BEGIN
  if p_branch_ is null
  then branch_:=p_branch_;
  else branch_:=info.getbranch;
  end if;
  insert into okedb_appoints_arh
  select * from okedb_appoints
  where branch=branch_ and personal_code=personal_code_;
  delete from okedb_appoints
  where branch=branch_ and personal_code=personal_code_;
  update ok_personal set
    department_code_old = department_code,
    post_code_old = post_code,
    GOSUBMIT_CODE = is_forDismiss30
  where branch=branch_ and personal_code=personal_code_;
-- сохранить заявку в таблицу ГО
  insert into okedb_appoints (id,branch,PERSONAL_CODE,v_date,EMP_CODE,
    ins_date,state_code,comments,DEPARTMENT_CODE,POST_CODE,
    SPECIAL_CODE,DEPARTMENT_CODE_NEW,POST_CODE_NEW,SPECIAL_CODE_NEW,FAMILY,
    FIRST_NAME,PATRONYMIC,BIRTHDAY) select okedb_appoints_seq.nextval,
      branch, PERSONAL_CODE,v_date_,EMP_CODE,
    sysdate, is_forDismiss30 ,null,DEPARTMENT_CODE,POST_CODE,
    SPECIAL_CODE,DEPARTMENT_CODE_new,POST_CODE_new,SPECIAL_CODE_new,FAMILY,
    FIRST_NAME,PATRONYMIC,BIRTHDAY
    from ok_personal
    where branch=branch_ and personal_code=personal_code_;
--
END;
--
--
procedure NEW_APPOINT(
  p_branch_           OK_PERSONAL.BRANCH%type := param.getparam('P_BRANCH'),
  personal_code_      OK_PERSONAL.PERSONAL_CODE%type := param.getparam('P_PERSONAL_CODE'),
  department_code_    OK_PERSONAL.department_code%type := param.getparam('P_DEPARTMENT_CODE'),
  post_code_          OK_PERSONAL.post_code%type := param.getparam('P_POST_CODE'),
  department_code_new_    OK_PERSONAL.department_code_new%type := param.getparam('P_DEPARTMENT_CODE_NEW'),
  post_code_new_          OK_PERSONAL.post_code_new%type := param.getparam('P_POST_CODE_NEW'),
  emp_code_           OK_PERSONAL.EMP_CODE%type := param.getparam('P_USERID'),
  v_date_            OK_PERSONAL.INS_DATE%type := param.getparam('P_VDATE'),
  check_ number := param.getparam('P_CHECK')
)
IS
  branch_ OK_PERSONAL.BRANCH%type;
  QuantityPost_ ok_stat.quantity_post%type;
  QuantityPostReal_ ok_stat.quantity_post%type;
  mes_ varchar2(2000);
BEGIN
--
  if p_branch_ is null
  then branch_:=p_branch_;
  else branch_:=info.getbranch;
  end if;
-- проверка наличия вакантного места по параметрам department_code и post_code и branch_
-- через количество должностей в OK_STAT
  select sum(quantity_post) into QuantityPost_
  from ok_stat
  where branch=branch_
  and department_code= department_code_new_
  and post_code = post_code_new_;
--
  select count(*) into QuantityPostReal_
  from ok_personal
  where branch=branch_
  and department_code= department_code_new_
  and post_code = post_code_new_
  and status_code=2;
--
  if QuantityPost_ =0 then
    raise_application_error( -20000, 'Указанное рабочее место не найдено . Операция Назначение прервана!');
  end if;
  if (QuantityPostReal_ >=QuantityPost_)
  and (check_=1)
  then
    mes_:=' ';
    for rec in (select *
      from ok_personal
      where branch=branch_
      and department_code= department_code_new_
      and post_code = post_code_new_
      and status_code=2)
    loop
      mes_:=substr(mes_||'('||rec.tabno||')'||rec.family||'; ',1,1900);
    end loop;
    raise_application_error( -20000, 'В штатном расписании указано '||To_char(QuantityPost_)||
      ' рабочих мест. Фактически назначено '||to_char(QuantityPostReal_)||' сотрудников:'||mes_||' Операция Назначение прервана!');
  end if;
--
  insert into okedb_appoints_arh
  select * from okedb_appoints
  where branch=branch_ and personal_code=personal_code_;
  delete from okedb_appoints
  where branch=branch_ and personal_code=personal_code_;
-- проставить на какую должность назначают
  update ok_personal set
    department_code_old = department_code,
    post_code_old = post_code,
    department_code_new = department_code_new_,
    post_code_new = post_code_new_,
    GOSUBMIT_CODE = is_goSended29,
    APPLICATION_DATE = v_date_
  where branch=branch_ and personal_code=personal_code_;
-- сохранить заявку в таблицу ГО
  insert into okedb_appoints (id,branch,PERSONAL_CODE,v_date,EMP_CODE,
    ins_date,state_code,comments,DEPARTMENT_CODE,POST_CODE,
    SPECIAL_CODE,DEPARTMENT_CODE_NEW,POST_CODE_NEW,SPECIAL_CODE_NEW,FAMILY,
    FIRST_NAME,PATRONYMIC,BIRTHDAY,tabno) select okedb_appoints_seq.nextval,
      branch, PERSONAL_CODE,v_date_,EMP_CODE,
    sysdate, is_goSended29 ,null,department_code,post_code,
    SPECIAL_CODE,DEPARTMENT_CODE_new,POST_CODE_new,SPECIAL_CODE_new,FAMILY,
    FIRST_NAME,PATRONYMIC,BIRTHDAY,tabno
    from ok_personal
    where branch=branch_ and personal_code=personal_code_;
--
END;
--
function GET_STAVKA(branch_ OK_personal.branch%type,personal_code_ OK_personal.personal_code%type) return ss_ok_zp_rate.zp_rate_name%type
is
zp_rate_name_ ss_ok_zp_rate.zp_rate_name%type;
begin
  for rec in (select e.branch,e.personal_code,
         max(zp_rate_date) max_zp_rate_date_
    from  ok_zp_rate d,ok_personal e
    where d.branch=e.branch
    and d.personal_code=e.personal_code
    and d.personal_code= personal_code_
     and e.branch=branch_
     group by e.branch,e.personal_code
  )
  loop
    select max(zp_rate_name) into           zp_rate_name_
    from ok_zp_rate c, ss_ok_zp_rate d
    where zp_rate_date=rec.max_zp_rate_date_
    and c.branch=rec.branch
    and c.personal_code=rec.personal_code
    and d.state_notes='A';
  end loop;
  return zp_rate_name_;
  EXCEPTION when no_data_found
  then
    RETURN 'не найдено';
end;
--
procedure CHECK_SALARY_FAKT(branch_ ok_stat.branch%type)
is
  in_branch ok_stat.branch%type;
begin
--
  if branch_ is null
  then
    in_branch := info.GetBranch;
  else
    in_branch := branch_;
  end if;
--
  for rec in (select a.POST_CODE, b.salary
     from ss_ok_post a, ss_ok_category b, ok_stat c
     where a.CATEGORY_CODE=b.CATEGORY_CODE
     and c.post_code=a.post_code
     and c.branch=in_branch
     and a.STATE_NOTES='A'
     and b.STATE_NOTES='A'
  )
  loop
    update ok_stat
    set  SALARY_FACT= rec.salary
    where branch=in_branch
    and post_code= rec.post_code;
  end loop;
--
  for rec in (select d.branch,d.personal_code,
         d.ZP_RATE_CODE,max(zp_rate_date) max_zp_rate_date_ ,
         round(b.salary* f.zP_RATE ,2) salary_
    from  ss_ok_post a, ss_ok_category b, ok_zp_rate d,ok_personal e,
       ss_ok_zp_rate f
    where d.branch=e.branch
    and d.personal_code=e.personal_code
    and a.CATEGORY_CODE=b.CATEGORY_CODE
    and d.zp_rate_code = f.zp_rate_code
     and e.post_code=a.post_code
     and e.branch=in_branch
     and a.STATE_NOTES='A'
     and b.STATE_NOTES='A'
     and f.STATE_NOTES='A'
     group by d.branch,d.personal_code,d.ZP_RATE_CODE,b.salary, f.zP_RATE
  )
  loop
    update ok_zp_rate
    set  ZP_FAKT= rec.salary_
    where branch=in_branch
    and personal_code=rec.personal_code
    and zp_rate_date=rec.max_zp_rate_date_;
  end loop;
--

end;
--------------------------------------------------------------------------------
  function CheckInn(a_inn char) return char is
    k number;
  begin
    if length(a_inn) <> 9 then
      return null;
    end if;
    k := (substr(a_inn, 1, 1) * 37 +
          substr(a_inn, 2, 1) * 29 +
          substr(a_inn, 3, 1) * 23 +
          substr(a_inn, 4, 1) * 19 +
          substr(a_inn, 5, 1) * 17 +
          substr(a_inn, 6, 1) * 13 +
          substr(a_inn, 7, 1) * 7 +
          substr(a_inn, 8, 1) * 3) / 11;
    return trunc(9 - (k - trunc(k)) * 9);
  exception
    when others then
      return null;
  end;
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
  function CheckPc(a_pc char) return char is
    s constant char(13) := '7317317317317';
    i pls_integer := 1;
    k pls_integer := 0;
  begin
    if length(a_pc) <> 14 then
      return null;
    end if;
    for i in 1..length(a_pc) - 1 loop
      k := k + (substr(a_pc, i, 1) * substr(s, i, 1));
    end loop;
    return mod(k, 10);
  end;
--------------------------------------------------------------------------------
procedure checkf(
   a_employer_inn                             char,
   a_employer_name                            varchar2,
   a_resident                                 number  :=0,
   a_last_name                                varchar2  ,
   a_first_name                               varchar2  ,
   a_middle_name                              varchar2  ,
   a_gender                                   number  :=0,
   a_birthday                                 date  ,
   a_region                                   varchar2  ,
   a_district                                 varchar2  ,
   a_settlement                               varchar2  ,
   a_birthplace                               varchar2  ,
   a_address_region                           varchar2  ,
   a_address_district                         varchar2  ,
   a_address_settlement                       varchar2  ,
   a_address_street                           varchar2  ,
   a_address_house                            varchar2  ,
   a_address_flat                             number  :=0,
   a_passport_series                          varchar2  ,
   a_passport_number                          varchar2  :=0,
   a_passport_date                            date  ,
   a_passport_place                           varchar2  ,
   a_identifier_number                        VARCHAR2 ,
   a_inn                                      char,
   a_dup_no                                   CHAR,
   a_s_deal_id                                NUMBER)
 is
   a_identifier_number_ varchar2(14);
 begin
   if a_resident is null then
    Errors.GenError (1203, 'Не введён признак резидента');
   end if;
   a_identifier_number_:=a_identifier_number;
   if a_resident=2 then
      a_identifier_number_:=REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(A_IDENTIFIER_NUMBER_,'A',1),'B',2),'C',3),'D',4),'E',5),'F',6);
   end if;
   if a_s_deal_id=4 then
      a_identifier_number_:=REPLACE(REPLACE(REPLACE(REPLACE(A_IDENTIFIER_NUMBER_,'I',3),'J',4),'K',5),'L',6);
   end if;
   if a_last_name is null then
    Errors.GenError (1204, 'Не введа фамилия');
   end if;
   if a_first_name is null then
    Errors.GenError (1205, 'Не введено имя');
   end if;
   if a_gender is null then
    Errors.GenError (1207, 'Не введён пол');
   end if;
   if a_birthday is null then
    Errors.GenError (1208, 'Не введена дата рождения');
   end if;
   if a_passport_series is null then
    Errors.GenError (1209, 'Не указана серия паспорта');
   end if;
   if a_passport_number is null then
    Errors.GenError (1210, 'Не указан номер паспорта');
   end if;
   if a_passport_date is null then
    Errors.GenError (1211, 'Не указана дата выдачи паспорта');
   end if;
   if a_passport_place is null then
    Errors.GenError (1212, 'Не указано кем выдан паспорт паспорта');
   end if;
   if a_identifier_number is null then
    Errors.GenError (1213, 'Не введён идетификационный номер');
   end if;
   if a_resident=1 then
      if length(a_passport_series)<>2 then
         Errors.GenError (0, 'Для резидента серия паспорта должна быть два знака');
      end if;
      if length(a_passport_number)<>7 then
         Errors.GenError (0, 'Для резидента номер паспорта должен быть семь знаков');
      end if;
      if ascii(substr(a_passport_series,1,1))>100 or ascii(substr(a_passport_series,1,1))>100 then
         Errors.GenError (0, 'В серии паспорта допустимы только заглавные латинские буквы');
      end if;
   end if;
   if ok_service.CheckPc(a_identifier_number_)<>Substr(a_identifier_number,14,1) then
    Errors.GenError (1215, 'Не верный идетификационный номер');
   end if;
   if length(a_identifier_number)<>14 then
    Errors.GenError (1214, a_identifier_number); --'Идетификационный номер должен быть 14 знаков'
--    Errors.GenError (1214, 'Идетификационный номер должен быть 14 знаков');
   end if;
   if a_gender=1 and substr(a_identifier_number_,1,1) not in('1','3','5') then
    Errors.GenError (1216, 'Пол не соответствует полу указанному в идетификационном номере');
   end if;
   if a_gender=2 and substr(a_identifier_number_,1,1) not in('2','4','6') then
    Errors.GenError (1216, 'Пол не соответствует полу указанному в идетификационном номере');
   end if;
   if substr(a_identifier_number,2,6) <> to_char(a_birthday,'ddmmyy') then
    Errors.GenError (1217, 'Дата рождения не соответствует дате указаной в идетификационном номере');
   end if;
   if trim(a_inn) is not null then
     if substr(a_inn,1,1) not in ('4','5','6','7') then
       Errors.GenError (1218, substr(a_inn,1,1)); --'ИНН физического лица не может начинаться с '||substr(a_inn,1,1)||' "'||a_inn||'"');
     end if;
     if Length(LTRIM(RTRIM(a_inn)))!=9 then
       Errors.GenError (1219, 'В ИНН должно быть 9 знаков ');
     end if;
     if a_inn!=substr(a_inn,1,8)||ok_service.checkinn(a_inn) then
       Errors.GenError (1220, 'В ИНН несовпадает контрольное значение ');
     end if;
   end if;
--   for rec_form in (select /*+ index (FORM XUK_FORM_IN_DN)*/ * from form where identifier_number=a_identifier_number and dup_no = a_dup_no)
/*
   loop
     if rec_form.resident<>a_resident then
        Errors.GenError (0, 'Несоответствие с уже зарегистрированной анкетой по полю "признак резидента"');
     end if;
     if rec_form.last_name<>a_last_name then
       Errors.GenError (0, 'Несоответствие с уже зарегистрированной анкетой по полю "фамилия"');
     end if;
     if rec_form.first_name<>a_first_name then
        Errors.GenError (0, 'Несоответствие с уже зарегистрированной анкетой по полю "имя"');
     end if;
     if rec_form.gender<>a_gender then
        Errors.GenError (0, 'Несоответствие с уже зарегистрированной анкетой по полю "пол"');
     end if;
     if rec_form.birthday<>a_birthday then
        Errors.GenError (0, 'Несоответствие с уже зарегистрированной анкетой по полю "дата рождения"');
     end if;
     if rec_form.passport_series<>a_passport_series then
        Errors.GenError (0, 'Несоответствие с уже зарегистрированной анкетой по полю "серия паспорта"');
     end if;
     if rec_form.passport_number<>a_passport_number then
        Errors.GenError (0, 'Несоответствие с уже зарегистрированной анкетой по полю "номер паспорта"');
     end if;
     if rec_form.passport_date<>a_passport_date then
        Errors.GenError (0, 'Несоответствие с уже зарегистрированной анкетой по полю "дата выдачи паспорта"');
     end if;
   end loop;
*/
   if a_employer_inn is not null then
     if substr(a_employer_inn,1,1)  in ('5','6','7') then        --'4',
       Errors.GenError (1221, 'ИНН юридического лица не может начинаться с '||substr(a_employer_inn,1,1));
     end if;
     if Length(LTRIM(RTRIM(a_employer_inn)))!=9 then
       Errors.GenError (1222, 'В ИНН орг-ции должно быть 9 знаков ');
     end if;
     if a_employer_inn!=substr(a_employer_inn,1,8)||ok_service.checkinn(a_employer_inn) then
       Errors.GenError (1223, 'В ИНН орг-ции несовпадает контрольное значение ');
     end if;
   end if;
 end;
--
function GET_CATEGORY_CODE(post_code_ ss_OK_post.post_code%type) return ss_ok_category.category_code%type
is
category_code_ ss_ok_category.category_code%type;
begin
  SELECT d.category_code into category_code_
                 from ss_ok_post d
                 where d.post_code= post_code_
                 and d.state_notes like 'A';
  return category_code_;
  EXCEPTION when no_data_found
  then
    RETURN 99;
end;
--
function GET_POST_Salary(post_code_ ss_OK_post.post_code%type) return ss_ok_category.salary%type
is
category_code_ SS_OK_POST.post_name%type;
category_salary_ ss_ok_category.salary%type;
begin
  SELECT d.category_code into category_code_
                 from ss_ok_post d
                 where d.post_code= post_code_
                 and d.state_notes like 'A';
  SELECT d.salary into category_salary_
                 from ss_ok_category d
                 where d.category_code= category_code_
                 and d.state_notes like 'A';
  return category_salary_;
  EXCEPTION when no_data_found
  then
    RETURN 0;
end;
--
--
function GET_WORK_PERIOD_BY_TYPE(branch_ ok_hospital.branch%type,
 personal_code_  ok_hospital.personal_code%type,date_rep_ ok_hospital.date_open%type,
 my_type_period_code_ ss_ok_type_period.type_period_code%type)
  return ok_hospital.work_period%type
is
-- my_type_period_code_ 5 это тип2+тип3
  ddIN number;
  ddOUT number;
  mmIN number;
  mmOUT number;
  yyyyIN number;
  yyyyOUT number;
  dd number;
  mm number;
  yy number;
  min_dd number;
  min_mm number;
  min_yyyy number;
  max_dd number;
  max_mm number;
  max_yyyy number;
  next_min_mm number;
  next_min_yyyy number;
  min_IN_OFFICE_DATE_ date;
  max_IN_OFFICE_DATE_ date;
  next_min_IN_OFFICE_DATE_ date; -- 1 число следующего месяца
  first_day_IN_OFFICE_DATE_ date;
  IN_OFFICE_DATE_ date;
  first_day_OUT_OFFICE_DATE_ date;
  OUT_OFFICE_DATE_ date;
  max_OUT_OFFICE_DATE_ date;
  PREV_OUT_OFFICE_DATE_ date;
  ddIN_count number;
  ddOUT_count number;
  dd_delta number;
  mm_delta number;
  date_open_ date;
  my_type_period_code1_ ss_ok_type_period.type_period_code%type;
  my_type_period_code2_ ss_ok_type_period.type_period_code%type;
begin
  if my_type_period_code_=5
  then
    my_type_period_code1_ :=2;
    my_type_period_code2_ :=3;
  else
    my_type_period_code1_ := my_type_period_code_;
    my_type_period_code2_ := my_type_period_code_;
  end if;

  dd :=0;
  mm :=0;
  yy :=0;
  date_open_:=date_rep_+1;
-- начало стажа заданного типа
  select min(IN_OFFICE_DATE) into min_IN_OFFICE_DATE_
    from ok_period
    where branch=branch_
    and personal_code=personal_code_
    and IN_OFFICE_DATE<date_open_
    and TYPE_PERIOD_CODE in (my_type_period_code1_,my_type_period_code2_);
-- конец стажа заданного типа. если еще не кончился,
-- то берется дата отчета
  select max(IN_OFFICE_DATE) into max_IN_OFFICE_DATE_
    from ok_period
    where branch=branch_
    and personal_code=personal_code_
    and IN_OFFICE_DATE<date_open_
    and TYPE_PERIOD_CODE in (my_type_period_code1_,my_type_period_code2_);
--
  select OUT_OFFICE_DATE into max_OUT_OFFICE_DATE_
    from ok_period
    where branch=branch_
    and personal_code=personal_code_
    and TYPE_PERIOD_CODE in (my_type_period_code1_,my_type_period_code2_)
    and IN_OFFICE_DATE = max_IN_OFFICE_DATE_;
--
  if (max_OUT_OFFICE_DATE_ is null)
  then
    date_open_ := date_rep_;
  else
    if (max_OUT_OFFICE_DATE_ > date_rep_)
    then
      date_open_ := date_rep_;
    else
      date_open_ := max_OUT_OFFICE_DATE_;
    end if;
  end if;
-- если число мес конца больше или равно число мес начала
  ddIN := to_number(to_char(min_IN_OFFICE_DATE_,'dd'));
  ddOUT := to_number(to_char(date_open_-1,'dd'));
  dd:= ddOUT -ddIN ;
  if dd<0
  then
-- отрезок в начале стажа
      ddIN_count := (last_day(min_IN_OFFICE_DATE_) - min_IN_OFFICE_DATE_)+1;
-- отрезок в конце стажа
      ddOUT_count :=( (date_open_-1)- to_date('01.'||to_char(date_open_-1,'mm.yyyy') ,'dd.mm.yyyy') )+1;
    dd:= ddIN_count+ddOUT_count;
--*  else
--*    dd:=dd+1; --включительно, например стаж с 01.01.2009 по 01.01.2009 - один день
  end if;
-- месяцы
      mm:= mm +trunc(MONTHS_BETWEEN( date_open_-1 ,  min_IN_OFFICE_DATE_ )   );
-- вычитание промежутков в стаже
--
  PREV_OUT_OFFICE_DATE_:= min_IN_OFFICE_DATE_;
  for rec in (select IN_OFFICE_DATE,OUT_OFFICE_DATE from ok_period
    where branch=branch_
    and personal_code=personal_code_
    and IN_OFFICE_DATE<date_open_
    and TYPE_PERIOD_CODE in (my_type_period_code1_,my_type_period_code2_)
    order by IN_OFFICE_DATE)
  loop
    dd_delta := rec.in_office_date-PREV_OUT_OFFICE_DATE_;
    mm_delta :=0;
    if dd_delta>1
    then
    -- есть промежуток
    -- вычислить промежуток сколько дней и месяцев
      ddIN := to_number(to_char(PREV_OUT_OFFICE_DATE_,'dd'));
      ddOUT := to_number(to_char(rec.in_office_date,'dd'));
      dd_delta:= ddOUT -ddIN-1 ;
      if dd_delta<0
      then
-- отрезок в начале PREV_OUT_OFFICE_DATE_
--*        if to_char(PREV_OUT_OFFICE_DATE_,'dd')='01'
--*        then -- первое число
--*          ddIN_count:=0;
--*          mm_delta := mm_delta+1;
--*        else
--*          ddIN_count := (last_day(PREV_OUT_OFFICE_DATE_) - PREV_OUT_OFFICE_DATE_) +1;
--*        end if;
          ddIN_count := (last_day(PREV_OUT_OFFICE_DATE_) - PREV_OUT_OFFICE_DATE_) ;
-- отрезок в конце rec.in_office_date
--*        if last_day(rec.in_office_date-1)=(rec.in_office_date-1)
--*        then -- последний день месяца
--*          ddOUT_count:=0;
--*          mm_delta := mm_delta+1;
--*         else
--*           ddOUT_count := ( rec.in_office_date- to_date('01.'||to_char(rec.in_office_date,'mm.yyyy') ,'dd.mm.yyyy') )+1;
--*         end if;
           ddOUT_count := ( rec.in_office_date- to_date('01.'||to_char(rec.in_office_date,'mm.yyyy') ,'dd.mm.yyyy') );
           dd_delta := ddIN_count+ddOUT_count-1;
      end if;
-- месяцы
      mm_delta:= mm_delta+trunc(MONTHS_BETWEEN(  rec.in_office_date, PREV_OUT_OFFICE_DATE_));
      dd:= dd -dd_delta ;
  if dd is null then raise_application_error(-20000,'3)'||to_char(nvl(dd,-9999)) );
  end if;
      mm:=mm-mm_delta;
      if dd<0
      then
        dd:=dd+30;
        mm:=mm-1;
      end if;
    else
    -- нет промежутка
      dd_delta:=0;
    end if;
--
    if rec.out_office_date is not null
    then
      PREV_OUT_OFFICE_DATE_:=rec.out_office_date;
    end if;
--
  end loop;
-- вычитание Кол-во дней декрета, которые исключаются из банковского стажа
  if (my_type_period_code_=5)
  or (my_type_period_code1_ =2)
  or (my_type_period_code2_ =3)
  then
    select nvl(maidenstag,0) into dd_delta from ok_personal 
    where branch=branch_ and personal_code=personal_code_;
    if dd_delta>0
    then
      dd:= dd -dd_delta ;
      WHILE (dd<0) LOOP
        dd:=dd+30;
        mm:=mm-1;
      END LOOP;
    end if;
  end if;
-- месяц год
    if mm < 0 then mm:=0;end if;
    yy:=trunc(mm/12);
    mm:= mm-(yy*12);
    if dd is null then dd:=0;end if;
  RETURN to_char(yy)||' лет '||to_char(mm)||' мес.' ||to_char(dd)||' дн.';
  EXCEPTION when no_data_found
  then
    RETURN ' ';
end;
--
function GET_WORK_PERIOD(branch_ ok_hospital.branch%type,
 personal_code_  ok_hospital.personal_code%type,date_open_ ok_hospital.date_open%type)
  return ok_hospital.work_period%type
is
  ddIN number;
  ddOUT number;
  mmIN number;
  mmOUT number;
  yyyyIN number;
  yyyyOUT number;
  dd number;
  mm number;
  yy number;
  min_dd number;
  min_mm number;
  min_yyyy number;
  max_dd number;
  max_mm number;
  max_yyyy number;
  next_min_mm number;
  next_min_yyyy number;
  min_IN_OFFICE_DATE_ date;
  next_min_IN_OFFICE_DATE_ date; -- 1 число следующего месяца
  first_day_IN_OFFICE_DATE_ date;
  IN_OFFICE_DATE_ date;
  first_day_OUT_OFFICE_DATE_ date;
  OUT_OFFICE_DATE_ date;
  PREV_OUT_OFFICE_DATE_ date;
  ddIN_count number;
  ddOUT_count number;
  dd_delta number;
  mm_delta number;
begin
  dd :=0;
  mm :=0;
  yy :=0;
-- начало стажа
  select min(IN_OFFICE_DATE) into min_IN_OFFICE_DATE_
    from ok_period
    where branch=branch_
    and personal_code=personal_code_
    and IN_OFFICE_DATE<date_open_;
-- если число мес конца больше или равно число мес начала
  ddIN := to_number(to_char(min_IN_OFFICE_DATE_,'dd'));
  ddOUT := to_number(to_char(date_open_-1,'dd'));
  dd:= ddOUT -ddIN ;
  if dd<0
  then
-- отрезок в начале стажа
      ddIN_count := (last_day(min_IN_OFFICE_DATE_) - min_IN_OFFICE_DATE_)+1;
-- отрезок в конце стажа
      ddOUT_count :=( (date_open_-1)- to_date('01.'||to_char(date_open_-1,'mm.yyyy') ,'dd.mm.yyyy') )+1;
    dd:= ddIN_count+ddOUT_count;
--*  else
--*    dd:=dd+1; --включительно, например стаж с 01.01.2009 по 01.01.2009 - один день
  end if;
-- месяцы
      mm:= mm +trunc(MONTHS_BETWEEN( date_open_-1 ,  min_IN_OFFICE_DATE_ )   );
-- вычитание промежутков в стаже
--
  PREV_OUT_OFFICE_DATE_:= min_IN_OFFICE_DATE_;
  for rec in (select IN_OFFICE_DATE,OUT_OFFICE_DATE from ok_period
    where branch=branch_
    and personal_code=personal_code_
    and IN_OFFICE_DATE<date_open_
    order by IN_OFFICE_DATE)
  loop
    dd_delta := rec.in_office_date-PREV_OUT_OFFICE_DATE_;
    mm_delta :=0;
    if dd_delta>1
    then
    -- есть промежуток
    -- вычислить промежуток сколько дней и месяцев
      ddIN := to_number(to_char(PREV_OUT_OFFICE_DATE_,'dd'));
      ddOUT := to_number(to_char(rec.in_office_date,'dd'));
      dd_delta:= ddOUT -ddIN-1 ;
      if dd_delta<0
      then
-- отрезок в начале PREV_OUT_OFFICE_DATE_
--*        if to_char(PREV_OUT_OFFICE_DATE_,'dd')='01'
--*        then -- первое число
--*          ddIN_count:=0;
--*          mm_delta := mm_delta+1;
--*        else
--*          ddIN_count := (last_day(PREV_OUT_OFFICE_DATE_) - PREV_OUT_OFFICE_DATE_) +1;
--*        end if;
          ddIN_count := (last_day(PREV_OUT_OFFICE_DATE_) - PREV_OUT_OFFICE_DATE_) ;
-- отрезок в конце rec.in_office_date
--*        if last_day(rec.in_office_date-1)=(rec.in_office_date-1)
--*        then -- последний день месяца
--*          ddOUT_count:=0;
--*          mm_delta := mm_delta+1;
--*         else
--*           ddOUT_count := ( rec.in_office_date- to_date('01.'||to_char(rec.in_office_date,'mm.yyyy') ,'dd.mm.yyyy') )+1;
--*         end if;
           ddOUT_count := ( rec.in_office_date- to_date('01.'||to_char(rec.in_office_date,'mm.yyyy') ,'dd.mm.yyyy') );
           dd_delta := ddIN_count+ddOUT_count-1;
      end if;
-- месяцы
      mm_delta:= mm_delta+trunc(MONTHS_BETWEEN(  rec.in_office_date, PREV_OUT_OFFICE_DATE_));
      dd:= dd -dd_delta ;
  if dd is null then raise_application_error(-20000,'3)'||to_char(nvl(dd,-9999)) );
  end if;
      mm:=mm-mm_delta;
      if dd<0
      then
        dd:=dd+30;
        mm:=mm-1;
      end if;
    else
    -- нет промежутка
      dd_delta:=0;
    end if;
--
    if rec.out_office_date is not null
    then
      PREV_OUT_OFFICE_DATE_:=rec.out_office_date;
    end if;
--
  end loop;
-- вычитание Кол-во дней декрета, которые исключаются из банковского стажа
  select nvl(maidenstag,0) into dd_delta from ok_personal 
  where branch=branch_ and personal_code=personal_code_;
  if dd_delta>0
  then
    dd:= dd -dd_delta ;
    WHILE (dd<0) LOOP
        dd:=dd+30;
        mm:=mm-1;
    END LOOP;
  end if;
-- месяц год
    if mm < 0 then mm:=0;end if;
    yy:=trunc(mm/12);
    mm:= mm-(yy*12);
    if dd is null then dd:=0;end if;
  RETURN to_char(yy)||' лет '||to_char(mm)||' мес.' ||to_char(dd)||' дн.';
end;
-- Вид состава
function GET_STAFFNAME(code_ ss_ok_staff.staff_code%type)
  return ss_ok_staff.staff_name%type
is
name_ SS_OK_staff.staff_name%type;
begin
  select staff_name into name_
  from ss_ok_staff
  where staff_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-- Род войск
function GET_TYPEFORCENAME(code_ ss_ok_type_force.type_force_code%type)
  return ss_ok_type_force.type_force_name%type
is
name_ SS_OK_type_force.type_force_name%type;
begin
  select type_force_name into name_
  from ss_ok_type_force
  where type_force_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
function GET_MOTIVNAME(code_ ss_ok_MOTIVE_DISMISSIAL.MOTIVE_DISMISSIAL_code%type)
  return ss_ok_MOTIVE_DISMISSIAL.MOTIVE_DISMISSIAL_name%type
is
name_ SS_OK_MOTIVE_DISMISSIAL.MOTIVE_DISMISSIAL_name%type;
begin
  select MOTIVE_DISMISSIAL_name into name_
  from ss_ok_MOTIVE_DISMISSIAL
  where MOTIVE_DISMISSIAL_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-- Группа учета
function GET_ARMYGROUPNAME(code_ ss_ok_army_group.army_group_code%type)
  return ss_ok_army_group.army_group_name%type
is
name_ SS_OK_army_group.army_group_name%type;
begin
  select army_group_name into name_
  from ss_ok_army_group
  where army_group_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-- Категория учета
function GET_CATEGORYARMYNAME(code_ ss_ok_category_army.category_army_code%type)
  return ss_ok_category_army.category_army_name%type
is
name_ SS_OK_category_army.category_army_name%type;
begin
  select category_army_name into name_
  from ss_ok_category_army
  where category_army_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-- Воинское звание
function GET_MILITARYRANKNAME(code_ ss_ok_military_rank.military_rank_code%type)
  return ss_ok_military_rank.military_rank_name%type
is
name_ SS_OK_military_rank.military_rank_name%type;
begin
  select military_rank_name into name_
  from ss_ok_military_rank
  where military_rank_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
--
--
function GET_ELECTIONADDRESS(code_ ss_ok_ELection.ELECTION_CODE%type) return ss_ok_ELection.ELECTION_address%type
is
name_ SS_OK_election.election_address%type;
begin
  select election_address into name_
  from ss_ok_election
  where election_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-------
function GET_ELECTIONNAME(code_ ss_ok_ELection.ELECTION_CODE%type) return ss_ok_ELection.ELECTION_NAME%type
is
name_ SS_OK_election.election_name%type;
begin
  select election_name into name_
  from ss_ok_election
  where election_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
--
function GET_QUANTITYPOSTREAL(branch_ ok_personal.branch%type,Department_CODE_ OK_STAT.department_CODE%type,
  post_CODE_ OK_STAT.post_CODE%type, special_CODE_ OK_STAT.special_CODE%type) return OK_STAT.quantity_post%type
is
quantity_ OK_STAT.quantity_post%type;
begin
  select count(*) into quantity_
  from ok_personal
  where branch=branch_ and department_code= department_code_
  and post_code = post_code_
  and (special_code = special_code_
      or (special_code is null and special_code_ is null))
  and status_code=2;
  return quantity_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 0;
end;
--
function GET_QUANTITYPOST(branch_ ok_personal.branch%type,Department_CODE_ OK_STAT.department_CODE%type,
  post_CODE_ OK_STAT.post_CODE%type, special_CODE_ OK_STAT.special_CODE%type) return OK_STAT.quantity_post%type
is
quantity_ OK_STAT.quantity_post%type;
conut_ number(3);
begin
  select count(quantity_post) into conut_
  from ok_stat
  where branch=branch_ and department_code= department_code_
  and post_code = post_code_;
  if conut_>1
  then
    select quantity_post into quantity_
    from ok_stat
    where branch=branch_ and department_code= department_code_
    and (special_code= special_code_
      or (special_code is null and special_code_ is null))
    and post_code = post_code_
    and rownum<2;
  else
    select quantity_post into quantity_
    from ok_stat
    where branch=branch_ and department_code= department_code_
    and (special_code= special_code_
      or (special_code is null and special_code_ is null))
    and post_code = post_code_
    and rownum<2;
  end if;
  return quantity_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN -1;
end;
--
function GET_ACADEMICNAME(CODE_ SS_OK_ACADEMIC.ACADEMIC_CODE%type) return SS_OK_ACADEMIC.ACADEMIC_NAME%type
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
-------
function GET_RELATIONNAME(CODE_ SS_OK_RELATION.RELATION_CODE%type) return SS_OK_RELATION.RELATION_NAME%type
is
name_ SS_OK_RELATION.RELATION_name%type;
begin
  select RELATION_name into name_
  from ss_ok_RELATION
  where RELATION_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
----------
function GET_REGPLACENAME(CODE_ SS_OK_regplace.regplace_CODE%type) return SS_OK_regplace.regplace_NAME%type
is
name_ SS_OK_regplace.regplace_name%type;
begin
  select regplace_name into name_
  from ss_ok_regplace
  where regplace_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-------
function GET_YOUTHNAME(CODE_ SS_OK_youth.youth_CODE%type) return SS_OK_youth.youth_NAME%type
is
name_ SS_OK_youth.youth_name%type;
begin
  select youth_name into name_
  from ss_ok_youth
  where youth_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
----------
function GET_BANKNAME(bank_id_ S_mfo.bank_id%type) return S_mfo.bank_NAME%type
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
function GET_ARMYTYPE(CODE_ SS_OK_ARMY.ARMY_CODE%type) return SS_OK_ARMY.ARMY_TYPE%type
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
function GET_ARTICLENAME(CODE_ SS_OK_ARTICLE.ARTICLE_CODE%type) return SS_OK_ARTICLE.ARTICLE_NAME%type
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
--
function GET_ARTICLENUM(CODE_ SS_OK_ARTICLE.ARTICLE_CODE%type) return SS_OK_ARTICLE.ARTICLE_NUM%type
is
name_ SS_OK_ARTICLE.ARTICLE_NUM%type;
begin
  select ARTICLE_NUM into name_
  from ss_ok_ARTICLE
  where ARTICLE_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-----------------------------
function GET_BASISNAME(CODE_ SS_OK_BASIS.BASIS_CODE%type) return SS_OK_BASIS.BASIS_NAME%type
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
function GET_DEGREENAME(CODE_ SS_OK_DEGREE.DEGREE_CODE%type) return SS_OK_DEGREE.DEGREE_NAME%type
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
-----------------
function GET_FULLDEPARTMENTNAME(CODE_ SS_OK_DEPARTMENT.DEPARTMENT_CODE%type) return OK_PERIOD.ESTABLISHED_DEPARTMENT%type
is
name_ varchar2(1000);
begin
  name_:='';
  for r in (select level, d.department_name , d.department_code,
         d.high_dep_code from ss_ok_department d
         connect by d.department_code = prior  d.high_dep_code
         start with d.department_code=code_
  )
  loop
    name_ := r.department_name || ' ' || name_;
  end loop;
  name_ := substr(name_,1,250);
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
--------------
function GET_DEPARTMENTNAME(CODE_ SS_OK_DEPARTMENT.DEPARTMENT_CODE%type) return SS_OK_DEPARTMENT.DEPARTMENT_NAME%type
is
name_ SS_OK_DEPARTMENT.DEPARTMENT_name%type;
begin
  select DEPARTMENT_NAME into name_
  from ss_ok_DEPARTMENT
  where DEPARTMENT_CODE=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
-------------------------------
function GET_EDUCATIONNAME(CODE_ SS_OK_EDUCATION.EDUCATION_CODE%type) return SS_OK_EDUCATION.EDUCATION_NAME%type
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
function GET_FITNESSARMYTYPE(CODE_ SS_OK_FITNESS_ARMY.FITNESS_ARMY_CODE%type) return SS_OK_FITNESS_ARMY.FITNESS_ARMY_TYPE%type
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
function GET_INSTITUTIONNAME(CODE_ SS_OK_INSTITUTION.INSTITUTION_CODE%type) return SS_OK_INSTITUTION.INSTITUTION_NAME%type
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
function GET_LANGUAGENAME(CODE_ SS_OK_LANGUAGE.LANGUAGE_CODE%type) return SS_OK_LANGUAGE.LANGUAGE_NAME%type
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
function GET_LEAVENAME(CODE_ SS_OK_LEAVE.LEAVE_CODE%type) return SS_OK_LEAVE.LEAVE_NAME%type
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
function GET_LEVELNAME(CODE_ SS_OK_LEVEL_LANGUAGE.LEVEL_LANGUAGE_CODE%type) return SS_OK_LEVEL_LANGUAGE.LEVEL_LANGUAGE_NAME%type
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
function GET_PARTYNAME(CODE_ SS_OK_PARTY.PARTY_CODE%type) return SS_OK_PARTY.PARTY_NAME%type
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
function GET_PENALTYNAME(CODE_ SS_OK_PENALTY.PENALTY_CODE%type) return SS_OK_PENALTY.PENALTY_NAME%type
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
function GET_QUALIFICATIONNAME(CODE_ SS_OK_QUALIFICATION.QUALIFICATION_CODE%type) return SS_OK_QUALIFICATION.QUALIFICATION_NAME%type
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
function GET_TYPEPERIODNAME(CODE_ SS_OK_TYPE_PERIOD.TYPE_PERIOD_CODE%type) return SS_OK_TYPE_PERIOD.TYPE_PERIOD_NAME%type
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
function GET_BIRTHPLACE(BIRTHPLACE_ OK_PERSONAL.BIRTHPLACE%type,REGION_ID_ OK_PERSONAL.REGION_ID%type,DISTR_ OK_PERSONAL.DISTR%type) return OK_PERSONAL.BIRTHPLACE%type
is
BIRTHPLACE_NAME_ OK_PERSONAL.BIRTHPLACE%type;
begin
  if BIRTHPLACE_ is null
  then
--raise_application_error(-20000,'BIRTHPLACE_ = null' );
    BIRTHPLACE_NAME_:= substr(get_regionname(REGION_ID_)||','||get_distrname(DISTR_),1,250);
  else
--raise_application_error(-20000,'BIRTHPLACE_ не null' );
    BIRTHPLACE_NAME_:= BIRTHPLACE_;
  end if;
  return BIRTHPLACE_NAME_;
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
function GET_GENDERNAME(GENDER_CODE_ SS_OK_GENDER.gender_code%type) return SS_OK_GENDER.gender_name%type
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
--function OK_SERVICE.GET_GENDERNAME(PP.GENDER_CODE)','C','Пол','Пол',1,null,
--'select to_char(gender_code) id,gender_name name from ss_ok_gender');
function GET_S_STR(CODE_STR_ S_STR.CODE_STR%type) return S_STR.name%type
is
 name_ S_STR.name%type;
begin
  select name into name_
  from s_str
  where CODE_STR=CODE_STR_;
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
--
function GET_REGIONNAME(region_id_ S_region.region_id%type) return S_region.region_nam%type
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
--function OK_SERVICE.GET_REGIONNAME(PP.REGION_ID)','C','Место рождения (область)','Место рождения область',2,null,
--'select region_id id,region_nam name from s_region');
function GET_DISTRNAME(distr_ S_distr.distr%type) return S_distr.distr_name%type
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
--function OK_SERVICE.GET_DISTRNAME(PP.DISTR)','C','Место рождения город','Место рождения (город)',3,null,
--'select distr id, distr_name name from s_distr');
function GET_NATIONALITYNAME(NATIONALITY_CODE_ SS_OK_NATIONALITY.NATIONALITY_code%type) return SS_OK_NATIONALITY.NATIONALITY_name%type
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
--function OK_SERVICE.GET_NATIONALITYNAME(PP.NATIONALITY_CODE)','C','Национальность','Национальность',3,null,'select to_char(nationality_code) id, nationality_name name from ss_ok_nationality');
function GET_FAMILYSTATUSNAME(FAMILY_STATUS_CODE_ SS_OK_FAMILY_STATUS.FAMILY_STATUS_code%type) return SS_OK_FAMILY_STATUS.FAMILY_STATUS_name%type
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
--function OK_SERVICE.GET_FAMILYSTATUSNAME(PP.FAMILY_STATUS_CODE)','C','Семейное положение','Семейное положение',1,null,'select family_status_code id, family_status_name name from ss_ok_family_status');
function GET_REGTYPENAME(REG_TYPE_CODE_ SS_OK_REG_TYPE.REG_TYPE_code%type) return SS_OK_REG_TYPE.REG_TYPE_name%type
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
--function OK_SERVICE.GET_REGTYPENAME(PP.REG_TYPE_CODE)','C','Тип прописки','Тип прописки',1,null,'select reg_type_code id, reg_type_name name from ss_ok_reg_type');
function GET_PROFMEMBERNAME(PROFMEMBER_ SS_OK_PROFMEMBER.PROFMEMBER%type) return SS_OK_PROFMEMBER.PROFMEMBER_name%type
is
  PROFMEMBER_name_ SS_OK_PROFMEMBER.PROFMEMBER_name%type;
  PROFMEMBER2_ SS_OK_PROFMEMBER.PROFMEMBER%type;
begin
-- 1-да     0 или 2-нет
  if PROFMEMBER_=2
  then PROFMEMBER2_:=0;
  else PROFMEMBER2_:=PROFMEMBER_;
  end if;
  select PROFMEMBER_name into PROFMEMBER_name_
    from SS_OK_PROFMEMBER
   where PROFMEMBER = PROFMEMBER2_;
  return PROFMEMBER_name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
--function OK_SERVICE.GET_PROFMEMBERNAME(PP.PROFMEMBER)','C','Профсоюз','Профсоюз',5,null,'select ''0'' id, ''ДА'' name from dual inion all select ''1'' id, ''НЕТ'' name from dual');
function GET_EDUCATIONTITLENAME(EDUCATION_TITLE_CODE_ SS_OK_EDUCATION_TITLE.EDUCATION_TITLE_code%type) return SS_OK_EDUCATION_TITLE.EDUCATION_TITLE_name%type
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
--function OK_SERVICE.GET_EDUCATIONTITLENAME(PP.EDUCATION_TITLE_CODE)','C','Образование','Образование',3,null,'select to_char (EDUCATION_TITLE_CODE) id, EDUCATION_TITLE_NAME name from SS_OK_EDUCATION_TITLE');
function GET_STATUSNAME(STATUS_CODE_ SS_OK_STATUS.status_code%type) return SS_OK_STATUS.status_name%type
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
----
procedure OKNEWDEP(
  branch_             OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  DEPARTMENT_CODE_ ss_ok_department.department_code%type := Param.getParam('DEPARTMENTCODE'),
  DEPARTMENT_NAME_ ss_ok_department.department_name%type := Param.getParam('DEPARTMENTNAME'),
  DEPARTMENT_NUM_ ss_ok_department.department_num%type := Param.getParam('DEPARTMENTNUM'),
  HIGH_DEP_CODE_ ss_ok_department.high_dep_code%type := Param.getParam('HIGHDEPCODE'),
  DEPARTMENT_TYPE_CODE_ ss_ok_department.department_type_code%type := Param.getParam('DEPARTMENTTYPECODE'),
  LEVEL_DEPARTMENT_CODE_ ss_ok_department.level_department_code%type := Param.getParam('LEVELDEPARTMENTCODE'),
  emp_code_           OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
  )
is
  oldname_ ss_ok_department.department_name%type;
  old_state_notes_ ss_ok_department.state_notes%type;
  old_LEVEL_DEPARTMENT_CODE_ ss_ok_department.LEVEL_DEPARTMENT_CODE%type;
  DEPARTMENT_ID_ ss_ok_department.department_id%type;
  IN_HIGH_DEP_CODE_ ss_ok_department.high_dep_code%type;
  function isNewDep
  return boolean is begin
       select  department_name, state_notes into oldname_, old_state_notes_
       from ss_ok_department
       where department_code = department_code_
       and rownum=1;
       raise_application_error( -20000, 'Подразделение с кодом: '|| department_code_ ||
         ' уже зарегистрировано в подсистеме ОК! Название: '||oldname_||
         ' состояние '||old_state_notes_);
  exception when no_data_found then return true;
  end isNewDep;
--
  function isNewDepName
  return boolean is begin
       select  department_name, state_notes, LEVEL_DEPARTMENT_CODE
         into oldname_, old_state_notes_,old_LEVEL_DEPARTMENT_CODE_
       from ss_ok_department
       where upper(department_name) = upper(department_name_)
       and LEVEL_DEPARTMENT_CODE=LEVEL_DEPARTMENT_CODE_
       and rownum=1;
       raise_application_error( -20000, 'Подразделение '|| department_name_ ||
         ' уже зарегистрировано в подсистеме ОК! Название: '||oldname_||
         ' уровень='||old_LEVEL_DEPARTMENT_CODE_||' состояние='||old_state_notes_);
  exception when no_data_found then return true;
  end isNewDepName;
--
begin
  -- код , наименование , номер
  -- проверить наличие такого же кода, если код есть то raise
  if not isnewDep
  then
       raise_application_error( -20000, 'Подразделение с кодом: '|| department_code_ ||
         ' уже зарегистрировано в подсистеме ОК! Название: '||oldname_||
         ' состояние '||old_state_notes_);
  end if;
  if not isnewDepName
  then
       raise_application_error( -20000, 'Подразделение '|| department_name_ ||
         ' уже зарегистрировано в подсистеме ОК! Название: '||oldname_||
         ' состояние '||old_state_notes_);
  end if;
  if (HIGH_DEP_CODE_=0) or (HIGH_DEP_CODE_ is null)
  then
    IN_HIGH_DEP_CODE_ := null;
  else
    IN_HIGH_DEP_CODE_ := HIGH_DEP_CODE_ ;
  end if;
  -- добавить в таблицу ss_ok_department
      select SEQ_SS_OK_DEPARTMENT.Nextval into DEPARTMENT_ID_ from dual;
      insert into SS_OK_DEPARTMENT
           (DEPARTMENT_ID, BRANCH,
            DEPARTMENT_CODE, DEPARTMENT_NAME,
            DEPARTMENT_NUM, DEPARTMENT_TYPE_CODE,
            HIGH_DEP_CODE, STATE_NOTES,
            EMP_CODE, INS_DATE,
            LEVEL_DEPARTMENT_CODE
            )
      values (DEPARTMENT_ID_, BRANCH_,
            DEPARTMENT_CODE_, DEPARTMENT_NAME_,
            DEPARTMENT_NUM_, DEPARTMENT_TYPE_CODE_,
            IN_HIGH_DEP_CODE_, 'A',
            EMP_CODE_, sysDATE,
            LEVEL_DEPARTMENT_CODE_);
  -- вернуть параметр DEPARTMENTID - ss_ok_department.department_id
  param.setparam('DEPARTMENTID',DEPARTMENT_ID_);
end;
----
----
procedure OKDEP(
  branch_             OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  DEPARTMENT_CODE_ ss_ok_department.department_code%type := Param.getParam('DEPARTMENTCODE'),
  DEPARTMENT_NAME_ ss_ok_department.department_name%type := Param.getParam('DEPARTMENTNAME'),
  DEPARTMENT_NUM_ ss_ok_department.department_num%type := Param.getParam('DEPARTMENTNUM'),
  DEPARTMENT_TYPE_CODE_ ss_ok_department.department_type_code%type := Param.getParam('DEPARTMENTTYPECODE'),
  LEVEL_DEPARTMENT_CODE_ ss_ok_department.LEVEL_DEPARTMENT_CODE%type := Param.getParam('LEVELDEPARTMENTCODE'),
  emp_code_           OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
  )
is
  oldname_ ss_ok_department.department_name%type;
  old_state_notes_ ss_ok_department.state_notes%type;
  old_LEVEL_DEPARTMENT_CODE_ ss_ok_department.LEVEL_DEPARTMENT_CODE%type;
--  DEPARTMENT_ID_ ss_ok_department.department_id%type;
--
  function isNewDepName2
  return boolean is begin
       select  department_name, state_notes, LEVEL_DEPARTMENT_CODE
         into oldname_, old_state_notes_,old_LEVEL_DEPARTMENT_CODE_
       from ss_ok_department
       where upper(department_name) = upper(department_name_)
       and department_code <> department_code_
       and LEVEL_DEPARTMENT_CODE=LEVEL_DEPARTMENT_CODE_
       and rownum=1;
       raise_application_error( -20000, 'Подразделение '|| department_name_ ||
         ' уже зарегистрировано в подсистеме ОК! Название: '||oldname_||
         ' уровень='||old_LEVEL_DEPARTMENT_CODE_||' состояние='||old_state_notes_);
  exception when no_data_found then return true;
  end isNewDepName2;
--
begin
  if not isnewDepName2
  then
       raise_application_error( -20000, 'Подразделение '|| department_name_ ||
         ' уже зарегистрировано в подсистеме ОК! Название: '||oldname_||
         ' состояние '||old_state_notes_);
  end if;
-- код не изменяется !!!!
      update SS_OK_DEPARTMENT
         set DEPARTMENT_NAME= DEPARTMENT_NAME_,
             DEPARTMENT_NUM= DEPARTMENT_NUM_,
             DEPARTMENT_TYPE_CODE= DEPARTMENT_TYPE_CODE_,
             EMP_CODE= emp_code_,
             INS_DATE=sysdate
      where branch=branch_
        and DEPARTMENT_CODE=DEPARTMENT_CODE_;
--
-- вернуть параметр DEPARTMENTID - ss_ok_department.department_id
--  param.setparam('DEPARTMENTID',DEPARTMENT_ID_);
--
end;
----
procedure CHECKTABNO(
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
    and personal_code=personal_code_;
--    and status_code=2;
  EXCEPTION when NO_DATA_FOUND then
    old_tabno := null;
  end;
  if (old_tabno is null)
  or (old_tabno <> tabno_)
  then
    select count(tabno) into count_tabno
    from ok_personal
    where branch=branch_
    and tabno=tabno_;
--    and status_code=2;
    if count_tabno<>0
    then
      raise_application_error( -20000, 'Табельный номер:'|| tabno_ ||' уже используется !');
    end if;
  end if;
end;
-- если id is null то Новый(actSaveNew)  сотрудник
-- иначе Известный(actSaveExist) сотрудник
procedure NEW_COLLEAGUE(
  id_                 OK_PERSONAL.ID%type := param.getparam('ID'),
  branch2             OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_      OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  colleague_code_     OK_PERSONAL.COLLEAGUE_CODE%type := param.getparam('COLLEAGUE_CODE'),
  status_code_        OK_PERSONAL.STATUS_CODE%type := param.getparam('STATUS_CODE'),
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
  home_address_distr_       OK_PERSONAL.HOME_ADDRESS_distr%type := param.getparam('HOME_ADDRESS_DISTR'),
  home_address_region_id_   OK_PERSONAL.HOME_ADDRESS_region_id%type := param.getparam('HOME_ADDRESS_REGION_ID'),
  home_addressfact_   OK_PERSONAL.HOME_ADDRESSFACT%type := param.getparam('HOME_ADDRESSFACT'),
  home_addressfact_distr_     OK_PERSONAL.HOME_ADDRESSFACT_distr%type := param.getparam('HOME_ADDRESSFACT_DISTR'),
  home_addressfact_region_id_ OK_PERSONAL.HOME_ADDRESSFACT_region_id%type := param.getparam('HOME_ADDRESSFACT_REGION_ID'),
  REGPLACE_CODE_          OK_PERSONAL.REGPLACE_CODE%type := param.getparam('REGPLACE_CODE'),
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
  NN_          OK_PERSONAL.nn%type := param.getparam('NN'),
  nps_id_                 OK_PERSONAL.NPS_ID%type := param.getparam('NPS_ID'),
  INN_          OK_PERSONAL.inn%type := param.getparam('OK_INN'),
  cod_str_birth_ OK_PERSONAL.cod_str_birth%type := param.getparam('COD_STR_BIRTH'), -- страна рождения
  cod_obl_prim_ OK_PERSONAL.cod_obl_prim%type := param.getparam('COD_OBL_PRIM'), -- примечание к обл рождения
  cod_place_birth_prim_ OK_PERSONAL.cod_place_birth_prim%type := param.getparam('COD_PLACE_BIRTH_PRIM'), -- примечание к район рождения
  PASS_DATE_END_ OK_PERSONAL.PASS_DATE_END%type := param.getparam('PASS_DATE_END'), -- дата истечения паспорта
  cod_str_live_ OK_PERSONAL.cod_str_live%type := param.getparam('COD_STR_LIVE'), -- код страны проживания
  cod_obl_live_ OK_PERSONAL.cod_obl_live%type := param.getparam('COD_OBL_LIVE'),
  cod_obl_live_prim_ OK_PERSONAL.cod_obl_live_prim%type := param.getparam('COD_OBL_LIVE_PRIM'),
  cod_distr_live_    OK_PERSONAL.cod_distr_live%type := param.getparam('COD_DISTR_LIVE'),
  cod_distr_live_prim_    OK_PERSONAL.cod_distr_live_prim%type := param.getparam('COD_DISTR_LIVE_PRIM'),
  COD_DISTR_UVD_    OK_PERSONAL.COD_DISTR_UVD%type := param.getparam('COD_DISTR_UVD'),
  PASSPORT_TYPE_CODE_    OK_PERSONAL.COD_DISTR_UVD%type := param.getparam('PASSPORT_TYPE_CODE'),
  TRUD_SOGL_ ok_personal.TRUD_SOGL%type := param.getparam('TRUD_SOGL'),
  COD_DISTR_PRIM_    OK_PERSONAL.COD_DISTR_UVD%type := param.getparam('COD_DISTR_PRIM')
)
IS
  branch_ OK_PERSONAL.BRANCH%type;
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
  function isNewNPS
  return boolean is begin
       select c.id into oldId_
       from ok_personal c where c.NPS_ID = NPS_ID_ and rownum=1;
       raise_application_error( -20000, 'Сотрудник с Пенсионным ИН:'|| nps_id_ ||' уже зарегистрирован в подсистеме ОК!');
  exception when no_data_found then return true;
  end isNewNPS;
BEGIN
-- raise_application_error( -20000, 'Сотрудник:'|| emp_code_ ||'  !');
--raise_application_error( -20000, 'Сотрудник:'|| param.getparam('EMP_CODE') ||'  !');
  if branch2 is null
  then branch_:= info.getbranch;
  else branch_:= branch2;
  end if;
--
  if not isnew
  then
       raise_application_error( -20000, 'Сотрудник с паспортом серия:'|| pass_seriya_ ||' номер:'|| pass_num_||' уже зарегистрирован в подсистеме ОК!');
  end if;
--
  if not isnewNPS
  then
       raise_application_error( -20000, 'Сотрудник с Пенсионным ИН:'|| nps_id_ ||' уже зарегистрирован в подсистеме ОК!');
  end if;
--
  if birthday_ >= pass_date_ then
    raise_application_error( -20000, 'Дата рождения ('|| to_char( birthday_, 'dd/mm/yyyy')||') больше даты выдачи паспорта ('|| to_char( pass_date_, 'dd/mm/yyyy')||')!!!');
  elsif birthday_ >= info.getday then
    raise_application_error( -20000, 'Дата рождения ('|| to_char( birthday_, 'dd/mm/yyyy')||') больше даты опер.дня ('|| to_char( info.getday, 'dd/mm/yyyy')||')!!!');
  elsif pass_date_ >= info.getday then
    raise_application_error( -20000, 'Дата выдачи паспорта ('|| to_char( pass_date_, 'dd/mm/yyyy')||') больше даты опер.дня ('|| to_char( info.getday, 'dd/mm/yyyy')||')!!!');
  end if;
--ID, BRANCH        ,PERSONAL_CODE ,COLLEAGUE_CODE        ,FAMILY,FIRST_NAME,PATRONYMIC,GENDER_CODE,BIRTHDAY        ,BIRTHPLACE,NATIONALITY_CODE,FAMILY_STATUS_CODE,REG_TYPE_CODE        ,HOME_ADDRESS,HOME_ADDRESSFACT,PASS_SERIYA,PASS_NUM,PASS_DATE,PASS_REG,RECORD_BOOK_NUMBER,RECORD_
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
      insert into OK_personal (
            ID, BRANCH, PERSONAL_CODE, COLLEAGUE_CODE, STATUS_CODE, FAMILY, FIRST_NAME, PATRONYMIC, GENDER_CODE, BIRTHDAY,
            region_id, distr,
            NATIONALITY_CODE, FAMILY_STATUS_CODE, REG_TYPE_CODE, HOME_ADDRESS, HOME_ADDRESSFACT,
            PASS_SERIYA, PASS_NUM, PASS_DATE, PASS_REG, RECORD_BOOK_NUMBER, RECORD_BOOK_SERIES, TELEFON,
            EMP_CODE,INS_DATE,tabno,education_title_code, birthplace,nn, nps_id, inn,REGPLACE_CODE,
            home_address_distr , home_address_region_id , home_addressfact_distr , home_addressfact_region_id,
              cod_str_birth,  cod_obl_prim,  cod_place_birth_prim,  PASS_DATE_END,  cod_str_live,
              cod_obl_live,  cod_obl_live_prim,  cod_distr_live,  cod_distr_live_prim,COD_DISTR_UVD,PASSPORT_TYPE_CODE,
              TRUD_SOGL, COD_DISTR_PRIM
      ) values (OutID_, BRANCH_, in_personal_code_, COLLEAGUE_CODE_, STATUS_CODE_,  trim( FAMILY_),  trim( FIRST_NAME_),
             trim(  PATRONYMIC_), GENDER_CODE_, BIRTHDAY_,
            in_region_id_, in_distr_,
            NATIONALITY_CODE_,
            FAMILY_STATUS_CODE_, REG_TYPE_CODE_, HOME_ADDRESS_, HOME_ADDRESSFACT_, upper( trim( PASS_SERIYA_)),
            PASS_NUM_, PASS_DATE_, PASS_REG_, RECORD_BOOK_NUMBER_, RECORD_BOOK_SERIES_, TELEFON_,
            EMP_CODE_, sysdate, in_tabno_,education_title_code_,in_birthplace_, nn_, nps_id_, inn_,REGPLACE_CODE_,
            home_address_distr_ , home_address_region_id_ , home_addressfact_distr_ , home_addressfact_region_id_,
              cod_str_birth_,  cod_obl_prim_,  cod_place_birth_prim_,  PASS_DATE_END_,  cod_str_live_,
              cod_obl_live_,  cod_obl_live_prim_,  cod_distr_live_,  cod_distr_live_prim_,COD_DISTR_UVD_,PASSPORT_TYPE_CODE_,
              TRUD_SOGL_ , COD_DISTR_PRIM_
      );
    end if;
  else
    for r in( select /*+ index_desc (c ok_personal_pk )*/ cr.rowId, cr.* from  ok_personal cr
              where cr.branch = branch_ and cr.id = id_)
    loop
-- изменение ФИО фиксируется отдельно, здесь можно исправить опечатки в написании ФИО
      update /*+ index_desc (c ok_personal_uk )*/  ok_personal c
       set c.family =  trim( FAMILY_), c.first_name =  trim( FIRST_NAME_),
           c.patronymic =  trim(  PATRONYMIC_), c.gender_code = GENDER_CODE_, c.birthday = BIRTHDAY_,
           c.region_id =  in_region_id_,
           c.distr = in_distr_,
           c.nationality_code = NATIONALITY_CODE_,
           c.family_status_code = FAMILY_STATUS_CODE_, c.reg_type_code = REG_TYPE_CODE_,
           c.home_address = HOME_ADDRESS_, c.home_addressfact = HOME_ADDRESSFACT_,
           c.home_address_distr = HOME_ADDRESS_distr_,
           c.home_address_region_id = HOME_ADDRESS_region_id_,
           c.home_addressfact_distr = HOME_ADDRESSFACT_distr_,
           c.home_addressfact_region_id = HOME_ADDRESSFACT_region_id_,
           c.REGPLACE_CODE = REGPLACE_CODE_,
           c.pass_seriya = upper( trim( PASS_SERIYA_)), c.pass_num = PASS_NUM_, c.pass_date = PASS_DATE_,
           c.pass_reg = PASS_REG_, c.record_book_number = RECORD_BOOK_NUMBER_,
           c.record_book_series = RECORD_BOOK_SERIES_, c.telefon = TELEFON_,
           c.status_code = STATUS_CODE_,
           c.emp_code = EMP_CODE_, c.ins_date = sysdate,
           c.tabno =in_tabno_,
           c.education_title_code =education_title_code_,
           c.birthplace = in_birthplace_,
           c.nn = nn_, c.inn = inn_,
           c.cod_str_birth = COD_STR_BIRTH_,
           c.cod_obl_prim = COD_OBL_PRIM_,
           c.cod_place_birth_prim = COD_PLACE_BIRTH_PRIM_,
           c.PASS_DATE_END = PASS_DATE_END_,
           c.cod_str_live = COD_STR_LIVE_,
           c.cod_obl_live = COD_OBL_LIVE_,
           c.cod_obl_live_prim =COD_OBL_LIVE_PRIM_,
           c.cod_distr_live =   COD_DISTR_LIVE_,
           c.cod_distr_live_prim =   COD_DISTR_LIVE_PRIM_,
           c.COD_DISTR_UVD = COD_DISTR_UVD_,
           c.COD_DISTR_PRIM = COD_DISTR_PRIM_,
           c.PASSPORT_TYPE_CODE = PASSPORT_TYPE_CODE_,
           c.TRUD_SOGL=TRUD_SOGL_
      where c.branch = branch_ and c.id = id_;
      OutId_ := id_;
    end loop;
  end if;
  param.setparam('ID',OutId_);
END; -- new_colleague
procedure SENDALL
is
BASIS_CODE_         NUMBER(1);
BEGIN
  delete from ok_send_all;
--  insert into ok_send_all (a) select 'a' from dual;
  insert into ok_send_all (branch,personal_code, a,b,c,d, f,g,h,i,j,k,l,bb, ia, e)
  select okp.branch, okp.personal_code, okp.branch a, okp.family b, okp.first_name c, okp.patronymic d , okp.pass_seriya||okp.pass_num f,
         okp.pass_reg g, to_char(okp.birthday,'dd.mm.yyyy') h, okp.distr i, okp.nationality_code j,
         okp.home_address k, okp.telefon l, okp.profmember, okp.birthplace, okp.post_code
  from ok_personal okp
  where status_code=2;
--e код должности
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
-- ok_service.get_armygroupname(ok_army.ARMY_GROUP_CODE) dd
-- категория учета
-- ok_service.get_categoryarmyname(ok_army.CATEGORY_ARMY_CODE) ee
-- состав
-- ok_service.get_staffname(ok_army.STAFF_CODE) ff
-- воинское звание
-- ok_service.get_militaryrankname(ok_army.MILITARY_RANK_CODE) gg
-- спец по воин учету
-- ok_army.SPECIAL_ARMY hh
-- годность к воинск службе
-- ok_service.get_FITNESSARMYtype(a.FITNESS_ARMY_CODE)        NUMBER (1) not null, --        'Годность к службе        Выбирается из справочника SS_OK_Fitness_ARMY  поле fitness_ARMY_Code';
-- военкомат
-- ok_army.NAME_ARMY_OFFICE jj
-- n учета в особом списке
-- ok_army.SPECREG_NUMBER kk
  for r13 in (select a.branch, a.personal_code,
    ok_service.get_FITNESSARMYtype(a.FITNESS_ARMY_CODE) ii,
              ok_service.get_armygroupname(a.ARMY_GROUP_CODE) dd,
              ok_service.get_categoryarmyname(a.CATEGORY_ARMY_CODE) ee,
              ok_service.get_staffname(a.STAFF_CODE) ff,
              ok_service.get_militaryrankname(a.MILITARY_RANK_CODE)  gg,
              a.SPECIAL_ARMY hh,
              a.NAME_ARMY_OFFICE jj, a.SPECREG_NUMBER kk
        from ok_army a)
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
-- ok_army.ARMY_GROUP_code
-- категория учета
-- ok_army.CATEGORY_ARMY_code
-- состав
-- ok_army.STAFF_code
-- воинское звание
-- ok_army.MILITARY_RANK_code
-- спец по воин учету
-- ok_army.SPECIAL_ARMY_code
-- годность к воинск службе
-- ok_army.FITNESS_ARMY_CODE        NUMBER (1) not null, --        'Годность к службе        Выбирается из справочника SS_OK_Fitness_ARMY  поле fitness_ARMY_Code';
-- военкомат
-- ok_army.NAME_ARMY_OFFICE
-- n учета в особом списке
-- ok_army.SPECREG_NUMBER
-- примечания// where (ok_personal.personal_code = ok_education.personal_code) and (ok_personal.branch = ok_education.branch)
-- ok_addinform.CHARACTER_ADDINFORM
END;
-----------
procedure OKCHANGEPASSPORT(
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
         pass_num = pass_num_,
         emp_code = emp_code_
   where branch= branch_
     and personal_code= personal_code_;
--
END; -- OKChangePassport
-----------
----------
procedure OKCHANGEFIO(
  branch_             OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_      OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  family_             OK_PERSONAL.FAMILY%type := param.getparam('FAMILY'),
  first_name_         OK_PERSONAL.FIRST_NAME%type := param.getparam('FIRST_NAME'),
  patronymic_         OK_PERSONAL.PATRONYMIC%type := param.getparam('PATRONYMIC'),
  change_date_              OK_CHANGE_FIO.CHANGE_DATE%type := param.getparam('CHANGE_DATE'),
  change_motive_      OK_CHANGE_FIO.CHANGE_MOTIVE%type := param.getparam('CHANGE_MOTIVE'),
  emp_code_           OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
)
IS
BEGIN
-- фиксирует изменение ФИО
  insert into OK_change_fio
          (BRANCH, PERSONAL_CODE, FAMILY, FIRST_NAME,
           PATRONYMIC, CHANGE_DATE, CHANGE_MOTIVE, EMP_CODE, INS_DATE)
    select o.branch, o.PERSONAL_CODE,  trim( o.FAMILY),  trim( o.FIRST_NAME),
            trim(  o.PATRONYMIC), CHANGE_DATE_, CHANGE_MOTIVE_, o.EMP_CODE, o.ins_date
      from ok_personal o
     where o.branch= branch_
       and o.personal_code= personal_code_;
  update ok_personal
     set family = FAMILY_,
         first_name = FIRST_NAME_,
         patronymic = PATRONYMIC_,
         emp_code = emp_code_
   where branch= branch_
     and personal_code= personal_code_;
END; -- OKChangeFIO
-----------
procedure DISMISS_COLLEAGUE(
  branch_          OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_   OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  out_office_date_ OK_PERIOD.OUT_OFFICE_DATE%type := param.getparam('OUT_OFFICE_DATE'),
  MOTIVE_DISMISSIAL_CODE_      OK_PERsonal.MOTIVE_DISMISSIAL_CODE%type := param.getparam('MOTIVE_DISMISSIAL_CODE'),
  article_code_    OK_PERIOD.ARTICLE_CODE%type := param.getparam('ARTICLE_CODE'),
  basis_num_       OK_PERIOD.BASIS_NUM%type := param.getparam('BASIS_NUM'),
  basis_date_      OK_PERIOD.BASIS_DATE%type := param.getparam('BASIS_DATE'),
  emp_code_        OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE'),
  office_address_  OK_PERIOD.OFFICE_ADDRESS%type := param.getparam('OFFICE_ADDRESS'),
  prich_id_        OK_PERsonal.prich_id%type := param.getparam('PRICH_ID'),
  name_pr_         OK_PERsonal.name_pr%type := param.getparam('NAME_PR')
)
IS
okedb_appoints_state_code_ okedb_appoints.state_code%type;
  personal_code_2  ok_personal.personal_code%type;
--  ok_period_in_date_ ok_period.in_office_date%type;
--  SHORT_NAME_ VARCHAR2(30);
--  k number;
--        IN_OFFICE_DATE_OLD  ok_post.appointment_date%type;
--        that_POST_name_OLD  ss_ok_post.post_name%type;
--        that_base_move_name_OLD  ss_ok_base_move.base_move_name%type;
--        BASIS_NUM_OLD   ok_post.BASIS_NUM%type;
--        BASIS_DATE_OLD  ok_post.BASIS_DATE%type;
--        EMP_CODE_OLD    ok_post.EMP_CODE%type;
--        INS_DATE_OLD    ok_post.INS_DATE%type;
IN_OFFICE_DATE_ date;
  gosubmit_code_ number;
 head_ varchar2(5);
 is_boss_now_ number(3);
BEGIN
  select header_id into head_ from s_mfo where bank_id=branch_;
  if office_address_ is null
  then
    raise_application_error( -20000, 'Пожалуйста, Укажите адрес офиса на вкладке Настройки в модуле "Отдел кадров"!');
  end if;
--  select short_name into SHORT_NAME_
--  from branch;
-- проверка наличия сотрудника. код его должности в ok_stat_salary.salary_code
  personal_code_2 := null;
  select /*+ index ( c ok_personal_pk)*/ c.personal_code into personal_code_2
    from ok_personal c
   where c.branch = branch_
     and c.personal_code = personal_code_;
  if personal_code_2 is null then
      raise_application_error( -20000, 'Сотрудник не найден. Операция Увольнение прервана!');
  end if;
-- проверка разрешения ГО 08.11.2012 .
  if (head_ ='09006') or (head_ ='09049') or (head_ ='09004') -- 22,04,2014 теперь в агро подтв. в ГО на увольнение Нужно.
--  and (branch_ in ('00000','00703'))
  then
    select gosubmit_code into gosubmit_code_
    from ok_personal
     where branch = branch_
     and personal_code= personal_code_;
--
    begin
      select state_code into okedb_appoints_state_code_
      from okedb_appoints
       where branch = branch_
       and personal_code= personal_code_ and rownum<2;
    exception when others
      then okedb_appoints_state_code_:=0;
    end;
--
    if  (okedb_appoints_state_code_ <> gosubmit_code_)
--      and (head_ ='09006')  --((head_ ='09006') or (head_ ='09004')) --  агро подтв. в ГО На увольнение Нужно
      and ((head_ ='09006') or (head_ ='09049') or (head_ ='09004'))
--  and (branch_ in ('00000','00703'))
    then
      raise_application_error( -20000, 'Невозможно Уволить. Состояние в филиале('||gosubmit_code_||') в головном('||okedb_appoints_state_code_||')');
    end if;
--
    if  ((gosubmit_code_ <> is_gosubmit_del6) or (gosubmit_code_ is null))
--      and (head_ ='09006') --((head_ ='09006') or (head_ ='09004')) --  агро подтв. в ГО На увольнение Нужно
      and ((head_ ='09006') or (head_ ='09049') or (head_ ='09004'))
--  and (branch_ in ('00000','00703'))
    then
      raise_application_error( -20000, 'Увольнение Сотрудника не подтверждено Головным Офисом! Обратитесь в ГО! '||head_);
    end if;
  end if;
--
-- is_boss =2 нет select id,name from ss_syesno
-- уволен значит 2 не начальник
-- установить состояние сотрудника в "уволен"
  update ok_personal c
     set c.status_code = dismiss_status_code_,
         c.MOTIVE_DISMISSIAL_CODE = MOTIVE_DISMISSIAL_CODE_,
         c.prich_id= prich_id_,
         c.name_pr = substr(name_pr_,1,100),
         c.BASIS_NUM = BASIS_NUM_,
         c.BASIS_DATE = BASIS_DATE_,
         c.post_code=null,
         c.department_code=null,
         c.emp_code=emp_code_,
         c.is_boss=is_boss_now_
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
    set out_office_date=out_office_date_,
        article_code= article_code_,
        emp_code=emp_code_,
        pr_off = substr(name_pr_,1,100),
        num_pr_off = BASIS_NUM_,
        date_pr_off = BASIS_DATE_,
        COD_PR_OFF = prich_id_,
        cod_bank=  branch_
     where branch = branch_
     and personal_code = personal_code_
     and IN_OFFICE_DATE=IN_OFFICE_DATE_;
  exception when others
  then
      raise_application_error(-20000,' Не удалось сохранить дату увольнения!' );
  end;
--
END;-- dismiss_colleague
--
procedure DEKRET(
  branch_          OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_   OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  num_basis_       OK_LEAVE.NUM_basis%type := param.getparam('NUM_BASIS'),
  date_basis_      OK_LEAVE.DATE_basis%type := param.getparam('DATE_BASIS'),
  DATE_IN_LEAVE_      OK_LEAVE.DATE_IN_LEAVE%type  := param.getparam('DATE_IN_LEAVE'),
  DATE_OUT_LEAVE_     OK_LEAVE.DATE_OUT_LEAVE%type := param.getparam('DATE_OUT_LEAVE'),
  BEGIN_YEAR_    OK_LEAVE.BEGIN_YEAR%type := param.getparam('BEGIN_YEAR'),
  END_YEAR_      OK_LEAVE.END_YEAR%type :=   param.getparam('END_YEAR'),
  LEAVE_CODE_      OK_LEAVE.LEAVE_CODE%type := param.getparam('LEAVE_CODE'),
  PERIOD_LEAVE_      OK_LEAVE.PERIOD_LEAVE%type := param.getparam('PERIOD_LEAVE'),
  MOTIVE_LEAVE_      OK_LEAVE.MOTIVE_LEAVE%type := param.getparam('MOTIVE_LEAVE'),
  emp_code_        OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
)
IS
BEGIN
--
  if DATE_OUT_LEAVE_ <= DATE_IN_LEAVE_
  then
    raise_application_error(-20000,'дата завершения отпуска '||
      to_char(DATE_OUT_LEAVE_,'dd.mm.yyyy')||' должна быть больше даты начала отпуска '||
      to_char(DATE_IN_LEAVE_,'dd.mm.yyyy') );
  end if;
--
  update ok_personal
  set status_code=dekret_status_
  where branch=branch_
  and personal_code=personal_code_;
--
  insert into ok_leave ( BRANCH, PERSONAL_CODE, LEAVE_CODE, BEGIN_YEAR,
     END_YEAR, PERIOD_LEAVE, DATE_IN_LEAVE, DATE_OUT_LEAVE, MOTIVE_LEAVE,
     NUM_BASIS, DATE_BASIS, EMP_CODE, INS_DATE
  ) values ( BRANCH_, PERSONAL_CODE_, LEAVE_CODE_, BEGIN_YEAR_,
     END_YEAR_, PERIOD_LEAVE_, DATE_IN_LEAVE_, DATE_OUT_LEAVE_, MOTIVE_LEAVE_,
     NUM_BASIS_, DATE_BASIS_, EMP_CODE_, sysdate
  );
--
END;-- dekret
--
procedure DEKRETOUT(
  branch_          OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_   OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  emp_code_        OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
)
IS
  date_out_leave_ ok_leave.date_out_leave%type;
  department_code_   OK_PERSONAL.department_CODE%type;
  post_code_   OK_PERSONAL.post_CODE%type ;
  special_code_ OK_PERSONAL.special_CODE%type ;
  QuantityPost_ ok_stat.quantity_post%type;
  QuantityPostReal_ ok_stat.quantity_post%type;
BEGIN
--
  select max(date_out_leave) into date_out_leave_
  from ok_leave
  where branch=branch_
  and personal_code= personal_code_
  and leave_code=5;
--
  if date_out_leave_ is null
  then
    raise_application_error(-20000,'Нет данных в сведениях об отпусках'||
      ' - дата завершения декретного отпуска не найдена' );
  end if;
--
-- проверка наличия вакантного места по параметрам department_code и post_code и branch_
-- через количество должностей в OK_STAT
  select department_code, post_code, special_code
  into department_code_, post_code_, special_code_
  from ok_personal
  where branch=branch_
  and personal_code=personal_code_;
--
  QuantityPost_ := get_QuantityPost(branch_,department_code_, post_code_, special_code_);
  QuantityPostReal_ := get_QuantityPostReal(branch_,department_code_, post_code_, special_code_);
  if QuantityPost_ =-1 then
    raise_application_error( -20000, 'Указанное рабочее место не найдено.код отдела='||to_char(department_code_)||' код должности='||to_char(post_code_)||' Операция Назначение прервана!');
  end if;
  if QuantityPostReal_ >=QuantityPost_ then
    raise_application_error( -20000, '('||nvl(department_code_,' ')||','||
      nvl( post_code_,' ')||','|| nvl( special_code_,' ')||')В штатном расписании указано '||To_char(QuantityPost_)||
      ' рабочих мест. Фактически назначено '||to_char(QuantityPostReal_)||' сотрудников. Операция Назначение прервана!');
  end if;
--
  if DATE_OUT_LEAVE_ <> info.getday
  then
--
    update ok_leave
    set date_out_leave=info.getday
    where branch=branch_
    and personal_code= personal_code_
    and leave_code=5
    and date_out_leave=DATE_OUT_LEAVE_;
--
  end if;
--
  update ok_personal
  set status_code= is_join_status_,
      emp_code= emp_code_
  where branch=branch_
  and personal_code=personal_code_
  and status_code= dekret_status_;
--
--
--
END;-- dekretout
------------------------------------------------------------------------------
--
procedure ACADEM(
  branch_          OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_   OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  num_basis_       OK_LEAVE.NUM_basis%type := param.getparam('NUM_BASIS'),
  date_basis_      OK_LEAVE.DATE_basis%type := param.getparam('DATE_BASIS'),
  DATE_IN_LEAVE_      OK_LEAVE.DATE_IN_LEAVE%type  := param.getparam('DATE_IN_LEAVE'),
  DATE_OUT_LEAVE_     OK_LEAVE.DATE_OUT_LEAVE%type := param.getparam('DATE_OUT_LEAVE'),
  BEGIN_YEAR_    OK_LEAVE.BEGIN_YEAR%type := param.getparam('BEGIN_YEAR'),
  END_YEAR_      OK_LEAVE.END_YEAR%type :=   param.getparam('END_YEAR'),
  LEAVE_CODE_      OK_LEAVE.LEAVE_CODE%type := param.getparam('LEAVE_CODE'),
  PERIOD_LEAVE_      OK_LEAVE.PERIOD_LEAVE%type := param.getparam('PERIOD_LEAVE'),
  MOTIVE_LEAVE_      OK_LEAVE.MOTIVE_LEAVE%type := param.getparam('MOTIVE_LEAVE'),
  emp_code_        OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
)
IS
BEGIN
--
  if DATE_OUT_LEAVE_ <= DATE_IN_LEAVE_
  then
    raise_application_error(-20000,'дата завершения отпуска '||
      to_char(DATE_OUT_LEAVE_,'dd.mm.yyyy')||' должна быть больше даты начала отпуска '||
      to_char(DATE_IN_LEAVE_,'dd.mm.yyyy') );
  end if;
--
  update ok_personal
  set status_code=academ_status_
  where branch=branch_
  and personal_code=personal_code_;
--
  insert into ok_leave ( BRANCH, PERSONAL_CODE, LEAVE_CODE, BEGIN_YEAR,
     END_YEAR, PERIOD_LEAVE, DATE_IN_LEAVE, DATE_OUT_LEAVE, MOTIVE_LEAVE,
     NUM_BASIS, DATE_BASIS, EMP_CODE, INS_DATE
  ) values ( BRANCH_, PERSONAL_CODE_, LEAVE_CODE_, BEGIN_YEAR_,
     END_YEAR_, PERIOD_LEAVE_, DATE_IN_LEAVE_, DATE_OUT_LEAVE_, MOTIVE_LEAVE_,
     NUM_BASIS_, DATE_BASIS_, EMP_CODE_, sysdate
  );
--
END;-- academ
--
procedure ACADEMOUT(
  branch_          OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_   OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  emp_code_        OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')
)
IS
  date_out_leave_ ok_leave.date_out_leave%type;
  department_code_   OK_PERSONAL.department_CODE%type;
  post_code_   OK_PERSONAL.post_CODE%type ;
  special_code_ OK_PERSONAL.special_CODE%type ;
  QuantityPost_ ok_stat.quantity_post%type;
  QuantityPostReal_ ok_stat.quantity_post%type;
BEGIN
--
  select max(date_out_leave) into date_out_leave_
  from ok_leave
  where branch=branch_
  and personal_code= personal_code_;
--
  if date_out_leave_ is null
  then
    raise_application_error(-20000,'Нет данных в сведениях об отпусках'||
      ' - дата завершения отпуска не найдена' );
  end if;
--
-- проверка наличия вакантного места по параметрам department_code и post_code и branch_
-- через количество должностей в OK_STAT
  select department_code, post_code, special_code
  into department_code_, post_code_, special_code_
  from ok_personal
  where branch=branch_
  and personal_code=personal_code_;
--
  QuantityPost_ := get_QuantityPost(branch_,department_code_, post_code_, special_code_);
  QuantityPostReal_ := get_QuantityPostReal(branch_,department_code_, post_code_, special_code_);
  if QuantityPost_ =-1 then
    raise_application_error( -20000, 'Указанное рабочее место не найдено.код отдела='||to_char(department_code_)||' код должности='||to_char(post_code_)||' Операция Назначение прервана!');
  end if;
  if QuantityPostReal_ >=QuantityPost_ then
    raise_application_error( -20000, '('||nvl(department_code_,' ')||','||
      nvl( post_code_,' ')||','|| nvl( special_code_,' ')||')В штатном расписании указано '||To_char(QuantityPost_)||
      ' рабочих мест. Фактически назначено '||to_char(QuantityPostReal_)||' сотрудников. Операция Назначение прервана!');
  end if;
--
  if DATE_OUT_LEAVE_ <> info.getday
  then
--
    update ok_leave
    set date_out_leave=info.getday
    where branch=branch_
    and personal_code= personal_code_
    and date_out_leave=DATE_OUT_LEAVE_;
--
  end if;
--
  update ok_personal
  set status_code= is_join_status_,
      emp_code= emp_code_
  where branch=branch_
  and personal_code=personal_code_
  and status_code= academ_status_;
--
END;-- academout
------------------------------------------------------------------------------
function GET_SPECIALNAME(special_code_ ss_ok_special.special_code%type)
  return ss_ok_special.special_name%type
is
    code_  ss_ok_special.special_name%type;
begin
   select special_name into code_
     from ss_ok_special
    where special_code = special_code_
      and state_notes = 'A';
  return code_;
  exception when no_data_found then return 'Не найден';
end;
------------------------------------------------------------------------------
function ISJOIN(branch_ ok_personal.branch%type,personal_code_ ok_personal.personal_code%type)
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
function APPOINT_COLLEAGUE_CHECK(branch_ ok_period.branch%type,personal_code_ ok_period.personal_code%type,appointment_date_ ok_period.in_office_date%type)
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
procedure APPOINT_COLLEAGUE(
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
  emp_code_        OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE'),
  special_code_   OK_PERSONAL.special_CODE%type := param.getparam('SPECIAL_CODE'),
  rotation_   OK_PERSONAL.special_CODE%type := param.getparam('ROTATION')
)
IS
  department_code_old_   OK_PERSONAL.department_CODE%type;
  post_code_old_   OK_PERSONAL.post_CODE%type;
okedb_appoints_state_code_ okedb_appoints.state_code%type;
is_submit_needed_  integer;
--  st_code_  ok_personal.status_code%type;
--  salary_code_  ok_personal.salary_code%type;
  k_ integer;
  gosubmit_code_ number;
  st_name_  ss_ok_status.status_name%type;
  QuantityPost_ ok_stat.quantity_post%type;
  QuantityPostReal_ ok_stat.quantity_post%type;
  Quantity_ ok_stat.quantity_post%type;
 ESTABLISHED_POST_ ss_ok_post.post_name%type;
 ESTABLISHED_DEPARTMENT_ ok_period.established_department%type ; -- полное наименование отдела
 department_ ss_ok_department.department_name%type ; -- наименование отдела
 head_ varchar2(5);
 is_boss_now_ number(3);
BEGIN
-- узнаем уровень данного филиала - район обл респ
-- узнаем уровень новой должности ss_ok_post.level_department_code
  select header_id into head_ from s_mfo where bank_id=branch_;
-- проверка "статус сотрудника"
--  status_code = is_join_status_
  k_ := ok_service.isJoin(branch_,personal_code_);
  if (k_ =-1) or (k_ is null) then
    raise_application_error( -20000, 'Сотрудник не найден!!! Операция Назначение прервана.');
  end if;
--
-- проверка разрешения ГО
  if --(head_ ='09006') --or (head_ ='09004')) -- 08.11.2012 теперь и в агро подтверждение в ГО
       ((head_ ='09006') or (head_ ='09049') or (head_ ='09004'))
--  and (branch_ in ('00000','00703'))
  then
    select department_code,  post_code, gosubmit_code
    into department_code_old_,  post_code_old_, gosubmit_code_
    from ok_personal
       where branch = branch_
       and personal_code= personal_code_;
--
    select count(*) into is_submit_needed_
    from s_doljn d, ss_ok_post o, ss_ok_nci sok
          where sok.nci_id=79
          and sok.s_id=d.dolj_id
          and sok.ok_id=o.post_code
          and o.post_code in (post_code_,post_code_old_);
    is_submit_needed_:=1; -- 13.02.2012 требовать подтверждение для всех должностей
    if (is_submit_needed_>0) or (post_code_old_ is null)
    then
--
      begin
        select state_code into okedb_appoints_state_code_
        from okedb_appoints
        where branch = branch_
        and personal_code= personal_code_
        and department_code_new = department_CODE_
        and post_code_new = post_CODE_
        and rownum<2;
      exception
      when others then
        raise_application_error( -20000, 'Невозможно Назначить. Нет разрешения Головного Офиса.');
      end;
--
      if  (okedb_appoints_state_code_ <> gosubmit_code_)
--      and (head_ ='09006') --or (head_ ='09004')) -- 08.11.2012 теперь и в агро подтверждение в ГО
      and ((head_ ='09006') or (head_ ='09049') or (head_ ='09004'))
--  and (branch_ in ('00000','00703'))
      then
        raise_application_error( -20000, 'Невозможно Назначить. Состояние в филиале('||gosubmit_code_||') в головном('||okedb_appoints_state_code_||')');
      end if;
--
-- поменял 29.11.2013 if (k_ = is_new_status_) and ((gosubmit_code_ <> is_gosubmitOK) or (gosubmit_code_ is null))
      if ((gosubmit_code_ <> is_gosubmitOK) or (gosubmit_code_ is null))
--      and (head_ ='09006') --or (head_ ='09004')) -- 08.11.2012 теперь и в агро подтверждение в ГО
      and ((head_ ='09006') or (head_ ='09049') or (head_ ='09004'))
--  and (branch_ in ('00000','00703'))
      then
        raise_application_error( -20000, 'Сотрудник не Утвержден Головным Офисом! Обратитесь в ГО! '||head_);
      end if;
    end if;
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
--
  if (status_code_ = dekret_status_)
    and (k_ <> dekret_status_)
  then
    select status_name into st_name_
    from ss_ok_status
    where status_code = k_;
    raise_application_error( -20000, 'Статус сотрудника - '||st_name_||'. Операция Выход из декрета прервана!');
  end if;
-- проверка наличия вакантного места по параметрам department_code и post_code и branch_
-- через количество должностей в OK_STAT
  QuantityPost_ := get_QuantityPost(branch_,department_code_, post_code_, special_code_);
  QuantityPostReal_ := get_QuantityPostReal(branch_,department_code_, post_code_, special_code_);
  if QuantityPost_ =-1 then
    raise_application_error( -20000, 'Указанное рабочее место не найдено . Операция Назначение прервана!');
  end if;
-- если эта сотруднэк уже втой место,
-- то пусть  сто пицот мильонов раз
-- его можно туда назначить
-- пока не треснет сервер.
  select count(*) into Quantity_
  from ok_personal
   where branch = branch_
     and personal_code= personal_code_
     and department_code= department_code_
     and post_code= post_code_;
--
  if (QuantityPostReal_ >=QuantityPost_) and (rotation_ =0 or rotation_ is null)
  and (Quantity_=0)
  then
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
  ESTABLISHED_DEPARTMENT_ := ok_service.get_FULLdepartmentname(department_code_);
  DEPARTMENT_ := ok_service.get_departmentname(department_code_);
--
--
-- сапдейтить старую запись, если out_office_date is null
  update ok_period
  set out_office_date=  in_office_DATE_, NUM_PR_OFF=BASIS_NUM_, DATE_PR_OFF=BASIS_DATE_,
   cod_type_prn=base_move_code_ ,  cod_pr_off= '02',   pr_off='Тарафлар келишувига кура'
   where branch = branch_
     and personal_code= personal_code_
     and out_office_date is null;
-- установить в главной рабочей таблице
  update ok_personal
  set department_code= department_code_,
      post_code= post_code_,
      special_code = special_code_,
      emp_code= emp_code_
   where branch = branch_
     and personal_code= personal_code_;
--
  if (status_code_ = dekret_status_)
  then
    OK_SERVICE.DekretOut;
--  else
--    update ok_personal
--    set status_code= is_join_status_
--     where branch = branch_
--     and personal_code= personal_code_;
  end if;
-- is_boss = 1 да
-- is_boss =2 нет select id,name from ss_syesno
  begin
-- 1 начальник или 2 не начальник
    select count(*) into is_boss_now_ from SS_OK_NCI son
    where son.ok_id=post_code_ and son.NCI_ID=79;
  EXCEPTION when others
    then
      is_boss_now_ := 0;
  end;
  if is_boss_now_=0
  then is_boss_now_:=2;
  else is_boss_now_:=1;
  end if;
--
  update ok_personal
  set department_code= department_code_,
      post_code= post_code_,
      special_code = special_code_,
      status_code= is_join_status_,
      emp_code= emp_code_,
      prich_id=null, name_pr=null,
      is_boss=is_boss_now_
   where branch = branch_
     and personal_code= personal_code_;
-- вставка в ok_period
  insert into ok_period ( BRANCH, PERSONAL_CODE,
    IN_OFFICE_DATE, OUT_OFFICE_DATE,
    OFFICE_NAME, OFFICE_ADDRESS, ESTABLISHED_POST, ESTABLISHED_DEPARTMENT,
    TYPE_PERIOD_CODE, ARTICLE_CODE, BASIS_NUM, BASIS_DATE, EMP_CODE,
    INS_DATE, base_move_code, post_code, department_code, Cod_Bank,department
  ) values (
    BRANCH_, PERSONAL_CODE_,    in_office_DATE_,    null, OFFICE_NAME_,
    OFFICE_ADDRESS_, ESTABLISHED_POST_, ESTABLISHED_DEPARTMENT_, -- наименование отдела
    is_this_bank_, ARTICLE_CODE_, BASIS_NUM_, BASIS_DATE_,
    EMP_CODE_, sysdate,base_move_code_, post_code_, department_code_, BRANCH_,department_
  );
--
END;-- appoint_colleague
------------------------------------------------------------------------------
/*
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
*/
-- процедура вычисления рабочего стажа по двум датам - начало и окончание
procedure CALCDATE(begin_date_ date,
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
--
function GET_ORG_BUSINESS_VOYAGE(CODE_ SS_OK_ORG_BUSINESS_VOYAGE.ORG_BUSINESS_VOYAGE_CODE%type) return SS_OK_ORG_BUSINESS_VOYAGE.ORG_BUSINESS_VOYAGE_NAME%type
is
name_ SS_OK_ORG_BUSINESS_VOYAGE.ORG_BUSINESS_VOYAGE_name%type;
begin
  select ORG_BUSINESS_VOYAGE_name into name_
  from ss_ok_ORG_BUSINESS_VOYAGE
  where ORG_BUSINESS_VOYAGE_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
--
function GET_THEME_BUSINESS_VOYAGE(CODE_ SS_OK_THEME_BUSINESS_VOYAGE.THEME_BUSINESS_VOYAGE_CODE%type) return SS_OK_THEME_BUSINESS_VOYAGE.THEME_BUSINESS_VOYAGE_NAME%type
is
name_ SS_OK_THEME_BUSINESS_VOYAGE.THEME_BUSINESS_VOYAGE_name%type;
begin
  select THEME_BUSINESS_VOYAGE_name into name_
  from ss_ok_THEME_BUSINESS_VOYAGE
  where THEME_BUSINESS_VOYAGE_code=code_
  and state_notes='A';
  return name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
--
function GET_HOSPITAL(hospital_CODE_ SS_OK_hospital.hospital_code%type) return SS_OK_hospital.hospital_name%type
is
 hospital_name_ SS_OK_hospital.hospital_name%type;
begin
  select hospital_name into hospital_name_
  from ss_ok_hospital
  where hospital_code=hospital_code_
  and state_notes='A'
  and rownum<2;
  return hospital_name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
--
function GET_PRIVILEGE(PRIVILEGE_CODE_ SS_OK_PRIVILEGE.PRIVILEGE_code%type) return SS_OK_PRIVILEGE.PRIVILEGE_name%type
is
 PRIVILEGE_name_ SS_OK_PRIVILEGE.PRIVILEGE_name%type;
begin
  select PRIVILEGE_name into PRIVILEGE_name_
  from ss_ok_PRIVILEGE
  where PRIVILEGE_code=PRIVILEGE_code_
  and state_notes='A'
  and rownum<2;
  return PRIVILEGE_name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
--
function GET_INCREASE(INCREASE_CODE_ SS_OK_INCREASE.INCREASE_code%type) return SS_OK_INCREASE.INCREASE_name%type
is
 INCREASE_name_ SS_OK_INCREASE.INCREASE_name%type;
begin
  select INCREASE_name into INCREASE_name_
  from ss_ok_INCREASE
  where INCREASE_code=INCREASE_code_
  and rownum<2;
  return INCREASE_name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
--
function GET_KV_KURS(KV_KURS_CODE_ SS_OK_KV_KURS.KV_KURS_code%type) return SS_OK_KV_KURS.KV_KURS_name%type
is
 KV_KURS_name_ SS_OK_KV_KURS.KV_KURS_name%type;
begin
  select KV_KURS_name into KV_KURS_name_
  from ss_ok_KV_KURS
  where KV_KURS_code=KV_KURS_code_
  and state_notes='A'
  and rownum<2;
  return KV_KURS_name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'не найден';
end;
--
function GET_HIGH_NAME(department_CODE_ SS_OK_department.department_code%type) return ss_ok_department.department_name%type
is
 department_name_ SS_OK_department.department_name%type;
begin
  select department_name into department_name_
  from ss_ok_department
  where department_code in (select HIGH_DEP_CODE
      from ss_ok_department where department_code=department_code_
      and rownum<2)
  and state_notes='A'
  and rownum<2;
  return department_name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN ' - ';
end;
--
function GET_STATUS(branch_ ok_personal.branch%type, personal_CODE_ ok_personal.personal_CODE%type,
  first_day_month date,last_day_of_month date,first_day_of_next_month date,gender_code_ ok_personal.gender_code%type) return char
is
  STATUS_CODE varchar2(1);
  U_counter_ number(5);
  MAX_OUT_OFFICE_DATE_ date;
begin
    -- R список работающих R
    STATUS_CODE:='-';
    -- Z проверяем может сотрудник уволен раньше и не попадет в табель Z
    select count(personal_CODE_) into U_counter_ from ok_period where branch=branch_ and personal_code=personal_CODE_
    and OUT_OFFICE_DATE is null;
    if U_counter_=0 then -- во всех записях стоит признак снятия значит его уволили
      select count(personal_CODE_) into U_counter_ from ok_period where branch=branch_ and personal_code=personal_CODE_
      and OUT_OFFICE_DATE >= first_day_month;
      if U_counter_>0 then -- уволен в течении указанного месяца или позже
        select max(OUT_OFFICE_DATE) into MAX_OUT_OFFICE_DATE_ from ok_period where branch=branch_ and personal_code=personal_CODE_;
        if MAX_OUT_OFFICE_DATE_>last_day_of_month  -- уволен но позже значит в указанном месяце R
        then STATUS_CODE:='R';
        else STATUS_CODE:='U';
        end if;
      else -- давно уволен
        STATUS_CODE:='Z';
      end if;
    else -- не уволенный
      STATUS_CODE:='R';
      if gender_code_=2 -- Жен
      then
        select count(personal_code) into U_counter_ from ok_leave where branch=branch_ and personal_code=personal_CODE_
        and leave_code=DEKRET_STATUS_ -- декретный отпуск
        and DATE_IN_LEAVE <=last_day_of_month and DATE_OUT_LEAVE >=last_day_of_month;
        if U_counter_>0 then -- D список в декрете D - если последний день месяца в декрете
          STATUS_CODE:='D';
        end if;
      end if;
    end if;
--
  return STATUS_CODE;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 'R' ;
end;
--
procedure new_tabel(BRANCH_ ok_tabel.branch%type,
TABEL_MONTH_ ok_tabel.TABEL_MONTH%type,
TABEL_YEAR_ ok_tabel.TABEL_YEAR%type)
is
  d_day_ varchar2(1):='Д';
  first_day number(2);
  last_day_ number(2);
  i  number(2);
  num_of_day_ number(1);
  next_d number(2);
  next_m number(4);
  first_day_of_next_month date;
  first_day_of_month date;
  last_day_of_month date;
  STATE_CODE_ varchar2(1);
-- функция день недели
-- SELECT to_char(sysdate,'D', 'NLS_DATE_LANGUAGE=RUSSIAN') FROM dual;
sql_p varchar2(255);
sql_p2 varchar2(255);
sql_1 varchar2(255);
sql_2 varchar2(255);
begin
  first_day_of_month := to_date('01.'||TABEL_MONTH_||'.'||TABEL_YEAR_,'dd.mm.yyyy');
  select LAST_DAY(to_date( '01.'||TABEL_MONTH_||'.'||TABEL_YEAR_, 'dd.mm.yyyy'))
  into last_day_of_month from dual;
--
  if TABEL_MONTH_=12
  then
    first_day_of_next_month :=to_date('01.01.'||to_char(TABEL_YEAR_+1),'dd.mm.yyyy');
  else
    first_day_of_next_month :=to_date('01.'||to_char(TABEL_MONTH_+1)||'.'||to_char(TABEL_YEAR_),'dd.mm.yyyy');
  end if;
--
  for recok in (select * from ok_personal where status_code in (2,4,5) )
  loop
    -- проверяем может сотрудник уволен раньше и не попадет в табель Z
    STATE_CODE_ := ok_service.GET_STATUS(recok.branch,recok.personal_code,
    first_day_of_month,last_day_of_month,first_day_of_next_month,recok.gender_code);
    if STATE_CODE_<>'Z'
    then
      for rec_okpd in (select * from ok_period
        where IN_OFFICE_DATE <=last_day_of_month and (OUT_OFFICE_DATE is null or OUT_OFFICE_DATE>=first_day_of_month)
      )
      loop
        if rec_okpd.IN_OFFICE_DATE<= first_day_of_month
        then first_day:=1;
        else first_day:= to_number( to_char(rec_okpd.IN_OFFICE_DATE,'dd') );
        end if;
        if (rec_okpd.OUT_OFFICE_DATE is null or rec_okpd.OUT_OFFICE_DATE>=first_day_of_month)
        then last_day_:= to_number( to_char(last_day_of_month,'dd') );
        else last_day_:= to_number( to_char(rec_okpd.OUT_OFFICE_DATE,'dd') );
        end if;

        Insert Into ok_Tabel(category_code,branch,tabel_month,tabel_year,
         tabel_name,
        PERSONAL_CODE,nn,department_nn,department_code, fio,tabno,salary,
        post_code, post_name , DEPARTMENT_NAME ,
        DAY01,DAY02,DAY03,DAY04,DAY05,DAY06,DAY07,
                DAY08,DAY09,DAY10,DAY11,DAY12,DAY13,DAY14,
                DAY15,DAY16,DAY17,DAY18,DAY19,DAY20,DAY21,
                DAY22,DAY23,DAY24,DAY25,DAY26,DAY27,DAY28,
                DAY29,DAY30,DAY31
        )
         Select ok_service.get_category_code(recok.post_code),recok.branch, TABEL_MONTH_,TABEL_YEAR_,
         'За '||TABEL_MONTH_||' месяц '||TABEL_YEAR_||' года',
         recok.PERSONAL_CODE,recok.nn,rec_okpd.department_code,rec_okpd.department_code,
         recok.FAMILY||' '||recok.FIRST_NAME||' '||recok.PATRONYMIC,
         recok.tabno, ok_service.GET_POST_Salary(rec_okpd.post_code) ,rec_okpd.post_code, ok_service.GET_POSTNAME(rec_okpd.post_code),
         ok_service.GET_departmentNAME(rec_okpd.department_code),
         'Д','Д','Д','Д','Д','Д','Д','Д','Д','Д',
         'Д','Д','Д','Д','Д','Д','Д','Д','Д','Д',
         'Д','Д','Д','Д','Д','Д','Д','Д','Д','Д','Д'
         From dual;

        for i in 1 .. to_number( to_char(last_day_of_month,'dd') )
        loop
        -- first_day .. last_day_
           sql_p := 'day'||lpad( to_char(i),2,'0')||',';
           SELECT to_char(  to_date( lpad( to_char(i),2,'0'  ) ||TABEL_MONTH_||'.'||TABEL_YEAR_)  ,'D', 'NLS_DATE_LANGUAGE=RUSSIAN')
           into num_of_day_ FROM dual;
           if num_of_day_=6 or num_of_day_=7
           then -- если выходной то *
             sql_p2 := '''*'',';
           else -- а если рабочий то 2,4,8
             sql_p2 := '''8'',';
           end if;
           sql_1 := sql_1||sql_p;
           sql_2 := sql_2||sql_p2;

        end loop;
          sql_1 := substr( sql_1, 1, length(sql_1)-1);
          sql_2 := substr( sql_2, 1, length(sql_2)-1);
/*
        EXECUTE IMMEDIATE
        'Insert Into ok_Tabel(category_code,branch,tabel_month,tabel_year,'||
          'tabel_name,'||
          'PERSONAL_CODE,nn,department_nn,department_code, fio,tabno,salary,'||
          'post_code,post_name,DEPARTMENT_NAME,'||
        )
         Select ok_service.get_category_code(recok.post_code),recok.branch, TABEL_MONTH_,TABEL_YEAR_,
         'За '||TABEL_MONTH_||' месяц '||TABEL_YEAR_||' года',
         recok.PERSONAL_CODE,rec_okpd.nn,rec_okpd.department_code,rec_okpd.department_code,
         upper(recok.FAMILY||' '||recok.FIRST_NAME||' '||recok.PATRONYMIC),
         recok.tabno, ok_service.GET_POST_Salary(rec_okpd.post_code) ,rec_okpd.post_code, ok_service.GET_POSTNAME(rec_okpd.post_code),
         ok_service.GET_departmentNAME(rec_okpd.department_code),
        using tabel_year_,tabel_month_;
*/
      -- проставляем 2,4,8 или . (уволен)
    -- список работающих R
--nn,department_nn,department_code
--recok.nn,recokpd.department_code,recokpd.department_code

    -- список уволенных U - дата последнего снятия меньше first_day_of_next_month
--nn,department_nn,department_code
--recok.nn+10000000,10000000,10000000
      end loop;
      if recok.gender_code=2
      then
        for rec_okpd in (select * from ok_leave
          where DATE_IN_LEAVE <=last_day_of_month and DATE_OUT_LEAVE>=first_day_of_month
        )
        loop
          NULL;
      -- проставляем 2,4,8 или Д (декрет)
    -- список в декрете D - если последний день месяца сотрудник в декрете
--nn,department_nn,department_code
--recok.nn+10000,10000,10000
        end loop;
      end if;
    end if; -- <>Z
  end loop;
  -- список работающих
/*  -- список в декрете -
  Insert Into ok_Tabel(category_code,branch,tabel_month,tabel_year,
         tabel_name,
        PERSONAL_CODE,nn,department_nn,department_code, fio,tabno,salary,
        post_code, post_name , DEPARTMENT_NAME ,
        DAY01,DAY02,DAY03,DAY04,DAY05,DAY06,DAY07,
                DAY08,DAY09,DAY10,DAY11,DAY12,DAY13,DAY14,
                DAY15,DAY16,DAY17,DAY18,DAY19,DAY20,DAY21,
                DAY22,DAY23,DAY24,DAY25,DAY26,DAY27,DAY28,
                DAY29,DAY30,DAY31
        )
         Select ok_service.get_category_code(post_code),branch, TABEL_MONTH_,TABEL_YEAR_,
         'За '||TABEL_MONTH_||' месяц '||TABEL_YEAR_||' года',
         PERSONAL_CODE,nn+10000,10000,10000,
         upper(FAMILY||' '||FIRST_NAME||' '||PATRONYMIC),
         tabno, ok_service.GET_POST_Salary(post_code) ,post_code, ok_service.GET_POSTNAME(post_code), 'ДЕКРЕТНИЦЫ',
         'Д','Д','Д','Д','Д','Д','Д','Д','Д','Д',
         'Д','Д','Д','Д','Д','Д','Д','Д','Д','Д',
         'Д','Д','Д','Д','Д','Д','Д','Д','Д','Д','Д'
         From ok_personal Where branch=branch_ and status_code =5
         order by department_code,nn;
*/
  -- список уволенных -если out_office_date в этом месяце и больше не работает
--
--
  --
  -- проставление СБ и ВС признак выходной *
  select to_number(substr(  LAST_DAY(to_date( '01.'||TABEL_MONTH_||'.'||TABEL_YEAR_, 'dd.mm.yyyy')), 1,2))
  into last_day_ from dual;
  for i in 1 .. last_day_
  loop
    SELECT to_char(  to_date( lpad( to_char(i),2,'0'  ) ||TABEL_MONTH_||'.'||TABEL_YEAR_)  ,'D', 'NLS_DATE_LANGUAGE=RUSSIAN')
    into num_of_day_ FROM dual;
    if num_of_day_=6 or num_of_day_=7
    then
      EXECUTE IMMEDIATE 'update ok_tabel set day'||lpad( to_char(i),2,'0')||'= ''*'' '||
        'where tabel_year=:p1 and tabel_month=:p2' using tabel_year_,tabel_month_;
    end if;
  end loop;
--
end;
--
function post_date(branch_ ok_personal.branch%type,personal_code_ ok_personal.personal_code%type) return ss_ok_department.department_name%type
is
 department_name_ SS_OK_department.department_name%type;
begin
  select to_char(max(in_office_date),'dd.mm.yy') into department_name_
  from ok_period
  where branch=branch_
  and personal_code=personal_code_;
  return department_name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN ' - ';
end;
--
function shu_bankda_date(branch_ ok_personal.branch%type,personal_code_ ok_personal.personal_code%type) return ss_ok_department.department_name%type
is
 department_name_ SS_OK_department.department_name%type;
begin
  select to_char(min(in_office_date),'dd.mm.yy') into department_name_
  from ok_period
  where branch=branch_
  and personal_code=personal_code_
  and TYPE_PERIOD_CODE=3;
  return department_name_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN ' - ';
end;
--
function GET_KOEFSUM(branch_ ok_personal.branch%type,department_code_ ok_stat.department_code%type,SALARY_FACT_ OK_STAT.SALARY_FACT%type) return OK_STAT.SALARY_FACT%type
is
  itogo_ OK_STAT.SALARY_FACT%type;
  mnojitel number;
  count1_ number;
  count2_ number;
  minsalary_ ss_ok_min_zp.salary%type;  -- минималка
  sum0_ number;
  sum_ number;
  sum4_ number;
begin
  mnojitel:=4; -- четыре минималки
  itogo_:=0;
-- сначала смотрим если записи в   ss_ok_mfo_category и   ss_ok_dep_koef
-- и если там нет то сразу отдаем 0
  select nvl(REGION_KOEF,0) into count1_ from ss_ok_mfo_category where branch=branch_;
  select count(*) into count2_ from ss_ok_dep_koef where branch=branch_ and department_code=department_code_;
  if count1_=0 and count2_ =0
  then itogo_:=0;
  else
-- меньшее из процент от 4 минималок или процент от зп
--
    select max(salary) into minsalary_ from ss_ok_min_zp where state_notes='A';
    minsalary_ := mnojitel*minsalary_; -- 4 минималки
    sum0_ :=0 ;
    if count2_<>0
    then
      select REGION_KOEF*SALARY_FACT_/100, REGION_KOEF*minsalary_/100
      into sum_,sum4_ from ss_ok_dep_koef  where branch=branch_ and department_code=department_code_;
      if sum_>sum4_
      then itogo_:=sum4_;
      else itogo_:=sum_;
      end if;
    else
      if count1_<>0
      then
        select REGION_KOEF*SALARY_FACT_/100, REGION_KOEF*minsalary_/100
        into sum_,sum4_ from ss_ok_mfo_category  where branch=branch_;
        if sum_>sum4_
        then itogo_:=sum4_;
        else itogo_:=sum_;
        end if;
      end if;
    end if;
  end if;
  return itogo_;
  EXCEPTION when NO_DATA_FOUND then
   RETURN 0;
end;
--
--
--
----------------------------------------------------------------------
END;
/
