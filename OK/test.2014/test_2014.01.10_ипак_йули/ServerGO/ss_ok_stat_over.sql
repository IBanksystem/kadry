--Справочник- отделы внештатных сотрудников
create table ss_ok_stat_over(
department_code NUMBER(9) not null, 
LEVEL_DEPARTMENT_CODE NUMBER(1)  not null
);

ALTER TABLE ss_ok_stat_over ADD CONSTRAINT ss_ok_stat_over_PK
  PRIMARY KEY ( department_code );

create or replace public synonym ss_ok_stat_over for ss_ok_stat_over;

grant all on ss_ok_stat_over to public;


