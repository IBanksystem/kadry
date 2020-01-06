
alter table OK_ACADEMIC modify ID null;
alter table OK_ACADEMIC modify ACADEMIC_CODE null;
alter table OK_ACADEMIC modify ACADEMIC_DATE null;
alter table OK_ACADEMIC modify EMP_CODE null;
alter table OK_ADDINFORM modify ID null;
alter table OK_ADDINFORM modify ADDINFORM_DATE null;
alter table OK_ADDINFORM modify CHARACTER_ADDINFORM null;
alter table OK_ADDINFORM modify EMP_CODE null;
alter table OK_ADDINFORM modify INS_DATE null;
alter table OK_ARMY modify ID null;
alter table OK_ARMY modify ARMY_CODE null;
alter table OK_ARMY modify EMP_CODE null;
alter table OK_ARMY modify INS_DATE null;
alter table OK_ATTESTATION modify ID null;
alter table OK_ATTESTATION modify DATE_ATTESTATION null;
alter table OK_ATTESTATION modify NUM_ATTESTATION null;
alter table OK_ATTESTATION modify EMP_CODE null;
alter table OK_ATTESTATION modify INS_DATE null;
alter table OK_AWARD modify ID null;
alter table OK_AWARD modify AWARD_DATE null;


alter table OK_AWARD modify AWARD_INFO null;
alter table OK_AWARD modify EMP_CODE null;
alter table OK_AWARD modify INS_DATE null;
alter table OK_BUSINESS_VOYAGE modify DATE_OPEN null;
alter table OK_CHANGE_FIO modify ID null;
alter table OK_CHANGE_FIO modify FAMILY null;
alter table OK_CHANGE_FIO modify FIRST_NAME null;
alter table OK_CHANGE_FIO modify CHANGE_DATE null;
alter table OK_CHANGE_FIO modify CHANGE_MOTIVE null;
alter table OK_CHANGE_FIO modify EMP_CODE null;
alter table OK_CHANGE_FIO modify INS_DATE null;
alter table OK_CONVICTIONS modify ID null;
alter table OK_CONVICTIONS modify CONVICTIONS_DATE null;
alter table OK_CONVICTIONS modify CONVICTIONS_MOTIVE null;
alter table OK_CONVICTIONS modify EMP_CODE null;
alter table OK_CONVICTIONS modify INS_DATE null;
alter table OK_DEGREE modify ID null;
alter table OK_DEGREE modify DEGREE_CODE null;
alter table OK_DEGREE modify DEGREE_DATE null;
alter table OK_DEGREE modify EMP_CODE null;
alter table OK_DEGREE modify INS_DATE null;


alter table OK_EDUCATION modify DIPLOM_NUM VARCHAR2(50);
alter table OK_EDUCATION modify FAKULTET VARCHAR2(150);
alter table OK_EDUCATION modify COD_VUZ_PRIM VARCHAR2(150);


alter table OK_EDUCATION modify ID null;
alter table OK_EDUCATION modify EDUCATION_CODE null;
alter table OK_EDUCATION modify BASIS_CODE null;
alter table OK_EDUCATION modify EMP_CODE null;
alter table OK_EDUCATION modify INS_DATE null;
alter table OK_ELECTION modify ID null;
alter table OK_ELECTION modify ELECTION_CODE null;
alter table OK_ELECTION modify ELECTION_POST null;
alter table OK_ELECTION modify ELECTION_DATE_BEGIN null;
alter table OK_ELECTION modify EMP_CODE null;
alter table OK_ELECTION modify INS_DATE null;
alter table OK_HOSPITAL modify HOSPITAL_CODE null;
alter table OK_HOSPITAL modify DATE_OPEN null;

alter table OK_INCREASE
drop constraint OK_INCREASE_PK;
drop index OK_INCREASE_PK;
create index OK_INCREASE_PK on OK_INCREASE (BRANCH, PERSONAL_CODE, DATE_OPEN, INCREASE_CODE);

alter table OK_INCREASE modify DATE_OPEN null;

