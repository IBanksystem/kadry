spool c:\otdel.txt
set line 3000;
select d.department_code,level, lpad(' ',level*3,'  ')||d.department_name name_ from ss_ok_department d
connect by d.high_dep_code = prior d.department_code
start with d.high_dep_code is null;
spool off;