alter table OK_PERSONAL add emp_code_name VARCHAR2(180);
alter table ok_personal add tabel_line number;
alter table ok_personal add id_client VARCHAR2(8);
alter table ok_personal add user_id number(6);

insert into STARTOFDAY select 1, 888888,10,1,1,1,'ОК-уволить внештат с истекшим сроком','OK_SERVICE2.OPENDAY(#CURDATE)',null,null,'A',1,1,0,0
from branch where bank_id in (select bank_id from s_mfo where HEADER_ID='09004');
commit;