alter table OK_KURS modify KV_KURS_CODE null;
alter table OK_LANGUAGE modify ID null;
alter table OK_LANGUAGE modify LANGUAGE_CODE null;
alter table OK_LANGUAGE modify LEVEL_CODE null;
alter table OK_LANGUAGE modify EMP_CODE null;
alter table OK_LANGUAGE modify INS_DATE null;
alter table OK_LEAVE modify ID null;

alter table OK_LEAVE modify LEAVE_CODE null;
alter table OK_LEAVE modify BEGIN_YEAR null;
alter table OK_LEAVE modify END_YEAR null;
alter table OK_LEAVE modify PERIOD_LEAVE null;
alter table OK_LEAVE modify DATE_IN_LEAVE null;
alter table OK_LEAVE modify DATE_OUT_LEAVE null;
alter table OK_LEAVE modify NUM_BASIS null;
alter table OK_LEAVE modify EMP_CODE null;
alter table OK_LEAVE modify INS_DATE null;

alter table OK_LEAVE drop constraint OK_LEAVE_PK;
drop index OK_LEAVE_PK;


alter table OK_NSI modify OK_ID null;
alter table OK_NSI modify NAME_F null;
alter table OK_NSI modify TABLE_NAME null;
alter table OK_PARTY modify ID null;
alter table OK_PARTY modify PARTY_CODE null;
alter table OK_PARTY modify EMP_CODE null;
alter table OK_PARTY modify INS_DATE null;
alter table OK_PENALTY modify ID null;
alter table OK_PENALTY modify PENALTY_CODE null;
alter table OK_PENALTY modify EMP_CODE null;
alter table OK_PENALTY modify INS_DATE null;
alter table OK_PERIOD modify ID null;

alter table OK_PERIOD modify IN_OFFICE_DATE null;
alter table OK_PERIOD modify OFFICE_NAME null;
alter table OK_PERIOD modify ESTABLISHED_POST null;
alter table OK_PERIOD modify TYPE_PERIOD_CODE null;
alter table OK_PERIOD modify EMP_CODE null;
alter table OK_PERIOD modify INS_DATE null;

alter table OK_PERIOD drop constraint OK_PERIOD_UK;
drop index OK_PERIOD_UK;

alter table OK_PERIOD drop constraint OK_PERIOD_PK;
drop index OK_PERIOD_PK;

alter table OK_PERSONAL modify ID null;
alter table OK_PERSONAL modify FAMILY null;
alter table OK_PERSONAL modify FIRST_NAME null;
alter table OK_PERSONAL modify GENDER_CODE null;
alter table OK_PERSONAL modify BIRTHDAY null;
alter table OK_PERSONAL modify NATIONALITY_CODE null;
alter table OK_PERSONAL modify HOME_ADDRESSFACT null;
alter table OK_PERSONAL modify PASS_SERIYA null;
alter table OK_PERSONAL modify PASS_NUM null;
alter table OK_PERSONAL modify PASS_DATE null;
alter table OK_PERSONAL modify PASS_REG null;
alter table OK_PERSONAL modify EMP_CODE null;
alter table OK_PERSONAL modify INS_DATE null;

alter table OK_PERSONAL modify FAMILY_STATUS_CODE null;
alter table OK_PERSONAL modify REG_TYPE_CODE null;
alter table OK_PERSONAL modify RECORD_BOOK_NUMBER null;
alter table OK_PERSONAL modify RECORD_BOOK_SERIES null;

alter table OK_PHOTO modify ID null;
alter table OK_PHOTO modify PHOTO null;

alter table OK_PHOTO modify EMP_CODE null;
alter table OK_PHOTO modify INS_DATE null;

alter table OK_POST modify RAISE_PERSONAL NUMBER(20,2);



