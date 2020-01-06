prompt PL/SQL Developer import file
prompt Created on 2 Сентябрь 2015 г. by saule
set feedback off
set define off
prompt Creating SS_OK_NCI...
create table SS_OK_NCI
(
  NCI_ID      CHAR(2) not null,
  S_ID        VARCHAR2(5) not null,
  OK_ID       NUMBER(8) not null,
  STATE_NOTES CHAR(1),
  EMP_CODE    NUMBER(6),
  INS_DATE    DATE
)
;
comment on table SS_OK_NCI
  is 'справочник соответствия содержимого справочников ЦБ по кадрам';
comment on column SS_OK_NCI.NCI_ID
  is 'код справочника цб';
comment on column SS_OK_NCI.S_ID
  is 'уникальный код в справочнике цб';
comment on column SS_OK_NCI.OK_ID
  is 'уникальный код в справочнике модуля кадры';
comment on column SS_OK_NCI.STATE_NOTES
  is 'Признак активности записиA - активная записьP - пассивная запись	Вводится с клавиатуры, видимое поле, по умолчанию ставится признак  -А -активная запись';
comment on column SS_OK_NCI.EMP_CODE
  is 'Код пользователя вводившего информацию	Выбирается из таблицы USERS  поле ID, не видимое поле, обязательное для заполнения';
comment on column SS_OK_NCI.INS_DATE
  is 'Дата и время  ввода информации 	SYSdate, не видимое поле, обязательное для заполнения';
alter table SS_OK_NCI
  add constraint SS_OK_NCI_PK primary key (NCI_ID, OK_ID);
alter table SS_OK_NCI
  add constraint SS_OK_NCI_UK unique (NCI_ID, S_ID, OK_ID);

