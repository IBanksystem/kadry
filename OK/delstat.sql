spool c:\okstat.txt

prompt # (1) не в штатном расписании
select BRANCH,tabno,department_code,post_code,family,first_name,patronymic from ok_personal where status_code in (2,5)
and ( post_code not in (select post_code from ok_stat)
    or department_code not in (select department_code from ok_stat)
    )
order by tabno;

prompt # удаление из штатного расписания всех лишних отделов и должностей не соответствующих уровню (обл/район) подразделения
declare
bank_id_ s_mfo.bank_id%type;
union_id_ s_mfo.union_id%type;
begin
select bank_id,union_id into bank_id_,union_id_  from s_mfo where bank_id in (select  bank_id from branch);
if (bank_id_<>'00883') and (bank_id_<>'09004') and (bank_id_=union_id_)
then -- областной
  delete from ok_stat where branch=bank_id_ and department_code in (select department_code from ss_ok_department where level_department_code<>2);
  delete from ok_stat where branch=bank_id_ and post_code in (select post_code from ss_ok_post where level_department_code<>2);
else if (bank_id_<>'00883') and (bank_id_<>'09004') and (bank_id_<>union_id_) 
then -- район
  delete from ok_stat where branch=bank_id_ and department_code in (select department_code from ss_ok_department where level_department_code<>3);
  delete from ok_stat where branch=bank_id_ and post_code in (select post_code from ss_ok_post where level_department_code<>3);
end if;
end if;
end;
/

commit;
prompt # (2) не в штатном расписании
select BRANCH,tabno,department_code,post_code,family,first_name,patronymic from ok_personal where status_code in (2,5)
and ( post_code not in (select post_code from ok_stat)
    or department_code not in (select department_code from ok_stat)
    )
order by tabno;
    
spool off;
