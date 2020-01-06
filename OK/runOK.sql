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
     insert into rep_temp (name_1) values ('Ошибка Не верный идетификационный номер Таб.Номер='||rec.TABNO);
   end if;
   if length(rec.nps_id)<>14 then
     insert into rep_temp (name_1) values ('Ошибка Идетификационный номер должен быть 14 знаков Таб.Номер='||rec.TABNO);
   end if;
   if rec.gender_code=1 and substr(rec.nps_id,1,1) not in('1','3','5') then
     insert into rep_temp (name_1) values ('Ошибка Пол не соответствует полу указанному в идетификационном номере Таб.Номер='||rec.TABNO);
   end if;
   if rec.gender_code=2 and substr(rec.nps_id,1,1) not in('2','4','6') then
     insert into rep_temp (name_1) values ('Ошибка Пол не соответствует полу указанному в идетификационном номере Таб.Номер='||rec.TABNO);
   end if;
  End Loop;
 
  For Rec In (select ok_personal.TABNO,OK_PERSONAL.PASS_NUM from OK_PERSONAL where PASS_SERIYA is null and OK_PERSONAL.STATUS_CODE IN (2,5))
  Loop
     insert into rep_temp (name_1) values ('Ошибка 05921 для отчетности ИИАС, Отдел Кадров: не указана серия паспорта Таб.Номер='||rec.TABNO);
  End Loop;

  For Rec In (select ok_personal.TABNO,OK_PERSONAL.COD_STR_BIRTH from OK_PERSONAL
    where (OK_PERSONAL.COD_STR_BIRTH is null or OK_PERSONAL.COD_STR_BIRTH not in (select code_str from s_str))
    and OK_PERSONAL.STATUS_CODE in (2,5) )
  Loop
     insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров: Не соответствие к справочнику <Страны и территории> Таб.Номер='||rec.TABNO||' Страна рожд.='||rec.COD_STR_BIRTH);
  End Loop;

  For Rec In (select ok_personal.TABNO,OK_PERSONAL.COD_STR_SITIZENT from OK_PERSONAL
     where (OK_PERSONAL.COD_STR_SITIZENT is null or OK_PERSONAL.COD_STR_SITIZENT not in (select code_str from s_str))
     and OK_PERSONAL.STATUS_CODE in (2,5) )
  Loop
     insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров: Не соответствие к справочнику <Страны и территории> Таб.Номер='||rec.TABNO||' Cтрана гражд.='||rec.COD_STR_SITIZENT);
  End Loop;

  For Rec In (select ok_personal.TABNO,OK_PERSONAL.COD_STR_LIVE from OK_PERSONAL
    where (OK_PERSONAL.COD_STR_LIVE is null or OK_PERSONAL.COD_STR_LIVE not in (select code_str from s_str))
    and OK_PERSONAL.STATUS_CODE in (2,5) )
  Loop
     insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров: Не соответствие к справочнику <Страны и территории> Таб.Номер='||rec.TABNO||' Страна проживания='||rec.COD_STR_LIVE);
  End Loop;

  For Rec In (select ok_personal.TABNO,SS_OK_NCI.OK_ID from OK_PERSONAL,OK_DEGREE,(select * from SS_OK_NCI where SS_OK_NCI.NCI_ID=75) SS_OK_NCI
              where OK_PERSONAL.PERSONAL_CODE=OK_DEGREE.PERSONAL_CODE and OK_DEGREE.DEGREE_CODE=SS_OK_NCI.Ok_Id(+) and OK_PERSONAL.STATUS_CODE in (2,5) and SS_OK_NCI.Ok_Id is null)
  Loop
     insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров: Не соответствие к справочнику <Ученые степени> Таб.Номер='||rec.TABNO||' Ученые степени='||rec.OK_ID);
  End Loop;

  For Rec In (select ok_personal.TABNO,SS_OK_NCI.OK_ID from OK_PERSONAL,OK_ACADEMIC,(select * from SS_OK_NCI where SS_OK_NCI.NCI_ID=76) SS_OK_NCI
              where OK_PERSONAL.PERSONAL_CODE=OK_ACADEMIC.PERSONAL_CODE and OK_ACADEMIC.ACADEMIC_CODE=SS_OK_NCI.Ok_Id(+) and OK_PERSONAL.STATUS_CODE in (2,5) and SS_OK_NCI.Ok_Id is null)
  Loop
     insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров: Не соответствие к справочнику <Ученые звания> Таб.Номер='||rec.TABNO||' Ученые звание='||rec.OK_ID);
  End Loop;

  For Rec In (select ok_personal.TABNO,region_id from OK_PERSONAL
     where (OK_PERSONAL.REGION_ID is null or OK_PERSONAL.REGION_ID not in (select region_id from s_region)) 
     and OK_PERSONAL.STATUS_CODE in (2,5) and OK_PERSONAL.cod_str_birth = '860' )
  Loop
     insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров: Не соответствие к справочнику <Области Республики Узбекистан> Таб.Номер='||rec.TABNO||' Место рожд.обл.='||rec.region_id);
  End Loop;

  For Rec In (select ok_personal.TABNO,COD_OBL_LIVE from OK_PERSONAL
     where (OK_PERSONAL.COD_OBL_LIVE is null or OK_PERSONAL.COD_OBL_LIVE not in (select region_id from s_region))
     and OK_PERSONAL.STATUS_CODE in (2,5) and OK_PERSONAL.cod_str_live = '860' )
  Loop
     insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров: Не соответствие к справочнику <Области Республики Узбекистан> Таб.Номер='||rec.TABNO||' Область проживания='||rec.COD_OBL_LIVE);
  End Loop;

  For Rec In (select ok_personal.TABNO,distr from OK_PERSONAL 
     where (OK_PERSONAL.distr is null or OK_PERSONAL.distr not in (select distr from s_distr))
     and OK_PERSONAL.STATUS_CODE in (2,5) and OK_PERSONAL.cod_str_birth = '860' )
  Loop
     insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров: Не соответствие к справочнику <районы Республики Узбекистан> Таб.Номер='||rec.TABNO||' Место рожд.район.='||rec.distr);
  End Loop;

  For Rec In (select ok_personal.TABNO,COD_DISTR_LIVE from OK_PERSONAL
     where (OK_PERSONAL.COD_DISTR_LIVE is null or OK_PERSONAL.COD_DISTR_LIVE not in (select distr from s_distr))
     and OK_PERSONAL.STATUS_CODE in (2,5) and OK_PERSONAL.cod_str_live = '860' )
  Loop
     insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров: Не соответствие к справочнику <районы Республики Узбекистан> Таб.Номер='||rec.TABNO||' район проживания='||rec.COD_DISTR_LIVE);
  End Loop;

  For Rec In (select ok_personal.TABNO,OK_PERSONAL.EDUCATION_TITLE_CODE from OK_PERSONAL where nvl(OK_PERSONAL.EDUCATION_TITLE_CODE,0)=0 and OK_PERSONAL.STATUS_CODE IN (2, 5)
               union all
              select ok_personal.TABNO,OK_PERSONAL.EDUCATION_TITLE_CODE from OK_PERSONAL,(select * from SS_OK_NCI where SS_OK_NCI.NCI_ID=74) ok74 where OK_PERSONAL.EDUCATION_TITLE_CODE is not null
                 and OK_PERSONAL.STATUS_CODE IN (2, 5) and OK_PERSONAL.EDUCATION_TITLE_CODE  = ok74.OK_ID (+) and ok74.OK_ID is null)
  Loop
     insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров: Не соответствие к справочнику <Наименование Образования> Таб.Номер='||rec.TABNO||' Образование='||rec.EDUCATION_TITLE_CODE);
  End Loop;

  For Rec In (select ok_personal.TABNO,OK_PERSONAL.Nps_Id from OK_PERSONAL where OK_PERSONAL.STATUS_CODE IN (2,5) and (OK_PERSONAL.Nps_Id is null or OK_PERSONAL.Nps_Id=0 or length(nvl(OK_PERSONAL.Nps_Id,'0'))<14))
  Loop
     insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров: Ошибка в длине номере пенсионного счета Таб.Номер='||rec.TABNO||' Пенсионный счет='||rec.Nps_Id);
  End Loop;

  For Rec In (select ok_personal.TABNO,OK_PERSONAL.PASS_NUM from OK_PERSONAL where length(nvl(OK_PERSONAL.PASS_NUM,'0'))<>7 and OK_PERSONAL.STATUS_CODE IN (2,5))
  Loop
     insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров: Ошибка в длине номера паспорта Таб.Номер='||rec.TABNO||' Номер паспорта='||rec.PASS_NUM);
  End Loop;

  For Rec In (select ok_personal.Nps_Id, count(*) cnt from OK_PERSONAL where OK_PERSONAL.STATUS_CODE IN (2,5) group by OK_PERSONAL.Nps_Id having count(*)>1)
  Loop
     insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров: Ошибка в уникальность пенсионного номера  Пенсионный счет='||rec.Nps_Id||' существует в кол-ве= '||Rec.cnt);
  End Loop;

  select count(*) Into cnt FROM OK_PERSONAL, (select * from SS_OK_NCI where NCI_ID=79) BOSS where OK_PERSONAL.STATUS_CODE IN (2, 5) and OK_PERSONAL.POST_CODE=BOSS.OK_ID ;
  if cnt = 0 then
     insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров: Отсутствует информация о <Руководящем составе>');
  end if;

  for rec_ok in (select okp.* from ok_personal okp, SS_OK_NCI son 
  where okp.tabno=okp.tabno --in (313) -- таб номера 1,2,3
   and okp.branch=okp.branch and okp.STATUS_CODE in (2,5)
                    and okp.post_code=son.ok_id and son.NCI_ID=79)
  loop

	select count(*) into cnt from ok_period where branch=rec_ok.branch and personal_code=rec_ok.personal_code
	and post_code=rec_ok.post_code;
        if (cnt<1)
        then
          insert into rep_temp (name_1) values ('Ошибка 241 для отчетности ИИАС,Отдел Кадров:Таб.Номер='||rec_ok.TABNO||' Отсутствуют Сведения о работе в должности');
        end if;  


      if (rec_ok.FAMILY is null) or (rec_ok.FIRST_NAME is null)
      then
        insert into rep_temp (name_1) values ('Ошибка 05918 для отчетности ИИАС,Отдел Кадров:Таб.Номер='||rec_ok.TABNO||' Фамилия и Имя должны обязательно указаны');
      end if;

      if (rec_ok.birthday is null) 
      then
        insert into rep_temp (name_1) values ('Ошибка 05919 для отчетности ИИАС,Отдел Кадров:Таб.Номер='||rec_ok.TABNO||' Дата рождения должна быть обязательно указана');
      else  
         cnt := round(months_between(sysdate,rec_ok.birthday)/12);
        if (cnt<16)
        or (cnt>90)
        then
          insert into rep_temp (name_1) values ('Ошибка 05919 для отчетности ИИАС,Отдел Кадров:Таб.Номер='||rec_ok.TABNO||' Дата рождения не верна');
        end if;  
      end if;

      if (rec_ok.PASS_DATE is null) 
      then
        insert into rep_temp (name_1) values ('Ошибка 05923 для отчетности ИИАС,Отдел Кадров:Таб.Номер='||rec_ok.TABNO||' Дата выдачи паспорта должна быть обязательно указана');
      else  
         cnt := round(months_between(rec_ok.PASS_DATE,rec_ok.birthday)/12);
        if (cnt<16)
        then
          insert into rep_temp (name_1) values ('Ошибка 05923 для отчетности ИИАС,Отдел Кадров:Таб.Номер='||rec_ok.TABNO||' Дата выдачи паспорта не верна');
        end if;  
      end if;

      if (rec_ok.COD_STR_SITIZENT ='860') 
      then
        select count(DISTR) into cnt from s_distr where DISTR= rec_ok.cod_distr_uvd;
        if (cnt=0) or (cnt is null) or (rec_ok.cod_distr_uvd is null)
        then
          insert into rep_temp (name_1) values ('Ошибка 05052 для отчетности ИИАС, Отдел Кадров: Не верный Код района, УВД которого был выдан паспорт Таб.Номер='||rec_ok.TABNO||' код.='||rec_ok.cod_distr_uvd);
        end if;  
      else
        if rec_ok.COD_DISTR_PRIM is null
        then
          insert into rep_temp (name_1) values ('Ошибка 05924 для отчетности ИИАС, Отдел Кадров: Не указано Примечание к коду района, УВД которого был выдан паспорт Таб.Номер='||rec_ok.TABNO||' Cтрана гражд.='||rec_ok.COD_STR_SITIZENT);
        end if;     
      end if;
      
      if (rec_ok.cod_str_birth <>'860') or (rec_ok.cod_str_birth is null)
      then
        if (rec_ok.COD_OBL_PRIM is null)
        then
          insert into rep_temp (name_1) values ('Ошибка 05925 для отчетности ИИАС, Отдел Кадров: Не указано примечание к <Место рождения Область> Таб.Номер='||rec_ok.TABNO||' Место рожд.страна.='||rec_ok.cod_str_birth);
        end if;
        if (rec_ok.COD_PLACE_BIRTH_PRIM is null)
        then
          insert into rep_temp (name_1) values ('Ошибка 05926 для отчетности ИИАС, Отдел Кадров: Не указано примечание к <Место рождения Район> Таб.Номер='||rec_ok.TABNO||' Место рожд.страна.='||rec_ok.cod_str_birth);
        end if;
      else
        if (rec_ok.REGION_ID is null)
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров: Не указано <Место рождения Область> Таб.Номер='||rec_ok.TABNO||' Место рожд.страна.='||rec_ok.cod_str_birth);
        end if;
        if (rec_ok.DISTR is null)
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров: Не указано <Место рождения Район> Таб.Номер='||rec_ok.TABNO||' Место рожд.страна.='||rec_ok.cod_str_birth);
        end if;
      end if;

      if (rec_ok.COD_STR_LIVE <>'860') or (rec_ok.COD_STR_LIVE is null)
      then
        if (rec_ok.COD_OBL_LIVE_PRIM is null)
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров: Не указано примечание к <Место проживания Область> Таб.Номер='||rec_ok.TABNO||' Страна проживания='||rec_ok.COD_STR_LIVE);
        end if;
        if (rec_ok.COD_DISTR_LIVE_PRIM is null)
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров: Не указано примечание к <Место проживания Район> Таб.Номер='||rec_ok.TABNO||' Страна проживания='||rec_ok.COD_STR_LIVE);
        end if;
      else
        if (rec_ok.COD_OBL_LIVE is null)
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров: Не указано <Место проживания Область> Таб.Номер='||rec_ok.TABNO||' Страна проживания='||rec_ok.COD_STR_LIVE);
        end if;
        if (rec_ok.COD_DISTR_LIVE is null)
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров: Не указано <Место проживания Район> Таб.Номер='||rec_ok.TABNO||' Страна проживания='||rec_ok.COD_STR_LIVE);
        end if;
      end if;
      
      if rec_ok.CHECK_KFS is null
      then
          insert into rep_temp (name_1) values ('Ошибка 05930 для отчетности ИИАС, Отдел Кадров: Не указано <Отметка о принадлежности к резерву руководящих кадров> Таб.Номер='||rec_ok.TABNO);
      end if;
      
      if rec_ok.BANK_SPEC is null
      then
          insert into rep_temp (name_1) values ('Ошибка 05931 для отчетности ИИАС, Отдел Кадров: Не указано <Отметка о наличие банковской специальности> Таб.Номер='||rec_ok.TABNO);
      end if;
      
      
      if (rec_ok.EDUCATION_TITLE_CODE is not null)
      then
        -- если не 1,2,3 то должно быть пусто или звание "звания нет" и степень "степени нет" 
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
              insert into rep_temp (name_1) values ('Ошибка  для отчетности ИИАС,Отдел Кадров, ученая степень должна быть Степени Нет :Таб.Номер='||rec_ok.TABNO);
            end if; 
          end loop;
          for rec_a2 in (select * from ok_academic where personal_code=rec_ok.personal_code)
          loop
            select to_number(s_id) into cnt from ss_ok_nci
            where nci_id=76 and ok_id= rec_a2.academic_CODE and rownum<2;
            if cnt<>1
            then
              insert into rep_temp (name_1) values ('Ошибка  для отчетности ИИАС,Отдел Кадров, ученое звание должно быть Звания Нет :Таб.Номер='||rec_ok.TABNO);
            end if; 
          end loop;  
        end if;
      
      end if;      
      
