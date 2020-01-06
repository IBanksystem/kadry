for rec_ok in (select okp.* from ok_personal okp, ss_ok_post sop, ss_ok_post_group sopg
where okp.branch=info.getbranch
and okp.STATUS_CODE in (2,5) 
and okp.post_code=sop.post_code
and sop.post_group_code=sopg.post_group_code
and sop.post_group_code=1)
loop 

--����� ���������� ������������ ����������� ������
    if rec.LIVE_PLACE is null
    then
      err('������ ��� ���������� ����,����� ������:���.�����='||rec.TABNO||' �� ������� ����� ���������� ������������ ����������� ������');
    end if;
-- ����� -  LIVE_PLACE
 
    if rec.BIRTHPLACE is null
    then
      err('������ ��� ���������� ����,����� ������:���.�����='||rec.TABNO||' �� ������� ����� �������� ������������ ����������� ������');
    end if;

-- ��������������

    if rec.NATIONALITY_CODE is null
    then
      err('������ ��� ���������� ����,����� ������:���.�����='||rec.TABNO||' �� ������� ��������������');
    end if;

-- �������� � ������
  for rec_okpe in (select * from ok_period where branch=rec_ok.branch and personal_code=rec_ok.personal_code
     and OUT_OFFICE_DATE is null)
  loop
    if rec_okpe.BASIS_NUM is null
    then
      err('������ ��� ���������� ����,����� ������,�������� � ������:���.�����='||rec.TABNO||' �� ������� ����� �������');
    end if;
    if rec_okpe.BASIS_DATE is null
    then
      err('������ ��� ���������� ����,����� ������,�������� � ������:���.�����='||rec.TABNO||' �� ������� ���� �������');
    end if;
  end loop;



-- �������
  for rec_okaw in (select * from ok_award where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
  loop
    if rec_okaw.Award_info is null
    then
      err('������ ��� ���������� ����,����� ������,�������:���.�����='||rec.TABNO||' �� ������� �������� � �������');
    end if;
    if rec_okaw.Award_date is null
    then
      err('������ ��� ���������� ����,����� ������,�������:���.�����='||rec.TABNO||' �� ������� ��� �����������');
    end if;
  end loop;



-- ��������
  for rec_okel in (select * from ok_election where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
  loop
    if rec_okel.election_CODE is null
    then
      err('������ ��� ���������� ����,����� ������,��������:���.�����='||rec.TABNO||' �� ������� �������� �� ��������');
    end if;
    if rec_okel.election_date_begin is null
    then
      err('������ ��� ���������� ����,����� ������,��������:���.�����='||rec.TABNO||' �� ������� ��� ��������');
    end if;



  end loop;
  
-- ������������
  for rec_okri in (select * from ok_rise where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
  loop
    if rec_okri.rise_date_year is null
    then
      err('������ ��� ���������� ����,����� ������,������������:���.�����='||rec.TABNO||' �� ������ ��� ������������');
    end if;
    if rec_okri.rise_date_mm is null
    then
      err('������ ��� ���������� ����,����� ������,������������:���.�����='||rec.TABNO||' �� ������ ����� ������������');
    end if;
    if rec_okri.rise_date_dd is null
    then
      err('������ ��� ���������� ����,����� ������,������������:���.�����='||rec.TABNO||' �� ������ ���� ������������');
    end if;
  loop;
  
-- ������������ 09_002
  for rec_okrel in (select * from ok_relation where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
  loop
    if rec_okrel.relation_birthplace is null
    then
      err('������ ��� ���������� ����,����� ������,������������:���.�����='||rec.TABNO||' �� ������� ����� �������� ������������');
    end if;
    if rec_okrel.relation_home_address is null
    then
      err('������ ��� ���������� ����,����� ������,������������:���.�����='||rec.TABNO||' �� ������� ����� ���������� ������������');
    end if;
    if rec_okrel.relation_office is null
    then
      err('������ ��� ���������� ����,����� ������,������������:���.�����='||rec.TABNO||' �� ������� ����� ������ ������������ �������� �� ��������');
    end if;
    if rec_okrel.relation_post is null
    then
      err('������ ��� ���������� ����,����� ������,������������:���.�����='||rec.TABNO||' �� ������� ��������� ������������ �������� ��� ���������');
    end if;
    
  end loop;

end loop;


