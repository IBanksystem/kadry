select sequence_owner,'drop sequence '||sequence_name||';',last_number,
'create sequence '||sequence_name||' minvalue 1 maxvalue 999999999 start with '||last_number||' order;' sql_
from all_sequences
where (sequence_name,last_number)
in (select sequence_name,max(last_number) from all_sequences
where sequence_owner like 'BANK%' and sequence_name like 'SEQ_OK%'
group by sequence_name
)
union all
select sequence_owner,'drop sequence '||sequence_name||';',last_number, 
'drop sequence '||sequence_name||'; '||last_number sql_
from all_sequences
where (sequence_owner = 'BANK394' and sequence_name like 'SEQ_OK%')
order by 2,3;



select SEQ_OK_ACADEMIC.nextval from dual;

select SEQ_OK_ADDINFORM.nextval from dual;

select SEQ_OK_ARMY.nextval from dual;
select SEQ_OK_AWARD.nextval from dual;
select SEQ_OK_CHANGE_FIO.nextval from dual;
select SEQ_OK_CONVICTIONS.nextval from dual;
select SEQ_OK_DEGREE.nextval from dual;
select SEQ_OK_EDUCATION.nextval from dual;

select SEQ_OK_ELECTION.nextval from dual;
select SEQ_OK_LANGUAGE.nextval from dual;
select SEQ_OK_LEAVE.nextval from dual;
select SEQ_OK_PARTY.nextval from dual;

select SEQ_OK_PENALTY.nextval from dual;
select SEQ_OK_PERIOD.nextval from dual;
select SEQ_OK_PERSONAL.nextval from dual;
select SEQ_OK_PHOTO.nextval from dual;





select SEQ_OK_PREMIUM.nextval from dual;
select SEQ_OK_RELATION.nextval from dual;


select SEQ_OK_REZERV.nextval from dual;

select SEQ_OK_RISE.nextval from dual;
select SEQ_OK_SCIENTIFIC.nextval from dual;
select SEQ_OK_STAT.nextval from dual;
select SEQ_OK_VOYAGE.nextval from dual;

select SEQ_OK_YOUTH.nextval from dual;
