alter table OK_PERSONAL modify HOME_ADDRESSFACT null;
alter table OK_PERSONAL modify HOME_ADDRESS null;
alter table OK_PERSONAL modify PASS_REG null;
 


alter table ok_personal add regplace_code number(9);
comment on column ok_personal.regplace_code is 'код место регистрации';



alter table ok_business_voyage add city_code number(9);
comment on column ok_business_voyage.city_code is 'код города';


