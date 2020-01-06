spool c:\err.txt
set lin 1000 pages 1000 numw 20 serveroutp on size 1000000
declare
maxdate_ date;
post_code_ number(3);
department_code_ number(9);
begin
for rec in (select rowid,t.* from ok_personal t
where status_code = 4
order by t.tabno
 )
loop
  begin
    select max(in_office_date) into maxdate_ from ok_period where branch=rec.branch and personal_code=rec.personal_code;
    select post_code,department_code into post_code_,department_code_ from ok_period 
    where branch=rec.branch and personal_code=rec.personal_code and in_office_date=maxdate_;
--  update ok_period set post_code=13,department_code=13 where rowid=rec.rowid;
  exception when others
    then dbms_output.put_line(rec.tabno||' нет данных');
  end;
  if (post_code_ is null) or (department_code_ is null)
  then
    dbms_output.put_line(rec.tabno||'    update ok_period set post_code='||rec.post_code||',department_code='||rec.department_code||
      ' where branch='''||rec.branch||''' and personal_code='||rec.personal_code||
      ' and in_office_date=to_date('''||maxdate_||''',''dd.mm.yyyy'');');
  end if;
--commit;
end loop;
end;
/

spool off;
