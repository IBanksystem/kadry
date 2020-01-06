truncate table ok_temp;
create table ok_temp(
id number,
str_ varchar2(2000)
);

--set serveroutp on;
spool c:\script.txt;
set array 5
set line 2000
declare
ins_str varchar2(2000);
values_str2 varchar2(2000);
old_table_name  varchar2(200);
str_  varchar2(2000);
k number;
BEGIN
k:=0;
old_table_name:='x';
for rec in (select * from all_tab_columns
   where owner='BANK394' and table_name like 'OK%'
  order by table_name,column_id)
loop
  if rec.table_name<>old_table_name
  then
    if old_table_name<>'x'
    then 
      null;
      str_ := substr( (ins_str||values_str2||' from '||old_table_name||'_temp;') ,1,2000); 
      k:=k+1;
      insert into ok_temp select k,str_ from dual;
commit;
    end if;
    ins_str:='insert into '||rec.table_name||'('||rec.column_name;
    values_str2:=') select '||rec.column_name;
    old_table_name:=rec.table_name;
  else  
    ins_str:= substr(ins_str||','||rec.column_name,1,2000);
    values_str2:= substr(values_str2||','||rec.column_name,1,2000);
  end if;
end loop;
      str_ := substr(ins_str||values_str2||' from '||old_table_name||'_temp;',1,2000);
      k:=k+1;
      insert into ok_temp select k,str_ from dual;

END;
/

commit;

spool off;
