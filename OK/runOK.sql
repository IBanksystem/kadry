spool c:\err.txt
set line 1000

    delete from rep_temp
    where ses_id=userenv('sessionid');

declare
  cnt number;
  cnt_uchzav number;
  cnt_obraz number;
begin


  For Rec In (select * from OK_PERSONAL where OK_PERSONAL.STATUS_CODE IN (2,5))
  Loop
   if ok_service.CheckPc(rec.nps_id)<>Substr(rec.nps_id,14,1) then
     insert into rep_temp (name_1) values ('������ �� ������ ���������������� ����� ���.�����='||rec.TABNO);
   end if;
   if length(rec.nps_id)<>14 then
     insert into rep_temp (name_1) values ('������ ���������������� ����� ������ ���� 14 ������ ���.�����='||rec.TABNO);
   end if;
   if rec.gender_code=1 and substr(rec.nps_id,1,1) not in('1','3','5') then
     insert into rep_temp (name_1) values ('������ ��� �� ������������� ���� ���������� � ���������������� ������ ���.�����='||rec.TABNO);
   end if;
   if rec.gender_code=2 and substr(rec.nps_id,1,1) not in('2','4','6') then
     insert into rep_temp (name_1) values ('������ ��� �� ������������� ���� ���������� � ���������������� ������ ���.�����='||rec.TABNO);
   end if;
  End Loop;
 
  For Rec In (select ok_personal.TABNO,OK_PERSONAL.PASS_NUM from OK_PERSONAL where PASS_SERIYA is null and OK_PERSONAL.STATUS_CODE IN (2,5))
  Loop
     insert into rep_temp (name_1) values ('������ 05921 ��� ���������� ����, ����� ������: �� ������� ����� �������� ���.�����='||rec.TABNO);
  End Loop;

  For Rec In (select ok_personal.TABNO,OK_PERSONAL.COD_STR_BIRTH from OK_PERSONAL
    where (OK_PERSONAL.COD_STR_BIRTH is null or OK_PERSONAL.COD_STR_BIRTH not in (select code_str from s_str))
    and OK_PERSONAL.STATUS_CODE in (2,5) )
  Loop
     insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������: �� ������������ � ����������� <������ � ����������> ���.�����='||rec.TABNO||' ������ ����.='||rec.COD_STR_BIRTH);
  End Loop;

  For Rec In (select ok_personal.TABNO,OK_PERSONAL.COD_STR_SITIZENT from OK_PERSONAL
     where (OK_PERSONAL.COD_STR_SITIZENT is null or OK_PERSONAL.COD_STR_SITIZENT not in (select code_str from s_str))
     and OK_PERSONAL.STATUS_CODE in (2,5) )
  Loop
     insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������: �� ������������ � ����������� <������ � ����������> ���.�����='||rec.TABNO||' C����� �����.='||rec.COD_STR_SITIZENT);
  End Loop;

  For Rec In (select ok_personal.TABNO,OK_PERSONAL.COD_STR_LIVE from OK_PERSONAL
    where (OK_PERSONAL.COD_STR_LIVE is null or OK_PERSONAL.COD_STR_LIVE not in (select code_str from s_str))
    and OK_PERSONAL.STATUS_CODE in (2,5) )
  Loop
     insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������: �� ������������ � ����������� <������ � ����������> ���.�����='||rec.TABNO||' ������ ����������='||rec.COD_STR_LIVE);
  End Loop;

  For Rec In (select ok_personal.TABNO,SS_OK_NCI.OK_ID from OK_PERSONAL,OK_DEGREE,(select * from SS_OK_NCI where SS_OK_NCI.NCI_ID=75) SS_OK_NCI
              where OK_PERSONAL.PERSONAL_CODE=OK_DEGREE.PERSONAL_CODE and OK_DEGREE.DEGREE_CODE=SS_OK_NCI.Ok_Id(+) and OK_PERSONAL.STATUS_CODE in (2,5) and SS_OK_NCI.Ok_Id is null)
  Loop
     insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������: �� ������������ � ����������� <������ �������> ���.�����='||rec.TABNO||' ������ �������='||rec.OK_ID);
  End Loop;

  For Rec In (select ok_personal.TABNO,SS_OK_NCI.OK_ID from OK_PERSONAL,OK_ACADEMIC,(select * from SS_OK_NCI where SS_OK_NCI.NCI_ID=76) SS_OK_NCI
              where OK_PERSONAL.PERSONAL_CODE=OK_ACADEMIC.PERSONAL_CODE and OK_ACADEMIC.ACADEMIC_CODE=SS_OK_NCI.Ok_Id(+) and OK_PERSONAL.STATUS_CODE in (2,5) and SS_OK_NCI.Ok_Id is null)
  Loop
     insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������: �� ������������ � ����������� <������ ������> ���.�����='||rec.TABNO||' ������ ������='||rec.OK_ID);
  End Loop;

  For Rec In (select ok_personal.TABNO,region_id from OK_PERSONAL
     where (OK_PERSONAL.REGION_ID is null or OK_PERSONAL.REGION_ID not in (select region_id from s_region)) 
     and OK_PERSONAL.STATUS_CODE in (2,5) and OK_PERSONAL.cod_str_birth = '860' )
  Loop
     insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������: �� ������������ � ����������� <������� ���������� ����������> ���.�����='||rec.TABNO||' ����� ����.���.='||rec.region_id);
  End Loop;

  For Rec In (select ok_personal.TABNO,COD_OBL_LIVE from OK_PERSONAL
     where (OK_PERSONAL.COD_OBL_LIVE is null or OK_PERSONAL.COD_OBL_LIVE not in (select region_id from s_region))
     and OK_PERSONAL.STATUS_CODE in (2,5) and OK_PERSONAL.cod_str_live = '860' )
  Loop
     insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������: �� ������������ � ����������� <������� ���������� ����������> ���.�����='||rec.TABNO||' ������� ����������='||rec.COD_OBL_LIVE);
  End Loop;

  For Rec In (select ok_personal.TABNO,distr from OK_PERSONAL 
     where (OK_PERSONAL.distr is null or OK_PERSONAL.distr not in (select distr from s_distr))
     and OK_PERSONAL.STATUS_CODE in (2,5) and OK_PERSONAL.cod_str_birth = '860' )
  Loop
     insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������: �� ������������ � ����������� <������ ���������� ����������> ���.�����='||rec.TABNO||' ����� ����.�����.='||rec.distr);
  End Loop;

  For Rec In (select ok_personal.TABNO,COD_DISTR_LIVE from OK_PERSONAL
     where (OK_PERSONAL.COD_DISTR_LIVE is null or OK_PERSONAL.COD_DISTR_LIVE not in (select distr from s_distr))
     and OK_PERSONAL.STATUS_CODE in (2,5) and OK_PERSONAL.cod_str_live = '860' )
  Loop
     insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������: �� ������������ � ����������� <������ ���������� ����������> ���.�����='||rec.TABNO||' ����� ����������='||rec.COD_DISTR_LIVE);
  End Loop;

  For Rec In (select ok_personal.TABNO,OK_PERSONAL.EDUCATION_TITLE_CODE from OK_PERSONAL where nvl(OK_PERSONAL.EDUCATION_TITLE_CODE,0)=0 and OK_PERSONAL.STATUS_CODE IN (2, 5)
               union all
              select ok_personal.TABNO,OK_PERSONAL.EDUCATION_TITLE_CODE from OK_PERSONAL,(select * from SS_OK_NCI where SS_OK_NCI.NCI_ID=74) ok74 where OK_PERSONAL.EDUCATION_TITLE_CODE is not null
                 and OK_PERSONAL.STATUS_CODE IN (2, 5) and OK_PERSONAL.EDUCATION_TITLE_CODE  = ok74.OK_ID (+) and ok74.OK_ID is null)
  Loop
     insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������: �� ������������ � ����������� <������������ �����������> ���.�����='||rec.TABNO||' �����������='||rec.EDUCATION_TITLE_CODE);
  End Loop;

  For Rec In (select ok_personal.TABNO,OK_PERSONAL.Nps_Id from OK_PERSONAL where OK_PERSONAL.STATUS_CODE IN (2,5) and (OK_PERSONAL.Nps_Id is null or OK_PERSONAL.Nps_Id=0 or length(nvl(OK_PERSONAL.Nps_Id,'0'))<14))
  Loop
     insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������: ������ � ����� ������ ����������� ����� ���.�����='||rec.TABNO||' ���������� ����='||rec.Nps_Id);
  End Loop;

  For Rec In (select ok_personal.TABNO,OK_PERSONAL.PASS_NUM from OK_PERSONAL where length(nvl(OK_PERSONAL.PASS_NUM,'0'))<>7 and OK_PERSONAL.STATUS_CODE IN (2,5))
  Loop
     insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������: ������ � ����� ������ �������� ���.�����='||rec.TABNO||' ����� ��������='||rec.PASS_NUM);
  End Loop;

  For Rec In (select ok_personal.Nps_Id, count(*) cnt from OK_PERSONAL where OK_PERSONAL.STATUS_CODE IN (2,5) group by OK_PERSONAL.Nps_Id having count(*)>1)
  Loop
     insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������: ������ � ������������ ����������� ������  ���������� ����='||rec.Nps_Id||' ���������� � ���-��= '||Rec.cnt);
  End Loop;

  select count(*) Into cnt FROM OK_PERSONAL, (select * from SS_OK_NCI where NCI_ID=79) BOSS where OK_PERSONAL.STATUS_CODE IN (2, 5) and OK_PERSONAL.POST_CODE=BOSS.OK_ID ;
  if cnt = 0 then
     insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������: ����������� ���������� � <����������� �������>');
  end if;

  for rec_ok in (select okp.* from ok_personal okp, SS_OK_NCI son 
  where okp.tabno=okp.tabno --in (313) -- ��� ������ 1,2,3
   and okp.branch=okp.branch and okp.STATUS_CODE in (2,5)
                    and okp.post_code=son.ok_id and son.NCI_ID=79)
  loop

	select count(*) into cnt from ok_period where branch=rec_ok.branch and personal_code=rec_ok.personal_code
	and post_code=rec_ok.post_code;
        if (cnt<1)
        then
          insert into rep_temp (name_1) values ('������ 241 ��� ���������� ����,����� ������:���.�����='||rec_ok.TABNO||' ����������� �������� � ������ � ���������');
        end if;  


      if (rec_ok.FAMILY is null) or (rec_ok.FIRST_NAME is null)
      then
        insert into rep_temp (name_1) values ('������ 05918 ��� ���������� ����,����� ������:���.�����='||rec_ok.TABNO||' ������� � ��� ������ ����������� �������');
      end if;

      if (rec_ok.birthday is null) 
      then
        insert into rep_temp (name_1) values ('������ 05919 ��� ���������� ����,����� ������:���.�����='||rec_ok.TABNO||' ���� �������� ������ ���� ����������� �������');
      else  
         cnt := round(months_between(sysdate,rec_ok.birthday)/12);
        if (cnt<16)
        or (cnt>90)
        then
          insert into rep_temp (name_1) values ('������ 05919 ��� ���������� ����,����� ������:���.�����='||rec_ok.TABNO||' ���� �������� �� �����');
        end if;  
      end if;

      if (rec_ok.PASS_DATE is null) 
      then
        insert into rep_temp (name_1) values ('������ 05923 ��� ���������� ����,����� ������:���.�����='||rec_ok.TABNO||' ���� ������ �������� ������ ���� ����������� �������');
      else  
         cnt := round(months_between(rec_ok.PASS_DATE,rec_ok.birthday)/12);
        if (cnt<16)
        then
          insert into rep_temp (name_1) values ('������ 05923 ��� ���������� ����,����� ������:���.�����='||rec_ok.TABNO||' ���� ������ �������� �� �����');
        end if;  
      end if;

      if (rec_ok.COD_STR_SITIZENT ='860') 
      then
        select count(DISTR) into cnt from s_distr where DISTR= rec_ok.cod_distr_uvd;
        if (cnt=0) or (cnt is null) or (rec_ok.cod_distr_uvd is null)
        then
          insert into rep_temp (name_1) values ('������ 05052 ��� ���������� ����, ����� ������: �� ������ ��� ������, ��� �������� ��� ����� ������� ���.�����='||rec_ok.TABNO||' ���.='||rec_ok.cod_distr_uvd);
        end if;  
      else
        if rec_ok.COD_DISTR_PRIM is null
        then
          insert into rep_temp (name_1) values ('������ 05924 ��� ���������� ����, ����� ������: �� ������� ���������� � ���� ������, ��� �������� ��� ����� ������� ���.�����='||rec_ok.TABNO||' C����� �����.='||rec_ok.COD_STR_SITIZENT);
        end if;     
      end if;
      
      if (rec_ok.cod_str_birth <>'860') or (rec_ok.cod_str_birth is null)
      then
        if (rec_ok.COD_OBL_PRIM is null)
        then
          insert into rep_temp (name_1) values ('������ 05925 ��� ���������� ����, ����� ������: �� ������� ���������� � <����� �������� �������> ���.�����='||rec_ok.TABNO||' ����� ����.������.='||rec_ok.cod_str_birth);
        end if;
        if (rec_ok.COD_PLACE_BIRTH_PRIM is null)
        then
          insert into rep_temp (name_1) values ('������ 05926 ��� ���������� ����, ����� ������: �� ������� ���������� � <����� �������� �����> ���.�����='||rec_ok.TABNO||' ����� ����.������.='||rec_ok.cod_str_birth);
        end if;
      else
        if (rec_ok.REGION_ID is null)
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������: �� ������� <����� �������� �������> ���.�����='||rec_ok.TABNO||' ����� ����.������.='||rec_ok.cod_str_birth);
        end if;
        if (rec_ok.DISTR is null)
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������: �� ������� <����� �������� �����> ���.�����='||rec_ok.TABNO||' ����� ����.������.='||rec_ok.cod_str_birth);
        end if;
      end if;

      if (rec_ok.COD_STR_LIVE <>'860') or (rec_ok.COD_STR_LIVE is null)
      then
        if (rec_ok.COD_OBL_LIVE_PRIM is null)
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������: �� ������� ���������� � <����� ���������� �������> ���.�����='||rec_ok.TABNO||' ������ ����������='||rec_ok.COD_STR_LIVE);
        end if;
        if (rec_ok.COD_DISTR_LIVE_PRIM is null)
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������: �� ������� ���������� � <����� ���������� �����> ���.�����='||rec_ok.TABNO||' ������ ����������='||rec_ok.COD_STR_LIVE);
        end if;
      else
        if (rec_ok.COD_OBL_LIVE is null)
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������: �� ������� <����� ���������� �������> ���.�����='||rec_ok.TABNO||' ������ ����������='||rec_ok.COD_STR_LIVE);
        end if;
        if (rec_ok.COD_DISTR_LIVE is null)
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������: �� ������� <����� ���������� �����> ���.�����='||rec_ok.TABNO||' ������ ����������='||rec_ok.COD_STR_LIVE);
        end if;
      end if;
      
      if rec_ok.CHECK_KFS is null
      then
          insert into rep_temp (name_1) values ('������ 05930 ��� ���������� ����, ����� ������: �� ������� <������� � �������������� � ������� ����������� ������> ���.�����='||rec_ok.TABNO);
      end if;
      
      if rec_ok.BANK_SPEC is null
      then
          insert into rep_temp (name_1) values ('������ 05931 ��� ���������� ����, ����� ������: �� ������� <������� � ������� ���������� �������������> ���.�����='||rec_ok.TABNO);
      end if;
      
      
      if (rec_ok.EDUCATION_TITLE_CODE is not null)
      then
        -- ���� �� 1,2,3 �� ������ ���� ����� ��� ������ "������ ���" � ������� "������� ���" 
        select to_number(s_id) into cnt from ss_ok_nci
        where nci_id=74 and ok_id= rec_ok.EDUCATION_TITLE_CODE and rownum<2;
        if (cnt<>3) and (cnt<>4) and (cnt<>5)
        then
          for rec_d2 in (select * from ok_degree where personal_code=rec_ok.personal_code)
          loop 
            select to_number(s_id) into cnt from ss_ok_nci
            where nci_id=75 and ok_id= rec_d2.DEGREE_CODE and rownum<2;
            if cnt<>1
            then
              insert into rep_temp (name_1) values ('������  ��� ���������� ����,����� ������, ������ ������� ������ ���� ������� ��� :���.�����='||rec_ok.TABNO);
            end if; 
          end loop;
          for rec_a2 in (select * from ok_academic where personal_code=rec_ok.personal_code)
          loop
            select to_number(s_id) into cnt from ss_ok_nci
            where nci_id=76 and ok_id= rec_a2.academic_CODE and rownum<2;
            if cnt<>1
            then
              insert into rep_temp (name_1) values ('������  ��� ���������� ����,����� ������, ������ ������ ������ ���� ������ ��� :���.�����='||rec_ok.TABNO);
            end if; 
          end loop;  
        end if;
      
      end if;      
      
