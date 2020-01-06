
insert into ss_ok_mfo_category_type (mfo_category_type_code,mfo_category_type_group,mfo_category_type_name,mfo_category_type_purp) values ( 1,1,'����������� �������',      '1 ���������');

insert into ss_ok_mfo_category_type (mfo_category_type_code,mfo_category_type_group,mfo_category_type_name,mfo_category_type_purp) values ( 2,2,'��������� ������ 1-������','2 ���������');
insert into ss_ok_mfo_category_type (mfo_category_type_code,mfo_category_type_group,mfo_category_type_name,mfo_category_type_purp) values ( 4,2,'�������� ������ �����',    '4 ���������');
insert into ss_ok_mfo_category_type (mfo_category_type_code,mfo_category_type_group,mfo_category_type_name,mfo_category_type_purp) values ( 6,2,'�������� ������ ����',     '6 ���������');

insert into ss_ok_mfo_category_type (mfo_category_type_code,mfo_category_type_group,mfo_category_type_name,mfo_category_type_purp) values ( 3,3,'��������� ������ 1-������','3 ���������');
insert into ss_ok_mfo_category_type (mfo_category_type_code,mfo_category_type_group,mfo_category_type_name,mfo_category_type_purp) values ( 5,3,'�������� ������ �����',    '5 ���������');
insert into ss_ok_mfo_category_type (mfo_category_type_code,mfo_category_type_group,mfo_category_type_name,mfo_category_type_purp) values ( 7,3,'�������� ������ ����',     '7 ���������');
commit;



alter table SS_OK_CATEGORY drop constraint SS_OK_CATEGORY_PK;
drop index SS_OK_CATEGORY_PK;


alter table SS_OK_CATEGORY add constraint SS_OK_CATEGORY_PK primary key (CATEGORY_CODE);


delete from ss_ok_category where mfo_category_type_code>1;
commit;

update ss_ok_category set mfo_category_type_code=null;
commit;

alter table ss_ok_category drop column mfo_category_type_code;
