spool c:\kachOK2.txt;

delete from ss_ok_nationality;
prompt # �� ���������� �� ��������������
insert into ss_ok_nationality
select nat_id,nat_id,nat_name,act,1,date_open from s_nation;
commit;


alter table SS_OK_PARTY modify PARTY_ABBREVIATION null;
alter table SS_OK_PARTY modify PARTY_NAME VARCHAR2(100);

delete from ss_ok_party;
prompt # �� ���������� �� ������
insert into ss_ok_party
select part_id,part_id,part_sokr,part_name,act,1,date_open from s_party;
commit;

delete from ss_ok_education_title; 
prompt # �� ���������� �� ������������ �����������
insert into ss_ok_education_title 
select obr_id,obr_id,obr_name,act,1,date_open from s_obraz;
commit;

delete from ss_ok_degree;
prompt # �� ���������� �� ������ �������
insert into ss_ok_degree
select zvn_id,zvn_id,zvn_name,act,1,DATE_OPEN from s_uch_step;
commit;

delete from SS_OK_ACADEMIC;
prompt # �� ���������� �� ������ ������
insert into SS_OK_ACADEMIC
select zvn_id,zvn_id,zvn_name,act,1,date_open from s_uch_zvn;
commit;

delete from ss_ok_language;
prompt # �� ���������� �� �����
insert into ss_ok_language
select lang_id, lang_id, lang_name,act,1,date_open from s_langs;
commit;

delete from ss_ok_level_language;
prompt # �� ���������� �� ������ �������� �� ��
insert into ss_ok_level_language
select urov_id, urov_id, urov_name,act,1,date_open from s_lang;
commit;

alter table ss_ok_post modify LEVEL_DEPARTMENT_CODE null;
delete from ss_ok_post;
prompt # �� ���������� �� ���������
insert into ss_ok_post
select dolj_id, dolj_id, dolj_name,urov_id, act,1,date_open,null from s_doljn;
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

alter table ss_ok_institution modify INSTITUTION_ABBREVIATION null;
alter table ss_ok_institution modify INSTITUTION_PLACE null;
alter table ss_ok_institution modify EDUCATION_CODE null;
alter table ss_ok_institution modify institution_name VARCHAR2(120);


delete from ss_ok_institution;
prompt # �� ���������� �� ������� ���������
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
prompt # �� ���������� �� ����������� ���������
insert into ss_ok_relation
select fam_id, fam_id, fam_name,act,1,date_open from s_family;
commit;

delete from ss_ok_nci
where nci_id in ('72','73','74','75','76','77','78','79','80','81');
prompt # ���������� ������������

prompt # ���������� �� ��������������
insert into ss_ok_nci
select '72', nat_id, nat_id,'A','1',sysdate from s_nation;

prompt # ���������� �� ������
insert into ss_ok_nci
select '73', part_id, part_id,'A','1',sysdate from s_party;

prompt # ���������� �� ������������ �����������
insert into ss_ok_nci
select '74', obr_id, obr_id,'A','1',sysdate from s_obraz;

prompt # �� ���������� �� ������ �������
insert into ss_ok_nci
select '75', zvn_id, zvn_id,'A','1',sysdate from s_uch_step;

prompt # �� ���������� �� ������ ������
insert into ss_ok_nci
select '76', zvn_id, zvn_id,'A','1',sysdate from s_uch_zvn;

prompt # �� ���������� �� �����
insert into ss_ok_nci
select '77', lang_id, lang_id,'A','1',sysdate from s_langs;

prompt # �� ���������� �� ������ �������� �� ��
insert into ss_ok_nci
select '78',urov_id ,urov_id ,'A','1',sysdate from s_lang;

prompt # �� ���������� �� ���������
insert into ss_ok_nci
select '79', dolj_id, dolj_id,'A','1',sysdate from s_doljn;

prompt # �� ���������� �� ������� ���������
insert into ss_ok_nci
select '80', zav_id, zav_id,'A','1',sysdate from s_uch_zav;

prompt # �� ���������� �� ����������� ���������
insert into ss_ok_nci
select '81', fam_id, fam_id,'A','1',sysdate from s_family;

commit;

-- NCI_ID      CHAR(2)   ��� ����������� ��                                                                                                                                       
-- S_ID        VARCHAR2(5)  ���������� ��� � ����������� ��                                                                                                                          
-- OK_ID       NUMBER(8)    ���������� ��� � ����������� ������ �����                                                                                                                
-- STATE_NOTES CHAR(1)     ������� ���������� ������A - �������� ������P - ��������� ������	�������� � ����������, ������� ����, �� ��������� �������� �������  -� -�������� ������ 
-- EMP_CODE    NUMBER(6)   ��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, �� ������� ����, ������������ ��� ����������                                
-- INS_DATE

spool off;
