spool c:\okl_4.txt
-- некоторых нет
select table_name,       'select max(id)  from '||table_name||';'  from all_all_tables where table_name like 'OK%' and owner='BANK1140'
union all select  table_name,  'select seq_'||table_name||'.nextval from dual;'  from all_all_tables where table_name like 'OK%' and owner='BANK1140'
order by 1,2;

--
prompt # ok_language;
      select max(id)  from ok_language;
      select SEQ_OK_LANGUAGE.NEXTVAL from dual;
declare
max_seq_new_id number;
seq_new_id number;
begin
    select max(id) into max_seq_new_id from ok_language;
    select SEQ_OK_LANGUAGE.NEXTVAL into seq_new_id from dual;
    while seq_new_id<max_seq_new_id 
    loop
      select SEQ_OK_LANGUAGE.NEXTVAL into seq_new_id from dual;
    end loop;
end;
/
      select max(id)  from ok_language;
      select SEQ_OK_LANGUAGE.NEXTVAL from dual;

prompt # OK_ACADEMIC;
      select max(id)  from OK_ACADEMIC;
      select SEQ_OK_ACADEMIC.NEXTVAL from dual;
declare
max_seq_new_id number;
seq_new_id number;
begin
    select max(id) into max_seq_new_id from OK_ACADEMIC;
    select SEQ_OK_ACADEMIC.NEXTVAL into seq_new_id from dual;
    while seq_new_id<max_seq_new_id 
    loop
      select SEQ_OK_ACADEMIC.NEXTVAL into seq_new_id from dual;
    end loop;
end;
/
      select max(id)  from OK_ACADEMIC;
      select SEQ_OK_ACADEMIC.NEXTVAL from dual;


prompt # OK_AWARD;
      select max(id)  from OK_AWARD;
      select SEQ_OK_AWARD.NEXTVAL from dual;
declare
max_seq_new_id number;
seq_new_id number;
begin
    select max(id) into max_seq_new_id from OK_AWARD;
    select SEQ_OK_AWARD.NEXTVAL into seq_new_id from dual;
    while seq_new_id<max_seq_new_id 
    loop
      select SEQ_OK_AWARD.NEXTVAL into seq_new_id from dual;
    end loop;
end;
/
      select max(id)  from OK_AWARD;
      select SEQ_OK_AWARD.NEXTVAL from dual;



prompt # OK_CHANGE_FIO;
      select max(id)  from OK_CHANGE_FIO;
      select SEQ_OK_CHANGE_FIO.NEXTVAL from dual;
declare
max_seq_new_id number;
seq_new_id number;
begin
    select max(id) into max_seq_new_id from OK_CHANGE_FIO;
    select SEQ_OK_CHANGE_FIO.NEXTVAL into seq_new_id from dual;
    while seq_new_id<max_seq_new_id 
    loop
      select SEQ_OK_CHANGE_FIO.NEXTVAL into seq_new_id from dual;
    end loop;
end;
/
      select max(id)  from OK_CHANGE_FIO;
      select SEQ_OK_CHANGE_FIO.NEXTVAL from dual;



prompt # OK_DEGREE;
      select max(id)  from OK_DEGREE;
      select SEQ_OK_DEGREE.NEXTVAL from dual;
declare
max_seq_new_id number;
seq_new_id number;
begin
    select max(id) into max_seq_new_id from OK_DEGREE;
    select SEQ_OK_DEGREE.NEXTVAL into seq_new_id from dual;
    while seq_new_id<max_seq_new_id 
    loop
      select SEQ_OK_DEGREE.NEXTVAL into seq_new_id from dual;
    end loop;
end;
/
      select max(id)  from OK_DEGREE;
      select SEQ_OK_DEGREE.NEXTVAL from dual;



prompt # OK_EDUCATION;
      select max(id)  from OK_EDUCATION;
      select SEQ_OK_EDUCATION.NEXTVAL from dual;
declare
max_seq_new_id number;
seq_new_id number;
begin
    select max(id) into max_seq_new_id from OK_EDUCATION;
    select SEQ_OK_EDUCATION.NEXTVAL into seq_new_id from dual;
    while seq_new_id<max_seq_new_id 
    loop
      select SEQ_OK_EDUCATION.NEXTVAL into seq_new_id from dual;
    end loop;
end;
/
      select max(id)  from OK_EDUCATION;
      select SEQ_OK_EDUCATION.NEXTVAL from dual;


prompt # OK_PARTY;
      select max(id)  from OK_PARTY;
      select SEQ_OK_PARTY.NEXTVAL from dual;