--01	������ ����
--02	���    ���
--03	�����  ����
--04	�����  ����
--05	�����  ��.����
--06	�����  ��.����
--07	�����     ��.������
--08	�������   ��.������
--09	����      ���
--10	����      ����
--11	���������   �����, �����
--12	���������   ����, ��������
  -- ������������ 09_002
    for rec_okrel in (select * from ok_relation where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
     if (rec_okrel.RELATION_DEATHDAY is null)
     then
      if rec_okrel.relation_birthplace is null
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������������:���.�����='||rec_ok.TABNO||' �� ������� ����� �������� ������������');
      end if;
      if rec_okrel.relation_home_address is null
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������������:���.�����='||rec_ok.TABNO||' �� ������� ����� ���������� ������������');
      end if;
      if rec_okrel.relation_office is null
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������������:���.�����='||rec_ok.TABNO||' �� ������� ����� ������ ������������ �������� �� ��������');
      end if;
      if rec_okrel.relation_post is null
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������������:���.�����='||rec_ok.TABNO||' �� ������� ��������� ������������ �������� ��� ���������');
      end if;
      --
      if (rec_okrel.RELATION_FAMILY is null) or (rec_okrel.RELATION_NAME is null)
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������������:���.�����='||rec_ok.TABNO||' ������� ������� � ���');
      end if;
      --
      begin
        select ok_id into cnt from ss_ok_nci
        where nci_id=81 and s_id='02' and rownum<2; -- ���   
      exception when others then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������������:���������� ������������ �� �������� ���.�����='||rec_ok.TABNO);
      end;  
      if (rec_ok.gender_code=1) and (rec_okrel.relation_code=cnt)
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������������:���.�����='||rec_ok.TABNO||' ��� �������- ����������� �� ����� ���� ���');
      end if;
      
      begin
        select ok_id into cnt from ss_ok_nci
        where nci_id=81 and s_id='01' and rownum<2; -- ����    
      exception when others then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������������:���������� ������������ �� �������� ���.�����='||rec_ok.TABNO);
      end;  
      if (rec_ok.gender_code=2) and (rec_okrel.relation_code=cnt)
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������������:���.�����='||rec_ok.TABNO||' ��� ������� -����������� �� ����� ���� ����');
      end if;
      
      --rec_okrel.relation_birthday ��� ����.
      if (rec_okrel.relation_birthday is null) 
--      or (rec_okrel.dd is null) ����
--      or (rec_okrel.mm is null) � ����� �� �����������?
      then
        insert into rep_temp (name_1) values ('������ 05919 ��� ���������� ����,����� ������,������������:���.�����='||rec_ok.TABNO||' ��� �������� ������ ���� ����������� ������');
      else  
         -- if ( (to_number(to_char(sysdate,'yyyy')))-(rec_okrel.relation_birthday )<16)
          if ( (to_number(to_char(sysdate,'yyyy')))-(rec_okrel.relation_birthday )>120)
          then
            insert into rep_temp (name_1) values ('������ 05919 ��� ���������� ����,����� ������,������������:���.�����='||rec_ok.TABNO||' �� ���������� ��� �������� '||to_number(rec_okrel.relation_birthday));
          end if;
      end if;

      begin
        select s_id into cnt from ss_ok_nci
        where nci_id=81 and ok_id=rec_okrel.relation_code and rownum<2; -- ����    
      exception when others then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������������(279):���������� ������������ �� �������� ���.�����='||rec_ok.TABNO);
      end;  

      if cnt in ('03','04') -- ������ � ��������� ��� �� ������ ���� ������ ����������
      then
          if ( (to_number(to_char(rec_ok.birthday,'yyyy')))-(rec_okrel.relation_birthday )<0)
          then
            insert into rep_temp (name_1) values ('������ 05933 ��� ���������� ����,����� ������,������������(286):���.�����='||rec_ok.TABNO||' ������ � ��������� ��� �� ������ ���� ������ ����������. �� ���������� ��� �������� '||to_number(rec_okrel.relation_birthday));
          end if;
      end if;
      
      if cnt in ('09','10') -- ������ � ����� ��� �� ������ ���� ������ ����������
      then
          if ( (to_number(to_char(rec_ok.birthday,'yyyy')))-(rec_okrel.relation_birthday )>0)
          then
            insert into rep_temp (name_1) values ('������ 05933 ��� ���������� ����,����� ������,������������(286):���.�����='||rec_ok.TABNO||' ������ � ����� ��� �� ������ ���� ������ ����������. �� ���������� ��� �������� '||to_number(rec_okrel.relation_birthday));
          end if;
      end if;

      if (rec_okrel.COD_STR_LIVE <>'860') or (rec_okrel.COD_STR_LIVE is null)
      then
        if (rec_okrel.COD_OBL_LIVE_PRIM is null)
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������,������������: �� ������� ���������� � <����� ���������� �������> ���.�����='||rec_ok.TABNO||' ������ ����������='||rec_okrel.COD_STR_LIVE);
        end if;
        if (rec_okrel.COD_CITY_PRIM is null)
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������,������������: �� ������� ���������� � <����� ���������� �����> ���.�����='||rec_ok.TABNO||' ������ ����������='||rec_okrel.COD_STR_LIVE);
        end if;
      else
        if (rec_okrel.COD_OBL_LIVE is null)
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������,������������: �� ������� <����� ���������� �������> ���.�����='||rec_ok.TABNO||' ������ ����������='||rec_okrel.COD_STR_LIVE);
        end if;
        if (rec_okrel.COD_CITY is null)
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������,������������: �� ������� <����� ���������� �����> ���.�����='||rec_ok.TABNO||' ������ ����������='||rec_okrel.COD_STR_LIVE);
        end if;
      end if;

      if (rec_okrel.COD_STR_BIRTH <>'860') or (rec_okrel.COD_STR_BIRTH is null)
      then
        if (rec_okrel.COD_OBL_BIRTH_PRIM is null)
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������,������������: �� ������� ���������� � <����� �������� �������> ���.�����='||rec_ok.TABNO||' ������ ��������='||rec_okrel.COD_STR_BIRTH);
        end if;
        if (rec_okrel.COD_CITY_BIRTH_PRIM is null)
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������,������������: �� ������� ���������� � <����� �������� �����> ���.�����='||rec_ok.TABNO||' ������ ��������='||rec_okrel.COD_STR_BIRTH);
        end if;
      else
        if (rec_okrel.COD_OBL_BIRTH is null)
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������,������������: �� ������� <����� �������� �������> ���.�����='||rec_ok.TABNO||' ������ ��������='||rec_okrel.COD_STR_BIRTH);
        end if;
        if (rec_okrel.COD_CITY_BIRTH is null)
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����, ����� ������,������������: �� ������� <����� �������� �����> ���.�����='||rec_ok.TABNO||' ������ ��������='||rec_okrel.COD_STR_BIRTH);
        end if;
      end if;
     end if;
 
      if (rec_okrel.RELATION_DEATHDAY is not null)
      then
          if  (to_number(to_char(sysdate,'yyyy')))<(rec_okrel.RELATION_DEATHDAY )
          then
            insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������������(344):���.�����='||rec_ok.TABNO||' ��������� ������ � ������ ������������ '||to_number(rec_okrel.RELATION_DEATHDAY));
          end if;
          if  (rec_okrel.RELATION_BIRTHDAY)>(rec_okrel.RELATION_DEATHDAY )
          then
            insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������������(348):���.�����='||rec_ok.TABNO||' ��������� ������ � �������� � ������ ������������ '||to_number(rec_okrel.RELATION_DEATHDAY));
          end if;
      else
          if (rec_okrel.mm_death is not null) or (rec_okrel.dd_death is not null)
          then
            insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������������(344):���.�����='||rec_ok.TABNO||' ��������� ����,�����- ������ � ������ ������������ ');
          end if;
      end if;

    end loop;

    for rec_okper in (select * from ok_period where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if (rec_okper.in_office_date is null) or (rec_okper.in_office_date<rec_ok.birthday)
      then 
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������� � ������-������ ��������:���.�����='||rec_ok.TABNO||' ������� ���� ������ ������ � ��������� '||to_char(rec_okper.in_office_date));
      else
        cnt := round(months_between(rec_okper.in_office_date,rec_ok.birthday)/12);
        if cnt<15
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������� � ������-������ ��������:���.�����='||rec_ok.TABNO||' ������� ���� ������ ������ � ��������� � ���� �������� ���������� �� ������ ���� ������ 15 ��� '||to_char(rec_okper.in_office_date));
        end if;
      end if;

      if (rec_okper.out_office_date is not null)
      then 
        if (rec_okper.out_office_date<rec_okper.in_office_date)
        or (rec_okper.out_office_date>sysdate)
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������� � ������-������ ��������:���.�����='||rec_ok.TABNO||' ������� ���� ��������� ������ � ��������� '||to_char(rec_okper.out_office_date));
        end if;
      end if;
      
      if (rec_okper.type_period_code is null)
      then 
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������� � ������-������ ��������:���.�����='||rec_ok.TABNO||' ������� ��� ����� � ������ ���� ������ ������ � ��������� '||to_char(rec_okper.in_office_date));
      end if;

      if (rec_okper.doljn_id is not null)
      then
        select count(dolj_id) into cnt from s_doljn where DOLJ_ID=rec_okper.doljn_id;
        if cnt=0
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������� � ������-������ ��������:���.�����='||rec_ok.TABNO||' �������� ��� ��������� ��� �� � ������ ���� ������ ������ � ��������� '||to_char(rec_okper.in_office_date));
        end if;     
      end if;
      
      if (rec_okper.established_post is null)
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������� � ������-������ ��������:���.�����='||rec_ok.TABNO||' ������� ��������� � ������ ���� ������ ������ � ��������� '||to_char(rec_okper.in_office_date));
      end if;
      
      if (rec_okper.cod_bank is not null)
      then
        select count(bank_id) into cnt from s_mfo where BANK_ID=rec_okper.cod_bank;
        if cnt=0
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������� � ������-������ ��������:���.�����='||rec_ok.TABNO||' �������� ��� ����� ��� �� � ������ ���� ������ ������ � ��������� '||to_char(rec_okper.in_office_date));
        end if;     
      end if;
      
      if (rec_okper.basis_date is null)
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������� � ������-������ ��������:���.�����='||rec_ok.TABNO||' ������� ���� ������� � ������ ���� ������ ������ � ��������� '||to_char(rec_okper.in_office_date));
      else
        if (rec_okper.basis_date> rec_okper.in_office_date)
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������� � ������-������ ��������:���.�����='||rec_ok.TABNO||' ���� ������� ������ ���� ������ ������ � ��������� '||to_char(rec_okper.in_office_date));
        end if;
      end if;

      if (rec_okper.out_office_date is not null)
      then
        if (rec_okper.date_pr_off is null)
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������� � ������-������ ��������:���.�����='||rec_ok.TABNO||' ������� ���� ������� ��������� ����������� ������ � ��������� � ������ ���� ���������� ������ '||to_char(rec_okper.out_office_date));
        else
          if (rec_okper.date_pr_off> rec_okper.out_office_date)
          then
            insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������� � ������-������ ��������:���.�����='||rec_ok.TABNO||' ���� ������� ��������� ����������� ������ � ��������� ������ ���� ���������� ������ '||to_char(rec_okper.out_office_date));
          end if;
        end if;
        if (rec_okper.cod_pr_off is null)
        then
          if (rec_okper.PR_OFF is null)
          then
            insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������� � ������-������ ��������:���.�����='||rec_ok.TABNO||' ������� ������� ����������� ������ � ��������� � ������ ���� ���������� ������ '||to_char(rec_okper.out_office_date));
          end if; 
        else
          select count(prich_id) into cnt from s_prich where prich_id=rec_okper.cod_pr_off;
          if cnt=0
          then
            insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������� � ������-������ ��������:���.�����='||rec_ok.TABNO||' ��� ������� ����������� ������ � ��������� �� ������������� ����������� � ������ ���� ���������� ������ '||to_char(rec_okper.out_office_date));
          end if; 
        end if;
      end if;

      if (rec_okper.date_utv_km is not null) and (rec_okper.numb_utv_km is null)
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������� � ������-������ ��������:���.�����='||rec_ok.TABNO||' ������� ����� ������������� �������� ��������� �� ����������� � ���������� ��������� � ������ ���� ���������� ������ '||to_char(rec_okper.out_office_date));
      end if;

      if (rec_okper.date_pr_kvl is not null) and (rec_okper.numb_pr_kvl is null)
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������� � ������-������ ��������:���.�����='||rec_ok.TABNO||' ������� ����� ��������� ���������������� �������� ������������ ����� � ������������ ��������� �� ������� ����������� � ������ ���� ���������� ������ '||to_char(rec_okper.out_office_date));
      end if;

      if (rec_okper.date_attest is not null) and (rec_okper.resh_attest is null)
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������� � ������-������ ��������:���.�����='||rec_ok.TABNO||' ������� ������� �������������� �������� � ������ ���� ���������� ������ '||to_char(rec_okper.out_office_date));
      end if;

    end loop;

      begin
        select s_id into cnt_obraz from ss_ok_nci where nci_id=74 
          and ok_id=rec_ok.EDUCATION_TITLE_CODE and rownum<2; 
      exception when others then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�����������:���������� ������������ �� �������� ���.�����='||rec_ok.TABNO);
      end;  

    for rec_oked in (select * from ok_education where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
    
      begin
        select s_id into cnt_uchzav from ss_ok_nci where nci_id=80
          and ok_id=rec_oked.INSTITUTION_CODE and rownum<2; 
      exception when others then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������� ���������:���������� ������������ �� �������� ���.�����='||rec_ok.TABNO||' ��� ��.��������� � ��='||rec_oked.INSTITUTION_CODE);
      end;  

      if (cnt_obraz in (1,6,7)) and (cnt_uchzav<>999)
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������� ���������:������� ������� �����������-������� ��� ������ ������� ��������� ��=('||nvl(cnt_uchzav,''*'')||') ��=('||rec_oked.INSTITUTION_CODE||') ���.�����='||rec_ok.TABNO);
      end if;
      
      if ((cnt_uchzav=202) or (cnt_uchzav=999)) and (rec_oked.COD_VUZ_PRIM is null)
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������� ���������:������� ���������� ��� �������� ���������  ���.�����='||rec_ok.TABNO);
      end if;
      
      if (rec_oked.begin_date is null) 
      and (((rec_oked.begin_date_mm is not null)) or (rec_oked.begin_date_dd is not null))
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������� ���������:���� �� ������ ��� �����������, ���� � ����� ����������� ������ �������. ���.�����='||rec_ok.TABNO);
      end if;
      
      if (rec_oked.end_date is null) 
      then
        if (rec_oked.CURS is null) 
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������� ���������:���� �� ������ ��� ���������, ������� ����. ���.�����='||rec_ok.TABNO);
        end if;
        if (((rec_oked.end_date_mm is not null)) or (rec_oked.end_date_dd is not null))
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������� ���������:���� �� ������ ��� ���������, ���� � ����� ��������� ������ �������. ���.�����='||rec_ok.TABNO);
        end if;
      else
        if to_date( '01.01.'||to_char(rec_oked.end_date),'dd.mm.yyyy')>rec_oked.Diplom_Date
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������� ���������:�������� ��� ������ �������. ���.�����='||rec_ok.TABNO);
        end if;
       BEGIN
        if (((rec_oked.end_date_mm is not null)) and (rec_oked.end_date_dd is not null))
        then
          if to_date( to_char(rec_oked.end_date_dd)||'.'||to_char(rec_oked.end_date_mm)||'.'||to_char(rec_oked.end_date),'dd.mm.yyyy')>rec_oked.Diplom_Date
          then
            insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������� ���������:�������� ���� ������ �������. ���.�����='||rec_ok.TABNO);
          end if;
        end if;
       EXCEPTION WHEN OTHERS THEN NULL;
       END;  
      end if;

      if (rec_oked.Diplom_Date is not null) and ( rec_oked.DIPLOM_NUM is null)
      then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������� ���������:���� ���� ���� ������ �������, �� ������� ����� �������. ���.�����='||rec_ok.TABNO);
      end if;

      if (rec_oked.begin_date is not null) 
      then
        if to_date( '01.01.'||to_char(rec_oked.begin_date),'dd.mm.yyyy')>sysdate
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������� ���������:�������� ��� �����������. ���.�����='||rec_ok.TABNO);
        end if;
      end if;
      
      if (rec_oked.begin_date is not null) 
      and (((rec_oked.begin_date_mm is not null)) and (rec_oked.begin_date_dd is not null))
      then
       BEGIN
        if to_date( to_char(rec_oked.begin_date_dd)||'.'||to_char(rec_oked.begin_date_mm)||'.'||to_char(rec_oked.begin_date),'dd.mm.yyyy')>sysdate
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������� ���������:�������� ���, ���� � ����� �����������. ���.�����='||rec_ok.TABNO);
        end if;
       EXCEPTION WHEN OTHERS THEN NULL;
       END;  
      end if;

      if (rec_oked.begin_date is null) 
      and (((rec_oked.begin_date_mm is not null)) or (rec_oked.begin_date_dd is not null))
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������� ���������:���� �� ������ ��� �����������, ���� � ����� ����������� ������ �������. ���.�����='||rec_ok.TABNO);
      end if;

      if (cnt_obraz in (3,4,5)) and (rec_oked.profession_personal is null)
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������� ���������:������� ������������� ���.�����='||rec_ok.TABNO);
      end if;

      if (rec_oked.nostra='1') and (rec_oked.nostra_number is null or rec_oked.nostra_date is null)
      then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������� ���������:���� ���� �������������, �� ������� ���� � �����. ���.�����='||rec_ok.TABNO);
      end if;

      if rec_oked.nostra_date > sysdate
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������� ���������:�������� ���� �������������. ���.�����='||rec_ok.TABNO);
      end if;
      
      if (rec_oked.nostra_date-rec_ok.birthday) < 20*365
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������� ���������:������� ���� ������������� � ���� �������� ���������� �� ������ ���� ������ 20 � ������ �������� ����������. ���.�����='||rec_ok.TABNO);
      end if;
      
    end loop; 
--#
--      if
--      then 
--        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������� � ������-������ ��������:���.�����='||rec_ok.TABNO||'  ');
--      end if;
      
  --����� ���������� ������������ ����������� ������
--      if rec_ok.LIVE_PLACE is null
--      then
--        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������:���.�����='||rec_ok.TABNO||' �� ������� ����� ���������� ������������ ����������� ������');
--      end if;
  -- ����� -  LIVE_PLACE
--      if rec_ok.BIRTHPLACE_POINT is null
--      then
--        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������:���.�����='||rec_ok.TABNO||' �� ������� ����� �������� ������������ ����������� ������');
--      end if;
  -- ��������������
      if rec_ok.NATIONALITY_CODE is null
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������:���.�����='||rec_ok.TABNO||' �� ������� ��������������');
      end if;
  -- �������� � ������
    for rec_okpe in (select * from ok_period where branch=rec_ok.branch and personal_code=rec_ok.personal_code
       and OUT_OFFICE_DATE is null)
    loop
      if rec_okpe.BASIS_NUM is null
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������� � ������:���.�����='||rec_ok.TABNO||' �� ������� ����� �������');
      end if;
      if rec_okpe.BASIS_DATE is null
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������� � ������:���.�����='||rec_ok.TABNO||' �� ������� ���� �������');
      end if;
    end loop;
  -- �������
    for rec_okaw in (select * from ok_award where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if rec_okaw.Award_info is null
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������:���.�����='||rec_ok.TABNO||' �� ������� �������� � �������');
      end if;
      if rec_okaw.Award_date is null
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������:���.�����='||rec_ok.TABNO||' �� ������� ��� �����������');
      end if;

     BEGIN 
      if (rec_okaw.Award_date_dd is not null)
      and (rec_okaw.Award_date_mm is not null)
      then
       BEGIN
        if to_date(to_char(rec_okaw.Award_date_dd)||'.'||to_char(rec_okaw.Award_date_mm)||'.'||to_char(rec_okaw.Award_date),'dd.mm.yyyy') >sysdate
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������:���.�����='||rec_ok.TABNO||' ������������ ��� �����������');
        end if;
        if to_date(to_char(rec_okaw.Award_date_dd)||'.'||to_char(rec_okaw.Award_date_mm)||'.'||to_char(rec_okaw.Award_date),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������:���.�����='||rec_ok.TABNO||' ������� ���� ����������� � ���� �������� ����������  ������ ���� ������ 18');
        end if;
       EXCEPTION WHEN OTHERS THEN NULL;
       END;  
 
      else
        if to_date('01.01.'||to_char(rec_okaw.Award_date),'dd.mm.yyyy') >sysdate
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������:���.�����='||rec_ok.TABNO||' ������������ ��� �����������');
        end if;
        if to_date('01.01.'||to_char(rec_okaw.Award_date),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,�������:���.�����='||rec_ok.TABNO||' ������� ���� ����������� � ���� �������� ����������  ������ ���� ������ 18');
        end if;
      end if;
     EXCEPTION WHEN OTHERS THEN NULL;
     END;  
    end loop;
  -- ��������
    for rec_okel in (select * from ok_election where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if rec_okel.election_CODE is null
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,��������:���.�����='||rec_ok.TABNO||' �� ������� �������� �� ��������');
      end if;
      if rec_okel.election_date_begin is null
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,��������:���.�����='||rec_ok.TABNO||' �� ������� ��� ��������');
      end if;
      
     BEGIN 
      if (rec_okel.election_date_begin_dd is not null)
      and (rec_okel.election_date_begin_mm is not null)
      then
       BEGIN
        if to_date(to_char(rec_okel.election_date_begin_dd)||'.'||to_char(rec_okel.election_date_begin_mm)||'.'||to_char(rec_okel.election_date_begin),'dd.mm.yyyy') >sysdate
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,��������:���.�����='||rec_ok.TABNO||' ������������ ��� ��������');
        end if;
        if to_date(to_char(rec_okel.election_date_begin_dd)||'.'||to_char(rec_okel.election_date_begin_mm)||'.'||to_char(rec_okel.election_date_begin),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,��������:���.�����='||rec_ok.TABNO||' ������� ���� �������� � ���� �������� ����������  ������ ���� ������ 18');
        end if;
       EXCEPTION WHEN OTHERS THEN NULL;
       END;  

      else
        if to_date('01.01.'||to_char(rec_okel.election_date_begin),'dd.mm.yyyy') >sysdate
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,��������:���.�����='||rec_ok.TABNO||' ������������ ��� ��������');
        end if;
        if to_date('01.01.'||to_char(rec_okel.election_date_begin),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,��������:���.�����='||rec_ok.TABNO||' ������� ���� �������� � ���� �������� ����������  ������ ���� ������ 18');
        end if;
      end if;
     EXCEPTION WHEN OTHERS THEN NULL;
     END;  
      
    end loop;
  -- ������������
  -- ������������
    for rec_okri in (select * from ok_rise where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if rec_okri.rise_date_year is null
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������������:���.�����='||rec_ok.TABNO||' �� ������ ��� ������������');
      end if;
      if rec_okri.rise_date_mm is null
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������������:���.�����='||rec_ok.TABNO||' �� ������ ����� ������������');
      end if;
      if rec_okri.rise_date_dd is null
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������������:���.�����='||rec_ok.TABNO||' �� ������ ���� ������������');
      end if;

     BEGIN 
      if (rec_okri.rise_date_dd is not null)
      and (rec_okri.rise_date_mm is not null)
      then
       BEGIN
        if to_date(to_char(rec_okri.rise_date_dd)||'.'||to_char(rec_okri.rise_date_mm)||'.'||to_char(rec_okri.rise_date_year),'dd.mm.yyyy') >sysdate
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������������:���.�����='||rec_ok.TABNO||' ������������ ��� ������������');
        end if;
        if to_date(to_char(rec_okri.rise_date_dd)||'.'||to_char(rec_okri.rise_date_mm)||'.'||to_char(rec_okri.rise_date_year ),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������������:���.�����='||rec_ok.TABNO||' ������� ���� ������������ � ���� �������� ����������  ������ ���� ������ 18');
        end if;
       EXCEPTION WHEN OTHERS THEN NULL;
       END;  
      else
        if to_date('01.01.'||to_char(rec_okri.rise_date_year),'dd.mm.yyyy') >sysdate
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������������:���.�����='||rec_ok.TABNO||' ������������ ��� ������������');
        end if;
        if to_date('01.01.'||to_char(rec_okri.rise_date_year),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������������:���.�����='||rec_ok.TABNO||' ������� ���� ������������ � ���� �������� ����������  ������ ���� ������ 18');
        end if;
      end if;
     EXCEPTION WHEN OTHERS THEN NULL;
     END;  

    end loop;
    -- �� ��
    for rec_oklang in (select * from ok_LANGUAGE where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if (rec_oklang.LANGUAGE_CODE is null)
      and (rec_oklang.COD_LANG_PRIM is null)
      then 
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,��.��:���.�����='||rec_ok.TABNO||' ���� �� ������ ��� ������������ ����� �� �����������, �� ����������� ����������� �������� ���������� ��� ���� ������������ �����');
      end if;
    end loop;
    -- ���������
    for rec_okvoy in (select * from ok_voyage where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if (rec_okvoy.VOYAGE_STR ='860')
      then 
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,���������� �������:���.�����='||rec_ok.TABNO||' �������� ���������� �� �������� ������ �� ������ ���� ����� �������� ����������');
      end if;
      if (rec_okvoy.VOYAGE_DATE is null)
      then 
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,���������� �������:���.�����='||rec_ok.TABNO||' ������� ��� ���� ������');
      end if;
      if (rec_okvoy.VOYAGE_DATE is null)
      then
        if (rec_okvoy.VOYAGE_DATE_MM is not null) or (rec_okvoy.VOYAGE_DATE_DD is not null)
        then 
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,���������� �������:���.�����='||rec_ok.TABNO||' ���� ��� ������ �� ������� �� ������, �� ���� � ����� ������ �� �����������');
        end if;
        if (rec_okvoy.DATA_IN is not null)
        then 
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,���������� �������:���.�����='||rec_ok.TABNO||' ���� ���� ������ �� ������� �� ������, �� ���� ����������� �� �����������');
        end if;
      end if;
      if (rec_okvoy.DATA_IN is null)
      then
        if (rec_okvoy.DATA_IN_MM is not null) or (rec_okvoy.DATA_IN_DD is not null)
        then 
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,���������� �������:���.�����='||rec_ok.TABNO||' ���� ��� ���� ����������� ��-�� ������� �� ������, �� ����� � ����� ���� ����������� �� ������ �����������');
        end if;
      end if;

     BEGIN
      if (rec_okvoy.VOYAGE_DATE_dd is not null)
      and (rec_okvoy.VOYAGE_DATE_mm is not null)
      then
       BEGIN
        if to_date(to_char(rec_okvoy.VOYAGE_DATE_dd)||'.'||to_char(rec_okvoy.VOYAGE_DATE_mm)||'.'||to_char(rec_okvoy.VOYAGE_DATE),'dd.mm.yyyy') >sysdate
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,���������� �������:���.�����='||rec_ok.TABNO||' ������������ ��� ���������� �������');
        end if;
        if to_date(to_char(rec_okvoy.VOYAGE_DATE_dd)||'.'||to_char(rec_okvoy.VOYAGE_DATE_mm)||'.'||to_char(rec_okvoy.VOYAGE_DATE ),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,���������� �������:���.�����='||rec_ok.TABNO||' ������� ���� ���������� ������� � ���� �������� ����������  ������ ���� ������ 18');
        end if;
       EXCEPTION WHEN OTHERS THEN NULL;
       END;  

      else
        if to_date('01.01.'||to_char(rec_okvoy.VOYAGE_DATE),'dd.mm.yyyy') >sysdate
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,���������� �������:���.�����='||rec_ok.TABNO||' ������������ ��� ���������� �������');
        end if;
        if to_date('01.01.'||to_char(rec_okvoy.VOYAGE_DATE),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,���������� �������:���.�����='||rec_ok.TABNO||' ������� ���� ���������� ������� � ���� �������� ����������  ������ ���� ������ 18');
        end if;
      end if;
     EXCEPTION WHEN OTHERS THEN NULL;
     END;  

      if ((rec_okvoy.DATA_IN_dd is not null)
      or (rec_okvoy.DATA_IN_mm is not null))
      and ((rec_okvoy.VOYAGE_DATE_dd is null)
      or (rec_okvoy.VOYAGE_DATE_mm is null))
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,���������� �������:���.�����='||rec_ok.TABNO||' ���� ������ ���� � ����� ����������� �� ���������� ������� �� ������� ���� � ����� �������');
      end if;
      
     BEGIN
      if (rec_okvoy.DATA_IN_dd is not null)
      and (rec_okvoy.DATA_IN_mm is not null)
      and (rec_okvoy.DATA_IN is not null)
      and  (rec_okvoy.VOYAGE_DATE_dd is not null)
      and (rec_okvoy.VOYAGE_DATE_mm is not null)
      and (rec_okvoy.VOYAGE_DATE is not null)
      then
        if to_date(to_char(rec_okvoy.DATA_IN_dd)||'.'||to_char(rec_okvoy.DATA_IN_mm)||'.'||to_char(rec_okvoy.DATA_IN),'dd.mm.yyyy') >sysdate
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,���������� �������:���.�����='||rec_ok.TABNO||' ������������ ��� ����������� �� ���������� �������');
        end if;
        if to_date(to_char(rec_okvoy.DATA_IN_dd)||'.'||to_char(rec_okvoy.DATA_IN_mm)||'.'||to_char(rec_okvoy.DATA_IN ),'dd.mm.yyyy') -
           to_date(to_char(rec_okvoy.VOYAGE_DATE_dd)||'.'||to_char(rec_okvoy.VOYAGE_DATE_mm)||'.'||to_char(rec_okvoy.VOYAGE_DATE),'dd.mm.yyyy') < 0
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,���������� �������:���.�����='||rec_ok.TABNO||' �������� ���� ����������� �� ���������� ������� ');
        end if;
      else
        if to_date('01.01.'||to_char(rec_okvoy.DATA_IN),'dd.mm.yyyy') >sysdate
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,���������� �������:���.�����='||rec_ok.TABNO||' ������������ ��� ����������� �� ���������� �������');
        end if;
        if rec_okvoy.DATA_IN < rec_okvoy.VOYAGE_DATE
        then
          insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,���������� �������:���.�����='||rec_ok.TABNO||' ������� ���� ����������� �� ���������� ������� � ���� �������� ����������  ������ ���� ������ 18');
        end if;
      end if;
     EXCEPTION WHEN OTHERS THEN NULL;
     END;  
    end loop;
  -- ������ � 253 ������ � proc_check_w.check_IIAS ��� ����� ��������� �� ���� �������� ��������
    for rec_okpt in (select * from ok_party where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if rec_okpt.party_CODE is null
      then
        insert into rep_temp (name_1) values ('������ ��� ���������� ����,����� ������,������:���.�����='||rec_ok.TABNO||' �� ������� �������� � ������');
      else
        select count(s_id) into cnt from ss_ok_nci
        where nci_id=73 and s_id='01' and ok_id= rec_okpt.party_code;
        if (cnt<1) and (rec_okpt.party_date is null)
        then
          insert into rep_temp (name_1) values ('������ 05928 ��� ���������� ����,����� ������,������:���.�����='||rec_ok.TABNO||' �� ������� ��� ����������');
        end if;
        if (cnt<1) and (rec_okpt.party_date is not null)
        then
          if ((rec_okpt.party_date- to_number(to_char(rec_ok.birthday,'yyyy')) )<18)
          or (rec_okpt.party_date> to_number(to_char(sysdate,'yyyy')) )
          then
            insert into rep_temp (name_1) values ('������ 05929 ��� ���������� ����,����� ������,������:���.�����='||rec_ok.TABNO||' �� ���������� ��� ���������� '||to_number(rec_okpt.party_date));
          end if;
        end if;
      end if;
    end loop;
--    
  end loop;
end;
/

    select name_1 from rep_temp
    where ses_id=userenv('sessionid');

    delete from rep_temp
    where ses_id=userenv('sessionid');
    commit;

spool off;
