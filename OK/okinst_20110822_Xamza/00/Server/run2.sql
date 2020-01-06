spool c:\err.txt
set line 1000


alter table OK_FREEDAYS add ins_date date;


alter package ok_service compile body;
sho err;


spool off;