alter table OK_POST modify ID null;
alter table OK_POST modify APPOINTMENT_DATE null;
alter table OK_POST modify DEPARTMENT_CODE null;
alter table OK_POST modify POST_CODE null;
alter table OK_POST modify SALARY_FACT null;
alter table OK_POST modify RAISE_PERSONAL null;
alter table OK_POST modify RAISE_ADD null;
alter table OK_POST modify BASIS_DATE null;
alter table OK_POST modify EMP_CODE null;
alter table OK_POST modify INS_DATE null;
alter table OK_PREMIUM modify ID null;
alter table OK_PREMIUM modify PREMIUM_DATE null;
alter table OK_PREMIUM modify PREMIUM_NAME null;
alter table OK_PREMIUM modify EMP_CODE null;
alter table OK_PREMIUM modify INS_DATE null;
alter table OK_PRIVILEGE modify DATE_OPEN null;
alter table OK_RELATION modify ID null;
alter table OK_RELATION modify RELATION_CODE null;
alter table OK_RELATION modify RELATION_FAMILY null;

 
 
alter table OK_RELATION modify RELATION_NAME null;
alter table OK_REZERV modify MASTER_ID null;
alter table OK_REZERV modify BRANCH_SHOW null;
alter table OK_REZERV modify DEPARTMENT_CODE null;
alter table OK_REZERV modify POST_CODE null;
alter table OK_REZERV modify EMP_CODE null;
alter table OK_REZERV modify INS_DATE null;
alter table OK_REZERV_DETAIL modify ID null;
alter table OK_REZERV_DETAIL modify MASTER_ID null;
alter table OK_REZERV_DETAIL modify BRANCH_SHOW null;
alter table OK_REZERV_DETAIL modify DEPARTMENT_CODE null;
alter table OK_REZERV_DETAIL modify POST_CODE null;
alter table OK_REZERV_DETAIL modify FAMILY null;
alter table OK_REZERV_DETAIL modify FIRST_NAME null;
alter table OK_REZERV_DETAIL modify EMP_CODE null;
alter table OK_REZERV_DETAIL modify INS_DATE null;
alter table OK_RISE modify ID null;
alter table OK_RISE modify RISE_INFO null;
alter table OK_RISE modify EMP_CODE null;
alter table OK_RISE modify INS_DATE null;
alter table OK_SCIENTIFIC modify ID null;

 
 
alter table OK_SCIENTIFIC modify SCIENTIFIC_INFO null;
alter table OK_SCIENTIFIC modify SCIENTIFIC_DATE null;
alter table OK_SCIENTIFIC modify EMP_CODE null;
alter table OK_SCIENTIFIC modify INS_DATE null;
alter table OK_STAT modify ID null;
alter table OK_STAT modify STAT_CODE null;
alter table OK_STAT modify DEPARTMENT_CODE null;
alter table OK_STAT modify POST_CODE null;
alter table OK_STAT modify QUANTITY_POST null;
alter table OK_STAT modify SALARY_FACT null;
alter table OK_STAT modify EMP_CODE null;
alter table OK_STAT modify INS_DATE null;
alter table OK_STAT modify SPECIAL_CODE null;
alter table OK_STAT_SALARY modify ID null;
alter table OK_STAT_SALARY modify SALARY_CODE null;
alter table OK_STAT_SALARY modify STAT_CODE null;
alter table OK_STAT_SALARY modify VACANCY_CODE null;
alter table OK_STAT_SALARY modify REZERVE_CODE null;
alter table OK_STAT_SALARY modify EMP_CODE null;
alter table OK_STAT_SALARY modify INS_DATE null;
alter table OK_TABEL modify TABEL_MONTH null;

 
 
alter table OK_TABEL modify TABEL_YEAR null;
alter table OK_VOYAGE modify ID null;
alter table OK_VOYAGE modify EMP_CODE null;
alter table OK_VOYAGE modify INS_DATE null;
alter table OK_YOUTH modify ID null;
alter table OK_YOUTH modify YOUTH_CODE null;
alter table OK_YOUTH modify IN_DATE null;
alter table OK_YOUTH modify EMP_CODE null;
alter table OK_YOUTH modify INS_DATE null;

 
 
