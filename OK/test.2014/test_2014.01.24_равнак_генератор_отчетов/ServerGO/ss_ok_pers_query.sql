prompt PL/SQL Developer import file
prompt Created on 24 ������ 2014 �. by user
set feedback off
set define off

prompt Loading SS_OK_PERS_QUERY...
insert into SS_OK_PERS_QUERY (CODE, NAME, QUERY_TYPE, QUERY_TEXT, QUERY_CLAUSE)
values (1, '������� ��� IT', null, 'Select * from ok_Personal', null);
insert into SS_OK_PERS_QUERY (CODE, NAME, QUERY_TYPE, QUERY_TEXT, QUERY_CLAUSE)
values (4, '����� �����', null, 'Select * from ok_Personal', null);
insert into SS_OK_PERS_QUERY (CODE, NAME, QUERY_TYPE, QUERY_TEXT, QUERY_CLAUSE)
values (2, '����������', null, 'Select * from ok_Personal', 'HO.DATE_OPEN Between ''01.01.2014'' And ''31.12.2014''');
insert into SS_OK_PERS_QUERY (CODE, NAME, QUERY_TYPE, QUERY_TEXT, QUERY_CLAUSE)
values (3, '����� � �����', null, 'Select * from ok_Personal', null);
insert into SS_OK_PERS_QUERY (CODE, NAME, QUERY_TYPE, QUERY_TEXT, QUERY_CLAUSE)
values (5, '�������� ��� IT', null, 'Select * from ok_Personal', null);
insert into SS_OK_PERS_QUERY (CODE, NAME, QUERY_TYPE, QUERY_TEXT, QUERY_CLAUSE)
values (6, '������� ��� it', null, 'Select * from ok_Personal', null);
commit;
prompt 6 records loaded
set feedback on
set define on
prompt Done.
