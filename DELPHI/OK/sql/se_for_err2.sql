--��� ������: 05051  �� ������������ � ����������� <������������������� ��������� ��������>
select  client.id_client
       ,elrep_interopers.opercode
 from  elrep_interopers,
       S_VEOPER,
       client
 where elrep_interopers.opercode=S_VEOPER.KOD_O (+)
   and S_VEOPER.KOD_O is null
   and elrep_interopers.rezclient = client.id_client;

---- ��� ������: 05018 �� ������������ � ����������� <������ � ����������>
-- ��� ������ ��������
select OK_PERSONAL.Nps_Id,
       OK_PERSONAL.COD_STR_BIRTH
 from  OK_PERSONAL,
       s_str 
 where OK_PERSONAL.COD_STR_BIRTH=s_str.code_str (+)
   and OK_PERSONAL.STATUS_CODE in (2,5)
   and s_str.code_str is null;
-- ��� ������ �����������
select OK_PERSONAL.Nps_Id,
       OK_PERSONAL.COD_STR_BIRTH
 from  OK_PERSONAL,
       s_str 
 where OK_PERSONAL.COD_STR_SITIZENT=s_str.code_str (+)
   and OK_PERSONAL.STATUS_CODE in (2,5)
   and s_str.code_str is null;
-- ��� ������ ����������
select OK_PERSONAL.Nps_Id,
       OK_PERSONAL.COD_STR_BIRTH
 from  OK_PERSONAL,
       s_str 
 where OK_PERSONAL.COD_STR_LIVE=s_str.code_str (+)
   and OK_PERSONAL.STATUS_CODE in (2,5)
   and s_str.code_str is null;

-- ��� ������: 05075 () �� ������������ � ����������� <������ �������>
select OK_PERSONAL.Nps_Id,
       SS_OK_NCI.OK_ID
 from  OK_PERSONAL,
       OK_DEGREE,
       (select * from SS_OK_NCI where SS_OK_NCI.NCI_ID=75) SS_OK_NCI
 where OK_PERSONAL.PERSONAL_CODE=OK_DEGREE.PERSONAL_CODE
   and OK_PERSONAL.STATUS_CODE in (2,5)
   and OK_DEGREE.DEGREE_CODE=SS_OK_NCI.Ok_Id (+)
   and SS_OK_NCI.Ok_Id is null;

-- ��� ������: 05076 () �� ������������ � ����������� <������ ������> 
select OK_PERSONAL.Nps_Id,
       SS_OK_NCI.OK_ID
 from  OK_PERSONAL,
       OK_ACADEMIC,
       (select * from SS_OK_NCI where SS_OK_NCI.NCI_ID=76) SS_OK_NCI
 where OK_PERSONAL.PERSONAL_CODE=OK_ACADEMIC.PERSONAL_CODE
   and OK_PERSONAL.STATUS_CODE in (2,5)
   and OK_ACADEMIC.ACADEMIC_CODE=SS_OK_NCI.Ok_Id (+)
   and SS_OK_NCI.Ok_Id is null;

---- ��� ������: 05016 (860) �� ������������ � ����������� <������� ���������� ����������>
--����� �������� �������
select OK_PERSONAL.Nps_Id,
       s_region.region_id
 from  OK_PERSONAL,
       s_region 
 where OK_PERSONAL.REGION_ID=s_region.region_id (+)
   and OK_PERSONAL.STATUS_CODE in (2,5)
   and s_region.region_id is null;
--��� ������� ����������
select OK_PERSONAL.Nps_Id,
       s_region.region_id
 from  OK_PERSONAL,
       s_region 
 where OK_PERSONAL.COD_OBL_LIVE=s_region.region_id (+)
   and OK_PERSONAL.STATUS_CODE in (2,5)
   and s_region.region_id is null;
