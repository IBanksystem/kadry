spool c:\err.txt
set line 1000

prompt # reg_bpl.sql
@@reg_bpl.sql

prompt # OK_Action.sql
@@OK_Action.sql

spool off;