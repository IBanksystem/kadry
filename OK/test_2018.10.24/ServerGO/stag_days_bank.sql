create or replace function stag_days_bank (branch_ ok_personal.branch%type, tabno_ ok_personal.tabno%type,date_ date) return number
authid current_user
is
-- date_ должен быть дата поступления
  Version constant char(12) := '#~24102018~#';
  days_ number;
  count_  number;
begin
--
select count((sum(nvl(out_office_date,date_)-in_office_date)))
 into count_
 from ok_personal okp, ok_period okpd
 where okp.branch=branch_
  and okp.tabno=tabno_
 and okp.branch=okpd.branch
 and okp.personal_code=okpd.personal_code
 and okpd.STAG_CODE in (1)
 and okpd.in_office_date < date_
 group by okp.branch,okp.tabno,okp.family
 order by okp.branch,okp.tabno;
--
if count_=0
then
  days_:=0;
elsif count_=1
then
--
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
 --
else
    Raise_Application_error(-20000,'(stag_days_bank(38))мфо='||branch_||' tabno='||tabno_||
    ' date='||to_char(date_,'dd.mm.yyyy')||' count_='||count_||
    ' Проверьте сотрудника в таблице.');
end if;
-- 
return days_;
  Exception when others then
    Raise_Application_error(-20000,'(stag_days_bank(45))мфо='||branch_||' tabno='||tabno_||
    ' date='||to_char(date_,'dd.mm.yyyy')||
    ' err='||sqlerrm);
--
end;
/