alter table SS_OK modify ID null;
alter table SS_OK modify NCI_ID null;
alter table SS_OK_ACADEMIC modify ACADEMIC_ID null;
alter table SS_OK_ACADEMIC modify ACADEMIC_CODE null;
alter table SS_OK_ACADEMIC modify ACADEMIC_NAME null;
alter table SS_OK_ACADEMIC modify STATE_NOTES null;
alter table SS_OK_ACADEMIC modify EMP_CODE null;
alter table SS_OK_ACADEMIC modify INS_DATE null;
alter table SS_OK_ARMY modify ARMY_ID null;
alter table SS_OK_ARMY modify ARMY_CODE null;
alter table SS_OK_ARMY modify ARMY_TYPE null;
alter table SS_OK_ARMY_GROUP modify ARMY_GROUP_ID null;
alter table SS_OK_ARMY_GROUP modify ARMY_GROUP_CODE null;
alter table SS_OK_ARMY_GROUP modify ARMY_GROUP_NAME null;
alter table SS_OK_ARMY_GROUP modify STATE_NOTES null;
alter table SS_OK_ARMY_GROUP modify EMP_CODE null;
alter table SS_OK_ARMY_GROUP modify INS_DATE null;
alter table SS_OK_ARTICLE modify ARTICLE_ID null;
alter table SS_OK_ARTICLE modify ARTICLE_CODE null;
alter table SS_OK_ARTICLE modify ARTICLE_NUM null;

 
 
alter table SS_OK_ARTICLE modify ARTICLE_NAME null;
alter table SS_OK_ARTICLE modify ARTICLE_CHARACTER null;
alter table SS_OK_ARTICLE modify STATE_NOTES null;
alter table SS_OK_ARTICLE modify EMP_CODE null;
alter table SS_OK_ARTICLE modify INS_DATE null;
alter table SS_OK_BASE_MOVE modify BASE_MOVE_ID null;
alter table SS_OK_BASE_MOVE modify BASE_MOVE_CODE null;
alter table SS_OK_BASE_MOVE modify BASE_MOVE_NAME null;
alter table SS_OK_BASE_MOVE modify STATE_NOTES null;
alter table SS_OK_BASE_MOVE modify EMP_CODE null;
alter table SS_OK_BASE_MOVE modify INS_DATE null;
alter table SS_OK_BASIS modify BASIS_ID null;
alter table SS_OK_BASIS modify BASIS_CODE null;
alter table SS_OK_BASIS modify BASIS_NAME null;
alter table SS_OK_CATEGORY modify CATEGORY_CODE null;
alter table SS_OK_CATEGORY modify CATEGORY_NAME null;
alter table SS_OK_CATEGORY modify CATEGORY_RATE null;
alter table SS_OK_CATEGORY modify SALARY null;
alter table SS_OK_CATEGORY_ARMY modify CATEGORY_ARMY_ID null;
alter table SS_OK_CATEGORY_ARMY modify CATEGORY_ARMY_CODE null;
alter table SS_OK_CATEGORY_ARMY modify CATEGORY_ARMY_NAME null;

 
 
alter table SS_OK_CATEGORY_ARMY modify STATE_NOTES null;
alter table SS_OK_CATEGORY_ARMY modify EMP_CODE null;
alter table SS_OK_CATEGORY_ARMY modify INS_DATE null;
alter table SS_OK_CITY modify CITY_CODE null;
alter table SS_OK_COMMAND_PARAM modify COMMAND_PARAM_ID null;
alter table SS_OK_COMMAND_PARAM modify COMMAND_PARAM_CODE null;
alter table SS_OK_COMMAND_PARAM modify COMMAND_PARAM_NAME null;
alter table SS_OK_COMMAND_PARAM modify COMMAND_PARAM_SELECT null;
alter table SS_OK_COMMAND_TYPE modify COMMAND_TYPE_ID null;
alter table SS_OK_COMMAND_TYPE modify COMMAND_TYPE_CODE null;
alter table SS_OK_COMMAND_TYPE modify COMMAND_TYPE_NAME null;
alter table SS_OK_COMMAND_TYPE modify STATE_NOTES null;
alter table SS_OK_COMMAND_TYPE modify EMP_CODE null;
alter table SS_OK_COMMAND_TYPE modify INS_DATE null;
alter table SS_OK_DEGREE modify DEGREE_ID null;
alter table SS_OK_DEGREE modify DEGREE_CODE null;
alter table SS_OK_DEGREE modify DEGREE_NAME null;
alter table SS_OK_DEGREE modify STATE_NOTES null;
alter table SS_OK_DEGREE modify EMP_CODE null;
alter table SS_OK_DEGREE modify INS_DATE null;
alter table SS_OK_DEPARTMENT modify DEPARTMENT_ID null;

 
 
