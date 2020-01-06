
--drop table ok_zp_rate;
create table ok_zp_rate(
branch char(5),
PERSONAL_CODE NUMBER (9) not null,
zp_rate_code number not null,
zp_rate_type_code number not null,
zp_rate_order_num varchar2(15),
zp_rate_order_date date,
zp_rate_date date not null,
zp_fakt number(15,2),
EMP_CODE              NUMBER(6),
INS_DATE              DATE 
);

ALTER TABLE ok_zp_rate ADD CONSTRAINT ok_zp_rate_PK
  PRIMARY KEY ( branch,PERSONAL_CODE,zp_rate_code,zp_rate_date );


comment on table ok_zp_rate   is 'ставка';

comment on column ok_zp_rate.branch is 'мфо';
comment on column ok_zp_rate.PERSONAL_CODE is 'код сотрудника';
comment on column ok_zp_rate.zp_rate_code  is 'код ставки';
comment on column ok_zp_rate.zp_rate_type_code  is 'код типа ставки';
comment on column ok_zp_rate.zp_rate_order_num  is 'номер приказа';
comment on column ok_zp_rate.zp_rate_order_date  is 'дата приказа';
comment on column ok_zp_rate.zp_rate_date is 'Дата назначения ставки';
comment on column ok_zp_rate.zp_fakt is 'Фактический оклад';
comment on column ok_zp_rate.EMP_CODE is 'код сотрудника ОК';
comment on column ok_zp_rate.INS_DATE is 'дата вставки записи';

update SS_OK_CATEGORY set SALARY =null;
update SS_OK_MIN_ZP set CATEGORY_ZERO_SALARY =null;
update SS_OK_MIN_ZP set SALARY =null;
update OK_ZP_RATE set ZP_FAKT =null;
commit;

alter table SS_OK_CATEGORY modify SALARY NUMBER(15,2);
alter table SS_OK_MIN_ZP modify CATEGORY_ZERO_SALARY NUMBER(15,2);
alter table SS_OK_MIN_ZP modify SALARY NUMBER(15,2);
alter table OK_ZP_RATE modify ZP_FAKT NUMBER(15,2);

