spool c:\kachOK.txt;

delete from ss_ok_nationality;
insert into ss_ok_nationality
select nat_id,nat_id,nat_name,act,1,date_open from s_nation;
commit;

delete from ss_ok_party;
insert into ss_ok_party
select part_id,part_id,part_sokr,part_name,act,1,date_open from s_party;
commit;

delete from ss_ok_education_title; 
insert into ss_ok_education_title 
select obr_id,obr_id,obr_name,act,1,date_open from s_obraz;
commit;

delete from ss_ok_degree;
insert into ss_ok_degree
select zvn_id,zvn_id,zvn_name,act,1,DATE_OPEN from s_uch_step;
commit;

delete from SS_OK_ACADEMIC;
insert into SS_OK_ACADEMIC
select zvn_id,zvn_id,zvn_name,act,1,date_open from s_uch_zvn;
commit;

delete from ss_ok_language;
insert into ss_ok_language
select lang_id, lang_id, lang_name,act,1,date_open from s_langs;
commit;

delete from ss_ok_level_language;
insert into ss_ok_level_language
select urov_id, urov_id, urov_name,act,1,date_open from s_lang;
commit;

delete from ss_ok_post
insert into ss_ok_post
select dolj_id, dolj_id, dolj_name,urov_id, act,1,date_open from s_doljn;
-- ��      � ��� 
-- 0-����  1
-- 1-���   2
-- 2-����� 3
update ss_ok_post
set Level_Department_Code=3
where  Level_Department_Code=2 ;
update ss_ok_post
set Level_Department_Code=2
where  Level_Department_Code=1 ;
update ss_ok_post
set Level_Department_Code=1
where  Level_Department_Code=0 ;
commit;

delete from ss_ok_institution;
insert into ss_ok_institution
select zav_id, zav_id, zav_name,null,null,z_type,act,1,date_open from s_uch_zav;

update ss_ok_institution
set EDUCATION_CODE=5
where  EDUCATION_CODE=2 ;
update ss_ok_institution
set EDUCATION_CODE=4
where  EDUCATION_CODE=1 ;
update ss_ok_institution
set EDUCATION_CODE=3
where  EDUCATION_CODE=0 ;
commit;

--  �� � ���          
--	0-3 ��������, 1-4 �����������, 2-5 ��������
delete from ss_ok_relation;
insert into ss_ok_relation
select fam_id, fam_id, fam_name,act,1,date_open from s_family;
commit;

spool off;