alter table SS_OK_DEPARTMENT modify DEPARTMENT_CODE null;
alter table SS_OK_DEPARTMENT modify DEPARTMENT_NAME null;
alter table SS_OK_DEPARTMENT modify DEPARTMENT_NUM null;
alter table SS_OK_DEPARTMENT modify DEPARTMENT_TYPE_CODE null;
alter table SS_OK_DEPARTMENT modify STATE_NOTES null;
alter table SS_OK_DEPARTMENT modify EMP_CODE null;
alter table SS_OK_DEPARTMENT modify INS_DATE null;
alter table SS_OK_DEPARTMENT modify LEVEL_DEPARTMENT_CODE null;
alter table SS_OK_DEPARTMENT_TYPE modify DEPARTMENT_TYPE_ID null;
alter table SS_OK_DEPARTMENT_TYPE modify DEPARTMENT_TYPE_CODE null;
alter table SS_OK_DEPARTMENT_TYPE modify DEPARTMENT_TYPE_NAME null;
alter table SS_OK_DEPARTMENT_TYPE modify STATE_NOTES null;
alter table SS_OK_DEPARTMENT_TYPE modify EMP_CODE null;
alter table SS_OK_DEPARTMENT_TYPE modify INS_DATE null;
alter table SS_OK_EDUCATION modify EDUCATION_ID null;
alter table SS_OK_EDUCATION modify EDUCATION_CODE null;
alter table SS_OK_EDUCATION modify EDUCATION_NAME null;
alter table SS_OK_EDUCATION modify STATE_NOTES null;
alter table SS_OK_EDUCATION modify EMP_CODE null;
alter table SS_OK_EDUCATION modify INS_DATE null;
alter table SS_OK_EDUCATION_TITLE modify EDUCATION_TITLE_ID null;

 
 
alter table SS_OK_EDUCATION_TITLE modify EDUCATION_TITLE_CODE null;
alter table SS_OK_EDUCATION_TITLE modify EDUCATION_TITLE_NAME null;
alter table SS_OK_EDUCATION_TITLE modify STATE_NOTES null;
alter table SS_OK_EDUCATION_TITLE modify EMP_CODE null;
alter table SS_OK_EDUCATION_TITLE modify INS_DATE null;
alter table SS_OK_ELECTION modify ELECTION_ID null;
alter table SS_OK_ELECTION modify ELECTION_CODE null;
alter table SS_OK_ELECTION modify ELECTION_NAME null;
alter table SS_OK_ELECTION modify ELECTION_ADDRESS null;
alter table SS_OK_ELECTION modify STATE_NOTES null;
alter table SS_OK_ELECTION modify EMP_CODE null;
alter table SS_OK_ELECTION modify INS_DATE null;
alter table SS_OK_FAMILY_STATUS modify FAMILY_STATUS_NAME null;
alter table SS_OK_FAMILY_STATUS modify FAMILY_STATUS_CODE null;
alter table SS_OK_FAMILY_STATUS modify GENDER_CODE null;
alter table SS_OK_FITNESS_ARMY modify FITNESS_ARMY_ID null;
alter table SS_OK_FITNESS_ARMY modify FITNESS_ARMY_CODE null;
alter table SS_OK_FITNESS_ARMY modify FITNESS_ARMY_TYPE null;
alter table SS_OK_GENDER modify GENDER_ID null;
alter table SS_OK_GENDER modify GENDER_CODE null;
alter table SS_OK_GENDER modify GENDER_NAME null;

 
 
