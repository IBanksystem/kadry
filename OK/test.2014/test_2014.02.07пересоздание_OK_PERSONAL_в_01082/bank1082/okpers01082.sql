-- на bank1082
spool c:\ok01082.txt
drop table ok_personal_temp;
create table ok_personal_temp as select * from ok_personal;
commit;
drop table ok_personal;
create table ok_personal as select * from bank974.ok_personal where rownum<1;
commit;
insert into ok_personal select 
ID,
BRANCH,
PERSONAL_CODE,
COLLEAGUE_CODE,
STATUS_CODE,
SALARY_CODE,
FAMILY,
FIRST_NAME,
PATRONYMIC,
GENDER_CODE,
BIRTHDAY,
REGION_ID,
DISTR,
NATIONALITY_CODE,
FAMILY_STATUS_CODE,
REG_TYPE_CODE,
HOME_ADDRESS,
HOME_ADDRESSFACT,
PASS_SERIYA,
PASS_NUM,
PASS_DATE,
PASS_REG,
RECORD_BOOK_NUMBER,
RECORD_BOOK_SERIES,
TELEFON,
EMP_CODE,
INS_DATE,
PROFMEMBER,
TABNO,
EDUCATION_TITLE_CODE,
BIRTHPLACE,
MOTIVE_OUT,
BASIS_NUM,
BASIS_DATE,
LEAVE_CODE,
DEPARTMENT_CODE,
POST_CODE,
NN,
MOTIVE_DISMISSIAL_CODE,
NPS_ID,
SPECIAL_CODE,
COD_DISTR_UVD,
COD_DISTR_PRIM,
COD_STR_BIRTH,
COD_OBL_PRIM,
COD_PLACE_BIRTH_PRIM,
COD_SITIZENT,
COD_STR_SITIZENT,
COD_STR_LIVE,
COD_OBL_LIVE,
COD_OBL_LIVE_PRIM,
COD_DISTR_LIVE,
COD_DISTR_LIVE_PRIM,
CODE_NACI_PRIM,
CHECK_KFS,
IS_BOSS,
BANK_SPEC,
NOTICE,
PRICH_ID,
NAME_PR,
INN,
SROK_DATE,
HOME_ADDRESSFACT_REGION_ID,
HOME_ADDRESSFACT_DISTR,
HOME_ADDRESS_REGION_ID,
HOME_ADDRESS_DISTR,
PASSPORT_TYPE_CODE,
REGPLACE_CODE,
PASS_DATE_END,
GOSUBMIT_CODE,
LIVE_PLACE,
BIRTHPLACE_POINT,
MAIDEN_FAMILY,
DEPARTMENT_CODE_OLD,
POST_CODE_OLD,
SPECIAL_CODE_OLD,
SPEC_IKKI,
DEPARTMENT_CODE_NEW,
POST_CODE_NEW,
SPECIAL_CODE_NEW,
REG_DATE_END,
TRUD_SOGL,
APPLICATION_DATE,
REPLY_DATE,
USER_NAME,
IS_PARTY,
IS_ACADEMIC,
IS_DEGREE,
IS_AWARD,
IS_SCIENTIFIC,
IS_VOYAGE,
IS_CONVICTIONS,
IS_LANGUAGE,
IS_RISE,
IS_ELECTION,
IS_PREMIUM,
IS_ARMY,
MAIDENSTAG,
ZP_RATE_CODE,
FAMILY_LAT,
FIRST_NAME_LAT,
PATRONYMIC_LAT
 from ok_personal_temp;
commit;

alter table OK_PERSONAL  add constraint OK_PERSONAL_PK primary key (BRANCH, PERSONAL_CODE);
alter table OK_PERSONAL  add constraint OK_PERSONAL_UK unique (BRANCH, ID);
create index OK_PERSONAL_PASSPORT on OK_PERSONAL (BRANCH, PASS_NUM, PASS_SERIYA);

CREATE OR REPLACE TRIGGER TR_OK_PERSONAL_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_PERSONAL
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
Version constant char(12) := '#~19042012~#';
new_id           NUMBER;
branch_          ok_personal.branch%type;
personal_code_   ok_personal.personal_code%type;
PASS_SERIYA_OLD_ VARCHAR2(20);
PASS_NUM_OLD_    VARCHAR2(20);
PASS_DATE_OLD_   DATE;
PASS_SERIYA_NEW_ VARCHAR2(20);
PASS_NUM_NEW_    VARCHAR2(20);
PASS_DATE_NEW_   DATE;
old_post_code_   ok_personal.post_code%type;
new_post_code_   ok_personal.post_code%type;
id_table_   ok_hist.id_table%type;
 is_boss_now_ number(2);