prompt Loading SS_OK_NCI...
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '031', 30002, 'A', 364, to_date('06-04-2012 10:22:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23062, 'A', 313, to_date('06-04-2012 14:51:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23063, 'A', 313, to_date('06-04-2012 14:51:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 50010, 'A', 364, to_date('11-04-2012 16:57:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '009', 30036, 'A', 364, to_date('14-10-2011 14:47:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23027, 'A', 122, to_date('12-06-2013 10:17:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '203', 50004, 'A', 364, to_date('14-10-2011 14:48:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '010', 30088, 'A', 364, to_date('14-10-2011 14:49:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 10032, 'A', 364, to_date('14-10-2011 14:50:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '018', 30100, 'A', 364, to_date('14-10-2011 14:51:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20036, 'A', 364, to_date('14-10-2011 14:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20003, 'A', 364, to_date('18-10-2011 12:14:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20177, 'A', 364, to_date('18-10-2011 12:15:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23046, 'A', 364, to_date('10-12-2011 11:09:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20020, 'A', 364, to_date('20-10-2011 14:18:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30108, 'A', 364, to_date('20-10-2011 14:18:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30106, 'A', 364, to_date('20-10-2011 14:19:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20146, 'A', 364, to_date('20-10-2011 14:19:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '040', 30103, 'A', 364, to_date('22-10-2011 09:51:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20143, 'A', 364, to_date('22-10-2011 09:52:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20134, 'A', 364, to_date('22-10-2011 09:53:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20110, 'A', 364, to_date('22-10-2011 09:53:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20011, 'A', 364, to_date('22-10-2011 09:54:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20114, 'A', 364, to_date('22-10-2011 09:55:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30024, 'A', 364, to_date('22-10-2011 09:58:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '032', 30118, 'A', 364, to_date('22-10-2011 09:58:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '117', 40013, 'A', 364, to_date('22-10-2011 10:02:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20043, 'A', 364, to_date('26-10-2011 10:24:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20187, 'A', 364, to_date('27-10-2011 10:07:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23045, 'A', 364, to_date('10-12-2011 11:09:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20072, 'A', 313, to_date('14-12-2011 10:05:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23051, 'A', 364, to_date('20-12-2011 09:21:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '016', 30045, 'A', 313, to_date('16-12-2011 10:57:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23049, 'A', 313, to_date('16-12-2011 14:13:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23055, 'A', 313, to_date('22-12-2011 11:16:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23056, 'A', 313, to_date('22-12-2011 11:16:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '99', 6, 'A', 364, to_date('10-02-2012 12:11:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '99', 7, 'A', 364, to_date('10-02-2012 12:15:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '99', 16, 'A', 364, to_date('14-02-2012 16:33:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '99', 11, 'A', 364, to_date('14-02-2012 16:33:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '99', 10, 'A', 364, to_date('14-02-2012 16:34:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '99', 13, 'A', 364, to_date('14-02-2012 16:34:31', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23060, 'A', 313, to_date('30-03-2012 18:00:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23066, 'A', 364, to_date('10-05-2012 14:52:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40061, 'A', 364, to_date('23-05-2012 11:27:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '201', 243, 'A', 366, to_date('28-01-2013 14:02:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '203', 246, 'A', 366, to_date('28-01-2013 14:03:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '14', 13, 'A', 367, to_date('11-02-2013 10:33:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '13', 14, 'A', 367, to_date('11-02-2013 10:33:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23073, 'A', 364, to_date('24-04-2013 14:52:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '108', 415, 'A', 244, to_date('20-11-2013 16:08:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40050, 'A', 244, to_date('21-11-2013 09:31:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '204', 417, 'A', 244, to_date('02-12-2013 15:39:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '106', 416, 'A', 244, to_date('19-02-2015 16:37:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20123, 'A', 244, to_date('06-12-2013 10:24:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30048, 'A', 244, to_date('16-12-2013 16:27:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '203', 40063, 'A', 244, to_date('17-12-2013 10:11:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23099, 'A', 244, to_date('19-02-2014 12:17:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '205', 409, 'A', 244, to_date('12-02-2015 15:09:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20008, 'A', 244, to_date('27-02-2015 09:43:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '015', 345, 'A', 244, to_date('03-03-2015 09:24:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '202', 150, 'A', 244, to_date('09-03-2015 10:16:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23030, 'A', 244, to_date('18-03-2015 10:54:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23109, 'A', 244, to_date('22-04-2015 18:34:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20183, 'A', 244, to_date('24-04-2015 16:06:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40012, 'A', 364, to_date('13-10-2011 17:55:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '021', 30015, 'A', 364, to_date('14-10-2011 10:16:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '013', 30085, 'A', 364, to_date('14-10-2011 14:17:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20025, 'A', 364, to_date('13-10-2011 18:01:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30011, 'A', 364, to_date('13-10-2011 18:20:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '006', 30025, 'A', 364, to_date('14-10-2011 14:38:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40025, 'A', 364, to_date('19-10-2011 15:19:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20188, 'A', 364, to_date('27-10-2011 12:11:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20189, 'A', 364, to_date('27-10-2011 12:12:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23025, 'A', 364, to_date('28-10-2011 18:07:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30127, 'A', 313, to_date('27-02-2012 18:05:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40059, 'A', 313, to_date('14-03-2012 14:53:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40046, 'A', 313, to_date('29-03-2012 10:26:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20002, 'A', 313, to_date('09-04-2012 09:18:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30029, 'A', 364, to_date('11-04-2012 09:59:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23067, 'A', 313, to_date('10-05-2012 15:37:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23041, 'A', 364, to_date('12-10-2012 17:28:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '108', 194, 'A', 313, to_date('21-12-2012 16:21:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23072, 'A', 244, to_date('22-04-2013 17:34:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20056, 'A', 244, to_date('22-08-2013 10:39:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23087, 'A', 244, to_date('17-09-2013 16:43:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23088, 'A', 244, to_date('17-09-2013 16:43:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23096, 'A', 244, to_date('11-02-2014 09:37:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '013', 22, 'A', 244, to_date('26-02-2015 17:02:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '006', 306, 'A', 244, to_date('02-03-2015 12:06:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30123, 'A', 371, to_date('05-05-2015 09:21:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20289, 'A', 371, to_date('14-07-2015 13:27:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20287, 'A', 371, to_date('14-07-2015 13:28:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20288, 'A', 371, to_date('14-07-2015 13:28:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '023', 30021, 'A', 364, to_date('14-10-2011 09:17:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30020, 'A', 364, to_date('14-10-2011 09:14:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20027, 'A', 364, to_date('14-10-2011 09:19:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40052, 'A', 364, to_date('14-10-2011 09:20:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20032, 'A', 364, to_date('14-10-2011 09:20:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20028, 'A', 364, to_date('14-10-2011 09:22:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30013, 'A', 364, to_date('14-10-2011 09:27:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20282, 'A', 364, to_date('14-10-2011 09:29:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30073, 'A', 364, to_date('14-10-2011 09:30:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20021, 'A', 364, to_date('14-10-2011 09:30:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30121, 'A', 364, to_date('14-10-2011 09:31:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30124, 'A', 364, to_date('14-10-2011 09:46:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40055, 'A', 364, to_date('14-10-2011 09:48:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40056, 'A', 364, to_date('14-10-2011 09:48:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30119, 'A', 364, to_date('14-10-2011 09:50:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20039, 'A', 364, to_date('14-10-2011 14:00:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30051, 'A', 364, to_date('14-10-2011 14:01:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20038, 'A', 364, to_date('14-10-2011 14:04:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30038, 'A', 364, to_date('14-10-2011 14:06:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '101', 40051, 'A', 364, to_date('14-10-2011 14:09:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 50003, 'A', 364, to_date('24-10-2011 12:58:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 10023, 'A', 364, to_date('24-10-2011 12:59:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20006, 'A', 364, to_date('24-10-2011 13:04:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20113, 'A', 364, to_date('24-10-2011 16:55:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20099, 'A', 364, to_date('25-10-2011 16:18:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 50009, 'A', 364, to_date('26-10-2011 18:34:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30125, 'A', 364, to_date('26-10-2011 18:34:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20080, 'A', 364, to_date('28-10-2011 10:58:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20118, 'A', 364, to_date('28-10-2011 10:59:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20126, 'A', 364, to_date('28-10-2011 11:02:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30064, 'A', 364, to_date('28-10-2011 11:02:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20088, 'A', 364, to_date('28-10-2011 11:46:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20048, 'A', 364, to_date('28-10-2011 12:19:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30116, 'A', 364, to_date('28-10-2011 11:48:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30080, 'A', 364, to_date('28-10-2011 11:55:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30101, 'A', 364, to_date('28-10-2011 11:57:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20097, 'A', 364, to_date('28-10-2011 11:58:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '015', 30047, 'A', 364, to_date('28-10-2011 12:05:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20098, 'A', 364, to_date('28-10-2011 12:08:28', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '007', 30046, 'A', 364, to_date('28-10-2011 12:09:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20037, 'A', 364, to_date('28-10-2011 12:10:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20185, 'A', 313, to_date('31-10-2011 15:35:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23043, 'A', 313, to_date('16-11-2011 11:45:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23044, 'A', 313, to_date('09-12-2011 15:33:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23052, 'A', 364, to_date('20-12-2011 15:17:28', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23053, 'A', 364, to_date('20-12-2011 15:18:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23054, 'A', 364, to_date('20-12-2011 17:49:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '99', 19, 'A', 313, to_date('17-02-2012 15:57:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23010, 'A', 313, to_date('13-03-2012 10:27:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23061, 'A', 364, to_date('06-04-2012 09:47:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23065, 'A', 364, to_date('08-05-2012 12:23:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23070, 'A', 364, to_date('23-08-2012 12:42:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30129, 'A', 313, to_date('24-12-2012 10:41:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '205', 245, 'A', 244, to_date('19-02-2015 16:27:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23076, 'A', 244, to_date('20-08-2013 10:55:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23077, 'A', 244, to_date('20-08-2013 10:55:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23078, 'A', 244, to_date('20-08-2013 10:55:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23079, 'A', 244, to_date('20-08-2013 10:55:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23080, 'A', 244, to_date('20-08-2013 11:57:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23081, 'A', 244, to_date('20-08-2013 11:57:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23082, 'A', 244, to_date('20-08-2013 11:57:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23083, 'A', 244, to_date('20-08-2013 11:57:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23084, 'A', 244, to_date('20-08-2013 11:57:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23085, 'A', 244, to_date('20-08-2013 11:57:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '113', 40040, 'A', 244, to_date('18-09-2013 09:57:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23091, 'A', 244, to_date('30-09-2013 15:36:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30130, 'A', 244, to_date('09-10-2013 11:03:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30007, 'A', 244, to_date('12-11-2013 14:38:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30131, 'A', 244, to_date('25-12-2013 16:34:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30132, 'A', 244, to_date('15-01-2014 11:03:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23102, 'A', 244, to_date('22-04-2014 12:07:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40064, 'A', 244, to_date('05-09-2014 09:29:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30105, 'A', 244, to_date('10-12-2014 10:41:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '105', 151, 'A', 244, to_date('20-02-2015 12:25:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '005', 304, 'A', 244, to_date('23-02-2015 18:10:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '102', 402, 'A', 244, to_date('02-03-2015 15:56:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '016', 344, 'A', 244, to_date('02-03-2015 15:58:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '102', 346, 'A', 244, to_date('27-08-2015 13:16:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30079, 'A', 244, to_date('02-09-2015 08:47:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30003, 'A', 364, to_date('14-10-2011 10:11:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20026, 'A', 364, to_date('14-10-2011 10:20:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20029, 'A', 364, to_date('14-10-2011 10:21:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20094, 'A', 364, to_date('14-10-2011 10:21:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30074, 'A', 364, to_date('14-10-2011 10:22:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20089, 'A', 364, to_date('14-10-2011 10:22:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30022, 'A', 364, to_date('14-10-2011 10:23:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30111, 'A', 313, to_date('21-12-2012 11:52:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40054, 'A', 364, to_date('14-10-2011 10:24:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '01', 1, 'A', 313, to_date('08-02-2012 16:38:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '03', 3, 'A', 252, to_date('28-09-2011 15:12:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '04', 9, 'A', 252, to_date('28-09-2011 15:12:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '05', 15, 'A', 252, to_date('28-09-2011 15:12:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '06', 2, 'A', 252, to_date('28-09-2011 15:12:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30008, 'A', 364, to_date('14-10-2011 10:54:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30057, 'A', 364, to_date('14-10-2011 10:55:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20074, 'A', 364, to_date('14-10-2011 10:55:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20075, 'A', 364, to_date('14-10-2011 10:56:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20108, 'A', 364, to_date('14-10-2011 15:35:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40045, 'A', 364, to_date('19-10-2011 12:20:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20031, 'A', 364, to_date('19-10-2011 17:16:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20152, 'A', 364, to_date('19-10-2011 17:17:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20065, 'A', 364, to_date('19-10-2011 17:18:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20162, 'A', 364, to_date('19-10-2011 17:20:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '030', 30012, 'A', 364, to_date('19-10-2011 17:23:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20091, 'A', 364, to_date('19-10-2011 17:40:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30110, 'A', 364, to_date('21-10-2011 15:58:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30084, 'A', 364, to_date('21-10-2011 15:58:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30113, 'A', 364, to_date('21-10-2011 15:59:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30063, 'A', 364, to_date('21-10-2011 15:59:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20285, 'A', 364, to_date('21-10-2011 16:00:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23047, 'A', 364, to_date('12-12-2011 10:53:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23050, 'A', 364, to_date('16-12-2011 17:15:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '07', 4, 'A', 252, to_date('28-09-2011 15:12:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '08', 5, 'A', 252, to_date('28-09-2011 15:12:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('72', '99', 99, 'A', 313, to_date('28-09-2011 15:12:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('73', '01', 7, 'A', 313, to_date('28-09-2011 15:12:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('73', '03', 1, 'A', 313, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('73', '04', 4, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('73', '05', 5, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('73', '06', 3, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('74', '1', 2, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('74', '2', 6, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('74', '3', 1, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('74', '4', 4, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('74', '5', 5, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('74', '6', 7, 'A', 313, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('74', '7', 3, 'A', 313, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('75', '1', 7, 'A', 252, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('75', '2', 3, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('75', '3', 1, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('75', '4', 2, 'A', 114, to_date('28-09-2011 15:12:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('76', '1', 6, 'A', 313, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('76', '2', 4, 'A', 313, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('76', '3', 3, 'A', 313, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('76', '4', 1, 'A', 252, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '01', 1, 'A', 252, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '02', 2, 'A', 252, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '03', 3, 'A', 252, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '04', 4, 'A', 252, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '05', 5, 'A', 252, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '06', 6, 'A', 252, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '07', 7, 'A', 252, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '08', 8, 'A', 252, to_date('28-09-2011 15:12:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '10', 10, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '11', 11, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '12', 12, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '13', 13, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '14', 14, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '15', 15, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '16', 16, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '17', 17, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('77', '99', 18, 'A', 313, to_date('17-02-2012 15:57:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('78', '1', 1, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('78', '3', 2, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '001', 1, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '002', 2, 'A', 252, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '003', 88, 'A', 313, to_date('28-09-2011 15:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '004', 3, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '007', 8, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '008', 10, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '009', 89, 'A', 313, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '010', 23, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '011', 24, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '012', 12, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '014', 15, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '015', 86, 'A', 313, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '202', 601, 'A', 244, to_date('14-04-2015 10:25:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '101', 101, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '102', 102, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '103', 103, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '104', 104, 'A', 252, to_date('28-09-2011 15:12:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '107', 105, 'A', 252, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '108', 144, 'A', 252, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '109', 116, 'A', 252, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '201', 200, 'A', 252, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '202', 201, 'A', 252, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '203', 204, 'A', 252, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '204', 214, 'A', 252, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '205', 203, 'A', 252, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '207', 233, 'A', 252, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '028', 30009, 'A', 364, to_date('14-10-2011 14:19:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '024', 30042, 'A', 364, to_date('14-10-2011 09:19:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '036', 30039, 'A', 114, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '037', 30031, 'A', 114, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '040', 30082, 'A', 114, to_date('28-09-2011 15:12:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '100', 40011, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '101', 40003, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '101', 40016, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '102', 40015, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23058, 'A', 364, to_date('21-02-2012 15:58:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '104', 40017, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '105', 40007, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '106', 40014, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '107', 40041, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '108', 40001, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '109', 40039, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '111', 40006, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '112', 40008, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '113', 40002, 'A', 114, to_date('28-09-2011 15:12:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '114', 40009, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '114', 40010, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '114', 40043, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '116', 40005, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '119', 40004, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '200', 50001, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '201', 50002, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23059, 'A', 364, to_date('21-02-2012 15:58:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '01', 8, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '02', 7, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '03', 1, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '04', 2, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '05', 3, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '06', 5, 'A', 114, to_date('28-09-2011 15:12:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '07', 4, 'A', 114, to_date('28-09-2011 15:12:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20161, 'A', 313, to_date('22-02-2012 12:22:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30128, 'A', 313, to_date('15-03-2012 17:07:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20015, 'A', 364, to_date('09-04-2012 09:48:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23068, 'A', 313, to_date('10-07-2012 11:18:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20001, 'A', 313, to_date('30-08-2012 11:40:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23071, 'A', 364, to_date('07-12-2012 12:10:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '206', 267, 'A', 244, to_date('19-02-2015 16:30:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '110', 338, 'A', 244, to_date('02-03-2015 15:08:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30117, 'A', 244, to_date('22-04-2013 10:31:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23075, 'A', 244, to_date('11-07-2013 11:33:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23086, 'A', 244, to_date('09-09-2013 16:51:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23089, 'A', 244, to_date('20-09-2013 10:38:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '08', 6, 'A', 114, to_date('28-09-2011 15:12:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23005, 'A', 244, to_date('30-09-2013 11:05:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '09', 11, 'A', 114, to_date('28-09-2011 15:12:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23092, 'A', 244, to_date('16-10-2013 14:57:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '10', 12, 'A', 114, to_date('28-09-2011 15:12:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '11', 9, 'A', 114, to_date('28-09-2011 15:12:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('81', '12', 10, 'A', 114, to_date('28-09-2011 15:12:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23093, 'A', 244, to_date('16-10-2013 14:57:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23095, 'A', 244, to_date('27-11-2013 17:41:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30076, 'A', 244, to_date('18-12-2013 10:37:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23097, 'A', 244, to_date('18-02-2014 17:49:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23098, 'A', 244, to_date('18-02-2014 17:49:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20034, 'A', 244, to_date('28-02-2014 11:40:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23105, 'A', 244, to_date('29-01-2015 12:30:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23106, 'A', 244, to_date('29-01-2015 12:30:45', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '007', 303, 'A', 244, to_date('25-02-2015 16:17:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '007', 100, 'A', 244, to_date('25-02-2015 16:23:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '007', 302, 'A', 244, to_date('25-02-2015 16:24:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '206', 308, 'A', 244, to_date('25-02-2015 16:27:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '107', 324, 'A', 244, to_date('26-02-2015 14:44:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '008', 57, 'A', 244, to_date('03-03-2015 11:57:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '110', 407, 'A', 244, to_date('04-03-2015 14:48:31', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '202', 430, 'A', 244, to_date('14-04-2015 10:24:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '017', 30026, 'A', 364, to_date('14-10-2011 10:08:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '027', 30010, 'A', 364, to_date('14-10-2011 09:27:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '022', 30033, 'A', 364, to_date('14-10-2011 09:24:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '033', 30019, 'A', 364, to_date('13-10-2011 18:45:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20136, 'A', 364, to_date('14-10-2011 10:37:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 50008, 'A', 364, to_date('14-10-2011 10:39:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40024, 'A', 364, to_date('14-10-2011 10:39:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30006, 'A', 364, to_date('14-10-2011 10:44:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40030, 'A', 364, to_date('14-10-2011 10:45:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20077, 'A', 364, to_date('14-10-2011 10:45:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20071, 'A', 364, to_date('14-10-2011 10:46:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '103', 40023, 'A', 364, to_date('19-10-2011 12:07:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30040, 'A', 364, to_date('28-10-2011 15:32:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20165, 'A', 364, to_date('26-10-2011 10:55:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20101, 'A', 244, to_date('04-11-2013 18:37:31', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23009, 'A', 364, to_date('26-10-2011 16:13:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20179, 'A', 364, to_date('27-10-2011 11:32:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40019, 'A', 313, to_date('28-10-2011 12:27:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 10033, 'A', 364, to_date('28-10-2011 15:32:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23019, 'A', 313, to_date('28-10-2011 17:22:31', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '026', 30126, 'A', 364, to_date('09-11-2011 09:41:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30017, 'A', 364, to_date('09-11-2011 09:43:28', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('78', '3', 3, 'A', 313, to_date('06-12-2011 15:57:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23064, 'A', 313, to_date('25-04-2012 12:27:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 23069, 'A', 364, to_date('13-07-2012 12:13:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 30032, 'A', 244, to_date('13-06-2013 10:05:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 40062, 'A', 244, to_date('12-11-2013 14:21:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('80', '999', 20128, 'A', 244, to_date('24-02-2015 12:48:58', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '107', 337, 'A', 244, to_date('25-02-2015 16:45:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '110', 331, 'A', 244, to_date('25-02-2015 16:49:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '208', 288, 'A', 244, to_date('02-03-2015 16:21:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SS_OK_NCI (NCI_ID, S_ID, OK_ID, STATE_NOTES, EMP_CODE, INS_DATE)
values ('79', '007', 305, 'A', 244, to_date('27-02-2015 18:04:06', 'dd-mm-yyyy hh24:mi:ss'));
prompt 375 records loaded
set feedback on
set define on
prompt Done.
