
create table ss_ok_gosubmit(
gosubmit_code number,
gosubmit_name varchar2(50)
);

delete from ss_ok_gosubmit;
--insert into ss_ok_gosubmit select 1,'Введен' from dual; 
--insert into ss_ok_gosubmit select 3,'Изменен' from dual; 
insert into ss_ok_gosubmit select 6,'Разрешено Уволить' from dual; 
--insert into ss_ok_gosubmit select 7,'Есть ошибки' from dual; 
insert into ss_ok_gosubmit select 14,'Отклонено ГО' from dual; 
insert into ss_ok_gosubmit select 22,'Подтвержден ГО' from dual; 
commit;

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




