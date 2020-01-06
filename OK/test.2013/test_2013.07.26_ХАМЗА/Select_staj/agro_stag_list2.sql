-- стаж на дату 01.07.2013 с поправкой минус 1 день за каждые 4 года(т.е. високосный год 366 дней)
-- в агро берется только банковский стаж (TYPE_PERIOD_CODE 2-"Банк тизимида" и 3-"Шу банкда" )
spool c:\agro_stag2.txt
set line 100
select '01.07.2013' "Дата",okp.branch,okp.tabno,
(sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date))
-((trunc(trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365)/4)))
 "всего дней",
trunc( (sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)
-((trunc(trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365)/4)))
)/365) "лет",
((sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date))
-((trunc(trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365)/4)))
-
(365*(trunc( (sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)
-((trunc(trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365)/4)))
)/365)))
) "дней",okp.family
 from ok_personal okp, ok_period okpd
 where okp.branch=okpd.branch
 and okp.personal_code=okpd.personal_code
 and okpd.TYPE_PERIOD_CODE in (2,3)
 and okp.status_code in (2,5)
 group by okp.branch,okp.tabno,okp.family
 order by okp.branch,okp.tabno;
spool off;