declare
max_seq_new_id number;
seq_new_id number;
begin
    select max(id) into max_seq_new_id from OK_PARTY;
    select SEQ_OK_PARTY.NEXTVAL into seq_new_id from dual;
    while seq_new_id<max_seq_new_id 
    loop
      select SEQ_OK_PARTY.NEXTVAL into seq_new_id from dual;
    end loop;
end;
/
      select max(id)  from OK_PARTY;
      select SEQ_OK_PARTY.NEXTVAL from dual;


prompt # OK_PERIOD;
      select max(id)  from OK_PERIOD;
      select SEQ_OK_PERIOD.NEXTVAL from dual;
declare
max_seq_new_id number;
seq_new_id number;
begin
    select max(id) into max_seq_new_id from OK_PERIOD;
    select SEQ_OK_PERIOD.NEXTVAL into seq_new_id from dual;
    while seq_new_id<max_seq_new_id 
    loop
      select SEQ_OK_PERIOD.NEXTVAL into seq_new_id from dual;
    end loop;
end;
/
      select max(id)  from OK_PERIOD;
      select SEQ_OK_PERIOD.NEXTVAL from dual;


prompt # OK_PERSONAL;
      select max(id)  from OK_PERSONAL;
      select SEQ_OK_PERSONAL.NEXTVAL from dual;
declare
max_seq_new_id number;
seq_new_id number;
begin
    select max(id) into max_seq_new_id from OK_PERSONAL;
    select SEQ_OK_PERSONAL.NEXTVAL into seq_new_id from dual;
    while seq_new_id<max_seq_new_id 
    loop
      select SEQ_OK_PERSONAL.NEXTVAL into seq_new_id from dual;
    end loop;
end;
/
      select max(id)  from OK_PERSONAL;
      select SEQ_OK_PERSONAL.NEXTVAL from dual;



prompt # OK_PHOTO;
      select max(id)  from OK_PHOTO;
      select SEQ_OK_PHOTO.NEXTVAL from dual;
declare
max_seq_new_id number;
seq_new_id number;
begin
    select max(id) into max_seq_new_id from OK_PHOTO;
    select SEQ_OK_PHOTO.NEXTVAL into seq_new_id from dual;
    while seq_new_id<max_seq_new_id 
    loop
      select SEQ_OK_PHOTO.NEXTVAL into seq_new_id from dual;
    end loop;
end;
/
      select max(id)  from OK_PHOTO;
      select SEQ_OK_PHOTO.NEXTVAL from dual;


prompt # OK_RISE;
      select max(id)  from OK_RISE;
      select SEQ_OK_RISE.NEXTVAL from dual;
declare
max_seq_new_id number;
seq_new_id number;
begin
    select max(id) into max_seq_new_id from OK_RISE;
    select SEQ_OK_RISE.NEXTVAL into seq_new_id from dual;
    while seq_new_id<max_seq_new_id 
    loop
      select SEQ_OK_RISE.NEXTVAL into seq_new_id from dual;
    end loop;
end;
/
      select max(id)  from OK_RISE;
      select SEQ_OK_RISE.NEXTVAL from dual;



prompt # OK_SCIENTIFIC;
      select max(id)  from OK_SCIENTIFIC;
      select SEQ_OK_SCIENTIFIC.NEXTVAL from dual;
declare
max_seq_new_id number;
seq_new_id number;
begin
    select max(id) into max_seq_new_id from OK_SCIENTIFIC;
    select SEQ_OK_SCIENTIFIC.NEXTVAL into seq_new_id from dual;
    while seq_new_id<max_seq_new_id 
    loop
      select SEQ_OK_SCIENTIFIC.NEXTVAL into seq_new_id from dual;
    end loop;
end;
/
      select max(id)  from OK_SCIENTIFIC;
      select SEQ_OK_SCIENTIFIC.NEXTVAL from dual;



prompt # OK_VOYAGE;
      select max(id)  from OK_VOYAGE;
      select SEQ_OK_VOYAGE.NEXTVAL from dual;
declare
max_seq_new_id number;
seq_new_id number;
begin
    select max(id) into max_seq_new_id from OK_VOYAGE;
    select SEQ_OK_VOYAGE.NEXTVAL into seq_new_id from dual;
    while seq_new_id<max_seq_new_id 
    loop
      select SEQ_OK_VOYAGE.NEXTVAL into seq_new_id from dual;
    end loop;
end;
/
      select max(id)  from OK_VOYAGE;
      select SEQ_OK_VOYAGE.NEXTVAL from dual;


spool off;