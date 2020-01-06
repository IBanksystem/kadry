
alter table ok_personal add srok_date date;
alter table ok_personal add HOME_ADDRESSFACT_REGION_ID varchar2(2);
alter table ok_personal add HOME_ADDRESSFACT_DISTR varchar2(3);
alter table ok_personal add HOME_ADDRESS_REGION_ID varchar2(2);
alter table ok_personal add HOME_ADDRESS_DISTR varchar2(3);
alter table ok_personal add passport_type_code number(9);

alter table OK_PERSONAL modify HOME_ADDRESSFACT null;
alter table OK_PERSONAL modify HOME_ADDRESS null;
alter table OK_PERSONAL modify PASS_REG null;
 


alter table ok_personal add regplace_code number(9);
comment on column ok_personal.regplace_code is 'код место регистрации';


alter table ok_business_voyage add city_code number(9);
comment on column ok_business_voyage.city_code is 'код города';


alter table ok_education add diplom_date date;
alter table OK_ZP_RATE modify ZP_RATE_ORDER_NUM VARCHAR2(15);

alter table OK_ZP_RATE modify ZP_FAKT NUMBER(15,2);



alter table ok_leave add date_recall_begin date;
alter table ok_leave add date_recall_end date;
alter table ok_leave add date_order_recall date;
alter table ok_leave add  num_order_recall varchar2(25);
alter table ok_leave add prim varchar2(150);


alter table OK_PERIOD add post_code number(3);
alter table OK_PERIOD add department_code number(9);


alter table ok_increase add order_num varchar2(20);
alter table ok_increase add order_date date;
alter table ok_increase add prim varchar2(150);



alter table OK_EDUCATION add BEGIN_DATE_MM NUMBER(2); 
alter table OK_EDUCATION add BEGIN_DATE_DD NUMBER(2); 

alter table OK_EDUCATION add END_DATE_MM NUMBER(2); 
alter table OK_EDUCATION add END_DATE_DD NUMBER(2); 


alter table OK_AWARD add AWARD_DATE_MM NUMBER(2); 
alter table OK_AWARD add AWARD_DATE_DD NUMBER(2); 

   
alter table OK_ELECTION add ELECTION_DATE_BEGIN_MM NUMBER(2); 
alter table OK_ELECTION add ELECTION_DATE_BEGIN_DD NUMBER(2); 

alter table OK_ELECTION add ELECTION_DATE_END_MM NUMBER(2); 
alter table OK_ELECTION add ELECTION_DATE_END_DD NUMBER(2); 



alter table OK_VOYAGE add VOYAGE_DATE_MM NUMBER(2); 
alter table OK_VOYAGE add VOYAGE_DATE_DD NUMBER(2); 


alter table OK_VOYAGE add DATA_IN_MM NUMBER(2); 
alter table OK_VOYAGE add DATA_IN_DD NUMBER(2); 



alter table OK_RISE add RISE_DATE_MM NUMBER(2); 
alter table OK_RISE add RISE_DATE_DD NUMBER(2); 


alter table ok_leave add period_leave_recall number(9);
comment on column ok_leave.period_leave_recall  is 'период отзыва с 1 по 10 февоаля = 10 дней';

alter table OK_PERSONAL add PASS_DATE_END date; 
comment on column OK_PERSONAL.PASS_DATE_END  is 'Паспорт Действителен До..';


alter table ok_zp_rate add zp_rate_date_end date; 
comment on column ok_zp_rate.zp_rate_date_end is 'Дата завершения ставки включительно';


alter table OK_TABEL add oldday01 varchar2(1);
alter table OK_TABEL add oldday02 varchar2(1);
alter table OK_TABEL add oldday03 varchar2(1);
alter table OK_TABEL add oldday04 varchar2(1);
alter table OK_TABEL add oldday05 varchar2(1);
alter table OK_TABEL add oldday06 varchar2(1);
alter table OK_TABEL add oldday07 varchar2(1);
alter table OK_TABEL add oldday08 varchar2(1);
alter table OK_TABEL add oldday09 varchar2(1);
alter table OK_TABEL add oldday10 varchar2(1);
alter table OK_TABEL add oldday11 varchar2(1);
alter table OK_TABEL add oldday12 varchar2(1);
alter table OK_TABEL add oldday13 varchar2(1);
alter table OK_TABEL add oldday14 varchar2(1);
alter table OK_TABEL add oldday15 varchar2(1);
alter table OK_TABEL add oldday16 varchar2(1);
alter table OK_TABEL add oldday17 varchar2(1);
alter table OK_TABEL add oldday18 varchar2(1);
alter table OK_TABEL add oldday19 varchar2(1);
alter table OK_TABEL add oldday20 varchar2(1);
alter table OK_TABEL add oldday21 varchar2(1);
alter table OK_TABEL add oldday22 varchar2(1);
alter table OK_TABEL add oldday23 varchar2(1);
alter table OK_TABEL add oldday24 varchar2(1);
alter table OK_TABEL add oldday25 varchar2(1);
alter table OK_TABEL add oldday26 varchar2(1);
alter table OK_TABEL add oldday27 varchar2(1);
alter table OK_TABEL add oldday28 varchar2(1);
alter table OK_TABEL add oldday29 varchar2(1);
alter table OK_TABEL add oldday30 varchar2(1);
alter table OK_TABEL add oldday31 varchar2(1);

alter table OK_TABEL add category_code number(2);


alter table ok_personal add gosubmit_code number;
comment on column ok_personal.gosubmit_code is 'код подтверждения сотрудника в ГО';





