-- ���� ���=365 ����, �����=30 ����
-- ��� ����� ���������� ���
select '01.07.2013' "����",okp.branch,okp.tabno,okp.family,
(sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date))
-((trunc(trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365)/4)))
 "����� ����",
trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365) "���",
trunc((    sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)-
    365*(trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365)))
    /30) "�������",
 (sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date))-
 365*trunc((sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date))/365)-
30*trunc((    sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)-
    365*(trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365)))
    /30)     "����",
        (trunc(trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365)/4)) "��������"   
 from ok_personal okp, ok_period okpd
 where okp.branch=okpd.branch
 and okp.personal_code=okpd.personal_code
 and okpd.TYPE_PERIOD_CODE in (2,3)
 and okpd.personal_code=698
 group by okp.branch,okp.tabno,okp.family;
 
-- ����� 1 ���� �� ������ ������ 4 ���� 
select '01.07.2013' "����",okp.branch,okp.tabno,okp.family,
(sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date))
-((trunc(trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365)/4)))
 "����� ����",
trunc( (sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)
-((trunc(trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365)/4)))
)/365) "���",
trunc((
((sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date))
-((trunc(trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365)/4)))
)-
(365*(trunc( (sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)
-((trunc(trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365)/4)))
)/365)))
    )/30) "�������",
((sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date))
-((trunc(trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365)/4)))
-
(365*(trunc( (sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)
-((trunc(trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365)/4)))
)/365)))
-
(30*(trunc((
((sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date))
-((trunc(trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365)/4)))
)-
(365*(trunc( (sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)
-((trunc(trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365)/4)))
)/365)))
    )/30)))
) "����"
 from ok_personal okp, ok_period okpd
 where okp.branch=okpd.branch
 and okp.personal_code=okpd.personal_code
 and okpd.TYPE_PERIOD_CODE in (2,3)
 and okpd.personal_code=698
 group by okp.branch,okp.tabno,okp.family
 order by okp.branch,okp.tabno;
 