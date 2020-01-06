--селект
--ввели женат-замужем но не ввели мужа-жену

--select * from s_nsi nci_id=81
--select * from S_FAMILY

--select * from ss_ok_family_status
--select * from ss_ok_RELATION 

-- 1	1	Уйланган- М женат
-- 2	1	Уйланмаган- М неженат
-- 3	2	Турмушга чиккан - Ж замужем
-- 4	2	Турмушга чикмаган - Ж незамужем
-- 5	1	Ажрашган (эркак) - М разведен
-- 6	2	Ажрашган (аёл) - Ж разведена

-- select ok_id from ss_ok_nci where nci_id=81 and s_id=
-- 01	Хотини
-- 02	Эри
-- 13	Собик хотини
-- 14	Собик эри

spool c:\relation.txt

prompt # М женат но нет жены
select branch,personal_code,tabno,family from ok_personal okp 
where okp.branch in (select branch from sets)
and okp.status_code in (2,5)
and okp.gender_code=1
and okp.family_status_code in (1)
and not exists (select 1 from ok_relation where branch in (select branch from sets) 
and relation_code in (select ok_id from ss_ok_nci where nci_id=81 and s_id='01') );

prompt # М Неженат-Разведен но есть жена
select branch,personal_code,tabno,family from ok_personal okp 
where okp.branch in (select branch from sets)
and okp.status_code in (2,5)
and okp.gender_code=1
and okp.family_status_code in (2,5)
and exists (select 1 from ok_relation where branch in (select branch from sets) 
and relation_code in (select ok_id from ss_ok_nci where nci_id=81 and s_id='01') );

prompt # М Разведен но нет разведенной жены
select branch,personal_code,tabno,family from ok_personal okp 
where okp.branch in (select branch from sets)
and okp.status_code in (2,5)
and okp.gender_code=1
and okp.family_status_code in (5)
and not exists (select 1 from ok_relation where branch in (select branch from sets) 
and relation_code in (select ok_id from ss_ok_nci where nci_id=81 and s_id='13') );


prompt # Ж замужен но нет мужа
select branch,personal_code,tabno,family from ok_personal okp 
where okp.branch in (select branch from sets)
and okp.status_code in (2,5)
and okp.gender_code=2
and okp.family_status_code in (3)
and not exists (select 1 from ok_relation where branch in (select branch from sets) 
and relation_code in (select ok_id from ss_ok_nci where nci_id=81 and s_id='02') );

prompt # Ж Незамужем-Разведена но есть муж
select branch,personal_code,tabno,family from ok_personal okp 
where okp.branch in (select branch from sets)
and okp.status_code in (2,5)
and okp.gender_code=2
and okp.family_status_code in (4,6)
and exists (select 1 from ok_relation where branch in (select branch from sets) 
and relation_code in (select ok_id from ss_ok_nci where nci_id=81 and s_id='02') );

--prompt # Ж Разведена но нет разведенного мужа
--select branch,personal_code,tabno,family from ok_personal okp 
--where okp.branch in (select branch from sets)
--and okp.status_code in (2,5)
--and okp.gender_code=2
--and okp.family_status_code in (6)
--and not exists (select 1 from ok_relation where branch in (select branch from sets) 
--and relation_code in (select ok_id from ss_ok_nci where nci_id=81 and s_id='14') );

spool off;


