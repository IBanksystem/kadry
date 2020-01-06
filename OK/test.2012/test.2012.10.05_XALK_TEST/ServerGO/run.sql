spool c:\errGO.txt


@@ok_upd20120220.sql
commit;

prompt # ok_upd20120417
@@ok_upd20120417.sql

prompt # ok_upd20120418
@@ok_upd20120418.sql

prompt # ok_upd20121004
@@ok_upd20121004.sql


prompt # ok_upd20121005
@@ok_upd20121005.sql



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