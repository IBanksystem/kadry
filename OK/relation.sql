--������
--����� �����-������� �� �� ����� ����-����

--select * from s_nsi nci_id=81
--select * from S_FAMILY

--select * from ss_ok_family_status
--select * from ss_ok_RELATION 

-- 1	1	��������- � �����
-- 2	1	����������- � �������
-- 3	2	�������� ������ - � �������
-- 4	2	�������� �������� - � ���������
-- 5	1	�������� (�����) - � ��������
-- 6	2	�������� (��) - � ���������

-- select ok_id from ss_ok_nci where nci_id=81 and s_id=
-- 01	������
-- 02	���
-- 13	����� ������
-- 14	����� ���

spool c:\relation.txt

prompt # � ����� �� ��� ����
select branch,personal_code,tabno,family from ok_personal okp 
where okp.branch in (select branch from sets)
and okp.status_code in (2,5)
and okp.gender_code=1
and okp.family_status_code in (1)
and not exists (select 1 from ok_relation where branch in (select branch from sets) 
and relation_code in (select ok_id from ss_ok_nci where nci_id=81 and s_id='01') );

prompt # � �������-�������� �� ���� ����
select branch,personal_code,tabno,family from ok_personal okp 
where okp.branch in (select branch from sets)
and okp.status_code in (2,5)
and okp.gender_code=1
and okp.family_status_code in (2,5)
and exists (select 1 from ok_relation where branch in (select branch from sets) 
and relation_code in (select ok_id from ss_ok_nci where nci_id=81 and s_id='01') );

prompt # � �������� �� ��� ����������� ����
select branch,personal_code,tabno,family from ok_personal okp 
where okp.branch in (select branch from sets)
and okp.status_code in (2,5)
and okp.gender_code=1
and okp.family_status_code in (5)
and not exists (select 1 from ok_relation where branch in (select branch from sets) 
and relation_code in (select ok_id from ss_ok_nci where nci_id=81 and s_id='13') );


prompt # � ������� �� ��� ����
select branch,personal_code,tabno,family from ok_personal okp 
where okp.branch in (select branch from sets)
and okp.status_code in (2,5)
and okp.gender_code=2
and okp.family_status_code in (3)
and not exists (select 1 from ok_relation where branch in (select branch from sets) 
and relation_code in (select ok_id from ss_ok_nci where nci_id=81 and s_id='02') );

prompt # � ���������-��������� �� ���� ���
select branch,personal_code,tabno,family from ok_personal okp 
where okp.branch in (select branch from sets)
and okp.status_code in (2,5)
and okp.gender_code=2
and okp.family_status_code in (4,6)
and exists (select 1 from ok_relation where branch in (select branch from sets) 
and relation_code in (select ok_id from ss_ok_nci where nci_id=81 and s_id='02') );

--prompt # � ��������� �� ��� ������������ ����
--select branch,personal_code,tabno,family from ok_personal okp 
--where okp.branch in (select branch from sets)
--and okp.status_code in (2,5)
--and okp.gender_code=2
--and okp.family_status_code in (6)
--and not exists (select 1 from ok_relation where branch in (select branch from sets) 
--and relation_code in (select ok_id from ss_ok_nci where nci_id=81 and s_id='14') );

spool off;


