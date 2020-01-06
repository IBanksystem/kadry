alter trigger TR_OK_personal_HIST disable;

update ok_personal set 
cod_obl_prim=null
,cod_place_birth_prim=null
--,BIRTHPLACE_POINT=null -- пункт рождения
where cod_str_birth='860';
commit;

update ok_personal
set cod_obl_live_prim=null
,cod_distr_live_prim=null
--,live_place=null -- пункт проживания
where cod_str_live='860';
commit;

update ok_personal
set cod_distr_prim=null -- примечание код увд
where cod_distr_uvd is not null;
commit;
alter trigger TR_OK_personal_HIST enable;

alter trigger TR_OK_relation_HIST disable;
update ok_relation
set COD_STR_LIVE_Prim=null,
COD_OBL_live_PRIM=null,
COD_CITY_PRIM=null
where COD_STR_LIVE='860';
commit;

update ok_relation
set COD_STR_birth_prim=null,
COD_OBL_birth_PRIM=null,
COD_CITY_birth_PRIM=null
where COD_STR_birth='860';
commit;
alter trigger TR_OK_relation_HIST enable;

alter trigger TR_OK_EDUCATION_HIST disable;
update ok_education set
end_date_dd=to_char(diplom_date,'dd'),
end_date_mm=to_char(diplom_date,'mm'),
end_date=to_char(diplom_date,'yyyy')
where diplom_date is not null;
commit;
alter trigger TR_OK_EDUCATION_HIST enable;