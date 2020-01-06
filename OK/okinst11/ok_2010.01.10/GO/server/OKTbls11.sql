
create table ss_ok_post_group(
post_group_code number(5),
post_group_name varchar2(200)
);

alter table ss_ok_post_group
  add constraint ss_ok_post_group_PK primary key (post_group_code);

delete from ss_ok_post_group;
insert into ss_ok_post_group select 1,'Руководство' from dual;
insert into ss_ok_post_group select 2    ,'Специалисты' from dual;

insert into ss_ok_post_group select 3    ,'Работники касс' from dual;

insert into ss_ok_post_group select 4    ,'Младший обслужив. персонал' from dual;
commit;



alter table ss_ok_post add post_group_code number(5);

comment on column ss_ok_post.post_group_code
  is 'Код должностной группы ss_ok_post_group ';

update ss_ok_post
set post_group_code=1
where post_code in (select ok_id from ss_ok_nci
where nci_id=79);

update ss_ok_post
set post_group_code=2
where post_group_code is null;

commit;

create public synonym ss_ok_post_group for ss_ok_post_group;
--

alter table OK_EDUCATION add BEGIN_DATE_MM NUMBER(2); 
alter table OK_EDUCATION add BEGIN_DATE_DD NUMBER(2); 

alter table OK_EDUCATION add END_DATE_MM NUMBER(2); 
alter table OK_EDUCATION add END_DATE_DD NUMBER(2); 

comment on column OK_EDUCATION.BEGIN_DATE_MM  is 'Месяц поступления в учебное заведение 09_004';
comment on column OK_EDUCATION.BEGIN_DATE_DD  is 'День месяца поступления в учебное заведение 09_004';

comment on column OK_EDUCATION.END_DATE_MM  is 'Месяц окончания учебного заведения 09_004';
comment on column OK_EDUCATION.END_DATE_DD  is 'День месяца окончания учебного заведения 09_004';


--

alter table OK_AWARD add AWARD_DATE_MM NUMBER(2); 
alter table OK_AWARD add AWARD_DATE_DD NUMBER(2); 

comment on column OK_AWARD.AWARD_DATE_MM  is 'Месяц награждения 09_005';
comment on column OK_AWARD.AWARD_DATE_DD  is 'День награждения  09_005';


   
alter table OK_ELECTION add ELECTION_DATE_BEGIN_MM NUMBER(2); 
alter table OK_ELECTION add ELECTION_DATE_BEGIN_DD NUMBER(2); 
comment on column OK_ELECTION.ELECTION_DATE_BEGIN_MM  is 'Месяц избрания 09_006';
comment on column OK_ELECTION.ELECTION_DATE_BEGIN_DD  is 'День  избрания 09_006';

alter table OK_ELECTION add ELECTION_DATE_END_MM NUMBER(2); 
alter table OK_ELECTION add ELECTION_DATE_END_DD NUMBER(2); 
comment on column OK_ELECTION.ELECTION_DATE_END_MM  is 'Месяц окончания пребывания';
comment on column OK_ELECTION.ELECTION_DATE_END_DD  is 'День  окончания пребывания';



--
alter table OK_VOYAGE add VOYAGE_DATE_MM NUMBER(2); 
alter table OK_VOYAGE add VOYAGE_DATE_DD NUMBER(2); 
comment on column OK_VOYAGE.VOYAGE_DATE_MM  is 'Месяц выезда';
comment on column OK_VOYAGE.VOYAGE_DATE_DD  is 'День выезда';


alter table OK_VOYAGE add DATA_IN_MM NUMBER(2); 
alter table OK_VOYAGE add DATA_IN_DD NUMBER(2); 
comment on column OK_VOYAGE.DATA_IN_MM  is 'Месяц возвращения';
comment on column OK_VOYAGE.DATA_IN_DD  is 'День возвращения';




--

alter table OK_RISE add RISE_DATE_MM NUMBER(2); 
alter table OK_RISE add RISE_DATE_DD NUMBER(2); 
comment on column OK_RISE.RISE_DATE_MM  is 'Месяц ';
comment on column OK_RISE.RISE_DATE_DD  is 'День ';






