spool c:\ok_personal.txt
set line 1000
select ID||chr(29)||
 BRANCH||chr(29)||
 PERSONAL_CODE||chr(29)||
 COLLEAGUE_CODE||chr(29)||
 STATUS_CODE||chr(29)||
 SALARY_CODE||chr(29)||
 FAMILY||chr(29)||
 FIRST_NAME||chr(29)||
 PATRONYMIC||chr(29)||
 GENDER_CODE||chr(29)||
 BIRTHDAY||chr(29)||
 REGION_ID||chr(29)||
 DISTR||chr(29)||
 NATIONALITY_CODE||chr(29)||
 FAMILY_STATUS_CODE||chr(29)||
 REG_TYPE_CODE      ||chr(29)||
 HOME_ADDRESS        ||chr(29)||
 HOME_ADDRESSFACT     ||chr(29)||
 PASS_SERIYA           ||chr(29)||
 PASS_NUM               ||chr(29)||
 PASS_DATE               ||chr(29)||
 PASS_REG                 ||chr(29)||
 RECORD_BOOK_NUMBER        ||chr(29)||
 RECORD_BOOK_SERIES         ||chr(29)||
 TELEFON                     ||chr(29)||
 PROFMEMBER||chr(29)||
 TABNO      ||chr(29)||
 EDUCATION_TITLE_CODE ||chr(29)||
 BIRTHPLACE    ||chr(29)||
 BASIS_NUM  ||chr(29)||
 BASIS_DATE  ||chr(29)||
 DEPARTMENT_CODE||chr(29)||
 POST_CODE       ||chr(29)||
 NN               ||chr(29)||
 MOTIVE_DISMISSIAL_CODE||chr(29)||
 NPS_ID                 ||chr(29)||
 SPECIAL_CODE            ||chr(29)||
 INN         ||chr(29)||
 COD_DISTR_UVD||chr(29)||
 COD_DISTR_PRIM||chr(29)||
 COD_STR_BIRTH  ||chr(29)||
 COD_OBL_PRIM    ||chr(29)||
 COD_PLACE_BIRTH_PRIM||chr(29)||
 COD_STR_LIVE           ||chr(29)||
 COD_OBL_LIVE            ||chr(29)||
 COD_OBL_LIVE_PRIM||chr(29)||
 COD_DISTR_LIVE    ||chr(29)||
 COD_DISTR_LIVE_PRIM||chr(29)||
 CODE_NACI_PRIM      ||chr(29)||
 CHECK_KFS            ||chr(29)||
 IS_BOSS               ||chr(29)||
 BANK_SPEC              ||chr(29)||
 NOTICE                  ||chr(29)||
 PRICH_ID                 ||chr(29)||
 NAME_PR     ||chr(29)              from ok_personal
order by tabno;
spool off;

