
spool c:\check_seq.txt
-- agrobank BANK394
select sequence_owner,sequence_name,last_number,
'create sequence '||sequence_name||' minvalue 1 maxvalue 999999999 start with '||last_number||' order;' sql_
from all_sequences
where (sequence_name,last_number)
in (select sequence_name,max(last_number) from all_sequences
where sequence_owner like 'BANK%' and sequence_name like 'SEQ_OK%'
group by sequence_name
)
union all
select sequence_owner,sequence_name,last_number, 
'drop sequence '||sequence_name||'; '||last_number sql_
from all_sequences
where (sequence_owner = 'BANK394' and sequence_name like 'SEQ_OK%')
order by 2,3;

spool off;

