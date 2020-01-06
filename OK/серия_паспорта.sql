update ok_personal set PASS_SERIYA='AA' where PASS_SERIYA in ('','','');


CH,CT,AB

bank394
create table ok_PASS_SERIYA(
PASS_SERIYA_BAD  varchar2(2),
PASS_SERIYA_TRUE varchar2(2));
create or replace public synonym ok_PASS_SERIYA for ok_PASS_SERIYA;
grant all on ok_PASS_SERIYA to public;

insert into ok_PASS_SERIYA(PASS_SERIYA_BAD) 
select distinct PASS_SERIYA
from ok_personal 
where (ascii(substr(PASS_SERIYA,1,1))>123
    or ascii(substr(PASS_SERIYA,2,1))>123)
and passport_type_code in (1,6);
commit;



select ascii('À') from dual


select passport_type_code
from ok_personal 
where (ascii(substr(PASS_SERIYA,1,1))>123
    or ascii(substr(PASS_SERIYA,2,1))>123)
and passport_type_code in (1,6)
