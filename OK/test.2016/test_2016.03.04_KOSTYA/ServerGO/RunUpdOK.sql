spool c:\err.txt

-- ������� ���������� � ���� ��� � ����� �������� ���� ������ �������� 860 ���
update ok_personal
set cod_obl_prim=null,cod_place_birth_prim=null
where cod_str_birth='860' and (cod_obl_prim is not null or cod_place_birth_prim is not null);
commit;

-- ������� ���������� � ���� ��� � ����� ���������� ���� ������ ���������� 860 ���
update ok_personal
set cod_obl_live_prim=null,cod_distr_live_prim=null
where cod_str_live='860' and (cod_obl_live_prim is not null or cod_distr_live_prim is not null);
commit;

update ok_personal
set cod_distr_prim=null -- ���������� ��� ���
where cod_distr_uvd is not null;
commit;




-- ���� ������� ���������� �� ����� �� ������ ���������� 860
update ok_relation 
set COD_STR_LIVE='860'
where COD_OBL_LIVE is not null
and COD_STR_LIVE is null;
commit;

update ok_relation
set COD_STR_LIVE_Prim=null,
COD_OBL_live_PRIM=null,
COD_CITY_PRIM=null
where COD_STR_LIVE='860';
commit;



-- ���� ������� �������� �� ����� �� ������ �������� 860
update ok_relation 
set COD_STR_birth='860'
where COD_OBL_birth is not null
and COD_STR_birth is null;
commit;

update ok_relation
set COD_STR_birth_prim=null,COD_OBL_birth_PRIM=null,COD_CITY_birth_PRIM=null
where COD_STR_birth='860' and (COD_STR_birth_prim is not null or COD_OBL_birth_PRIM is not null or COD_CITY_birth_PRIM is not null);
commit;


-- ���� ������ ���������� 860 �� ���������� ������� ����������  � ���������� ����� ����������  ������ �����
update ok_relation 
set COD_OBL_live_PRIM=null,COD_CITY_PRIM=null,COD_STR_LIVE_Prim=null
where COD_STR_LIVE='860' and (COD_OBL_live_PRIM is not null or COD_CITY_PRIM is not null or COD_STR_LIVE_Prim is not null) ;
commit;

-- ���� ������ �������� 860 �� ���������� ������� �������� � ���������� ����� �������� ������ �����
update ok_relation 
set COD_OBL_birth_PRIM=null,COD_CITY_birth_PRIM=null,COD_STR_birth_prim=null
where COD_STR_birth='860' and (COD_OBL_birth_PRIM is not null or COD_CITY_birth_PRIM is not null or COD_STR_birth_prim is not null);
commit;






update ok_education set
end_date_dd=to_char(diplom_date,'dd')
where diplom_date is not null and end_date_dd is null;
commit;
update ok_education set
end_date_mm=to_char(diplom_date,'mm')
where diplom_date is not null and end_date_mm is null;
commit;
update ok_education set
end_date=to_char(diplom_date,'yyyy')
where diplom_date is not null and end_date is null;
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


-- ����������  ��� �����=�����
-- ��� ����� "����� ��������" � � ��� ����� �� ����� � ���� ��������� ������� �� �����(��� ����� ������� ������)

update ok_period set COD_BANK =null 
where type_period_code=1
and COD_BANK is not null
and out_office_date is not null;
commit;

-- ���������� "���� ��������" � ��� �����=�����
-- ��� ����� "�� ������" � ��� �����=��� � ���� ��������� ������� �� �����(��� ����� ������� ������)

update ok_period set type_period_code=2,COD_BANK =null 
where type_period_code=3
and COD_BANK in (select  branch from sets)
and out_office_date is not null;
commit;


-- ����������  ��� �����=�����
-- ��� ����� "���� ��������" � � ��� ����� �� ����� � ���� ��������� ������� �� �����(��� ����� ������� ������)

update ok_period set COD_BANK =null 
where type_period_code=2
and COD_BANK is not null
and out_office_date is not null;
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

-- 04.03.2016 ���� ��� ��������� � ��� ������ � ��������� ������� ���� ������������ ���������� �� ���� ��������� � ��� ������������� � �������� 
-- ����� �������� � ���� ������������ �� �������� �� ��������
declare
  branch_ branch.bank_id%type;
begin
  select bank_id into branch_ from branch;

  for rec_ok in (select okp.* from ok_personal okp, SS_OK_NCI son 
  where okp.tabno=okp.tabno
   and okp.branch=branch_ and okp.STATUS_CODE in (2,5)
                    and okp.post_code=son.ok_id and son.NCI_ID=79)
  loop

        update OK_PERIOD set post_code=rec_ok.post_code, department_code=rec_ok.department_code
        where branch=rec_ok.BRANCH and PERSONAL_CODE=rec_ok.PERSONAL_CODE
        and (post_code<>rec_ok.post_code or department_code<>rec_ok.department_code)
        and out_office_date is null;

  end loop;
  
  
end;  
/

commit;

-- 1 -- ������ ���� ����� �������� �����
update ok_relation set RELATION_BIRTHPLACE=null;
commit;
-- 2 --  ����� �������� ��������� ����� ����������, ��� ��� � ���� ������� ��������  26 ������� ������� ����� � ����� �������� 197 ����� ������� �����
update ok_relation set COD_CITY_birth= cod_city
where COD_OBL_birth='26' and cod_obl_live='26' and COD_CITY_birth=197;
commit;
-- 3 -- �������� ��� ������� � ����� ����� �������� 197 ����� ������� ����� (������)
select * from  ok_relation where COD_CITY_birth=197;
commit;


spool off;  
