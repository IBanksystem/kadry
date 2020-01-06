alter table OK_PERSONAL modify HOME_ADDRESSFACT null;
alter table OK_PERSONAL modify HOME_ADDRESS null;
alter table OK_PERSONAL modify PASS_REG null;
 

delete from SS_OK_PERS_COL_DFLT where 
CODE_TABLE='001' and CODE_NUM='18';
insert into SS_OK_PERS_COL_DFLT values('001','18','OK_SERVICE.GET_REGIONNAME(PP.HOME_ADDRESS_REGION_ID)||'' ''||OK_SERVICE.GET_DISTRNAME(PP.HOME_ADDRESS_DISTR)||'' ''||PP.HOME_ADDRESS','C','Полный домашний адрес (прописка)','Полный домашний адрес (прописка)',30,null,null,null);

delete from SS_OK_PERS_COL_DFLT where 
CODE_TABLE='001' and CODE_NUM='19';
insert into SS_OK_PERS_COL_DFLT values('001','19','OK_SERVICE.GET_REGIONNAME(PP.HOME_ADDRESSFACT_REGION_ID)||'' ''||OK_SERVICE.GET_DISTRNAME(PP.HOME_ADDRESSFACT_DISTR)||'' ''||PP.HOME_ADDRESSFACT','C','Фактическое место проживания','Фактическое место проживания',30,null,null,null);

commit;


-- справочник место регистрации
--drop  table ss_ok_regplace;
create table ss_ok_regplace(
regplace_code number(9),
regplace_name varchar2(100),
STATE_NOTES           CHAR(1),
EMP_CODE              NUMBER(6),
INS_DATE              DATE 
);

ALTER TABLE ss_ok_regplace ADD CONSTRAINT ss_ok_regplace_PK
  PRIMARY KEY ( regplace_code );

comment on table ss_ok_regplace is 'справочник место регистрации';
comment on column ss_ok_regplace.regplace_code is 'код место регистрации';
comment on column ss_ok_regplace.regplace_name is 'название место регистрации';
comment on column ss_ok_regplace.STATE_NOTES is 'A-активный';
comment on column ss_ok_regplace.EMP_CODE is 'код сотрудника ОК';
comment on column ss_ok_regplace.INS_DATE is 'дата вставки записи';



-- справочник города
--drop table ss_ok_city;
create table ss_ok_city(
city_code number(9),
city_name varchar2(100),
city_capital number(1),
STATE_NOTES           CHAR(1),
EMP_CODE              NUMBER(6),
INS_DATE              DATE 
);

ALTER TABLE ss_ok_city ADD CONSTRAINT ss_ok_city_PK
  PRIMARY KEY ( city_code );

comment on table ss_ok_city is 'справочник города';
comment on column ss_ok_city.city_code is 'код города';
comment on column ss_ok_city.city_name is 'название города';
comment on column ss_ok_city.city_capital is 'признак 1-столица 0-нет';
comment on column ss_ok_city.STATE_NOTES is 'A-активный';
comment on column ss_ok_city.EMP_CODE is 'код сотрудника ОК';
comment on column ss_ok_city.INS_DATE is 'дата вставки записи';


alter table ok_personal add regplace_code number(9);
comment on column ok_personal.regplace_code is 'код место регистрации';


alter table ss_ok_kv_kurs add city_code number(9);
comment on column ss_ok_kv_kurs.city_code is 'код города';

alter table ok_business_voyage add city_code number(9);
comment on column ok_business_voyage.city_code is 'код города';

