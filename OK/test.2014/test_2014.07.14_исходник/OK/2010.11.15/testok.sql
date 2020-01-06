spool c:\errok.txt
set line 250
drop table ok_temp;
create table ok_temp(
id number,
name1 varchar2(250)
);

declare
  k number;
  name0_ varchar2(100);
  name1_ varchar2(100);
begin
  k :=0;
for rec_ok in (select okp.* from ok_personal okp, ss_ok_post sop, ss_ok_post_group sopg
where okp.STATUS_CODE in (2,5) 
and okp.post_code=sop.post_code
and sop.post_group_code=sopg.post_group_code
and sop.post_group_code=1)
loop 

  select ok_latcyr(TRIM(substr(rec_ok.NAME_Pr ,1,30))) into name1_ from dual;
  name0_ := '(причина увольнени€)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;


  SELECT ok_latcyr(TRIM(SUBSTR(rec_ok.FAMILY,1,30))) into name1_ from dual;
  name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY||'(фамили€)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.FIRST_NAME,1,30))) into name1_ from dual;
  name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(им€)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.PATRONYMIC,1,30))) into name1_ from dual;
  name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(отчество)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.PASS_SERIYA,1,2))) into name1_ from dual;
  name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(сери€ паспорта)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.COD_DISTR_PRIM,1,50))) into name1_ from dual;
  name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(примечание к  од района, подразделением ”¬ƒ которого выдан паспорт)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.COD_OBL_PRIM,1,50))) into name1_ from dual;
  name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(примечание к коду области рождени€)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.COD_PLACE_BIRTH_PRIM,1,50))) into name1_ from dual;
  name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(примечание к коду района рождени€)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.BIRTHPLACE,1,50))) into name1_ from dual;
  name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(REC.BIRTHPLACE)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.BIRTHPLACE_POINT,1,50))) into name1_ from dual;
  name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(пункт место рождени€)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

  select ok_latcyr(rec_ok.live_place) into name1_ from dual;
  name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(пункт место жительства)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.COD_OBL_LIVE_PRIM,1,50))) into name1_ from dual;
  name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(примечание к код области проживани€)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.COD_DISTR_LIVE_PRIM,1,50))) into name1_ from dual;
  name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(примечание к код района проживани€)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.PASS_REG,1,50))) into name1_ from dual;
  name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(ћесто выдачи паспорта)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

  select ok_latcyr(TRIM(SUBSTR(rec_ok.CODE_NACI_PRIM,1,50))) into name1_ from dual;
  name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(примечание к коду национальности)';
  if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;



  for rec in (SELECT * from ok_change_fio 
	where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
  loop
    select ok_latcyr(rec.family) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(изменение фамилии)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;
  end loop;

  for rec in (SELECT * from ok_relation 
	where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
  loop

    select ok_latcyr(TRIM(substr(REC.RELATION_FAMILY,1,30))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(родственник.фамили€)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(substr(REC.RELATION_NAME,1,30))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(родственник.им€)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(substr(REC.RELATION_PATRONYMIC,1,30))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(родственник.отчество)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(substr(REC.COD_OBL_birth_PRIM,1,50))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(родственник.место рождени€ примечание к код области)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(substr(REC.COD_CITY_birth_PRIM,1,50))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(родственник.примечание к место рождени€ код района-города)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(SUBSTR(REC.RELATION_BIRTHPLACE,1,50))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(родственник.ћесто рождени€)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(SUBSTR(REC.COD_STR_LIVE_PRIM,1,50))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(родственник.примечание к место жительство код страны)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(SUBSTR(REC.COD_OBL_LIVE_PRIM,1,50))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(родственник.место жительство примечание к код области)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(SUBSTR(REC.COD_city_PRIM,1,50))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(родственник.примечание к место жительство код района-города)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(SUBSTR(REC.RELATION_HOME_ADDRESS,1,50))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(родственник.ћесто жительства родственника)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(SUBSTR(REC.RELATION_OFFICE, 1, 100))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(родственник.ћесто работы)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(SUBSTR(REC.RELATION_POST, 1, 100))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(родственник.должность)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

  end loop;


  for rec in (SELECT * from OK_PERIOD 
	where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
  loop

    select ok_latcyr(TRIM(substr(REC.OFFICE_NAME ,1,30))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(сведени€ о работе.место работы )';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(substr(REC.ESTABLISHED_POST ,1,30))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(сведени€ о работе.должность)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(substr(REC.RESH_ATTEST ,1,30))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(сведени€ о работе.–ешение аттестационной комиссии)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

  end loop;


  for rec in (SELECT * from OK_EDUCATION
	where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
  loop

    select ok_latcyr(TRIM(substr(REC.COD_VUZ_PRIM ,1,30))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(образование.примечание код ¬”«а)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(substr(REC.FAKULTET ,1,30))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(образование.факультет)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

    select ok_latcyr(TRIM(substr(REC.PROFESSION_PERSONAL ,1,30))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(образование.—пециальность по диплому)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;
  end loop;



  for rec in (SELECT * from OK_AWARD
	where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
  loop

    select ok_latcyr(TRIM(substr(REC.AWARD_INFO ,1,30))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(награды.сведени€ о награде)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;
  end loop;




  for rec in (SELECT * from OK_VOYAGE
	where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
  loop

    select ok_latcyr(TRIM(substr(REC.VOYAGE_INFO ,1,30))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(зарубежные поездки.—ведени€ о зарубежных поездках )';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;
  end loop;





  for rec in (SELECT * from OK_RISE
	where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
  loop

    select ok_latcyr(TRIM(substr(REC.RISE_INFO ,1,30))) into name1_ from dual;
      name0_ := rec_ok.nps_id||':'||rec_ok.FAMILY|| '(повышение квалификации.—ведени€ о повышении квалификации)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;
  end loop;


end loop;


for rec in (SELECT * from SS_OK_ELECTION)
loop
    select ok_latcyr(TRIM(substr(REC.ELECTION_NAME,1,30))) into name1_ from dual;
      name0_ := '(справочник исполнительных органов.название исполнительных органов)';
    if name1_ <> '1' then k:=k+1; insert into ok_temp select k,name0_||name1_ from dual; end if;

end loop;

end;
/

commit;
select name1 from ok_temp
order by id;

spool off;








                
                
                
                

                
                
