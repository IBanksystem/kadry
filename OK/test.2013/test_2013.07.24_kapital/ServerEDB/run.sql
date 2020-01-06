spool c:\errEDB.txt

@@reg_bpl.sql
commit;

@@reg_bpl_stat.sql
commit;


@@updverokEDB.sql
commit;

@@updverokEDBstat.sql
commit;

@@updverok_okref.sql
commit;

spool off;