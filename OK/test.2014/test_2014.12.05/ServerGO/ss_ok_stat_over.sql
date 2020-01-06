--Справочник- отделы внештатных сотрудников
create table ss_ok_stat_over(
department_code NUMBER(9) not null, 
LEVEL_DEPARTMENT_CODE NUMBER(1)  not null
);

ALTER TABLE ss_ok_stat_over ADD CONSTRAINT ss_ok_stat_over_PK
  PRIMARY KEY ( department_code );

delete from ss_ok_stat_over;
--insert into ss_ok_stat_over values (43,1);
--insert into ss_ok_stat_over values (1050,2);
--insert into ss_ok_stat_over values (1051,3);
commit;

create or replace public synonym ss_ok_stat_over for ss_ok_stat_over;