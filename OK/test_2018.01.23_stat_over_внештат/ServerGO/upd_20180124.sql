--select * from ss_ok_department order by  level_department_code, department_id
--select * from  ss_ok_DEPARTMENT_TYPE
--select * from  ss_ok_level_DEPARTMENT

alter trigger TR_DOSTUP_SS_OK_DEPARTMENT disable;

--delete from ss_ok_department where department_code in (9999991,9999992,9999993,9999995);
insert into ss_ok_department(DEPARTMENT_ID,BRANCH,DEPARTMENT_CODE,DEPARTMENT_NAME,DEPARTMENT_NUM,
DEPARTMENT_TYPE_CODE,HIGH_DEP_CODE,STATE_NOTES,EMP_CODE,INS_DATE,LEVEL_DEPARTMENT_CODE) select
9999991,'09004',9999991,'Внештат 1',9999991, 4,null,'A',99,sysdate,1 from branch where bank_id='00394';

insert into ss_ok_department(DEPARTMENT_ID,BRANCH,DEPARTMENT_CODE,DEPARTMENT_NAME,DEPARTMENT_NUM,
DEPARTMENT_TYPE_CODE,HIGH_DEP_CODE,STATE_NOTES,EMP_CODE,INS_DATE,LEVEL_DEPARTMENT_CODE) select
9999992,'09004',9999992,'Внештат 2',9999992, 4,null,'A',99,sysdate,2 from branch where bank_id='00394';


insert into ss_ok_department(DEPARTMENT_ID,BRANCH,DEPARTMENT_CODE,DEPARTMENT_NAME,DEPARTMENT_NUM,
DEPARTMENT_TYPE_CODE,HIGH_DEP_CODE,STATE_NOTES,EMP_CODE,INS_DATE,LEVEL_DEPARTMENT_CODE) select
9999993,'09004',9999993,'Внештат 3',9999993, 4,null,'A',99,sysdate,3 from branch where bank_id='00394';


insert into ss_ok_department(DEPARTMENT_ID,BRANCH,DEPARTMENT_CODE,DEPARTMENT_NAME,DEPARTMENT_NUM,
DEPARTMENT_TYPE_CODE,HIGH_DEP_CODE,STATE_NOTES,EMP_CODE,INS_DATE,LEVEL_DEPARTMENT_CODE) select
9999995,'09004',9999995,'Внештат 5',9999995, 4,null,'A',99,sysdate,5 from branch where bank_id='00394';
commit;

alter trigger TR_DOSTUP_SS_OK_DEPARTMENT enable;
--delete from ss_ok_stat_over where department_code in (9999991,9999992,9999993,9999995);

insert into ss_ok_stat_over (DEPARTMENT_CODE, LEVEL_DEPARTMENT_CODE) select 9999991,1 from branch where bank_id='00394';
commit;
insert into ss_ok_stat_over (DEPARTMENT_CODE, LEVEL_DEPARTMENT_CODE) select 9999992,2 from branch where bank_id='00394';
commit;
insert into ss_ok_stat_over (DEPARTMENT_CODE, LEVEL_DEPARTMENT_CODE) select 9999993,3 from branch where bank_id='00394';
commit;

insert into ss_ok_stat_over (DEPARTMENT_CODE, LEVEL_DEPARTMENT_CODE ) select  9999995,5 from branch where bank_id='00394';
commit;

drop public synonym ok_hist;
grant select, insert, delete, update on ok_hist to PUBLIC;
create public synonym ok_hist for ok_hist;
grant select, insert, delete, update on ok_hist to PUBLIC;

drop public synonym ok_photo_b64;
grant select, insert, delete, update on ok_photo_b64 to PUBLIC;
create public synonym ok_photo_b64 for ok_hist;
grant select, insert, delete, update on ok_photo_b64 to PUBLIC;