BEGIN
-- 09_001
  if inserting then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1;
    PASS_SERIYA_OLD_ :=null;
    PASS_NUM_OLD_    :=null;
    PASS_DATE_OLD_   :=null;
    old_post_code_   :=null;
    PASS_SERIYA_NEW_ :=:NEW.PASS_SERIYA;
    PASS_NUM_NEW_    :=:NEW.PASS_NUM;
    PASS_DATE_NEW_   :=:NEW.PASS_DATE;
    new_post_code_   :=:NEW.POST_CODE;
    id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2;
    PASS_SERIYA_OLD_ :=:OLD.PASS_SERIYA;
    PASS_NUM_OLD_    :=:OLD.PASS_NUM;
    PASS_DATE_OLD_   :=:OLD.PASS_DATE;
    old_post_code_   :=:OLD.POST_CODE;
    id_table_   :=:OLD.ID;
    PASS_SERIYA_NEW_ :=:NEW.PASS_SERIYA;
    PASS_NUM_NEW_    :=:NEW.PASS_NUM;
    PASS_DATE_NEW_   :=:NEW.PASS_DATE;
    new_post_code_   :=:NEW.POST_CODE;
    id_table_   :=:NEW.ID;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4;
    PASS_SERIYA_OLD_ :=:OLD.PASS_SERIYA;
    PASS_NUM_OLD_    :=:OLD.PASS_NUM;
    PASS_DATE_OLD_   :=:OLD.PASS_DATE;
    old_post_code_   :=:OLD.POST_CODE;
    id_table_   :=:OLD.ID;
    PASS_SERIYA_NEW_ :=null;
    PASS_NUM_NEW_    :=null;
    PASS_DATE_NEW_   :=null;
    new_post_code_   :=null;
    id_table_   :=:OLD.ID;
  end if;

  begin
-- 1 начальник или 0 не начальник
-- для выбора в 09_002 - 09_009
    select count(*) into is_boss_now_ from SS_OK_NCI son
    where son.ok_id=new_post_code_ and son.NCI_ID=79;
  EXCEPTION when no_data_found
    then
      is_boss_now_ := 0;
  end;

--  is_boss_now_ было ok_service2.is_boss_now(branch_,personal_code_)
  if is_boss_now_ >0 then
      if (ok_service2.is_boss_post(old_post_code_)=1) then
         -- он и был боссом - - обычное 2-изменение
         new_id:=2;
         -- или 3-исправление Если изменилось хотя бы одно из
         if :NEW.NPS_ID <>:OLD.NPS_ID -- Уникальный номер пенсионного счета сотрудника
         or :NEW.FAMILY <>:OLD.FAMILY -- Фамилия сотрудника
         or :NEW.MAIDEN_FAMILY <>:OLD.MAIDEN_FAMILY -- Девичья фамилия сотрудницы
         or :NEW.FIRST_NAME <>:OLD.FIRST_NAME -- Имя сотрудника
         or :NEW.PATRONYMIC <>:OLD.PATRONYMIC -- Отчество сотрудника
         or :NEW.gender_code <>:OLD.gender_code -- Пол
         or :NEW.birthday <>:OLD.birthday -- Год рождения Месяц рождения Число рождения
         or :NEW.COD_STR_BIRTH <>:OLD.COD_STR_BIRTH -- Код страны места рождения
         or :NEW.REGION_ID <>:OLD.REGION_ID -- Код области  места рождения
         or :NEW.COD_OBL_PRIM <>:OLD.COD_OBL_PRIM -- Примечание для кода области
         or :NEW.DISTR <>:OLD.DISTR -- Код района или города места рождения
         or :NEW.COD_PLACE_BIRTH_PRIM <>:OLD.COD_PLACE_BIRTH_PRIM -- Примечание для кода района или города
         or :NEW.BIRTHPLACE_POINT <>:OLD.BIRTHPLACE_POINT -- Место рождения наименование населенного пункта
         or :NEW.NATIONALITY_CODE <>:OLD.NATIONALITY_CODE -- Код национальности
         or :NEW.CODE_NACI_PRIM <>:OLD.CODE_NACI_PRIM -- Примечание для кода национальности
         or :NEW.BRANCH <>:OLD.BRANCH -- Код отделения банка
         then
           new_id:=3;
         end if;
          ok_service2.ok_hist_proc(branch_,personal_code_,'OK_PERSONAL',new_id,
            PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_,id_table_,null);
      else
      -- был не босс -- стал босс -- вставка
        ok_service2.ok_hist_proc(branch_,personal_code_,'OK_PERSONAL',1,
          PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_,id_table_,null);
      end if;
  else
    if (updating) then
      if (ok_service2.is_boss_post(old_post_code_)=1) then
         -- он был боссом но не оправдал доверия - 5-понижение в должности
       ok_service2.ok_hist_proc(branch_,personal_code_,'OK_PERSONAL',5,
         PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_,id_table_,null);
      end if;
    end if;
    if (deleting) then
      if (ok_service2.is_boss_post(old_post_code_)=1) then
       ok_service2.ok_hist_proc(branch_,personal_code_,'OK_PERSONAL',4,
         PASS_SERIYA_OLD_,PASS_NUM_OLD_,PASS_DATE_OLD_,PASS_SERIYA_NEW_,PASS_NUM_NEW_,PASS_DATE_NEW_,id_table_,null);
      end if;
    end if;
  end if;
--
END;
/

spool off;
