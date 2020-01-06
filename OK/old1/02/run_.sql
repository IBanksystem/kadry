spool c:\errors.txt;

@@alters.sql;
show err;

@@okpck.sql;
show err;

commit;

spool off;
