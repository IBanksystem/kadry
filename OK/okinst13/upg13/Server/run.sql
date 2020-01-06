spool c:\err.txt
set line 1000

prompt # OKTbls13.sql
@@OKTbls13.sql

prompt # OKTbls13_ref.sql
@@OKTbls13_ref.sql

prompt # ok_serv.sql
@@ok_serv.sql;
show err;


update apps set version='1.0.0.3' where upper(package_name)='OK.BPL';

commit;

spool off;
