set feedback off
set define off
prompt Disabling triggers for SS_OK_TYPE_PERIOD...
alter table SS_OK_TYPE_PERIOD disable all triggers;
prompt Deleting SS_OK_TYPE_PERIOD...
delete from SS_OK_TYPE_PERIOD;
commit;
prompt Loading SS_OK_TYPE_PERIOD...
insert into SS_OK_TYPE_PERIOD (TYPE_PERIOD_ID, TYPE_PERIOD_CODE, TYPE_PERIOD_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (1, 1, 'Бошка тизимида', 'A', 114, to_date('14-05-2009 16:40:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_PERIOD (TYPE_PERIOD_ID, TYPE_PERIOD_CODE, TYPE_PERIOD_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (2, 2, 'Банк тизимида', 'A', 114, to_date('14-05-2009 16:40:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_TYPE_PERIOD (TYPE_PERIOD_ID, TYPE_PERIOD_CODE, TYPE_PERIOD_NAME, STATE_NOTES, EMP_CODE, INS_DATE)
values (3, 3, 'Шу банкда', 'A', 99, to_date('16-06-2009 15:43:09', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 3 records loaded
prompt Enabling triggers for SS_OK_TYPE_PERIOD...
alter table SS_OK_TYPE_PERIOD enable all triggers;
set feedback on
set define on
prompt Done.
