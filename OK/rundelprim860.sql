-- удалить примечание к ИИАС обл и район рождения если страна рождения 860 РУз
update ok_personal
set cod_obl_prim=null,cod_place_birth_prim=null
where cod_str_birth='860';
commit;

-- удалить примечание к ИИАС обл и район проживания если страна проживания 860 РУз
update ok_personal
set cod_obl_live_prim=null,cod_distr_live_prim=null
where cod_str_live='860';
commit;
