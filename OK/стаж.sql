--delete from asoki_reply
select branch,tabno,family,ok_service.GET_WORK_PERIOD(branch,personal_code,trunc(sysdate)) "����� ����"
--         ,ok_service.GET_WORK_PERIOD_BY_TYPE(branch,personal_code,trunc(sysdate),1) "�� ���������� ����",
--          ok_service.GET_WORK_PERIOD_BY_TYPE(branch,personal_code,trunc(sysdate),3) "������-��������� ����",
--          ok_service.GET_WORK_PERIOD_BY_TYPE(branch,personal_code,trunc(sysdate),5) "���������� ����" 
from ok_personal;
7 ��� 8 ���.5 ��.
7 ��� 8 ���.15 ��.
7 ��� 10 ���.5 ��.
7 ��� 10 ���.15 ��.
24 ��� 1 ���.2 ��.
13 ��� 1 ���.22 ��.
24 ��� 11 ���.2 ��.
13 ��� 10 ���.22 ��.
� �.�.
