-- только для ГО

create table ok_edb_diplom(
branch varchar2(5) not null,
id number not null,
personal_code NUMBER(9) not null,
FILE_NAME  VARCHAR2(50) not null,
source LONG RAW
);

create or replace public synonym ok_edb_diplom for ok_edb_diplom;
drop table ok_edb_diplom;
drop public synonym ok_edb_diplom;


create table ss_ok_vid_education(
vid_education_code NUMBER(9) not null,
vid_education_NAME  VARCHAR2(50) not null,
state_notes varchar2(1)
);

create or replace public synonym ss_ok_vid_education for ss_ok_vid_education;

delete from ss_ok_vid_education;

insert into ss_ok_vid_education select 1,' (кундузги)','A' from dual;
insert into ss_ok_vid_education select 2,' (сиртки)','A' from dual;
insert into ss_ok_vid_education select 3,' (кечки)','A' from dual;
insert into ss_ok_vid_education select 4,' (масофавий)','A' from dual;
commit;

alter table ok_education add vid_education_code NUMBER(9);
