create or replace function stag_days_bank (branch_ ok_personal.branch%type, tabno_ ok_personal.tabno%type,date_ date) return number
authid current_user
is
-- date_ должен быть дата поступления
  Version constant char(12) := '#~25072016~#';
  days_ number;
begin

select (sum(nvl(out_office_date,date_)-in_office_date))
 into days_
 from ok_personal okp, ok_period okpd
 where okp.branch=branch_
  and okp.tabno=tabno_
 and okp.branch=okpd.branch
 and okp.personal_code=okpd.personal_code
 and okpd.STAG_CODE in (1)
 and okpd.in_office_date < date_
 group by okp.branch,okp.tabno,okp.family
 order by okp.branch,okp.tabno;

return days_;

end;
/

create or replace public synonym stag_days_bank for stag_days_bank;
