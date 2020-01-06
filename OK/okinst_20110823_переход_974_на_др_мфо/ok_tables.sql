spool c:\oktbl.sql

set serveroutput on
set feedback off
set verify off
set pages 0
set lines 2000
set trims on
set longchunksize 20000
set heading off 

select 'insert into '||table_name||' select * from bank974.'||table_name||';' from all_all_tables
where owner='BANK974'
and table_name like 'OK%' and table_name<>'OK_PHOTO';

select 'update '||table_name||' set branch=''00000'' ;commit;'
 from all_all_tables
where owner='BANK974'
and table_name like 'OK%';

set feedback on
set verify on
set pages 1
set lines 2000
set trims on
set longchunksize 20000
set heading on

spool off;
