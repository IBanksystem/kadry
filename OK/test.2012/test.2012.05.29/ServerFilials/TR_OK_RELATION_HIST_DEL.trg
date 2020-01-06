CREATE OR REPLACE TRIGGER TR_OK_RELATION_HIST_DEL
 BEFORE
 DELETE
 ON OK_RELATION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~09032012~#';
BEGIN
-- 09_003
  if deleting then
    insert into OK_RELATION_HIST_DEL (
ID,
BRANCH,
PERSONAL_CODE,
RELATION_CODE,
RELATION_FAMILY,
RELATION_NAME,
RELATION_PATRONYMIC,
RELATION_BIRTHDAY,
RELATION_DEATHDAY,
RELATION_BIRTHPLACE,
RELATION_OFFICE,
RELATION_POST,
RELATION_HOME_ADDRESS,
EMP_CODE,
INS_DATE,
COD_STR_LIVE,
COD_OBL_LIVE,
COD_OBL_LIVE_PRIM,
COD_CITY,
COD_CITY_PRIM,
COD_STR_LIVE_PRIM,
COD_STR_BIRTH,
COD_STR_BIRTH_PRIM,
COD_OBL_BIRTH,
COD_OBL_BIRTH_PRIM,
COD_CITY_BIRTH,
COD_CITY_BIRTH_PRIM,
DD,
MM,
DD_DEATH,
MM_DEATH
)
select
:OLD.ID,
:OLD.BRANCH,
:OLD.PERSONAL_CODE,
:OLD.RELATION_CODE,
:OLD.RELATION_FAMILY,
:OLD.RELATION_NAME,
:OLD.RELATION_PATRONYMIC,
:OLD.RELATION_BIRTHDAY,
:OLD.RELATION_DEATHDAY,
:OLD.RELATION_BIRTHPLACE,
:OLD.RELATION_OFFICE,
:OLD.RELATION_POST,
:OLD.RELATION_HOME_ADDRESS,
:OLD.EMP_CODE,
:OLD.INS_DATE,
:OLD.COD_STR_LIVE,
:OLD.COD_OBL_LIVE,
:OLD.COD_OBL_LIVE_PRIM,
:OLD.COD_CITY,
:OLD.COD_CITY_PRIM,
:OLD.COD_STR_LIVE_PRIM,
:OLD.COD_STR_BIRTH,
:OLD.COD_STR_BIRTH_PRIM,
:OLD.COD_OBL_BIRTH,
:OLD.COD_OBL_BIRTH_PRIM,
:OLD.COD_CITY_BIRTH,
:OLD.COD_CITY_BIRTH_PRIM,
:OLD.DD,
:OLD.MM,
:OLD.DD_DEATH,
:OLD.MM_DEATH
 from dual;
  end if;
END;
/
