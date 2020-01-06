-- если область рождения не пусто то страна рождения 860
update ok_relation 
set COD_STR_birth='860'
where COD_OBL_birth is not null
and COD_STR_birth is null;
commit;

-- если область жительства не пусто то страна жительства 860
update ok_relation 
set COD_STR_LIVE='860'
where COD_OBL_LIVE is not null
and COD_STR_LIVE is null;
commit;

-- если страна жительства 860 то примечание область жительства  и примечание город жительства  ставим пусто
update ok_relation 
set COD_OBL_live_PRIM=null,COD_CITY_PRIM=null,COD_STR_LIVE_Prim=null
where COD_STR_LIVE='860';
commit;

-- если страна рождения 860 то примечание область рождения и примечание город рождения ставим пусто
update ok_relation 
set COD_OBL_birth_PRIM=null,COD_CITY_birth_PRIM=null,COD_STR_birth_prim=null
where COD_STR_birth='860';
commit;