--01	Хотини Жена
--02	Эри    Муж
--03	Отаси  Отец
--04	Онаси  Мать
--05	Акаси  Ст.брат
--06	Укаси  Мл.брат
--07	Опаси     Ст.сестра
--08	Сингили   Мл.сестра
--09	Угли      Сын
--10	Кизи      Дочь
--11	Кайнотаси   тесть, свекр
--12	Кайнонаси   теща, свекровь
  -- родственники 09_002
    for rec_okrel in (select * from ok_relation where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
     if (rec_okrel.RELATION_DEATHDAY is null)
     then
      if rec_okrel.relation_birthplace is null
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,родственники:Таб.Номер='||rec_ok.TABNO||' не найдено место рождения родственника');
      end if;
      if rec_okrel.relation_home_address is null
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,родственники:Таб.Номер='||rec_ok.TABNO||' не найдено место проживания родственника');
      end if;
      if rec_okrel.relation_office is null
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,родственники:Таб.Номер='||rec_ok.TABNO||' не найдено место работы родственника напишите НЕ РАБОТАЕТ');
      end if;
      if rec_okrel.relation_post is null
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,родственники:Таб.Номер='||rec_ok.TABNO||' не найдено должность родственника напишите НЕТ ДОЛЖНОСТИ');
      end if;
      --
      if (rec_okrel.RELATION_FAMILY is null) or (rec_okrel.RELATION_NAME is null)
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,родственники:Таб.Номер='||rec_ok.TABNO||' Укажите Фамилию и Имя');
      end if;
      --
      begin
        select ok_id into cnt from ss_ok_nci
        where nci_id=81 and s_id='02' and rownum<2; -- муж   
      exception when others then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,родственники:Справочник соответствия не заполнен Таб.Номер='||rec_ok.TABNO);
      end;  
      if (rec_ok.gender_code=1) and (rec_okrel.relation_code=cnt)
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,родственники:Таб.Номер='||rec_ok.TABNO||' Пол Мужской- родственник не может быть Муж');
      end if;
      
      begin
        select ok_id into cnt from ss_ok_nci
        where nci_id=81 and s_id='01' and rownum<2; -- жена    
      exception when others then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,родственники:Справочник соответствия не заполнен Таб.Номер='||rec_ok.TABNO);
      end;  
      if (rec_ok.gender_code=2) and (rec_okrel.relation_code=cnt)
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,родственники:Таб.Номер='||rec_ok.TABNO||' Пол Женский -родственник не может быть Жена');
      end if;
      
      --rec_okrel.relation_birthday год рожд.
      if (rec_okrel.relation_birthday is null) 
--      or (rec_okrel.dd is null) день
--      or (rec_okrel.mm is null) и месяц не обязательно?
      then
        insert into rep_temp (name_1) values ('Ошибка 05919 для отчетности ИИАС,Отдел Кадров,родственники:Таб.Номер='||rec_ok.TABNO||' год рождения должен быть обязательно указан');
      else  
         -- if ( (to_number(to_char(sysdate,'yyyy')))-(rec_okrel.relation_birthday )<16)
          if ( (to_number(to_char(sysdate,'yyyy')))-(rec_okrel.relation_birthday )>120)
          then
            insert into rep_temp (name_1) values ('Ошибка 05919 для отчетности ИИАС,Отдел Кадров,родственники:Таб.Номер='||rec_ok.TABNO||' не правильный год рождения '||to_number(rec_okrel.relation_birthday));
          end if;
      end if;

      begin
        select s_id into cnt from ss_ok_nci
        where nci_id=81 and ok_id=rec_okrel.relation_code and rownum<2; -- жена    
      exception when others then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,родственники(279):Справочник соответствия не заполнен Таб.Номер='||rec_ok.TABNO);
      end;  

      if cnt in ('03','04') -- данные о родителях для ЦБ должны быть старше сотрудника
      then
          if ( (to_number(to_char(rec_ok.birthday,'yyyy')))-(rec_okrel.relation_birthday )<0)
          then
            insert into rep_temp (name_1) values ('Ошибка 05933 для отчетности ИИАС,Отдел Кадров,родственники(286):Таб.Номер='||rec_ok.TABNO||' данные о родителях для ЦБ должны быть старше сотрудника. не правильный год рождения '||to_number(rec_okrel.relation_birthday));
          end if;
      end if;
      
      if cnt in ('09','10') -- данные о детях для ЦБ должны быть младше сотрудника
      then
          if ( (to_number(to_char(rec_ok.birthday,'yyyy')))-(rec_okrel.relation_birthday )>0)
          then
            insert into rep_temp (name_1) values ('Ошибка 05933 для отчетности ИИАС,Отдел Кадров,родственники(286):Таб.Номер='||rec_ok.TABNO||' данные о детях для ЦБ должны быть младше сотрудника. не правильный год рождения '||to_number(rec_okrel.relation_birthday));
          end if;
      end if;

      if (rec_okrel.COD_STR_LIVE <>'860') or (rec_okrel.COD_STR_LIVE is null)
      then
        if (rec_okrel.COD_OBL_LIVE_PRIM is null)
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров,родственники: Не указано примечание к <Место проживания Область> Таб.Номер='||rec_ok.TABNO||' Страна проживания='||rec_okrel.COD_STR_LIVE);
        end if;
        if (rec_okrel.COD_CITY_PRIM is null)
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров,родственники: Не указано примечание к <Место проживания Район> Таб.Номер='||rec_ok.TABNO||' Страна проживания='||rec_okrel.COD_STR_LIVE);
        end if;
      else
        if (rec_okrel.COD_OBL_LIVE is null)
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров,родственники: Не указано <Место проживания Область> Таб.Номер='||rec_ok.TABNO||' Страна проживания='||rec_okrel.COD_STR_LIVE);
        end if;
        if (rec_okrel.COD_CITY is null)
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров,родственники: Не указано <Место проживания Район> Таб.Номер='||rec_ok.TABNO||' Страна проживания='||rec_okrel.COD_STR_LIVE);
        end if;
      end if;

      if (rec_okrel.COD_STR_BIRTH <>'860') or (rec_okrel.COD_STR_BIRTH is null)
      then
        if (rec_okrel.COD_OBL_BIRTH_PRIM is null)
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров,родственники: Не указано примечание к <Место рождения Область> Таб.Номер='||rec_ok.TABNO||' Страна рождения='||rec_okrel.COD_STR_BIRTH);
        end if;
        if (rec_okrel.COD_CITY_BIRTH_PRIM is null)
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров,родственники: Не указано примечание к <Место рождения Район> Таб.Номер='||rec_ok.TABNO||' Страна рождения='||rec_okrel.COD_STR_BIRTH);
        end if;
      else
        if (rec_okrel.COD_OBL_BIRTH is null)
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров,родственники: Не указано <Место рождения Область> Таб.Номер='||rec_ok.TABNO||' Страна рождения='||rec_okrel.COD_STR_BIRTH);
        end if;
        if (rec_okrel.COD_CITY_BIRTH is null)
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС, Отдел Кадров,родственники: Не указано <Место рождения Район> Таб.Номер='||rec_ok.TABNO||' Страна рождения='||rec_okrel.COD_STR_BIRTH);
        end if;
      end if;
     end if;
 
      if (rec_okrel.RELATION_DEATHDAY is not null)
      then
          if  (to_number(to_char(sysdate,'yyyy')))<(rec_okrel.RELATION_DEATHDAY )
          then
            insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,родственники(344):Таб.Номер='||rec_ok.TABNO||' проверьте данные о смерти родственника '||to_number(rec_okrel.RELATION_DEATHDAY));
          end if;
          if  (rec_okrel.RELATION_BIRTHDAY)>(rec_okrel.RELATION_DEATHDAY )
          then
            insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,родственники(348):Таб.Номер='||rec_ok.TABNO||' проверьте данные о рождении и смерти родственника '||to_number(rec_okrel.RELATION_DEATHDAY));
          end if;
      else
          if (rec_okrel.mm_death is not null) or (rec_okrel.dd_death is not null)
          then
            insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,родственники(344):Таб.Номер='||rec_ok.TABNO||' проверьте день,месяц- данные о смерти родственника ');
          end if;
      end if;

    end loop;

    for rec_okper in (select * from ok_period where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if (rec_okper.in_office_date is null) or (rec_okper.in_office_date<rec_ok.birthday)
      then 
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' неверна Дата начала работы в должности '||to_char(rec_okper.in_office_date));
      else
        cnt := round(months_between(rec_okper.in_office_date,rec_ok.birthday)/12);
        if cnt<15
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' Разница даты начала работы в должности и даты рождения сотрудника не должна быть меньше 15 лет '||to_char(rec_okper.in_office_date));
        end if;
      end if;

      if (rec_okper.out_office_date is not null)
      then 
        if (rec_okper.out_office_date<rec_okper.in_office_date)
        or (rec_okper.out_office_date>sysdate)
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' неверна Дата окончания работы в должности '||to_char(rec_okper.out_office_date));
        end if;
      end if;
      
      if (rec_okper.type_period_code is null)
      then 
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' укажите Тип стажа в строке Дата начала работы в должности '||to_char(rec_okper.in_office_date));
      end if;

      if (rec_okper.doljn_id is not null)
      then
        select count(dolj_id) into cnt from s_doljn where DOLJ_ID=rec_okper.doljn_id;
        if cnt=0
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' неверный код должности для ЦБ в строке Дата начала работы в должности '||to_char(rec_okper.in_office_date));
        end if;     
      end if;
      
      if (rec_okper.established_post is null)
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' укажите должность в строке Дата начала работы в должности '||to_char(rec_okper.in_office_date));
      end if;
      
      if (rec_okper.cod_bank is not null)
      then
        select count(bank_id) into cnt from s_mfo where BANK_ID=rec_okper.cod_bank;
        if cnt=0
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' неверный код банка для ЦБ в строке Дата начала работы в должности '||to_char(rec_okper.in_office_date));
        end if;     
      end if;
      
      if (rec_okper.basis_date is null)
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' укажите дату приказа в строке Дата начала работы в должности '||to_char(rec_okper.in_office_date));
      else
        if (rec_okper.basis_date> rec_okper.in_office_date)
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' дата приказа больше Даты начала работы в должности '||to_char(rec_okper.in_office_date));
        end if;
      end if;

      if (rec_okper.out_office_date is not null)
      then
        if (rec_okper.date_pr_off is null)
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' укажите дату приказа основания прекращения работы в должности в строке Дата завершения работы '||to_char(rec_okper.out_office_date));
        else
          if (rec_okper.date_pr_off> rec_okper.out_office_date)
          then
            insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' дата приказа основания прекращения работы в должности больше Даты завершения работы '||to_char(rec_okper.out_office_date));
          end if;
        end if;
        if (rec_okper.cod_pr_off is null)
        then
          if (rec_okper.PR_OFF is null)
          then
            insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' укажите причину прекращения работы в должности в строке Дата завершения работы '||to_char(rec_okper.out_office_date));
          end if; 
        else
          select count(prich_id) into cnt from s_prich where prich_id=rec_okper.cod_pr_off;
          if cnt=0
          then
            insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' код причины прекращения работы в должности не соответствует справочнику в строке Дата завершения работы '||to_char(rec_okper.out_office_date));
          end if; 
        end if;
      end if;

      if (rec_okper.date_utv_km is not null) and (rec_okper.numb_utv_km is null)
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' укажите Номер постановления Кабинета Министров об утверждении в занимаемой должности в строке Дата завершения работы '||to_char(rec_okper.out_office_date));
      end if;

      if (rec_okper.date_pr_kvl is not null) and (rec_okper.numb_pr_kvl is null)
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' укажите Номер протокола Квалификационной комиссии Центрального банка о соответствии должности на которую выдвигается в строке Дата завершения работы '||to_char(rec_okper.out_office_date));
      end if;

      if (rec_okper.date_attest is not null) and (rec_okper.resh_attest is null)
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' укажите Решение аттестационной комиссии в строке Дата завершения работы '||to_char(rec_okper.out_office_date));
      end if;

    end loop;

      begin
        select s_id into cnt_obraz from ss_ok_nci where nci_id=74 
          and ok_id=rec_ok.EDUCATION_TITLE_CODE and rownum<2; 
      exception when others then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,образование:Справочник соответствия не заполнен Таб.Номер='||rec_ok.TABNO);
      end;  

    for rec_oked in (select * from ok_education where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
    
      begin
        select s_id into cnt_uchzav from ss_ok_nci where nci_id=80
          and ok_id=rec_oked.INSTITUTION_CODE and rownum<2; 
      exception when others then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:Справочник соответствия не заполнен Таб.Номер='||rec_ok.TABNO||' код уч.заведения в ОК='||rec_oked.INSTITUTION_CODE);
      end;  

      if (cnt_obraz in (1,6,7)) and (cnt_uchzav<>999)
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:неверно указано образование-среднее для высших учебных заведений цб=('||nvl(cnt_uchzav,''*'')||') ок=('||rec_oked.INSTITUTION_CODE||') Таб.Номер='||rec_ok.TABNO);
      end if;
      
      if ((cnt_uchzav=202) or (cnt_uchzav=999)) and (rec_oked.COD_VUZ_PRIM is null)
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:укажите примечание для учебного заведения  Таб.Номер='||rec_ok.TABNO);
      end if;
      
      if (rec_oked.begin_date is null) 
      and (((rec_oked.begin_date_mm is not null)) or (rec_oked.begin_date_dd is not null))
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:если не указан год поступления, день и месяц поступления нельзя вводить. Таб.Номер='||rec_ok.TABNO);
      end if;
      
      if (rec_oked.end_date is null) 
      then
        if (rec_oked.CURS is null) 
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:если не указан год окончания, укажите курс. Таб.Номер='||rec_ok.TABNO);
        end if;
        if (((rec_oked.end_date_mm is not null)) or (rec_oked.end_date_dd is not null))
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:если не указан год окончания, день и месяц окончания нельзя вводить. Таб.Номер='||rec_ok.TABNO);
        end if;
      else
        if to_date( '01.01.'||to_char(rec_oked.end_date),'dd.mm.yyyy')>rec_oked.Diplom_Date
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:НЕВЕРНЫЙ год выдачи диплома. Таб.Номер='||rec_ok.TABNO);
        end if;
       BEGIN
        if (((rec_oked.end_date_mm is not null)) and (rec_oked.end_date_dd is not null))
        then
          if to_date( to_char(rec_oked.end_date_dd)||'.'||to_char(rec_oked.end_date_mm)||'.'||to_char(rec_oked.end_date),'dd.mm.yyyy')>rec_oked.Diplom_Date
          then
            insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:Неверная дата выдачи диплома. Таб.Номер='||rec_ok.TABNO);
          end if;
        end if;
       EXCEPTION WHEN OTHERS THEN NULL;
       END;  
      end if;

      if (rec_oked.Diplom_Date is not null) and ( rec_oked.DIPLOM_NUM is null)
      then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:Если есть Дата выдачи диплома, то введите Номер диплома. Таб.Номер='||rec_ok.TABNO);
      end if;

      if (rec_oked.begin_date is not null) 
      then
        if to_date( '01.01.'||to_char(rec_oked.begin_date),'dd.mm.yyyy')>sysdate
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:НЕВЕРНЫЙ год поступления. Таб.Номер='||rec_ok.TABNO);
        end if;
      end if;
      
      if (rec_oked.begin_date is not null) 
      and (((rec_oked.begin_date_mm is not null)) and (rec_oked.begin_date_dd is not null))
      then
       BEGIN
        if to_date( to_char(rec_oked.begin_date_dd)||'.'||to_char(rec_oked.begin_date_mm)||'.'||to_char(rec_oked.begin_date),'dd.mm.yyyy')>sysdate
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:НЕВЕРНЫЙ год, день и месяц поступления. Таб.Номер='||rec_ok.TABNO);
        end if;
       EXCEPTION WHEN OTHERS THEN NULL;
       END;  
      end if;

      if (rec_oked.begin_date is null) 
      and (((rec_oked.begin_date_mm is not null)) or (rec_oked.begin_date_dd is not null))
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:если не указан год поступления, день и месяц поступления нельзя вводить. Таб.Номер='||rec_ok.TABNO);
      end if;

      if (cnt_obraz in (3,4,5)) and (rec_oked.profession_personal is null)
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:Укажите специальность Таб.Номер='||rec_ok.TABNO);
      end if;

      if (rec_oked.nostra='1') and (rec_oked.nostra_number is null or rec_oked.nostra_date is null)
      then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:Если есть Нострификация, то введите Дату и Номер. Таб.Номер='||rec_ok.TABNO);
      end if;

      if rec_oked.nostra_date > sysdate
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:Неверная дата Нострификации. Таб.Номер='||rec_ok.TABNO);
      end if;
      
      if (rec_oked.nostra_date-rec_ok.birthday) < 20*365
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:Разница Даты нострификации и даты рождения сотрудника не должна быть меньше 20 и больше возраста сотрудника. Таб.Номер='||rec_ok.TABNO);
      end if;
      
    end loop; 
--#
--      if
--      then 
--        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||'  ');
--      end if;
      
  --Место проживания наименование населенного пункта
