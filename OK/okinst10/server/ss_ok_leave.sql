set feedback off
set define off
prompt Disabling triggers for SS_OK_LEAVE...
alter table SS_OK_LEAVE disable all triggers;
prompt Deleting SS_OK_LEAVE...
delete from SS_OK_LEAVE;
commit;
prompt Loading SS_OK_LEAVE...
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (1, 5, 'Декрет', 'A', 114, to_date('14-05-2009 16:40:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (2, 1, 'Мехнат таътили', 'A', 114, to_date('14-05-2009 16:40:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (3, 2, 'Ўкув таътили', 'A', 114, to_date('14-05-2009 16:40:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (4, 3, 'Иш хаки сакланмаган', 'A', 114, to_date('14-05-2009 16:40:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_LEAVE (LEAVE_ID, LEAVE_CODE, LEAVE_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (5, 4, 'Ижтимоий таътил', 'A', 114, to_date('14-05-2009 16:40:59', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 5 records loaded
prompt Enabling triggers for SS_OK_LEAVE...
alter table SS_OK_LEAVE enable all triggers;
set feedback on
set define on
prompt Done.
