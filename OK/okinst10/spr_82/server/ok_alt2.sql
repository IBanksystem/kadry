alter table ok_personal add prich_id varchar2(2);
alter table ok_personal add name_pr varchar2(100);

ALTER TABLE ok_stat MODIFY (DEPARTMENT_CODE NUMBER(9) );

ALTER TABLE ss_ok_department MODIFY (DEPARTMENT_CODE NUMBER(9) );
ALTER TABLE ss_ok_department MODIFY (HIGH_DEP_CODE NUMBER(9) );

alter table ok_education add nostra varchar2(1);
alter table ok_education add nostra_series varchar2(1);
alter table ok_education add nostra_number varchar2(6);
alter table ok_education add nostra_date date;

ALTER TABLE ok_relation MODIFY (RELATION_PATRONYMIC VARCHAR2(50)  null);
ALTER TABLE ok_relation MODIFY (RELATION_BIRTHDAY NUMBER(4)  null);
ALTER TABLE ok_relation MODIFY (RELATION_BIRTHPLACE VARCHAR2(200)  null);
ALTER TABLE ok_relation MODIFY (RELATION_OFFICE VARCHAR2(200) null);
ALTER TABLE ok_relation MODIFY (RELATION_POST VARCHAR2(100) null);
ALTER TABLE ok_relation MODIFY (RELATION_HOME_ADDRESS VARCHAR2(200)  null);

ALTER TABLE ok_relation ADD (RELATION_DEATHDAY   NUMBER(4));
ALTER TABLE ok_relation MODIFY (RELATION_DEATHDAY   NUMBER(4) null);


ALTER TABLE ok_relation ADD (COD_STR_LIVE   varchar2(3));
ALTER TABLE ok_relation ADD (COD_STR_LIVE_PRIM varchar2(50));

ALTER TABLE ok_relation ADD (COD_OBL_LIVE varchar2(2));
ALTER TABLE ok_relation ADD (COD_OBL_LIVE_PRIM varchar2(50));

ALTER TABLE ok_relation ADD (COD_city varchar2(3));
ALTER TABLE ok_relation ADD (COD_city_PRIM varchar2(50));


ALTER TABLE ok_relation ADD (COD_STR_birth   varchar2(3));
ALTER TABLE ok_relation ADD (COD_STR_birth_PRIM varchar2(50));

ALTER TABLE ok_relation ADD (COD_OBL_birth varchar2(2));
ALTER TABLE ok_relation ADD (COD_OBL_birth_PRIM varchar2(50));

ALTER TABLE ok_relation ADD (COD_city_birth varchar2(3));
ALTER TABLE ok_relation ADD (COD_CITY_birth_PRIM varchar2(50));

ALTER TABLE ok_relation ADD (dd number(2));
ALTER TABLE ok_relation ADD (mm number(2));
ALTER TABLE ok_relation ADD (dd_death number(2));
ALTER TABLE ok_relation ADD (mm_death number(2));
