prompt PL/SQL Developer Export Tables for user BANK974@BANK
prompt Created by vladimir.kim on 12 Сентябрь 2019 г.
set feedback off
set define off

prompt Disabling triggers for SS_OK_CATEGORY...
alter table SS_OK_CATEGORY disable all triggers;
prompt Deleting SS_OK_CATEGORY...
delete from SS_OK_CATEGORY;
commit;
prompt Loading SS_OK_CATEGORY...
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (1, 18, 8.522, 1727665, 'A', 872, to_date('31-05-2019 09:18:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (2, 18.1, 8.292, 1681037, 'A', 872, to_date('31-05-2019 09:18:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (3, 17, 8.106, 1643329, 'A', 872, to_date('31-05-2019 09:18:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (4, 17.2, 7.718, 1564670, 'A', 872, to_date('31-05-2019 09:18:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (5, 16, 7.697, 1560413, 'A', 872, to_date('31-05-2019 09:18:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (6, 15, 7.292, 1478307, 'A', 872, to_date('31-05-2019 09:18:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (7, 14, 6.893, 1397418, 'A', 872, to_date('31-05-2019 09:18:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (8, 13, 6.503, 1318353, 'A', 99, to_date('15-08-2019 11:40:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (9, 12, 6.115, 1239694, 'A', 872, to_date('31-05-2019 09:18:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (10, 11, 5.733, 1162251, 'A', 872, to_date('31-05-2019 09:18:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (11, 10, 5.362, 1087038, 'A', 872, to_date('31-05-2019 09:18:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (12, 9, 4.997, 1013042, 'A', 872, to_date('31-05-2019 09:18:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (13, 8, 4.64, 940667, 'A', 872, to_date('31-05-2019 09:18:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (14, 7, 4.284, 868495, 'A', 872, to_date('31-05-2019 09:18:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (15, 5, 3.612, 732261, 'A', 872, to_date('31-05-2019 09:18:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (16, 4, 1.158, 668401, 'A', 903, to_date('12-09-2019 15:22:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (17, 2, 1.053, 552439, 'A', 903, to_date('12-09-2019 15:22:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (18, 1, 1, 1587200, 'A', 903, to_date('12-09-2019 15:39:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (19, 0, 1, 634880, 'A', 903, to_date('12-09-2019 15:39:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (20, 3, 1.106, 607785, 'A', 903, to_date('12-09-2019 15:22:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (21, 6, 3.941, 798959, 'A', 872, to_date('31-05-2019 09:18:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
insert into SS_OK_CATEGORY (category_code, category_name, category_rate, salary, state_notes, emp_code, ins_date, v_date_from, user_name)
values (0, 0, 1, 634880, 'A', 903, to_date('12-09-2019 15:38:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-2017', 'dd-mm-yyyy'), null);
commit;
prompt 22 records loaded
prompt Enabling triggers for SS_OK_CATEGORY...
alter table SS_OK_CATEGORY enable all triggers;

set feedback on
set define on
prompt Done