alter table SS_OK_HOSPITAL modify HOSPITAL_CODE null;
alter table SS_OK_HOSPITAL modify HOSPITAL_NAME null;
alter table SS_OK_HOSPITAL modify WORK_PERIOD_FROM null;
alter table SS_OK_HOSPITAL modify WORK_PERIOD_TO null;
alter table SS_OK_INCREASE modify INCREASE_CODE null;

alter table SS_OK_INSTITUTION modify INSTITUTION_NAME VARCHAR2(150);
alter table SS_OK_INSTITUTION modify INSTITUTION_ABBREVIATION VARCHAR2(150);

alter table SS_OK_INSTITUTION modify INSTITUTION_ID null;
alter table SS_OK_INSTITUTION modify INSTITUTION_CODE null;
alter table SS_OK_INSTITUTION modify INSTITUTION_NAME null;
alter table SS_OK_INSTITUTION modify INSTITUTION_ABBREVIATION null;
alter table SS_OK_INSTITUTION modify INSTITUTION_PLACE null;
alter table SS_OK_INSTITUTION modify EDUCATION_CODE null;
alter table SS_OK_INSTITUTION modify STATE_NOTES null;
alter table SS_OK_INSTITUTION modify EMP_CODE null;
alter table SS_OK_INSTITUTION modify INS_DATE null;
alter table SS_OK_KV_KURS modify KV_KURS_CODE null;
alter table SS_OK_LANGUAGE modify LANGUAGE_ID null;
alter table SS_OK_LANGUAGE modify LANGUAGE_CODE null;
alter table SS_OK_LANGUAGE modify LANGUAGE_NAME null;
alter table SS_OK_LANGUAGE modify STATE_NOTES null;
alter table SS_OK_LANGUAGE modify EMP_CODE null;
alter table SS_OK_LANGUAGE modify INS_DATE null;

 
 
alter table SS_OK_LEAVE modify LEAVE_ID null;
alter table SS_OK_LEAVE modify LEAVE_CODE null;
alter table SS_OK_LEAVE modify LEAVE_NAME null;
alter table SS_OK_LEAVE modify STATE_NOTES null;
alter table SS_OK_LEAVE modify EMP_CODE null;
alter table SS_OK_LEAVE modify INS_DATE null;
alter table SS_OK_LEVEL_BOSS modify LEVEL_DEPARTMENT_CODE null;
alter table SS_OK_LEVEL_DEPARTMENT modify LEVEL_DEPARTMENT_CODE null;
alter table SS_OK_LEVEL_DEPARTMENT modify LEVEL_DEPARTMENT_NAME null;
alter table SS_OK_LEVEL_LANGUAGE modify LEVEL_LANGUAGE_ID null;
alter table SS_OK_LEVEL_LANGUAGE modify LEVEL_LANGUAGE_CODE null;
alter table SS_OK_LEVEL_LANGUAGE modify LEVEL_LANGUAGE_NAME null;
alter table SS_OK_LEVEL_LANGUAGE modify STATE_NOTES null;
alter table SS_OK_LEVEL_LANGUAGE modify EMP_CODE null;
alter table SS_OK_LEVEL_LANGUAGE modify INS_DATE null;
alter table SS_OK_MILITARY_RANK modify MILITARY_RANK_ID null;
alter table SS_OK_MILITARY_RANK modify MILITARY_RANK_CODE null;
alter table SS_OK_MILITARY_RANK modify MILITARY_RANK_NAME null;
alter table SS_OK_MILITARY_RANK modify STATE_NOTES null;
alter table SS_OK_MILITARY_RANK modify EMP_CODE null;
alter table SS_OK_MILITARY_RANK modify INS_DATE null;

 
 
