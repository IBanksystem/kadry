-- ���������� ������ �� ��������� ����� ������

-- ���� ������� �������� �� ����� �� ������ �� ������� �� ������ ������ �������� 860
update ok_relation 
set COD_STR_birth='860'
where COD_OBL_birth is not null
and COD_STR_birth is null;
commit;

-- ���� ������� ���������� �� ����� �� ������ �� ������� �� ������  ������ ���������� 860
update ok_relation 
set COD_STR_LIVE='860'
where COD_OBL_LIVE is not null
and COD_STR_LIVE is null;
commit;


-- ���� ���� �������-��������� ��� ������ ������ � ��������� ������ ���� ������ ������ � ���� ���������.
-- �� ��������� ���� ���� ������ ������
update ok_period set basis_date=in_office_date
where in_office_date is not null
and ((basis_date is null)
  or (basis_date<in_office_date));
commit;

-- ��� �� ��������� ��� ��� ������� ���������� ���������� �� ������������ �������
update ok_period set cod_pr_off='01'
where out_office_date is not null
and cod_pr_off is null;
commit;

update ok_period set pr_off='�� �������� ����'
where out_office_date is not null
and pr_off is null;
commit;

-- ��� �� ��������� ���� ������� �� ���������� ���������� ���� ��������� ������ (���� �� �����)
update ok_period set date_pr_off=out_office_date
where out_office_date is not null
and date_pr_off is null;
commit;


-- ���� ���� ������� ��� ����������� ������ � ��������� ������ ���� ��������� ������ � ���� ���������.
-- �� ��������� ���� ���� ������ ������
update ok_period set date_pr_off=out_office_date
where in_office_date is not null
and date_pr_off> out_office_date;
commit;


delete from OK_voyage
where voyage_date<1917 or voyage_date is null;
commit;

delete from ok_VOYAGE where VOYAGE_info='��������';
commit;

delete from OK_voyage
where voyage_date<1917 or voyage_date is null;
commit;

delete from ok_award where award_info='���������������';
commit;

-- �������� ������ ��� ��� ������ ��� ������ 1917
delete from ok_award where award_date<1917
or award_date is null;
commit;

-- �������� ������� "���"
delete from ok_award where award_info='���';
commit;

delete from ok_award where award_info='���';
commit;
