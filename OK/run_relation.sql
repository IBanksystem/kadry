-- ���� ������� �������� �� ����� �� ������ �������� 860
update ok_relation 
set COD_STR_birth='860'
where COD_OBL_birth is not null
and COD_STR_birth is null;
commit;

-- ���� ������� ���������� �� ����� �� ������ ���������� 860
update ok_relation 
set COD_STR_LIVE='860'
where COD_OBL_LIVE is not null
and COD_STR_LIVE is null;
commit;

-- ���� ������ ���������� 860 �� ���������� ������� ����������  � ���������� ����� ����������  ������ �����
update ok_relation 
set COD_OBL_live_PRIM=null,COD_CITY_PRIM=null,COD_STR_LIVE_Prim=null
where COD_STR_LIVE='860';
commit;

-- ���� ������ �������� 860 �� ���������� ������� �������� � ���������� ����� �������� ������ �����
update ok_relation 
set COD_OBL_birth_PRIM=null,COD_CITY_birth_PRIM=null,COD_STR_birth_prim=null
where COD_STR_birth='860';
commit;
