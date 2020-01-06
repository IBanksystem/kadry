




--ok_personal добавить поля

alter table ok_personal add srok_date date;
alter table ok_personal add HOME_ADDRESSFACT_REGION_ID CHAR(2);
alter table ok_personal add HOME_ADDRESSFACT_DISTR CHAR(3);
alter table ok_personal add HOME_ADDRESS_REGION_ID CHAR(2);
alter table ok_personal add HOME_ADDRESS_DISTR CHAR(3);
alter table ok_personal add passport_type_code number(9);
 
comment on column ok_personal.srok_date is 'Дата Окончания Испытательного Срока';
comment on column ok_personal.HOME_ADDRESSFACT_REGION_ID  is 'место жит-ва s_region.region_id';
comment on column ok_personal.HOME_ADDRESSFACT_DISTR  is 'место жит-ва s_distr.distr';
comment on column ok_personal.HOME_ADDRESS_REGION_ID  is 'место прописки s_region.region_id';
comment on column ok_personal.HOME_ADDRESS_DISTR  is 'место прописки s_distr.distr';
comment on column ok_personal.passport_type_code is 'вид документа 1-паспорт 2-вид на жит-во 3-военбилет ss_ok_passport_type';



