spool c:\errok.txt
set line 100
drop table ok_temp;
create table ok_temp(
id number,
name1 varchar2(250)
);

declare
k number;
begin
k :=0;
name0_ varchar2(100);
name1_ varchar2(100);
for rec_ok in (select REC.* from ok_personal okp, ss_ok_post sop, ss_ok_post_group sopg
where branch=info.getbranch
and REC.STATUS_CODE in (2,5) 
and REC.post_code=sop.post_code
and sop.post_group_code=sopg.post_group_code
and sop.post_group_code=1)
loop 


  SELECT ok_latcyr(TRIM(SUBSTR(rec_ok.FAMILY,1,30))) into name1_ from dual;
  name0_ := '(REC.family)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.FIRST_NAME,1,30))) into name1_ from dual;
  name0_ := '(REC.FIRST_NAME)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.PATRONYMIC,1,30))) into name1_ from dual;
  name0_ := '(REC.PATRONYMIC)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.PASS_SERIYA,1,2))) into name1_ from dual;
  name0_ := '(REC.PASS_SERIYA)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.COD_DISTR_PRIM,1,50))) into name1_ from dual;
  name0_ := '(REC.COD_DISTR_PRIM)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.COD_OBL_PRIM,1,50))) into name1_ from dual;
  name0_ := '(REC.COD_OBL_PRIM)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.COD_PLACE_BIRTH_PRIM,1,50))) into name1_ from dual;
  name0_ := '(REC.COD_PLACE_BIRTH_PRIM)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.BIRTHPLACE,1,50))) into name1_ from dual;
  name0_ := '(REC.BIRTHPLACE)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

  select ok_latcyr(REC.live_place) into name1_ from dual;
  name0_ := '(REC.live_place)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.COD_OBL_LIVE_PRIM,1,50))) into name1_ from dual;
  name0_ := '(REC.COD_OBL_LIVE_PRIM)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.COD_DISTR_LIVE_PRIM,1,50))) into name1_ from dual;
  name0_ := '(REC.COD_DISTR_LIVE_PRIM)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.PASS_REG,1,50))) into name1_ from dual;
  name0_ := '(REC.PASS_REG)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.CODE_NACI_PRIM,1,50))) into name1_ from dual;
  name0_ := '(REC.CODE_NACI_PRIM)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;



  for rec in (SELECT * ok_change_fio 
	where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
  loop
    select ok_latcyr(rec.family) into name1_ from dual;
      name0_ := '(ok_change_fio.family)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;
  end loop;

  for rec in (SELECT * ok_relation 
	where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
  loop

    select ok_latcyr(TRIM(substr(REC.RELATION_FAMILY,1,30))) into name1_ from dual;
      name0_ := '(ok_relation.RELATION_FAMILY)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(substr(REC.RELATION_NAME,1,30))) into name1_ from dual;
      name0_ := '(ok_relation.RELATION_NAME)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(substr(REC.RELATION_PATRONYMIC,1,30))) into name1_ from dual;
      name0_ := '(ok_relation.RELATION_PATRONYMIC)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(substr(REC.COD_OBL_birth_PRIM,1,50))) into name1_ from dual;
      name0_ := '(ok_relation.COD_OBL_birth_PRIM)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(substr(REC.COD_CITY_birth_PRIM,1,50))) into name1_ from dual;
      name0_ := '(ok_relation.COD_CITY_birth_PRIM)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(SUBSTR(REC.RELATION_BIRTHPLACE,1,50))) into name1_ from dual;
      name0_ := '(ok_relation.RELATION_BIRTHPLACE)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(SUBSTR(REC.COD_STR_LIVE_PRIM,1,50))) into name1_ from dual;
      name0_ := '(ok_relation.COD_STR_LIVE_PRIM)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(SUBSTR(REC.COD_OBL_LIVE_PRIM,1,50))) into name1_ from dual;
      name0_ := '(ok_relation.COD_OBL_LIVE_PRIM)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(SUBSTR(REC.COD_city_PRIM,1,50))) into name1_ from dual;
      name0_ := '(ok_relation.COD_city_PRIM)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(SUBSTR(REC.RELATION_HOME_ADDRESS,1,50))) into name1_ from dual;
      name0_ := '(ok_relation.RELATION_HOME_ADDRESS)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(SUBSTR(REC.RELATION_OFFICE, 1, 100))) into name1_ from dual;
      name0_ := '(ok_relation.RELATION_OFFICE)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(SUBSTR(REC.RELATION_POST, 1, 100))) into name1_ from dual;
      name0_ := '(ok_relation.RELATION_POST)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

  end loop;


  for rec in (SELECT * OK_PERIOD 
	where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
  loop

    select ok_latcyr(TRIM(substr(REC.OFFICE_NAME ,1,30))) into name1_ from dual;
      name0_ := '(ok_period.OFFICE_NAME )';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(substr(REC.ESTABLISHED_POST ,1,30))) into name1_ from dual;
      name0_ := '(ok_period.ESTABLISHED_POST )';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(substr(REC.NAME_Pr ,1,30))) into name1_ from dual;
      name0_ := '(ok_period.NAME_Pr )';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(substr(REC.RESH_ATTEST ,1,30))) into name1_ from dual;
      name0_ := '(ok_period.RESH_ATTEST )';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

  end loop;


  for rec in (SELECT * from OK_EDUCATION
	where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
  loop

    select ok_latcyr(TRIM(substr(REC.COD_VUZ_PRIM ,1,30))) into name1_ from dual;
      name0_ := '(OK_EDUCATION.COD_VUZ_PRIM )';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(substr(REC.FAKULTET ,1,30))) into name1_ from dual;
      name0_ := '(OK_EDUCATION.FAKULTET )';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(substr(REC.PROFESSION_PERSONAL ,1,30))) into name1_ from dual;
      name0_ := '(OK_EDUCATION.PROFESSION_PERSONAL )';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;
  end loop;



  for rec in (SELECT * from OK_AWARD
	where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
  loop

    select ok_latcyr(TRIM(substr(REC.AWARD_INFO ,1,30))) into name1_ from dual;
      name0_ := '(OK_AWARD.AWARD_INFO )';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;
  end loop;




  for rec in (SELECT * from OK_VOYAGE
	where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
  loop

    select ok_latcyr(TRIM(substr(REC.VOYAGE_INFO ,1,30))) into name1_ from dual;
      name0_ := '(OK_VOYAGE.VOYAGE_INFO )';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;
  end loop;





  for rec in (SELECT * from OK_RISE
	where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
  loop

    select ok_latcyr(TRIM(substr(REC.RISE_INFO ,1,30))) into name1_ from dual;
      name0_ := '(OK_RISE.RISE_INFO )';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;
  end loop;


end loop;


for rec in (SELECT * SS_OK_ELECTION)
loop
    select ok_latcyr(TRIM(substr(REC.ELECTION_NAME,1,30))) into name1_ from dual;
      name0_ := '(SS_OK_ELECTION.ELECTION_NAME)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k_,name0_||name1_ from dual; end if;

end loop;

end;
/

commit;
select name1 from ok_temp
order by id;

spool off;








                
                
                
                

                
                
