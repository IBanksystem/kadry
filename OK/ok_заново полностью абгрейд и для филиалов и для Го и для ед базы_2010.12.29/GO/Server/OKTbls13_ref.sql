
create table ss_ok_gosubmit(
gosubmit_code number,
gosubmit_name varchar2(50)
);

create public synonym ss_ok_gosubmit for ss_ok_gosubmit;

create table ss_ok_gosubmit_protokol(
id number,
branch varchar2(5),
personal_code number,
v_date date,
v_sysdate date,
emp_code number
);


create public synonym ss_ok_gosubmit_protokol for ss_ok_gosubmit_protokol;

create sequence ss_ok_gosubmit_protokol_id_seq 
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE  ORDER ;

create public synonym ss_ok_gosubmit_protokol_id_seq for ss_ok_gosubmit_protokol_id_seq;




