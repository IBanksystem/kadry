alter table ok_leave add date_recall_begin date;
alter table ok_leave add date_recall_end date;
alter table ok_leave add date_order_recall date;
alter table ok_leave add  num_order_recall varchar2(25);
alter table ok_leave add prim varchar2(150);

comment on column OK_LEAVE.date_recall_begin is 'дата начала отзыва';
comment on column OK_LEAVE.date_recall_end is 'дата окончания отзыва';
comment on column OK_LEAVE.date_order_recall is 'дата приказа отзыва';
comment on column OK_LEAVE.num_order_recall is 'номер приказа отзыва';
comment on column OK_LEAVE.prim is 'примечание';


alter table OK_PERIOD add post_code number(3);
alter table OK_PERIOD add department_code number(9);
comment on column OK_PERIOD.post_code is 'код должности';
comment on column OK_PERIOD.department_code is 'код отдела';


-- курсы повышения квалификации

--drop table ok_kurs;
create table ok_kurs(
branch char(5),
PERSONAL_CODE NUMBER (9) not null,
fio varchar2(150),
kv_kurs_code number(9) not null,
EMP_CODE NUMBER(6),
INS_DATE DATE
);

comment on table ok_kurs   is 'Курсы повышения квалификации';

comment on column ok_kurs.branch is 'мфо';
comment on column ok_kurs.PERSONAL_CODE is 'код сотрудника';
comment on column ok_kurs.fio is 'фио сотрудника';
comment on column ok_kurs.kv_kurs_code   is 'код курсов';
comment on column ok_kurs.EMP_CODE is 'код сотрудника ОК';
comment on column ok_kurs.INS_DATE is 'дата вставки записи';

ALTER TABLE ok_kurs ADD CONSTRAINT ok_kurs_PK
  PRIMARY KEY ( branch,PERSONAL_CODE,kv_kurs_code );