alter table SS_OK_MIN_ZP modify SALARY null;
alter table SS_OK_MIN_ZP modify RATE null;
alter table SS_OK_MIN_ZP modify CATEGORY_ZERO_SALARY null;
alter table SS_OK_MIN_ZP modify DATE_OPEN null;
alter table SS_OK_MOTIVE_DISMISSIAL modify MOTIVE_DISMISSIAL_ID null;
alter table SS_OK_MOTIVE_DISMISSIAL modify MOTIVE_DISMISSIAL_CODE null;
alter table SS_OK_MOTIVE_DISMISSIAL modify MOTIVE_DISMISSIAL_NAME null;
alter table SS_OK_MOTIVE_DISMISSIAL modify STATE_NOTES null;
alter table SS_OK_MOTIVE_DISMISSIAL modify EMP_CODE null;
alter table SS_OK_MOTIVE_DISMISSIAL modify INS_DATE null;
alter table SS_OK_NATIONALITY modify NATIONALITY_ID null;
alter table SS_OK_NATIONALITY modify NATIONALITY_CODE null;
alter table SS_OK_NATIONALITY modify NATIONALITY_NAME null;
alter table SS_OK_NATIONALITY modify STATE_NOTES null;
alter table SS_OK_NATIONALITY modify EMP_CODE null;
alter table SS_OK_NATIONALITY modify INS_DATE null;
alter table SS_OK_NCI modify NCI_ID null;
alter table SS_OK_NCI modify S_ID null;
alter table SS_OK_NCI modify OK_ID null;
alter table SS_OK_ORG_BUSINESS_VOYAGE modify ORG_BUSINESS_VOYAGE_CODE null;
alter table SS_OK_PARTY modify PARTY_ID null;

 
 
alter table SS_OK_PARTY modify PARTY_CODE null;
alter table SS_OK_PARTY modify PARTY_ABBREVIATION null;
alter table SS_OK_PARTY modify PARTY_NAME null;
alter table SS_OK_PARTY modify STATE_NOTES null;
alter table SS_OK_PARTY modify EMP_CODE null;
alter table SS_OK_PARTY modify INS_DATE null;
alter table SS_OK_PASSPORT_TYPE modify PASSPORT_TYPE_CODE null;
alter table SS_OK_PENALTY modify PENALTY_ID null;
alter table SS_OK_PENALTY modify PENALTY_CODE null;
alter table SS_OK_PENALTY modify PENALTY_NAME null;
alter table SS_OK_PENALTY modify STATE_NOTES null;
alter table SS_OK_PENALTY modify EMP_CODE null;
alter table SS_OK_PENALTY modify INS_DATE null;
alter table SS_OK_PERS_COL_DFLT modify CODE_TABLE null;
alter table SS_OK_PERS_COL_DFLT modify CODE_NUM null;
alter table SS_OK_PERS_COL_DFLT modify NAME null;
alter table SS_OK_PERS_QUERY modify CODE null;
alter table SS_OK_PERS_QUERY_COL modify CODE_COL null;
alter table SS_OK_POST modify POST_ID null;
alter table SS_OK_POST modify POST_CODE null;
alter table SS_OK_POST modify POST_NAME null;

 
 
alter table SS_OK_POST modify LEVEL_DEPARTMENT_CODE null;
alter table SS_OK_POST modify STATE_NOTES null;
alter table SS_OK_POST modify EMP_CODE null;
alter table SS_OK_POST modify INS_DATE null;
alter table SS_OK_PRIVILEGE modify PRIVILEGE_CODE null;
alter table SS_OK_QUALIFICATION modify QUALIFICATION_ID null;
alter table SS_OK_QUALIFICATION modify QUALIFICATION_CODE null;
alter table SS_OK_QUALIFICATION modify QUALIFICATION_NAME null;
alter table SS_OK_QUALIFICATION modify STATE_NOTES null;
alter table SS_OK_QUALIFICATION modify EMP_CODE null;
alter table SS_OK_QUALIFICATION modify INS_DATE null;
alter table SS_OK_REGPLACE modify REGPLACE_CODE null;
alter table SS_OK_REG_TYPE modify REG_TYPE_ID null;
alter table SS_OK_REG_TYPE modify REG_TYPE_CODE null;
alter table SS_OK_REG_TYPE modify REG_TYPE_NAME null;
alter table SS_OK_RELATION modify RELATION_ID null;
alter table SS_OK_RELATION modify RELATION_CODE null;
alter table SS_OK_RELATION modify RELATION_NAME null;
alter table SS_OK_RELATION modify STATE_NOTES null;
alter table SS_OK_RELATION modify EMP_CODE null;
alter table SS_OK_RELATION modify INS_DATE null;

 
 
