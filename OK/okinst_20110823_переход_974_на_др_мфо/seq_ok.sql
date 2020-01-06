spool c:\seq.sql
set serveroutput on
set feedback off
set verify off
set pages 0
set lines 2000
set trims on
set longchunksize 20000
set heading off 

select 'drop sequence '||sequence_name||';' from sys.all_sequences
where sequence_owner = 'BANK974'
and sequence_name like 'SEQ_OK%';

select 'create sequence '||sequence_name||
' minvalue 1 maxvalue 999999999 start with '||to_char(last_number)||
' increment by 1 cache 20 order;' from sys.all_sequences
where sequence_owner = 'BANK974'
and sequence_name like 'SEQ_OK%';

select SEQ_OK_CONVICTIONS.nextval from dual;

select 'select '||sequence_name||'.nextval from dual;' from sys.all_sequences
where sequence_owner = 'BANK974'
and sequence_name like 'SEQ_OK%';

set feedback on
set verify on
set pages 1
set lines 2000
set trims on
set longchunksize 20000
set heading on

spool off;