--3
--drop table ok_increase;
create table ok_increase(
branch char(5),
PERSONAL_CODE  	NUMBER (9) not null,
increase_code  	NUMBER (9),
increase_view  varchar2(150),
increase_percentage number(5,2),
razn NUMBER (9),
date_open date,
date_close date,
EMP_CODE NUMBER(6),
INS_DATE DATE
);

ALTER TABLE ok_increase ADD CONSTRAINT ok_increase_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, date_open );
 
comment on table ok_increase is 'таблица "надбавки"';
comment on column ok_increase.branch is 'мфо';
comment on column ok_increase.PERSONAL_CODE is 'код сотрудника';
comment on column ok_increase.increase_view is 'Вид надбавки – выбирается из справочника – 1Персональная надбавка, 2Надбавка за  совмещение';
comment on column ok_increase.increase_percentage is '% надбавки';
comment on column ok_increase.razn is 'Разница долж. Окладов';
comment on column ok_increase.date_open is 'Дата начала действия';
comment on column ok_increase.date_close is 'Дата завершения действия';


--7 минимальная зарплата
create table ss_ok_min_zp(
salary number(15) not null,
rate number(9,3) not null,
category_zero_salary number(15) not null,
date_open date not null,
date_close date,
STATE_NOTES CHAR(1),
EMP_CODE NUMBER(6),
INS_DATE DATE
);

ALTER TABLE ss_ok_min_zp ADD CONSTRAINT ss_ok_min_zp_PK
  PRIMARY KEY ( date_open );


comment on table ss_ok_min_zp is 'справочник «минимальная зарплата»';
comment on column ss_ok_min_zp.salary  is 'минимальная зарплата ';
comment on column ss_ok_min_zp.rate  is ' кратность ';
comment on column ss_ok_min_zp.category_zero_salary  is ' ставка нулевого разряда';
comment on column ss_ok_min_zp.date_open  is ' начало ';
comment on column ss_ok_min_zp.date_close is ' завершение';

