update ok_personal
set COD_STR_SITIZENT='860'
where COD_STR_SITIZENT is null;
commit;
alter table OK_PERSONAL modify REGION_ID VARCHAR2(2);
alter table OK_PERSONAL modify DISTR VARCHAR2(3);
alter table OK_PERSONAL modify HOME_ADDRESSFACT_REGION_ID VARCHAR2(2);
alter table OK_PERSONAL modify HOME_ADDRESSFACT_DISTR VARCHAR2(3);
alter table OK_PERSONAL modify HOME_ADDRESS_REGION_ID VARCHAR2(2);
alter table OK_PERSONAL modify HOME_ADDRESS_DISTR VARCHAR2(3);
update ok_personal set REGION_ID=null where REGION_ID='  ';
commit;
update ok_personal set DISTR=null where REGION_ID='   ';
commit;
update ok_personal set HOME_ADDRESSFACT_REGION_ID =null where REGION_ID='  ';
commit;
update ok_personal set HOME_ADDRESSFACT_DISTR =null where REGION_ID='   ';
commit;
update ok_personal set HOME_ADDRESS_REGION_ID =null where REGION_ID='  ';
commit;
update ok_personal set HOME_ADDRESS_DISTR =null where REGION_ID='   ';
commit;

