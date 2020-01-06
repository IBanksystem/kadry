spool c:\err.txt
set line 1000

prompt # OKTbls14_ref.sql
@@OKTbls14_ref.sql

prompt # ok_serv.sql
@@ok_serv.sql;
show err;

@@updverok.sql 

update apps set version='1.0.1.6' where upper(package_name)='OK.BPL';

commit;

spool off;