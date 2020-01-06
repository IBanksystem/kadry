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
--drop table ss_ok_kv_kurs;
create table ss_ok_kv_kurs(
kv_kurs_code number(9) not null,
kv_kurs_name varchar2(150),
kv_organizer varchar2(150),
kv_place varchar2(150),
CODE_STR   CHAR(3),
kv_number_pers number(9),
date_open date,
date_close date,
number_day  number(9),
pay_sum number(15,2),
pay_sum_trener number(15,2),
order_num varchar2(50),
order_date date,
order_business_voyage number(1),
org_business_voyage_code number(9),
theme_business_voyage_code number(9),
prim varchar2(150),
STATE_NOTES    CHAR(1),
EMP_CODE NUMBER(6),
INS_DATE DATE
);

ALTER TABLE ss_ok_kv_kurs ADD CONSTRAINT ss_ok_kv_kurs_PK
  PRIMARY KEY ( kv_kurs_code );

comment on table ss_ok_kv_kurs   is 'справочник Курсы повышения квалификации';

comment on column ss_ok_kv_kurs.kv_kurs_code   is 'код';
comment on column ss_ok_kv_kurs.kv_kurs_name   is 'наименование';
comment on column ss_ok_kv_kurs.kv_organizer   is ' организатор';
comment on column ss_ok_kv_kurs.kv_place    is ' место проведения';
comment on column ss_ok_kv_kurs.CODE_STR   is 'код страны s_str';
comment on column ss_ok_kv_kurs.kv_number_pers    is 'количество участников ';
comment on column ss_ok_kv_kurs.date_open    is 'дата начала ';
comment on column ss_ok_kv_kurs.date_close     is 'дата завершения ';
comment on column ss_ok_kv_kurs.number_day     is 'кол-во дней ';

comment on column ss_ok_kv_kurs.org_business_voyage_code   is 'код организатора командировки ss_org_business_voyage';
comment on column ss_ok_kv_kurs.theme_business_voyage_code   is 'код темы командировки ss_theme_business_voyage';

comment on column ss_ok_kv_kurs.pay_sum     is ' оплата за помещение или тренинг';
comment on column ss_ok_kv_kurs.pay_sum_trener     is ' оплата тренерам ';
comment on column ss_ok_kv_kurs.order_num     is ' номер приказа';
comment on column ss_ok_kv_kurs.order_date    is 'дата приказа ';
comment on column ss_ok_kv_kurs.order_business_voyage    is ' командировка 1-да 2-нет ';
comment on column ss_ok_kv_kurs.prim     is ' примечание ';
comment on column ss_ok_kv_kurs.STATE_NOTES is 'A-активный';
comment on column ss_ok_kv_kurs.EMP_CODE is 'код сотрудника ОК';
comment on column ss_ok_kv_kurs.INS_DATE is 'дата вставки записи';

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

