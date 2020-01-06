prompt PL/SQL Developer import file
prompt Created on 24 Январь 2014 г. by user
set feedback off
set define off

prompt Loading SS_OK_PERS_QUERY...
insert into SS_OK_PERS_QUERY (CODE, NAME, QUERY_TYPE, QUERY_TEXT, QUERY_CLAUSE)
values (1, 'отпуска для IT', null, 'Select * from ok_Personal', null);
insert into SS_OK_PERS_QUERY (CODE, NAME, QUERY_TYPE, QUERY_TEXT, QUERY_CLAUSE)
values (4, 'Курсы повыш', null, 'Select * from ok_Personal', null);
insert into SS_OK_PERS_QUERY (CODE, NAME, QUERY_TYPE, QUERY_TEXT, QUERY_CLAUSE)
values (2, 'Больничные', null, 'Select * from ok_Personal', 'HO.DATE_OPEN Between ''01.01.2014'' And ''31.12.2014''');
insert into SS_OK_PERS_QUERY (CODE, NAME, QUERY_TYPE, QUERY_TEXT, QUERY_CLAUSE)
values (3, 'Отчет о детях', null, 'Select * from ok_Personal', null);
insert into SS_OK_PERS_QUERY (CODE, NAME, QUERY_TYPE, QUERY_TEXT, QUERY_CLAUSE)
values (5, 'Принятые для IT', null, 'Select * from ok_Personal', null);
insert into SS_OK_PERS_QUERY (CODE, NAME, QUERY_TYPE, QUERY_TEXT, QUERY_CLAUSE)
values (6, 'Отпуска для it', null, 'Select * from ok_Personal', null);
commit;
prompt 6 records loaded
set feedback on
set define on
prompt Done.