alter table SS_OK_REZERV modify REZERV_CODE null;
alter table SS_OK_REZERV modify REZERV_NAME null;
alter table SS_OK_REZERVE modify REZERVE_ID null;
alter table SS_OK_REZERVE modify REZERVE_CODE null;
alter table SS_OK_REZERVE modify REZERVE_NAME null;
alter table SS_OK_SPECIAL modify SPECIAL_ID null;
alter table SS_OK_SPECIAL modify SPECIAL_CODE null;
alter table SS_OK_SPECIAL modify SPECIAL_NAME null;
alter table SS_OK_SPECIAL modify STATE_NOTES null;
alter table SS_OK_SPECIAL modify EMP_CODE null;
alter table SS_OK_SPECIAL modify INS_DATE null;
alter table SS_OK_STAFF modify STAFF_ID null;
alter table SS_OK_STAFF modify STAFF_CODE null;
alter table SS_OK_STAFF modify STAFF_NAME null;
alter table SS_OK_STAFF modify STATE_NOTES null;
alter table SS_OK_STAFF modify EMP_CODE null;
alter table SS_OK_STAFF modify INS_DATE null;
alter table SS_OK_STATUS modify STATUS_CODE null;
alter table SS_OK_STATUS modify STATUS_NAME null;
alter table SS_OK_TEMPLATE_COMMAND modify TEMPLATE_COMMAND_ID null;
alter table SS_OK_TEMPLATE_COMMAND modify TEMPLATE_COMMAND_CODE null;

 
 
alter table SS_OK_TEMPLATE_COMMAND modify TEMPLATE_COMMAND_NAME null;
alter table SS_OK_TEMPLATE_COMMAND modify COMMAND_TYPE_CODE null;
alter table SS_OK_TEMPLATE_COMMAND modify TEMPLATE_COMMAND_FNAME null;
alter table SS_OK_TEMPLATE_COMMAND modify STATE_NOTES null;
alter table SS_OK_TEMPLATE_COMMAND modify EMP_CODE null;
alter table SS_OK_TEMPLATE_COMMAND modify INS_DATE null;
alter table SS_OK_THEME_BUSINESS_VOYAGE modify THEME_BUSINESS_VOYAGE_CODE null;
alter table SS_OK_TYPE_FORCE modify TYPE_FORCE_ID null;
alter table SS_OK_TYPE_FORCE modify TYPE_FORCE_CODE null;
alter table SS_OK_TYPE_FORCE modify TYPE_FORCE_NAME null;
alter table SS_OK_TYPE_FORCE modify STATE_NOTES null;
alter table SS_OK_TYPE_FORCE modify EMP_CODE null;
alter table SS_OK_TYPE_FORCE modify INS_DATE null;
alter table SS_OK_TYPE_PERIOD modify TYPE_PERIOD_ID null;
alter table SS_OK_TYPE_PERIOD modify TYPE_PERIOD_CODE null;
alter table SS_OK_TYPE_PERIOD modify TYPE_PERIOD_NAME null;
alter table SS_OK_TYPE_PERIOD modify STATE_NOTES null;
alter table SS_OK_TYPE_PERIOD modify EMP_CODE null;
alter table SS_OK_TYPE_PERIOD modify INS_DATE null;
alter table SS_OK_VACANCY modify VACANCY_ID null;
alter table SS_OK_VACANCY modify VACANCY_CODE null;

 
 
alter table SS_OK_VACANCY modify VACANCY_NAME null;
alter table SS_OK_YOUTH modify YOUTH_CODE null;
alter table SS_OK_YOUTH modify STATE_NOTES null;

