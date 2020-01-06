spool c:\ok753.txt

insert into bank753.ok_personal (ID,STATUS_CODE,PERSONAL_CODE,TABNO,EMP_CODE,
INS_DATE,BRANCH,SALARY_CODE,FAMILY,FIRST_NAME,PATRONYMIC,GENDER_CODE,BIRTHDAY,REGION_ID,DISTR,
NATIONALITY_CODE,FAMILY_STATUS_CODE,REG_TYPE_CODE,HOME_ADDRESS,HOME_ADDRESSFACT,
PASS_SERIYA,PASS_NUM,PASS_DATE,PASS_REG,RECORD_BOOK_NUMBER,RECORD_BOOK_SERIES,TELEFON,
PROFMEMBER,EDUCATION_TITLE_CODE,BIRTHPLACE,BASIS_NUM,BASIS_DATE,LEAVE_CODE,NPS_ID,SPECIAL_CODE,
COD_DISTR_UVD,COD_DISTR_PRIM,COD_STR_BIRTH,COD_OBL_PRIM,COD_PLACE_BIRTH_PRIM,COD_SITIZENT,
COD_STR_SITIZENT,COD_STR_LIVE,COD_OBL_LIVE,COD_OBL_LIVE_PRIM,COD_DISTR_LIVE,COD_DISTR_LIVE_PRIM,
CODE_NACI_PRIM,CHECK_KFS,IS_BOSS,BANK_SPEC,NOTICE,INN,HOME_ADDRESSFACT_REGION_ID,
HOME_ADDRESSFACT_DISTR,HOME_ADDRESS_REGION_ID,HOME_ADDRESS_DISTR,PASSPORT_TYPE_CODE,REGPLACE_CODE,
PASS_DATE_END,LIVE_PLACE,BIRTHPLACE_POINT,MAIDEN_FAMILY,SPEC_IKKI,REG_DATE_END,TRUD_SOGL,
APPLICATION_DATE,REPLY_DATE,IS_PARTY,IS_ACADEMIC,IS_DEGREE,IS_AWARD,IS_SCIENTIFIC,IS_VOYAGE,
IS_CONVICTIONS,IS_LANGUAGE,IS_RISE,IS_ELECTION,IS_PREMIUM,IS_ARMY)
select SEQ_OK_personal.Nextval,STATUS_CODE,PERSONAL_CODE+1000,TABNO+1000,EMP_CODE,
sysDATE,'00753',SALARY_CODE,FAMILY,FIRST_NAME,PATRONYMIC,GENDER_CODE,BIRTHDAY,REGION_ID,DISTR,
NATIONALITY_CODE,FAMILY_STATUS_CODE,REG_TYPE_CODE,HOME_ADDRESS,HOME_ADDRESSFACT,
PASS_SERIYA,PASS_NUM,PASS_DATE,PASS_REG,RECORD_BOOK_NUMBER,RECORD_BOOK_SERIES,TELEFON,
PROFMEMBER,EDUCATION_TITLE_CODE,BIRTHPLACE,BASIS_NUM,BASIS_DATE,LEAVE_CODE,NPS_ID,SPECIAL_CODE,
COD_DISTR_UVD,COD_DISTR_PRIM,COD_STR_BIRTH,COD_OBL_PRIM,COD_PLACE_BIRTH_PRIM,COD_SITIZENT,
COD_STR_SITIZENT,COD_STR_LIVE,COD_OBL_LIVE,COD_OBL_LIVE_PRIM,COD_DISTR_LIVE,COD_DISTR_LIVE_PRIM,
CODE_NACI_PRIM,CHECK_KFS,IS_BOSS,BANK_SPEC,NOTICE,INN,HOME_ADDRESSFACT_REGION_ID,
HOME_ADDRESSFACT_DISTR,HOME_ADDRESS_REGION_ID,HOME_ADDRESS_DISTR,PASSPORT_TYPE_CODE,REGPLACE_CODE,
PASS_DATE_END,LIVE_PLACE,BIRTHPLACE_POINT,MAIDEN_FAMILY,SPEC_IKKI,REG_DATE_END,TRUD_SOGL,
APPLICATION_DATE,REPLY_DATE,IS_PARTY,IS_ACADEMIC,IS_DEGREE,IS_AWARD,IS_SCIENTIFIC,IS_VOYAGE,
IS_CONVICTIONS,IS_LANGUAGE,IS_RISE,IS_ELECTION,IS_PREMIUM,IS_ARMY
 from bank758.ok_personal where branch='00758';



