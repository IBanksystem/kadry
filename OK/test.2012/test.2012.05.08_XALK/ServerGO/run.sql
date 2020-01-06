spool c:\err.txt

prompt # OKTbls_0.sql
@@OKTbls_0.sql
commit;

prompt # ok_upd20111220.sql
@@ok_upd20111220.sql
commit;

prompt # crSsOKhist
@@crSsOKhist.sql

prompt # ok_upd20110525
@@ok_upd20110525.sql
commit;

prompt # ok_upd20110822
@@ok_upd20110822.sql
commit;

prompt # ok_upd20111006
@@ok_upd20111006.sql
commit;

prompt # ok_upd20111101
@@ok_upd20111101.sql
commit;

prompt # ok_upd20111115
@@ok_upd20111115.sql
commit;

prompt # ok_upd20120417
@@ok_upd20120417.sql

prompt # ok_upd20120418
@@ok_upd20120418.sql

@@updverok.sql
commit;

prompt # OK_service.pck
@@OK_service.pck
sho err

SELECT 'OK_SERVICE',VERSION.GET_MODULE_VERSION('OK_SERVICE', 'PACKAGE',USER) FROM DUAL;

prompt # ok_service2.pck
@@ok_service2.pck
sho err
create public synonym ok_service2 for ok_service2;

SELECT 'OK_SERVICE2',VERSION.GET_MODULE_VERSION('OK_SERVICE2', 'PACKAGE',USER) FROM DUAL;


@@crTRokhist.sql
@@crTROKPERS.sql

spool off;