--      if rec_ok.LIVE_PLACE is null
--      then
--        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров:Таб.Номер='||rec_ok.TABNO||' не найдено Место проживания наименование населенного пункта');
--      end if;
  -- новое -  LIVE_PLACE
--      if rec_ok.BIRTHPLACE_POINT is null
--      then
--        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров:Таб.Номер='||rec_ok.TABNO||' не найдено Место рождения наименование населенного пункта');
--      end if;
  -- национальность
      if rec_ok.NATIONALITY_CODE is null
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров:Таб.Номер='||rec_ok.TABNO||' не найдено национальность');
      end if;
  -- сведения о работе
    for rec_okpe in (select * from ok_period where branch=rec_ok.branch and personal_code=rec_ok.personal_code
       and OUT_OFFICE_DATE is null)
    loop
      if rec_okpe.BASIS_NUM is null
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе:Таб.Номер='||rec_ok.TABNO||' не найдено номер приказа');
      end if;
      if rec_okpe.BASIS_DATE is null
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе:Таб.Номер='||rec_ok.TABNO||' не найдено дата приказа');
      end if;
    end loop;
  -- награды
    for rec_okaw in (select * from ok_award where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if rec_okaw.Award_info is null
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,награды:Таб.Номер='||rec_ok.TABNO||' не найдено сведения о награде');
      end if;
      if rec_okaw.Award_date is null
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,награды:Таб.Номер='||rec_ok.TABNO||' не найдено год награждения');
      end if;

     BEGIN 
      if (rec_okaw.Award_date_dd is not null)
      and (rec_okaw.Award_date_mm is not null)
      then
       BEGIN
        if to_date(to_char(rec_okaw.Award_date_dd)||'.'||to_char(rec_okaw.Award_date_mm)||'.'||to_char(rec_okaw.Award_date),'dd.mm.yyyy') >sysdate
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,награды:Таб.Номер='||rec_ok.TABNO||' неправильный год награждения');
        end if;
        if to_date(to_char(rec_okaw.Award_date_dd)||'.'||to_char(rec_okaw.Award_date_mm)||'.'||to_char(rec_okaw.Award_date),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,награды:Таб.Номер='||rec_ok.TABNO||' Разница Даты награждения и даты рождения сотрудника  должна быть больше 18');
        end if;
       EXCEPTION WHEN OTHERS THEN NULL;
       END;  
 
      else
        if to_date('01.01.'||to_char(rec_okaw.Award_date),'dd.mm.yyyy') >sysdate
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,награды:Таб.Номер='||rec_ok.TABNO||' неправильный год награждения');
        end if;
        if to_date('01.01.'||to_char(rec_okaw.Award_date),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,награды:Таб.Номер='||rec_ok.TABNO||' Разница Даты награждения и даты рождения сотрудника  должна быть больше 18');
        end if;
      end if;
     EXCEPTION WHEN OTHERS THEN NULL;
     END;  
    end loop;
  -- избрание
    for rec_okel in (select * from ok_election where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if rec_okel.election_CODE is null
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,избрание:Таб.Номер='||rec_ok.TABNO||' не найдено сведения об избрании');
      end if;
      if rec_okel.election_date_begin is null
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,избрание:Таб.Номер='||rec_ok.TABNO||' не найдено год избрания');
      end if;
      
     BEGIN 
      if (rec_okel.election_date_begin_dd is not null)
      and (rec_okel.election_date_begin_mm is not null)
      then
       BEGIN
        if to_date(to_char(rec_okel.election_date_begin_dd)||'.'||to_char(rec_okel.election_date_begin_mm)||'.'||to_char(rec_okel.election_date_begin),'dd.mm.yyyy') >sysdate
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,избрание:Таб.Номер='||rec_ok.TABNO||' неправильный год избрания');
        end if;
        if to_date(to_char(rec_okel.election_date_begin_dd)||'.'||to_char(rec_okel.election_date_begin_mm)||'.'||to_char(rec_okel.election_date_begin),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,избрание:Таб.Номер='||rec_ok.TABNO||' Разница Даты избрания и даты рождения сотрудника  должна быть больше 18');
        end if;
       EXCEPTION WHEN OTHERS THEN NULL;
       END;  

      else
        if to_date('01.01.'||to_char(rec_okel.election_date_begin),'dd.mm.yyyy') >sysdate
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,избрание:Таб.Номер='||rec_ok.TABNO||' неправильный год избрание');
        end if;
        if to_date('01.01.'||to_char(rec_okel.election_date_begin),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,избрание:Таб.Номер='||rec_ok.TABNO||' Разница Даты избрание и даты рождения сотрудника  должна быть больше 18');
        end if;
      end if;
     EXCEPTION WHEN OTHERS THEN NULL;
     END;  
      
    end loop;
  -- квалификация
  -- квалификация
    for rec_okri in (select * from ok_rise where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if rec_okri.rise_date_year is null
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,квалификация:Таб.Номер='||rec_ok.TABNO||' не найден год квалификации');
      end if;
      if rec_okri.rise_date_mm is null
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,квалификация:Таб.Номер='||rec_ok.TABNO||' не найден месяц квалификации');
      end if;
      if rec_okri.rise_date_dd is null
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,квалификация:Таб.Номер='||rec_ok.TABNO||' не найден день квалификации');
      end if;

     BEGIN 
      if (rec_okri.rise_date_dd is not null)
      and (rec_okri.rise_date_mm is not null)
      then
       BEGIN
        if to_date(to_char(rec_okri.rise_date_dd)||'.'||to_char(rec_okri.rise_date_mm)||'.'||to_char(rec_okri.rise_date_year),'dd.mm.yyyy') >sysdate
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,квалификации:Таб.Номер='||rec_ok.TABNO||' неправильный год квалификации');
        end if;
        if to_date(to_char(rec_okri.rise_date_dd)||'.'||to_char(rec_okri.rise_date_mm)||'.'||to_char(rec_okri.rise_date_year ),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,квалификации:Таб.Номер='||rec_ok.TABNO||' Разница Даты квалификации и даты рождения сотрудника  должна быть больше 18');
        end if;
       EXCEPTION WHEN OTHERS THEN NULL;
       END;  
      else
        if to_date('01.01.'||to_char(rec_okri.rise_date_year),'dd.mm.yyyy') >sysdate
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,квалификации:Таб.Номер='||rec_ok.TABNO||' неправильный год квалификации');
        end if;
        if to_date('01.01.'||to_char(rec_okri.rise_date_year),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,квалификации:Таб.Номер='||rec_ok.TABNO||' Разница Даты квалификации и даты рождения сотрудника  должна быть больше 18');
        end if;
      end if;
     EXCEPTION WHEN OTHERS THEN NULL;
     END;  

    end loop;
    -- ин яз
    for rec_oklang in (select * from ok_LANGUAGE where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if (rec_oklang.LANGUAGE_CODE is null)
      and (rec_oklang.COD_LANG_PRIM is null)
      then 
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,ин.яз:Таб.Номер='||rec_ok.TABNO||' Если не указан код иностранного языка из справочника, то обязательно заполняется реквизит Примечание для кода иностранного языка');
      end if;
    end loop;
    -- заграница
    for rec_okvoy in (select * from ok_voyage where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if (rec_okvoy.VOYAGE_STR ='860')
      then 
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Зарубежные поездки:Таб.Номер='||rec_ok.TABNO||' Реквизит Пребывание за границей страна не должен быть равен значению Узбекистан');
      end if;
      if (rec_okvoy.VOYAGE_DATE is null)
      then 
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Зарубежные поездки:Таб.Номер='||rec_ok.TABNO||' укажите год даты выезда');
      end if;
      if (rec_okvoy.VOYAGE_DATE is null)
      then
        if (rec_okvoy.VOYAGE_DATE_MM is not null) or (rec_okvoy.VOYAGE_DATE_DD is not null)
        then 
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Зарубежные поездки:Таб.Номер='||rec_ok.TABNO||' Если Год выезда за границу не указан, то день и месяц выезда не указывается');
        end if;
        if (rec_okvoy.DATA_IN is not null)
        then 
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Зарубежные поездки:Таб.Номер='||rec_ok.TABNO||' Если Дата выезда за границу не указан, то Дата возвращения не указывается');
        end if;
      end if;
      if (rec_okvoy.DATA_IN is null)
      then
        if (rec_okvoy.DATA_IN_MM is not null) or (rec_okvoy.DATA_IN_DD is not null)
        then 
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,Зарубежные поездки:Таб.Номер='||rec_ok.TABNO||' Если год даты возвращения из-за границы не указан, то число и месяц даты возвращения не должны указываться');
        end if;
      end if;

     BEGIN
      if (rec_okvoy.VOYAGE_DATE_dd is not null)
      and (rec_okvoy.VOYAGE_DATE_mm is not null)
      then
       BEGIN
        if to_date(to_char(rec_okvoy.VOYAGE_DATE_dd)||'.'||to_char(rec_okvoy.VOYAGE_DATE_mm)||'.'||to_char(rec_okvoy.VOYAGE_DATE),'dd.mm.yyyy') >sysdate
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,зарубежной поездки:Таб.Номер='||rec_ok.TABNO||' неправильный год зарубежной поездки');
        end if;
        if to_date(to_char(rec_okvoy.VOYAGE_DATE_dd)||'.'||to_char(rec_okvoy.VOYAGE_DATE_mm)||'.'||to_char(rec_okvoy.VOYAGE_DATE ),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,зарубежной поездки:Таб.Номер='||rec_ok.TABNO||' Разница Даты зарубежной поездки и даты рождения сотрудника  должна быть больше 18');
        end if;
       EXCEPTION WHEN OTHERS THEN NULL;
       END;  

      else
        if to_date('01.01.'||to_char(rec_okvoy.VOYAGE_DATE),'dd.mm.yyyy') >sysdate
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,зарубежной поездки:Таб.Номер='||rec_ok.TABNO||' неправильный год зарубежной поездки');
        end if;
        if to_date('01.01.'||to_char(rec_okvoy.VOYAGE_DATE),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,зарубежной поездки:Таб.Номер='||rec_ok.TABNO||' Разница Даты зарубежной поездки и даты рождения сотрудника  должна быть больше 18');
        end if;
      end if;
     EXCEPTION WHEN OTHERS THEN NULL;
     END;  

      if ((rec_okvoy.DATA_IN_dd is not null)
      or (rec_okvoy.DATA_IN_mm is not null))
      and ((rec_okvoy.VOYAGE_DATE_dd is null)
      or (rec_okvoy.VOYAGE_DATE_mm is null))
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,зарубежной поездки:Таб.Номер='||rec_ok.TABNO||' если указан день и месяц возвращения из зарубежной поездки то укажите день и месяц поездки');
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
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,зарубежной поездки:Таб.Номер='||rec_ok.TABNO||' неправильный год возвращения из зарубежной поездки');
        end if;
        if to_date(to_char(rec_okvoy.DATA_IN_dd)||'.'||to_char(rec_okvoy.DATA_IN_mm)||'.'||to_char(rec_okvoy.DATA_IN ),'dd.mm.yyyy') -
           to_date(to_char(rec_okvoy.VOYAGE_DATE_dd)||'.'||to_char(rec_okvoy.VOYAGE_DATE_mm)||'.'||to_char(rec_okvoy.VOYAGE_DATE),'dd.mm.yyyy') < 0
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,зарубежной поездки:Таб.Номер='||rec_ok.TABNO||' Неверная Даты возвращения из зарубежной поездки ');
        end if;
      else
        if to_date('01.01.'||to_char(rec_okvoy.DATA_IN),'dd.mm.yyyy') >sysdate
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,зарубежной поездки:Таб.Номер='||rec_ok.TABNO||' неправильный год возвращения из зарубежной поездки');
        end if;
        if rec_okvoy.DATA_IN < rec_okvoy.VOYAGE_DATE
        then
          insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,зарубежной поездки:Таб.Номер='||rec_ok.TABNO||' Разница Даты возвращения из зарубежной поездки и даты рождения сотрудника  должна быть больше 18');
        end if;
      end if;
     EXCEPTION WHEN OTHERS THEN NULL;
     END;  
    end loop;
  -- Партия в 253 строке в proc_check_w.check_IIAS для Елены Борисовны по ИИАС добавьте проверку
    for rec_okpt in (select * from ok_party where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if rec_okpt.party_CODE is null
      then
        insert into rep_temp (name_1) values ('Ошибка для отчетности ИИАС,Отдел Кадров,партия:Таб.Номер='||rec_ok.TABNO||' не найдено сведения о партии');
      else
        select count(s_id) into cnt from ss_ok_nci
        where nci_id=73 and s_id='01' and ok_id= rec_okpt.party_code;
        if (cnt<1) and (rec_okpt.party_date is null)
        then
          insert into rep_temp (name_1) values ('Ошибка 05928 для отчетности ИИАС,Отдел Кадров,партия:Таб.Номер='||rec_ok.TABNO||' не найдено год вступления');
        end if;
        if (cnt<1) and (rec_okpt.party_date is not null)
        then
          if ((rec_okpt.party_date- to_number(to_char(rec_ok.birthday,'yyyy')) )<18)
          or (rec_okpt.party_date> to_number(to_char(sysdate,'yyyy')) )
          then
            insert into rep_temp (name_1) values ('Ошибка 05929 для отчетности ИИАС,Отдел Кадров,партия:Таб.Номер='||rec_ok.TABNO||' не правильный год вступления '||to_number(rec_okpt.party_date));
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
