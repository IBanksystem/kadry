-- �������� � ��������� 2-���������
--�����������
--������ �������
--������ ������ 


-- ������ ������
update OK_ACADEMIC set emp_code=emp_code where ACADEMIC_code in (select ok_id from ss_ok_nci
where nci_id=76 and s_id<>1);
commit;

--������ �������
update OK_DEGREE set emp_code=emp_code where degree_code in (select ok_id from ss_ok_nci
where nci_id=75 and s_id<>1);
commit;

--�����������
update OK_PARTY set emp_code=emp_code where party_code in (select ok_id from ss_ok_nci
where nci_id=73 and s_id<>'01');
commit;
