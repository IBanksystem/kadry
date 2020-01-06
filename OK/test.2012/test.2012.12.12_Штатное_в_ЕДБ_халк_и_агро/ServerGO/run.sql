spool c:\errGO.txt

prompt # OKTbls13_ref.sql
@@OKTbls13_ref.sql

prompt # ok_upd20111006.sql
@@ok_upd20111006.sql

prompt # ok_upd20111101.sql
@@ok_upd20111101.sql

prompt # ok_upd20111115.sql
@@ok_upd20111115.sql

prompt # ok_upd20111220.sql
@@ok_upd20111220.sql

prompt # ok_upd20120124.sql
@@ok_upd20120124.sql

prompt # ok_upd20120220.sql
@@ok_upd20120220.sql
commit;

prompt # ok_upd20120417.sql
@@ok_upd20120417.sql

prompt # ok_upd20120418.sql
@@ok_upd20120418.sql

prompt # ok_upd20120528.sql
@@ok_upd20120528.sql

prompt # ok_upd20120827.sql
@@ok_upd20120827.sql

prompt # ok_upd20121004.sql
@@ok_upd20121004.sql

prompt # ok_upd20121005.sql
@@ok_upd20121005.sql

prompt # ss_ok_pers_col_dflt.sql
@@ss_ok_pers_col_dflt.sql

@@updverok.sql
commit;

prompt # OK_service.pck
@@OK_service.pck
sho err

SELECT 'OK_SERVICE',VERSION.GET_MODULE_VERSION('OK_SERVICE', 'PACKAGE',USER) FROM DUAL;

prompt # ok_service2.pck
@@ok_service2.pck
sho err
create or replace public synonym ok_service2 for ok_service2;

SELECT 'OK_SERVICE2',VERSION.GET_MODULE_VERSION('OK_SERVICE2', 'PACKAGE',USER) FROM DUAL;




spool off;