
create table ss_ok_gosubmit(
gosubmit_code number,
gosubmit_name varchar2(50)
);

delete from SS_OK_GOSUBMIT;
insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (6, 'Разрешено Уволить');
insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (14, 'Отклонён ГО');
insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (22, 'Подтверждён ГО');
insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (29, 'Отправлен в ГО');
insert into SS_OK_GOSUBMIT (GOSUBMIT_CODE, GOSUBMIT_NAME)
values (33, 'Утверждён ГО');
commit;

create or replace public synonym ss_ok_gosubmit for ss_ok_gosubmit;

create table ss_ok_gosubmit_protokol(
id number,
branch varchar2(5),
personal_code number,
v_date date,
v_sysdate date,
emp_code number
);


create  or replace public synonym ss_ok_gosubmit_protokol for ss_ok_gosubmit_protokol;

create sequence ss_ok_gosubmit_protokol_id_seq 
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE  ORDER ;

create  or replace public synonym ss_ok_gosubmit_protokol_id_seq for ss_ok_gosubmit_protokol_id_seq;




