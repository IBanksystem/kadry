select * from dictionary
where table_name like '%NLS%';
select * from NLS_DATABASE_PARAMETERS;

spool c:\ok\oknull.sql
select 'alter table '||table_name||' modify '||column_name||' null;' from user_tab_columns
where table_name like 'OK%' and nullable='N' and column_name<>'BRANCH' and column_name<>'PERSONAL_CODE';
select 'alter table '||table_name||' modify '||column_name||' null;' from user_tab_columns
where table_name like 'SS_OK%' and nullable='N' and column_name<>'BRANCH' and column_name<>'PERSONAL_CODE';
spool off;

spool c:\ok\okdel.sql
select distinct 'truncate table '||table_name||';' from user_tab_columns
where table_name like 'OK%' and nullable='N' and column_name<>'BRANCH' and column_name<>'PERSONAL_CODE';
select distinct  'truncate table '||table_name||';' from user_tab_columns
where table_name like 'SS_OK%' and nullable='N' and column_name<>'BRANCH' and column_name<>'PERSONAL_CODE';
spool off;