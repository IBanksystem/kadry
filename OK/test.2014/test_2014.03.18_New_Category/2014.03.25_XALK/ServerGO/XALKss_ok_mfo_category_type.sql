
insert into ss_ok_mfo_category_type (mfo_category_type_code,mfo_category_type_group,mfo_category_type_name,mfo_category_type_purp) values ( 1,1,'Центральный аппарат',      '1 категория');

insert into ss_ok_mfo_category_type (mfo_category_type_code,mfo_category_type_group,mfo_category_type_name,mfo_category_type_purp) values ( 2,2,'Областной филиал 1-группа','2 категория');
insert into ss_ok_mfo_category_type (mfo_category_type_code,mfo_category_type_group,mfo_category_type_name,mfo_category_type_purp) values ( 4,2,'Районный филиал город',    '4 категория');
insert into ss_ok_mfo_category_type (mfo_category_type_code,mfo_category_type_group,mfo_category_type_name,mfo_category_type_purp) values ( 6,2,'Районный филиал село',     '6 категория');

insert into ss_ok_mfo_category_type (mfo_category_type_code,mfo_category_type_group,mfo_category_type_name,mfo_category_type_purp) values ( 3,3,'Областной филиал 1-группа','3 категория');
insert into ss_ok_mfo_category_type (mfo_category_type_code,mfo_category_type_group,mfo_category_type_name,mfo_category_type_purp) values ( 5,3,'Районный филиал город',    '5 категория');
insert into ss_ok_mfo_category_type (mfo_category_type_code,mfo_category_type_group,mfo_category_type_name,mfo_category_type_purp) values ( 7,3,'Районный филиал село',     '7 категория');
commit;



alter table SS_OK_CATEGORY drop constraint SS_OK_CATEGORY_PK;
drop index SS_OK_CATEGORY_PK;


alter table SS_OK_CATEGORY add constraint SS_OK_CATEGORY_PK primary key (CATEGORY_CODE);


delete from ss_ok_category where mfo_category_type_code>1;
commit;

update ss_ok_category set mfo_category_type_code=null;
commit;

alter table ss_ok_category drop column mfo_category_type_code;
