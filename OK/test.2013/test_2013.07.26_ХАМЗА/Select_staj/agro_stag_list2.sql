-- ���� �� ���� 01.07.2013 � ��������� ����� 1 ���� �� ������ 4 ����(�.�. ���������� ��� 366 ����)
-- � ���� ������� ������ ���������� ���� (TYPE_PERIOD_CODE 2-"���� ��������" � 3-"�� ������" )
spool c:\agro_stag2.txt
set line 100
select '01.07.2013' "����",okp.branch,okp.tabno,
(sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date))
-((trunc(trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365)/4)))
 "����� ����",
trunc( (sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)
-((trunc(trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365)/4)))
)/365) "���",
((sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date))
-((trunc(trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365)/4)))
-
(365*(trunc( (sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)
-((trunc(trunc( sum(nvl(out_office_date,to_date('01.07.2013','dd.mm.yyyy'))-in_office_date)/365)/4)))
)/365)))
) "����",okp.family
 from ok_personal okp, ok_period okpd
 where okp.branch=okpd.branch
 and okp.personal_code=okpd.personal_code
 and okpd.TYPE_PERIOD_CODE in (2,3)
 and okp.status_code in (2,5)
 group by okp.branch,okp.tabno,okp.family
 order by okp.branch,okp.tabno;
spool off;
