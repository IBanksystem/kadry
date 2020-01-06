-- только для ГО
create table ss_ok_education_count(
education_count_code number(5),
education_count_name varchar2(50)
);
create or replace public synonym ss_ok_education_count for ss_ok_education_count;

delete from ss_ok_education_count;
insert into ss_ok_education_count (education_count_code,education_count_name)
 values (0,'-');
insert into ss_ok_education_count (education_count_code,education_count_name)
 values (1,'Первое образование');
insert into ss_ok_education_count (education_count_code,education_count_name)
 values (2,'Второе образование');
commit;


alter table okedb_appoints add REPLY_DATE date;

comment on column okedb_appoints.REPLY_DATE 
  is 'дата ответа из ГО';

alter table okedb_appoints_arh add REPLY_DATE date;

