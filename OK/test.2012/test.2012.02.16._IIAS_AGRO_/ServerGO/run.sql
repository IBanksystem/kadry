spool c:\err.txt

@@OKTbls_0.sql
commit;

@@ok_upd20111220.sql
commit;

@@crSsOKhist.sql

@@ok_upd20110525.sql
commit;

@@ok_upd20110822.sql
commit;

@@ok_upd20111006.sql
commit;

@@ok_upd20111101.sql
commit;

@@ok_upd20111115.sql
commit;

@@ok_upd20120124.sql
commit;

@@ok_upd20120126.sql
commit;

@@ok_upd20120208.sql
commit;

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