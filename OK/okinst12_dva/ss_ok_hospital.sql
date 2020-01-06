set feedback off
set define off
prompt Disabling triggers for SS_OK_HOSPITAL...
alter table SS_OK_HOSPITAL disable all triggers;
prompt Deleting SS_OK_HOSPITAL...
delete from SS_OK_HOSPITAL;
commit;
prompt Loading SS_OK_HOSPITAL...
insert into SS_OK_HOSPITAL (HOSPITAL_CODE, HOSPITAL_NAME, WORK_PERIOD_FROM, WORK_PERIOD_TO, PERCENTAGE, STATE_NOTES, EMP_CODE, INS_DATE)
values (1001, 'Больничный', 0, 8, 60, 'A', null, null);
insert into SS_OK_HOSPITAL (HOSPITAL_CODE, HOSPITAL_NAME, WORK_PERIOD_FROM, WORK_PERIOD_TO, PERCENTAGE, STATE_NOTES, EMP_CODE, INS_DATE)
values (1001, 'Больничный', 8, 999, 80, 'A', null, null);
insert into SS_OK_HOSPITAL (HOSPITAL_CODE, HOSPITAL_NAME, WORK_PERIOD_FROM, WORK_PERIOD_TO, PERCENTAGE, STATE_NOTES, EMP_CODE, INS_DATE)
values (1002, 'Больничный по родам', 0, 999, 100, 'A', null, null);
commit;
prompt 3 records loaded
prompt Enabling triggers for SS_OK_HOSPITAL...
alter table SS_OK_HOSPITAL enable all triggers;
set feedback on
set define on
prompt Done.
