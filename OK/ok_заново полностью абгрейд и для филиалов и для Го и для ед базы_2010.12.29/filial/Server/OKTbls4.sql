
create table ok_business_voyage(
branch char(5),
PERSONAL_CODE NUMBER (9) not null,
kv_kurs_code number(9), 
date_open date not null,
date_close date,
number_day number(9),
org_business_voyage_code number(9),
theme_business_voyage_code number(9),
CODE_STR CHAR(3),
order_num varchar2(20),
order_date date,
prim  varchar2(150),
EMP_CODE NUMBER(6),
INS_DATE DATE
);

ALTER TABLE ok_business_voyage ADD CONSTRAINT ok_business_voyage_PK
  PRIMARY KEY (  BRANCH, PERSONAL_CODE, date_open   );

comment on table ok_business_voyage is 'рабочая таблица «Командировки»';
comment on column ok_business_voyage.branch is 'мфо';
comment on column ok_business_voyage.PERSONAL_CODE is 'код сотрудника';
comment on column ok_business_voyage.kv_kurs_code   is 'код курса повышения квалификации';

comment on column ok_business_voyage.date_open  is '«Дата открытия»';
comment on column ok_business_voyage.date_close  is '«Дата закрытия»';
comment on column ok_business_voyage.number_day is '«Фактическое кол-во дней»';

comment on column ok_business_voyage.org_business_voyage_code   is 'код организатора командировки ss_org_business_voyage';
comment on column ok_business_voyage.theme_business_voyage_code   is 'код темы командировки ss_theme_business_voyage';
comment on column ok_business_voyage.CODE_STR   is 'код страны s_str';
comment on column ok_business_voyage.order_num   is 'номер приказа';
comment on column ok_business_voyage.order_date   is 'дата приказа';

comment on column ok_business_voyage.prim is 'Примечание';
comment on column ok_business_voyage.EMP_CODE is 'код сотрудника ОК';
comment on column ok_business_voyage.INS_DATE is 'дата вставки записи';







--1   30 дней 1 месяц и 12 месяцев 1 год

create table ok_hospital(
branch char(5) not null,
PERSONAL_CODE  	NUMBER (9) not null,
hospital_code NUMBER (9) not null,
hospital_doc varchar2(50),
date_open date not null,
date_close date,
number_day number(5),
work_period varchar2(30),
percentage number(5,2),
diagnosis varchar2(150),
date_hospital date,
prim_hospital varchar2(150),
shifr varchar2(10),
prim  varchar2(150),
EMP_CODE NUMBER(6),
INS_DATE DATE
); 

ALTER TABLE ok_hospital ADD CONSTRAINT ok_hospital_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, date_open );

comment on table ok_hospital is 'рабочая таблица «Больничные»';
comment on column ok_hospital.branch is 'мфо';
comment on column ok_hospital.PERSONAL_CODE is 'код сотрудника';
comment on column ok_hospital.hospital_code  is '«Вид» - выбирается из справочника – 1Больничный или 2Больничный по родам';
comment on column ok_hospital.hospital_doc  is '«номер больничного»';
comment on column ok_hospital.date_open  is '«Дата открытия»';
comment on column ok_hospital.date_close  is '«Дата закрытия»';
comment on column ok_hospital.number_day is '«Фактическое кол-во дней»  - рассчитать от даты открытия до даты закрытия в днях';
comment on column ok_hospital.work_period is '«Общий стаж работы» - рассчитать из «Сведения о работе» в формате дд.мм.гггг';
comment on column ok_hospital.percentage is '«» - установить в зависимости от стажа до 8 лет =60, с 8 лет и выше =80, для декретных =100';
comment on column ok_hospital.diagnosis is '«Диагноз»';
comment on column ok_hospital.date_hospital is   'дата выдачи больничного';
comment on column ok_hospital.prim_hospital is 'место выдачи больничного';
comment on column ok_hospital.shifr is '«Шифр»';
comment on column ok_hospital.prim is '«Примечание»';



create table ok_increase(
branch char(5),
PERSONAL_CODE  	NUMBER (9) not null,
increase_code  	NUMBER (9),
increase_percentage number(5,2),
razn NUMBER (9),
date_open date,
date_close date,
order_num varchar2(20),
order_date date,
prim varchar2(150),
EMP_CODE NUMBER(6),
INS_DATE DATE
);

ALTER TABLE ok_increase ADD CONSTRAINT ok_increase_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, date_open );
 
comment on table ok_increase is 'таблица "надбавки"';
comment on column ok_increase.branch is 'мфо';
comment on column ok_increase.PERSONAL_CODE is 'код сотрудника';
comment on column ok_increase.increase_code is 'Вид надбавки – 1Персональная надбавка, 2Надбавка за  совмещение';
comment on column ok_increase.increase_percentage is '% надбавки если 1Персональная надбавка';
comment on column ok_increase.razn is 'Сумма если 2Надбавка за  совмещение';
comment on column ok_increase.date_open is 'Дата начала';
comment on column ok_increase.date_close is 'Дата окончания';
comment on column ok_increase.order_num   is 'Номер приказа';
comment on column ok_increase.order_date   is 'Дата приказа';
comment on column ok_increase.prim   is 'Примечание';

create table ok_privilege(
branch char(5),
PERSONAL_CODE NUMBER (9) not null,
privilege_CODE NUMBER (9),
privilege_doc varchar2(150),
date_open date not null,
date_close date,
prim varchar2(150),
EMP_CODE NUMBER(6),
INS_DATE DATE
); 

ALTER TABLE ok_privilege ADD CONSTRAINT ok_privilege_PK
  PRIMARY KEY ( BRANCH, PERSONAL_CODE, date_open );

comment on table ok_privilege is 'рабочая таблица «Сведения о льготах»';
comment on column ok_privilege.branch is 'мфо';
comment on column ok_privilege.PERSONAL_CODE is 'код сотрудника';
comment on column ok_privilege.privilege_code   is 'код Вид льготы ss_ok_privilege';
comment on column ok_privilege.privilege_doc   is 'Документ-основание льготы';
comment on column ok_privilege.date_open  is 'Дата начала действия';
comment on column ok_privilege.date_close  is 'Дата завершения действия';
comment on column ok_privilege.prim   is 'Примечание';
comment on column ok_privilege.EMP_CODE is 'код сотрудника ОК';
comment on column ok_privilege.INS_DATE is 'дата вставки записи';



--ok_personal добавить поля

alter table ok_personal add srok_date date;
alter table ok_personal add HOME_ADDRESSFACT_REGION_ID varCHAR2(2);
alter table ok_personal add HOME_ADDRESSFACT_DISTR varCHAR2(3);
alter table ok_personal add HOME_ADDRESS_REGION_ID varCHAR2(2);
alter table ok_personal add HOME_ADDRESS_DISTR varCHAR2(3);
alter table ok_personal add passport_type_code number(9);
 
comment on column ok_personal.srok_date is 'Дата Окончания Испытательного Срока';
comment on column ok_personal.HOME_ADDRESSFACT_REGION_ID  is 'место жит-ва s_region.region_id';
comment on column ok_personal.HOME_ADDRESSFACT_DISTR  is 'место жит-ва s_distr.distr';
comment on column ok_personal.HOME_ADDRESS_REGION_ID  is 'место прописки s_region.region_id';
comment on column ok_personal.HOME_ADDRESS_DISTR  is 'место прописки s_distr.distr';
comment on column ok_personal.passport_type_code is 'вид документа 1-паспорт 2-вид на жит-во 3-военбилет ss_ok_passport_type';