--:=29815 (* ������ ������);
 insert into bank753.ok_academic (BRANCH,PERSONAL_CODE,ACADEMIC_CODE,ACADEMIC_DATE,STATE,EMP_CODE,INS_DATE) select 
        '00753',personal_code+1000,ACADEMIC_CODE,ACADEMIC_DATE,STATE,emp_code,sysdate 
        from bank758.ok_academic 
          where branch='00758';


--:=29824 (�������������� ��������);
 insert into bank753.OK_ADDINFORM (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, ADDINFORM_DATE,CHARACTER_ADDINFORM,ESTIMATION) select 
        '00753',personal_code+1000,emp_code,sysdate, ADDINFORM_DATE,CHARACTER_ADDINFORM,ESTIMATION 
        from bank758.OK_ADDINFORM 
          where branch='00758'; 

--:=29833 (* �������� ������);
 insert into bank753.OK_ARMY (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       ARMY_CODE,FITNESS_ARMY_CODE,SPECIAL_ARMY,NUMBER_VUS,CODE_ARMY_POST,NAME_ARMY_OFFICE,SPECREG_NUMBER, 
       ARMY_GROUP_CODE,CATEGORY_ARMY_CODE,MILITARY_RANK_CODE,STAFF_CODE,TYPE_FORCE_CODE 
       ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       ARMY_CODE,FITNESS_ARMY_CODE,SPECIAL_ARMY,NUMBER_VUS,CODE_ARMY_POST,NAME_ARMY_OFFICE,SPECREG_NUMBER, 
       ARMY_GROUP_CODE,CATEGORY_ARMY_CODE,MILITARY_RANK_CODE,STAFF_CODE,TYPE_FORCE_CODE 
        from bank758.OK_ARMY 
          where branch='00758'; 

--:=29859 (* �������);
 insert into bank753.OK_AWARD (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       AWARD_DATE,AWARD_INFO,AWARD_DATE_MM,AWARD_DATE_DD 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       AWARD_DATE,AWARD_INFO,AWARD_DATE_MM,AWARD_DATE_DD 
        from bank758.OK_AWARD 
          where branch='00758'; 

--:=29871 (������������);
 insert into bank753.OK_BUSINESS_VOYAGE (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       CITY_CODE,KV_KURS_CODE,DATE_OPEN,DATE_CLOSE,NUMBER_DAY,ORG_BUSINESS_VOYAGE_CODE, 
       THEME_BUSINESS_VOYAGE_CODE,CODE_STR,ORDER_NUM,ORDER_DATE,PRIM 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       CITY_CODE,KV_KURS_CODE,DATE_OPEN,DATE_CLOSE,NUMBER_DAY,ORG_BUSINESS_VOYAGE_CODE, 
       THEME_BUSINESS_VOYAGE_CODE,CODE_STR,ORDER_NUM,ORDER_DATE,PRIM 
        from bank758.OK_BUSINESS_VOYAGE 
          where branch='00758'; 

--:=29885 (�������� �� ��������� ���);
 insert into bank753.OK_CHANGE_FIO (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       FAMILY,FIRST_NAME,PATRONYMIC,CHANGE_DATE,CHANGE_MOTIVE 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       FAMILY,FIRST_NAME,PATRONYMIC,CHANGE_DATE,CHANGE_MOTIVE 
        from bank758.OK_CHANGE_FIO 
          where branch='00758'; 

--:=29897 (* ���������);
 insert into bank753.OK_CONVICTIONS (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       CONVICTIONS_DATE,CONVICTIONS_MOTIVE,F1_FIO,F2_KIMNING,F3_SANA,F4_SABAB1,F4_SABAB2, 
       F4_SABAB3,F5_NATIJA1,F5_NATIJA2,F5_NATIJA3,F6_CHORA,F7_MALUMOT1,F7_MALUMOT2,CONVICTIONS_SANA 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       CONVICTIONS_DATE,CONVICTIONS_MOTIVE,F1_FIO,F2_KIMNING,F3_SANA,F4_SABAB1,F4_SABAB2, 
       F4_SABAB3,F5_NATIJA1,F5_NATIJA2,F5_NATIJA3,F6_CHORA,F7_MALUMOT1,F7_MALUMOT2,CONVICTIONS_SANA 
        from bank758.OK_CONVICTIONS 
          where branch='00758'; 

--:=29911 (* ������ �������);
 insert into bank753.OK_DEGREE (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       DEGREE_CODE,DEGREE_DATE 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       DEGREE_CODE,DEGREE_DATE 
        from bank758.OK_DEGREE 
          where branch='00758'; 

--:=29923 (* �����������);
 insert into bank753.OK_EDUCATION (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       EDUCATION_CODE,BASIS_CODE,INSTITUTION_CODE,BEGIN_DATE,END_DATE,PROFESSION_PERSONAL, 
         QUALIFICATION_CODE,DIPLOM_NUM,COD_VUZ_PRIM,CURS,FAKULTET,NOSTRA,NOSTRA_SERIES,NOSTRA_NUMBER, 
         NOSTRA_DATE,DIPLOM_DATE,BEGIN_DATE_MM,BEGIN_DATE_DD, 
         END_DATE_MM,END_DATE_DD,EDUCATION_END,EDUCATION_CITY,EDUCATION_COUNT_CODE,VID_EDUCATION_CODE 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       EDUCATION_CODE,BASIS_CODE,INSTITUTION_CODE,BEGIN_DATE,END_DATE,PROFESSION_PERSONAL, 
         QUALIFICATION_CODE,DIPLOM_NUM,COD_VUZ_PRIM,CURS,FAKULTET,NOSTRA,NOSTRA_SERIES,NOSTRA_NUMBER, 
         NOSTRA_DATE,DIPLOM_DATE,BEGIN_DATE_MM,BEGIN_DATE_DD, 
         END_DATE_MM,END_DATE_DD,EDUCATION_END,EDUCATION_CITY,EDUCATION_COUNT_CODE,VID_EDUCATION_CODE 
        from bank758.OK_EDUCATION 
          where branch='00758'; 

--:=29941 (* ��������);
 insert into bank753.OK_ELECTION (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       ELECTION_CODE,ELECTION_POST,ELECTION_DATE_BEGIN,ELECTION_DATE_END,ELECTION_ADDRESS, 
       ELECTION_NAME,ELECTION_DATE_BEGIN_MM,ELECTION_DATE_BEGIN_DD,ELECTION_DATE_END_MM,ELECTION_DATE_END_DD 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       ELECTION_CODE,ELECTION_POST,ELECTION_DATE_BEGIN,ELECTION_DATE_END,ELECTION_ADDRESS, 
       ELECTION_NAME,ELECTION_DATE_BEGIN_MM,ELECTION_DATE_BEGIN_DD,ELECTION_DATE_END_MM,ELECTION_DATE_END_DD 
        from bank758.OK_ELECTION 
          where branch='00758'; 

--:=29955;
 insert into bank753.OK_HOSPITAL (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       HOSPITAL_CODE,HOSPITAL_DOC,DATE_OPEN,DATE_CLOSE,NUMBER_DAY,WORK_PERIOD,PERCENTAGE, 
       DIAGNOSIS,DATE_HOSPITAL,PRIM_HOSPITAL,SHIFR,PRIM 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       HOSPITAL_CODE,HOSPITAL_DOC,DATE_OPEN,DATE_CLOSE,NUMBER_DAY,WORK_PERIOD,PERCENTAGE, 
       DIAGNOSIS,DATE_HOSPITAL,PRIM_HOSPITAL,SHIFR,PRIM 
        from bank758.OK_HOSPITAL 
          where branch='00758'; 

--:=29969;
 insert into bank753.OK_INCREASE (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       INCREASE_CODE,INCREASE_VIEW,INCREASE_PERCENTAGE,RAZN,DATE_OPEN,DATE_CLOSE, 
       ORDER_NUM,ORDER_DATE,PRIM 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       INCREASE_CODE,INCREASE_VIEW,INCREASE_PERCENTAGE,RAZN,DATE_OPEN,DATE_CLOSE, 
       ORDER_NUM,ORDER_DATE,PRIM 
        from bank758.OK_INCREASE 
          where branch='00758'; 

--:=29983 (�����);
 insert into bank753.OK_KURS (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       FIO,KV_KURS_CODE 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       FIO,KV_KURS_CODE 
        from bank758.OK_KURS 
          where branch='00758'; 

--:=29995 (* �����);
 insert into bank753.OK_LANGUAGE (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       LANGUAGE_CODE,LEVEL_CODE,STATE,COD_LANG_PRIM 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       LANGUAGE_CODE,LEVEL_CODE,STATE,COD_LANG_PRIM 
        from bank758.OK_LANGUAGE 
          where branch='00758'; 

--:=30007 (������� �� �� ���� ����������);
 insert into bank753.OK_LEAVE (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       LEAVE_CODE,BEGIN_YEAR,END_YEAR,PERIOD_LEAVE,DATE_IN_LEAVE,DATE_OUT_LEAVE, 
       MOTIVE_LEAVE,NUM_BASIS,DATE_BASIS,DATE_RECALL_BEGIN,DATE_RECALL_END,DATE_ORDER_RECALL 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       LEAVE_CODE,BEGIN_YEAR,END_YEAR,PERIOD_LEAVE,DATE_IN_LEAVE,DATE_OUT_LEAVE, 
       MOTIVE_LEAVE,NUM_BASIS,DATE_BASIS,DATE_RECALL_BEGIN,DATE_RECALL_END,DATE_ORDER_RECALL 
        from bank758.OK_LEAVE 
          where branch='00758'; 

--:=30021 (* ������);
 insert into bank753.OK_PARTY (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       PARTY_CODE,OUT_PARTY,PARTY_DATE,PARTY_OUTDATE,PUNISHMENT_MOTIVE,PUNISHMENT_DATE,CODE_PARTII_PRIM 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       PARTY_CODE,OUT_PARTY,PARTY_DATE,PARTY_OUTDATE,PUNISHMENT_MOTIVE,PUNISHMENT_DATE,CODE_PARTII_PRIM 
        from bank758.OK_PARTY 
          where branch='00758'; 

--:=30033 (�������� � ����������);
 insert into bank753.OK_PENALTY (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE,  
       PENALTY_CODE,PENALTY_MOTIVE,PENALTY_DATE,PENALTY_NUM 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       PENALTY_CODE,PENALTY_MOTIVE,PENALTY_DATE,PENALTY_NUM 
        from bank758.OK_PENALTY 
          where branch='00758'; 

--:=30045 (* �������� � ������ (������ ��������));
 insert into bank753.OK_PERIOD (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       IN_OFFICE_DATE,OUT_OFFICE_DATE,OFFICE_NAME,OFFICE_ADDRESS,ESTABLISHED_POST, 
       ESTABLISHED_DEPARTMENT,BASE_MOVE_CODE,TYPE_PERIOD_CODE,ARTICLE_CODE,BASIS_NUM,BASIS_DATE,PRIZ_SYSTEM 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       IN_OFFICE_DATE,OUT_OFFICE_DATE,OFFICE_NAME,OFFICE_ADDRESS,ESTABLISHED_POST, 
       ESTABLISHED_DEPARTMENT,BASE_MOVE_CODE,TYPE_PERIOD_CODE,ARTICLE_CODE,BASIS_NUM,BASIS_DATE,PRIZ_SYSTEM 
        from bank758.OK_PERIOD 
          where branch='00758'; 

--:=30059 (* ��� ������);
 insert into bank753.OK_PREMIUM (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       PREMIUM_DATE,PREMIUM_NAME 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       PREMIUM_DATE,PREMIUM_NAME 
        from bank758.OK_PREMIUM 
          where branch='00758'; 

--:=30071 (������);
 insert into bank753.OK_PRIVILEGE (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       PRIVILEGE_CODE,PRIVILEGE_DOC,DATE_OPEN,DATE_CLOSE,PRIM 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       PRIVILEGE_CODE,PRIVILEGE_DOC,DATE_OPEN,DATE_CLOSE,PRIM 
        from bank758.OK_PRIVILEGE 
          where branch='00758'; 

--:=30083 (* ����������� ���������);
 insert into bank753.OK_RELATION (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       COD_OBL_BIRTH_PRIM,COD_CITY_BIRTH,COD_CITY_BIRTH_PRIM,DD,MM,DD_DEATH,MM_DEATH,RELATION_CODE, 
       RELATION_FAMILY,RELATION_NAME,RELATION_PATRONYMIC,RELATION_BIRTHDAY,RELATION_DEATHDAY,  
       RELATION_OFFICE,RELATION_POST,RELATION_HOME_ADDRESS,COD_STR_LIVE,COD_OBL_LIVE,COD_OBL_LIVE_PRIM,COD_CITY, 
       COD_CITY_PRIM,COD_STR_LIVE_PRIM,COD_STR_BIRTH,COD_STR_BIRTH_PRIM,COD_OBL_BIRTH 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       COD_OBL_BIRTH_PRIM,COD_CITY_BIRTH,COD_CITY_BIRTH_PRIM,DD,MM,DD_DEATH,MM_DEATH,RELATION_CODE, 
       RELATION_FAMILY,RELATION_NAME,RELATION_PATRONYMIC,RELATION_BIRTHDAY,RELATION_DEATHDAY,  
       RELATION_OFFICE,RELATION_POST,RELATION_HOME_ADDRESS,COD_STR_LIVE,COD_OBL_LIVE,COD_OBL_LIVE_PRIM,COD_CITY, 
       COD_CITY_PRIM,COD_STR_LIVE_PRIM,COD_STR_BIRTH,COD_STR_BIRTH_PRIM,COD_OBL_BIRTH 
        from bank758.OK_RELATION 
          where branch='00758'; 

--:=30101 (* ������������);
 insert into bank753.OK_RISE (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       RISE_DATE_YEAR,RISE_INFO,RISE_DATE_MM,RISE_DATE_DD 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       RISE_DATE_YEAR,RISE_INFO,RISE_DATE_MM,RISE_DATE_DD 
        from bank758.OK_RISE 
          where branch='00758'; 

--:=30113 (* ������� ������);
 insert into bank753.OK_SCIENTIFIC (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       SCIENTIFIC_INFO,SCIENTIFIC_DATE 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       SCIENTIFIC_INFO,SCIENTIFIC_DATE 
        from bank758.OK_SCIENTIFIC 
          where branch='00758'; 

--:=30125 (* ���������� �������);
 insert into bank753.OK_VOYAGE (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       VOYAGE_DATE,VOYAGE_LAND,VOYAGE_INFO,VOYAGE_STR,DATA_IN,VOYAGE_DATE_MM,VOYAGE_DATE_DD,DATA_IN_MM,DATA_IN_DD 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       VOYAGE_DATE,VOYAGE_LAND,VOYAGE_INFO,VOYAGE_STR,DATA_IN,VOYAGE_DATE_MM,VOYAGE_DATE_DD,DATA_IN_MM,DATA_IN_DD 
        from bank758.OK_VOYAGE 
          where branch='00758'; 

--:=30137 (���������� �����������);
 insert into bank753.OK_YOUTH (BRANCH,PERSONAL_CODE,EMP_CODE,INS_DATE, 
       YOUTH_CODE,IN_DATE,OUT_DATE 
        ) select 
        '00753',personal_code+1000,emp_code,sysdate,  
       YOUTH_CODE,IN_DATE,OUT_DATE 
        from bank758.OK_YOUTH 
          where branch='00758'; 

spool off;
