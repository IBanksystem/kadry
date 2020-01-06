
@@ok9004.prc;
spool c:\ins.sql
set serveroutput on
set feedback off
set verify off
set pages 0
set lines 2000
set trims on
set longchunksize 20000
set heading off 
exec OK9004;
select name_1 from Rep_Temp where ses_id=userenv('sessionid') order by id;
set feedback on
set verify on
set pages 1
set lines 2000
set trims on
set longchunksize 20000
set heading on
spool off;
