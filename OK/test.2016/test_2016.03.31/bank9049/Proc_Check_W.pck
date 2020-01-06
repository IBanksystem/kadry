CREATE OR REPLACE Package BANK9049.Proc_Check_W AUTHID CURRENT_USER
is
  Version constant char(12) := '#~03032015~#';
  TYPE cur IS REF CURSOR;
  procedure  CheckW;
  procedure  OpenDay;
  procedure  Check_IIAS;
  procedure  Check_IIAS_OK;
  procedure  Check_LD;
  procedure  Check_SD;
  procedure  Check_006;
  procedure  PrintCheckW(rep_cur IN OUT        CUR);
  ErrOrPrint Char(1)  := 'E';
  i          Integer := 0;
end;
/
CREATE OR REPLACE Package Body BANK9049.Proc_Check_W is
  Version constant char(12) := '#~03032015~#';
procedure  OpenDay is
begin
  delete controle_w;
  insert into controle_w(branch,status)(select branch, 0 from ss_dblink_branch);
end;
--------------------------------------------------------------------------------
procedure Err(Mes char) is
begin
  if ErrOrPrint = 'P' then
     Inc(i);
     Insert Into rep_temp(Id, Name_1)
            Values (i, Mes);
  else
     Errors.GenError(0,'Ошибка контроля. Распечатайте Меню->Корсчет->Отчет');
  end if;
end;
--------------------------------------------------------------------------------
procedure CheckW is
  cnt number;
  My_Ord number (9);
begin
-- Проверка разрешения отправки W
  ErrOrPrint := 'E';
  Select count(*) Into cnt From Controle_W where Branch=Info.GetBranch and status=1;
  if cnt <> 0 then
    select Seq_Prt.nextval into My_Ord from dual;
    insert into Elp_Protocol (Oper_date, name, Ord)
        values (Info.getDay, 'W разблокирован Головным оффисом = '||cnt, My_Ord);
    return;
  end if;

-- Проверка требований ИИАС ЦБ
  Check_IIAS;
  Check_IIAS_OK;
-- Проверка ошибок по кредитам
  Check_LD;
-- Проверка ошибок по SD
  Check_SD;
-- Проверки ХалкБанка
  if info.GetBankType = '006' then
    Check_006;
  end if;

end;
--------------------------------------------------------------------------------
procedure PrintCheckW(rep_cur IN OUT        CUR) is
begin
  ErrOrPrint := 'P';
  delete from rep_temp where ses_id=userenv('sessionid');
  Inc(i);
  Insert Into rep_temp(Id, Name_1)
       Values (i, 'Отчет проверок W файла, для корректной отправки. За дату '||info.GetDay||' МФО '||info.GetBranch);
-- Проверка требований ИИАС ЦБ
  Check_IIAS;
  Check_IIAS_OK;
-- Проверка ошибок по кредитам
  Check_LD;
-- Проверка ошибок по SD
  Check_SD;
-- Проверки ХалкБанка
  if info.GetBankType = '006' then
    Check_006;
  end if;
  OPEN rep_cur FOR
     SELECT name_1          as Наименование
     FROM rep_temp where ses_id=userenv('sessionid') order by id;
end;
--------------------------------------------------------------------------------
procedure Check_IIAS is
 sopf                   integer := 0;
 svsbs                  integer := 0;
 sbranch                integer := 0;
 sreg                   integer := 0;
 sdis                   integer := 0;
 scod                   integer := 0;
 msg                    varchar2(500);
 ssum                   integer := 0;
 sd_r                   integer := 0;
 cnt number;
begin
  for rec in (select b.opf j_opf,b.code_sector j_code_sector,b.region j_region,b.distr j_distr,b.code_organ_direct J_CODE_ORGAN_DIRECT,
                     a.code_form , a.code_type, a.id_client, a.name
                from client a, client_j b, client_p c
               where a.BRANCH = b.BRANCH(+) and a.BRANCH = c.BRANCH(+) and
                     a.ID_CLIENT = b.ID(+) and a.ID_CLIENT = c.ID(+) and
                     a.code_subject='J' and b.state=2  and a.sign_registr=1
                     and a.code_type not in ('06','07')
            order by a.id_client)
  loop
    ssum:=0;
    if rec.code_type='11' then sopf:=1 ;
    else
      select count(*) into sopf    from s_opf where opf_id=rec.j_opf and act='A';
      if sopf = 0 then
        select count(*) into sopf from S_SPR_OPF1 where opf_id=rec.j_opf and act='A';
      end if;
    end if;

    select count(*) into svsbs   from s_vsbs where kod=rec.code_form and act='A';
    select count(*) into sbranch from s_branch where branch_id=rec.j_code_sector and act='A';
    select count(*) into sreg    from s_region where region_id=rec.j_region and act='A';
    select count(*) into sdis    from s_distr where distr=rec.j_distr and act='A';
    select count(*) into scod    from s_soogun where soogu=rec.J_CODE_ORGAN_DIRECT and act='A';
    select count(*) into sd_r    from s_distr where distr=rec.j_distr and region_id=rec.j_region and act='A';

    msg:=Rec.Id_Client||'-'||Rec.Name;

    if sopf=0 then msg:=msg||'-'||'Неверная Орг.Прав. Форма';end if;
    if svsbs=0 then msg:=msg||'-'||'Неверная Форма собственности';end if;
    if sbranch=0 then msg:=msg||'-'||'Неверный код отрасли';end if;
    if sreg=0 then msg:=msg||'-'||'Неверный код области';end if;
    if sdis=0 then msg:=msg||'-'||'Неверный код района';end if;
    if scod=0 then msg:=msg||'-'||'Неверный код вышест. организации';end if;
    if sd_r=0 then msg:=msg||'-'||'Не соответсвует код района для кода области';end if;

    ssum:=sopf+svsbs+sbranch+sreg+sdis+scod+sd_r;

    if ssum<7 then
       Err('Ошибка для отчетности ИИАС, клиент:'||msg);
    end if;

  end loop;

  For Rec In (Select Acc_cl from k2 where state=1 and Acc_cl like '20206%')
  Loop
     Err('Ошибка для отчетности ИИАС, Картотека 2: Физических лиц нельзя оприходовать в Картотеку 2 Счет='||rec.Acc_cl);
  End Loop;

  For Rec In (Select Acc_cl,doc_num,acc_co,Purpose_id from k2 where state=1 and Purpose_id not in (select kod from s_plkat where act ='A' and priory is not null))
  Loop
     Err('Ошибка для отчетности ИИАС, Картотека 2: Не соответствие к справочнику <Назначение плататежа по неоплаченным в срок платежным документам> Счет='||rec.Acc_cl||' Док='||rec.doc_num||' СчетКорр='||rec.acc_co||' Код='||rec.Purpose_id);
  End Loop;

  For Rec In (Select Acc_cl,doc_num,acc_co,Rep_Sec from k2 where state=1 and nvl(trim(Rep_Sec),'AA') not in (select shifr_n from s_shifrn where act ='A'))
  Loop
     Err('Ошибка для отчетности ИИАС, Картотека 2: Не соответствие к справочнику <Шифры неплатежей> Счет='||rec.Acc_cl||' Док='||rec.doc_num||' СчетКорр='||rec.acc_co||' Шифр='||rec.Rep_Sec);
  End Loop;
  For Rec In (Select Acc_cl,doc_num,acc_co,Purpose_id from k2 where state=1 and SubStr(acc_co,1,5) not in (select code_b from s_account where act ='A' and substr(code_b,4,2)<>'00'))
  Loop
     Err('Ошибка для отчетности ИИАС, Картотека 2: Не соответствие к справочнику <План счетов> Счет='||rec.Acc_cl||' Док='||rec.doc_num||' СчетКорр='||rec.acc_co);
  End Loop;
  For Rec In (Select Acc_cl,doc_num,bank_co from k2 where state=1 and bank_co not in (select bank_id from s_mfo where act ='A'))
  Loop
     Err('Ошибка для отчетности ИИАС, Картотека 2: Не соответствие к справочнику <Отделения банков Республики Узбекистан> Счет='||rec.Acc_cl||' Док='||rec.doc_num||' МФО_Корр='||rec.bank_co);
  End Loop;
  For Rec In (Select Acc_cl,doc_num,acc_co from k2 where state=1 and SubStr(acc_co,6,3) not in (select kod from s_val where act ='A'))
  Loop
     Err('Ошибка для отчетности ИИАС, Картотека 2: Не соответствие к справочнику <Валюты> Счет='||rec.Acc_cl||' Док='||rec.doc_num||' СчетКорр='||rec.acc_co);
  End Loop;
  For Rec In (Select Acc_cl,doc_num,acc_co from k2 where state=1 and nvl(length(trim(TRANSLATE(doc_num, '0123456789', '          '))),0) <> 0 and bank_cl <> bank_co)
  Loop
     Err('Ошибка для отчетности ИИАС, Картотека 2: Номер документа имеет не цыфровое значение Счет='||rec.Acc_cl||' Док='||rec.doc_num||' СчетКорр='||rec.acc_co);
  End Loop;


  For Rec In (select a.* from account a where a.branch = info.Getbranch and a.acc_bal in (23402,23403,23409) and a.state <> 3
  and a.id_order not in (select s.uns_id from s_dohbud s where s.doh_id =3 and s.act = 'A' and nvl(s.uns_id,0) <> 0))
  Loop
     Err('Ошибка открытия счетов '||rec.Bal||': Не соответствие УНС к справочнику <Доходы бюджета Республики Узбекистан> Письмо ЦБ №15-21/186 от 16.02.12 Счет='||rec.id||' УНС='||rec.id_order);
  End Loop;

  For Rec In (select a.* from account a where a.branch = info.Getbranch and a.acc_bal in (23407,20207) and a.state <> 3
  and a.id_order not in (select s.uns_id from s_dohbud s where s.doh_id in (3,4) and s.act = 'A' and nvl(s.uns_id,0) <> 0))
  Loop
     Err('Ошибка открытия счетов '||rec.Bal||': Не соответствие УНС к справочнику <Доходы бюджета Республики Узбекистан> Письмо ЦБ №15-21/186 от 16.02.12 Счет='||rec.id||' УНС='||rec.id_order);
  End Loop;
end;
--------------------------------------------------------------------------------
procedure Check_IIAS_OK is
  cnt number;
  cnt_uchzav number;
  cnt_obraz number;
begin
-- 19.04.2014 --
  For Rec In (select TABNO,PASS_NUM from OK_PERSONAL where PASS_SERIYA is null and STATUS_CODE IN (2,5))
  Loop
     err('Ошибка 05921 для отчетности ИИАС, Отдел Кадров: не указана серия паспорта Таб.Номер='||rec.TABNO);
  End Loop;

  For Rec In (select TABNO,COD_STR_BIRTH from OK_PERSONAL
    where (COD_STR_BIRTH is null or COD_STR_BIRTH not in (select code_str from s_str))
    and STATUS_CODE in (2,5) )
  Loop
     err('Ошибка для отчетности ИИАС, Отдел Кадров: Не соответствие к справочнику <Страны и территории> Таб.Номер='||rec.TABNO||' Страна рожд.='||rec.COD_STR_BIRTH);
  End Loop;

  For Rec In (select TABNO,COD_STR_SITIZENT from OK_PERSONAL
     where (COD_STR_SITIZENT is null or COD_STR_SITIZENT not in (select code_str from s_str))
     and STATUS_CODE in (2,5) )
  Loop
     err('Ошибка для отчетности ИИАС, Отдел Кадров: Не соответствие к справочнику <Страны и территории> Таб.Номер='||rec.TABNO||' Cтрана гражд.='||rec.COD_STR_SITIZENT);
  End Loop;

  For Rec In (select TABNO,COD_STR_LIVE from OK_PERSONAL
    where (COD_STR_LIVE is null or COD_STR_LIVE not in (select code_str from s_str))
    and STATUS_CODE in (2,5) )
  Loop
     err('Ошибка для отчетности ИИАС, Отдел Кадров: Не соответствие к справочнику <Страны и территории> Таб.Номер='||rec.TABNO||' Страна проживания='||rec.COD_STR_LIVE);
  End Loop;

  For Rec In (select ok_p.TABNO,SS_OK_NCI.OK_ID from OK_PERSONAL ok_p,OK_DEGREE ok_d,(select * from SS_OK_NCI where SS_OK_NCI.NCI_ID=75) SS_OK_NCI
              where OK_P.PERSONAL_CODE=OK_D.PERSONAL_CODE and OK_D.DEGREE_CODE=SS_OK_NCI.Ok_Id(+) and ok_p.STATUS_CODE in (2,5) and SS_OK_NCI.Ok_Id is null)
  Loop
     err('Ошибка для отчетности ИИАС, Отдел Кадров: Не соответствие к справочнику <Ученые степени> Таб.Номер='||rec.TABNO||' Ученые степени='||rec.OK_ID);
  End Loop;

  For Rec In (select ok_p.TABNO,SS_OK_NCI.OK_ID from OK_PERSONAL ok_p,OK_ACADEMIC ok_a,(select * from SS_OK_NCI where SS_OK_NCI.NCI_ID=76) SS_OK_NCI
              where ok_p.PERSONAL_CODE=OK_A.PERSONAL_CODE and OK_A.ACADEMIC_CODE=SS_OK_NCI.Ok_Id(+) and ok_p.STATUS_CODE in (2,5) and SS_OK_NCI.Ok_Id is null)
  Loop
     err('Ошибка для отчетности ИИАС, Отдел Кадров: Не соответствие к справочнику <Ученые звания> Таб.Номер='||rec.TABNO||' Ученые звание='||rec.OK_ID);
  End Loop;

  For Rec In (select TABNO,region_id from OK_PERSONAL ok_p
     where (ok_p.REGION_ID is null or ok_p.REGION_ID not in (select region_id from s_region))
     and ok_p.STATUS_CODE in (2,5) and ok_p.cod_str_birth = '860' )
  Loop
     err('Ошибка для отчетности ИИАС, Отдел Кадров: Не соответствие к справочнику <Области Республики Узбекистан> Таб.Номер='||rec.TABNO||' Место рожд.обл.='||rec.region_id);
  End Loop;

  For Rec In (select TABNO,COD_OBL_LIVE from OK_PERSONAL
     where (COD_OBL_LIVE is null or COD_OBL_LIVE not in (select region_id from s_region))
     and STATUS_CODE in (2,5) and cod_str_live = '860' )
  Loop
     err('Ошибка для отчетности ИИАС, Отдел Кадров: Не соответствие к справочнику <Области Республики Узбекистан> Таб.Номер='||rec.TABNO||' Область проживания='||rec.COD_OBL_LIVE);
  End Loop;

  For Rec In (select TABNO,distr from OK_PERSONAL ok_p
     where (ok_p.distr is null or ok_p.distr not in (select distr from s_distr))
     and ok_p.STATUS_CODE in (2,5) and cod_str_birth = '860' )
  Loop
     err('Ошибка для отчетности ИИАС, Отдел Кадров: Не соответствие к справочнику <районы Республики Узбекистан> Таб.Номер='||rec.TABNO||' Место рожд.район.='||rec.distr);
  End Loop;

  For Rec In (select TABNO,COD_DISTR_LIVE from OK_PERSONAL ok_p
     where (COD_DISTR_LIVE is null or COD_DISTR_LIVE not in (select distr from s_distr))
     and ok_p.STATUS_CODE in (2,5) and cod_str_live = '860' )
  Loop
     err('Ошибка для отчетности ИИАС, Отдел Кадров: Не соответствие к справочнику <районы Республики Узбекистан> Таб.Номер='||rec.TABNO||' район проживания='||rec.COD_DISTR_LIVE);
  End Loop;

  For Rec In (select TABNO,EDUCATION_TITLE_CODE from OK_PERSONAL where nvl(EDUCATION_TITLE_CODE,0)=0 and STATUS_CODE IN (2, 5)
               union all
              select TABNO,EDUCATION_TITLE_CODE from OK_PERSONAL,(select * from SS_OK_NCI where SS_OK_NCI.NCI_ID=74) ok74 where EDUCATION_TITLE_CODE is not null
                 and STATUS_CODE IN (2, 5) and EDUCATION_TITLE_CODE  = ok74.OK_ID (+) and ok74.OK_ID is null)
  Loop
     err('Ошибка для отчетности ИИАС, Отдел Кадров: Не соответствие к справочнику <Наименование Образования> Таб.Номер='||rec.TABNO||' Образование='||rec.EDUCATION_TITLE_CODE);
  End Loop;

  For Rec In (select TABNO,Nps_Id from OK_PERSONAL where STATUS_CODE IN (2,5) and (Nps_Id is null or length(nvl(Nps_Id,'0'))<14))
  Loop
     err('Ошибка для отчетности ИИАС, Отдел Кадров: Ошибка в длине номере пенсионного счета Таб.Номер='||rec.TABNO||' Пенсионный счет='||rec.Nps_Id);
  End Loop;

 -- For Rec In (select TABNO,PASS_NUM from OK_PERSONAL where length(nvl(PASS_NUM,'0'))<>7 and STATUS_CODE IN (2,5))
 -- Loop
 --    err('Ошибка для отчетности ИИАС, Отдел Кадров: Ошибка в длине номера паспорта Таб.Номер='||rec.TABNO||' Номер паспорта='||rec.PASS_NUM);
 -- End Loop;

  For Rec In (select Nps_Id, count(*) cnt from OK_PERSONAL where STATUS_CODE IN (2,5) group by Nps_Id having count(*)>1)
  Loop
     err('Ошибка для отчетности ИИАС, Отдел Кадров: Ошибка в уникальность пенсионного номера  Пенсионный счет='||rec.Nps_Id||' существует в кол-ве= '||Rec.cnt);
  End Loop;

--  select count(*) Into cnt FROM OK_PERSONAL, (select * from SS_OK_NCI where NCI_ID=79) BOSS where STATUS_CODE IN (2, 5) and POST_CODE=BOSS.OK_ID ;
--  if cnt = 0 then
--     err('Ошибка для отчетности ИИАС, Отдел Кадров: Отсутствует информация о <Руководящем составе>');
--  end if;

  for rec_ok in (select okp.BRANCH, okp.PERSONAL_CODE,  okp.STATUS_CODE, okp.gender_code,
     okp.FAMILY, okp.FIRST_NAME, okp.PATRONYMIC, okp.NATIONALITY_CODE,
     okp.REGION_ID, okp.DISTR, okp.TABNO,
     okp.DEPARTMENT_CODE, okp.POST_CODE, okp.NPS_ID,
     okp.SPECIAL_CODE, okp.COD_DISTR_UVD, okp.COD_DISTR_PRIM, okp.COD_STR_BIRTH, okp.COD_OBL_PRIM,
     okp.COD_PLACE_BIRTH_PRIM, okp.COD_STR_LIVE,
     okp.COD_OBL_LIVE, okp.COD_OBL_LIVE_PRIM, okp.COD_DISTR_LIVE, okp.COD_DISTR_LIVE_PRIM,
     okp.HOME_ADDRESSFACT_REGION_ID, okp.HOME_ADDRESSFACT_DISTR,
     okp.HOME_ADDRESS_REGION_ID, okp.HOME_ADDRESS_DISTR,
     okp.birthday, okp.pass_date,okp.COD_STR_SITIZENT,okp.CHECK_KFS, okp.BANK_SPEC, okp.EDUCATION_TITLE_CODE
     from ok_personal okp, SS_OK_NCI son
  where okp.tabno=okp.tabno -- таб номера 1,2,3
   and okp.branch=okp.branch and okp.STATUS_CODE in (2,5)
                    and okp.post_code=son.ok_id and son.NCI_ID=79)
  loop
      select count(*) into cnt from ok_period where branch=rec_ok.branch and personal_code=rec_ok.personal_code
      and post_code=rec_ok.post_code;
      if (cnt<1)
      then
        err('Ошибка 241 для отчетности ИИАС,Отдел Кадров:Таб.Номер='||rec_ok.TABNO||' Отсутствуют Сведения о работе в должности');
      end if;

      if (rec_ok.FAMILY is null) or (rec_ok.FIRST_NAME is null)
      then
        err('Ошибка 05918 для отчетности ИИАС,Отдел Кадров:Таб.Номер='||rec_ok.TABNO||' Фамилия и Имя должны обязательно указаны');
      end if;

      if (rec_ok.birthday is null)
      then
        err('Ошибка 05919 для отчетности ИИАС,Отдел Кадров:Таб.Номер='||rec_ok.TABNO||' Дата рождения должна быть обязательно указана');
      else
         cnt := round(months_between(sysdate,rec_ok.birthday)/12);
        if (cnt<16)
        or (cnt>90)
        then
          err('Ошибка 05919 для отчетности ИИАС,Отдел Кадров:Таб.Номер='||rec_ok.TABNO||' Дата рождения не верна');
        end if;
      end if;

      if (rec_ok.PASS_DATE is null)
      then
        err('Ошибка 05923 для отчетности ИИАС,Отдел Кадров:Таб.Номер='||rec_ok.TABNO||' Дата выдачи паспорта должна быть обязательно указана');
      else
         cnt := round(months_between(rec_ok.PASS_DATE,rec_ok.birthday)/12);
        if (cnt<16)
        then
          err('Ошибка 05923 для отчетности ИИАС,Отдел Кадров:Таб.Номер='||rec_ok.TABNO||' Дата выдачи паспорта не верна');
        end if;
      end if;

      if (rec_ok.COD_STR_SITIZENT ='860')
      then
        select count(DISTR) into cnt from s_distr where DISTR= rec_ok.cod_distr_uvd;
        if (cnt=0) or (cnt is null) or (rec_ok.cod_distr_uvd is null)
        then
          err('Ошибка 05052 для отчетности ИИАС, Отдел Кадров: Не верный Код района, УВД которого был выдан паспорт Таб.Номер='||rec_ok.TABNO||' код.='||rec_ok.cod_distr_uvd);
        end if;
      else
        if rec_ok.COD_DISTR_PRIM is null
        then
          err('Ошибка 05924 для отчетности ИИАС, Отдел Кадров: Не указано Примечание к коду района, УВД которого был выдан паспорт Таб.Номер='||rec_ok.TABNO||' Cтрана гражд.='||rec_ok.COD_STR_SITIZENT);
        end if;
      end if;

      if (rec_ok.cod_str_birth <>'860') or (rec_ok.cod_str_birth is null)
      then
        if (rec_ok.COD_OBL_PRIM is null)
        then
          err('Ошибка 05925 для отчетности ИИАС, Отдел Кадров: Не указано примечание к <Место рождения Область> Таб.Номер='||rec_ok.TABNO||' Место рожд.страна.='||rec_ok.cod_str_birth);
        end if;
        if (rec_ok.COD_PLACE_BIRTH_PRIM is null)
        then
          err('Ошибка 05926 для отчетности ИИАС, Отдел Кадров: Не указано примечание к <Место рождения Район> Таб.Номер='||rec_ok.TABNO||' Место рожд.страна.='||rec_ok.cod_str_birth);
        end if;
      else
        if (rec_ok.REGION_ID is null)
        then
          err('Ошибка для отчетности ИИАС, Отдел Кадров: Не указано <Место рождения Область> Таб.Номер='||rec_ok.TABNO||' Место рожд.страна.='||rec_ok.cod_str_birth);
        end if;
        if (rec_ok.DISTR is null)
        then
          err('Ошибка для отчетности ИИАС, Отдел Кадров: Не указано <Место рождения Район> Таб.Номер='||rec_ok.TABNO||' Место рожд.страна.='||rec_ok.cod_str_birth);
        end if;
      end if;

      if (rec_ok.COD_STR_LIVE <>'860') or (rec_ok.COD_STR_LIVE is null)
      then
        if (rec_ok.COD_OBL_LIVE_PRIM is null)
        then
          err('Ошибка для отчетности ИИАС, Отдел Кадров: Не указано примечание к <Место проживания Область> Таб.Номер='||rec_ok.TABNO||' Страна проживания='||rec_ok.COD_STR_LIVE);
        end if;
        if (rec_ok.COD_DISTR_LIVE_PRIM is null)
        then
          err('Ошибка для отчетности ИИАС, Отдел Кадров: Не указано примечание к <Место проживания Район> Таб.Номер='||rec_ok.TABNO||' Страна проживания='||rec_ok.COD_STR_LIVE);
        end if;
      else
        if (rec_ok.COD_OBL_LIVE is null)
        then
          err('Ошибка для отчетности ИИАС, Отдел Кадров: Не указано <Место проживания Область> Таб.Номер='||rec_ok.TABNO||' Страна проживания='||rec_ok.COD_STR_LIVE);
        end if;
        if (rec_ok.COD_DISTR_LIVE is null)
        then
          err('Ошибка для отчетности ИИАС, Отдел Кадров: Не указано <Место проживания Район> Таб.Номер='||rec_ok.TABNO||' Страна проживания='||rec_ok.COD_STR_LIVE);
        end if;
      end if;

      if rec_ok.CHECK_KFS is null
      then
          err('Ошибка 05930 для отчетности ИИАС, Отдел Кадров: Не указано <Отметка о принадлежности к резерву руководящих кадров> Таб.Номер='||rec_ok.TABNO);
      end if;

      if rec_ok.BANK_SPEC is null
      then
          err('Ошибка 05931 для отчетности ИИАС, Отдел Кадров: Не указано <Отметка о наличие банковской специальности> Таб.Номер='||rec_ok.TABNO);
      end if;
      if (rec_ok.EDUCATION_TITLE_CODE is not null)
      then
        select to_number(s_id) into cnt from ss_ok_nci
        where nci_id=74 and ok_id= rec_ok.EDUCATION_TITLE_CODE and rownum<2;
        if (cnt<>3) and (cnt<>4) and (cnt<>5)
        then
          for rec_d2 in (select DEGREE_CODE  from ok_degree where personal_code=rec_ok.personal_code)
          loop
            select to_number(s_id) into cnt from ss_ok_nci
            where nci_id=75 and ok_id= rec_d2.DEGREE_CODE and rownum<2;
            if cnt<>1
            then
              err('Ошибка  для отчетности ИИАС,Отдел Кадров, ученая степень должна быть Степени Нет :Таб.Номер='||rec_ok.TABNO);
            end if;
          end loop;
          for rec_a2 in (select academic_CODE  from ok_academic where personal_code=rec_ok.personal_code)
          loop
            select to_number(s_id) into cnt from ss_ok_nci
            where nci_id=76 and ok_id= rec_a2.academic_CODE and rownum<2;
            if cnt<>1
            then
              err('Ошибка  для отчетности ИИАС,Отдел Кадров, ученое звание должно быть Звания Нет :Таб.Номер='||rec_ok.TABNO);
            end if;
          end loop;
        end if;

      end if;
    for rec_okrel in (select RELATION_DEATHDAY,relation_home_address,relation_office,
                   relation_post,RELATION_FAMILY,RELATION_NAME,RELATION_code,relation_birthday,
                   COD_STR_LIVE,COD_STR_BIRTH,
                   COD_OBL_LIVE_PRIM,COD_OBL_LIVE,COD_OBL_BIRTH_PRIM,COD_OBL_BIRTH,
                   COD_CITY_PRIM, COD_CITY,COD_CITY_BIRTH,
                   COD_CITY_BIRTH_PRIM,mm_death,dd_death from ok_relation
           where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
     if (rec_okrel.RELATION_DEATHDAY is null)
     then
      if rec_okrel.relation_home_address is null
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,родственники:Таб.Номер='||rec_ok.TABNO||' не найдено место проживания родственника');
      end if;
      if (rec_okrel.RELATION_FAMILY is null) or (rec_okrel.RELATION_NAME is null)
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,родственники:Таб.Номер='||rec_ok.TABNO||' Укажите Фамилию и Имя');
      end if;
      begin
        select ok_id into cnt from ss_ok_nci
        where nci_id=81 and s_id='02' and rownum<2; -- муж
      exception when others then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,родственники:Справочник соответствия не заполнен Таб.Номер='||rec_ok.TABNO);
      end;
      if (rec_ok.gender_code=1) and (rec_okrel.relation_code=cnt)
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,родственники:Таб.Номер='||rec_ok.TABNO||' Пол Мужской- родственник не может быть Муж');
      end if;

      begin
        select ok_id into cnt from ss_ok_nci
        where nci_id=81 and s_id='01' and rownum<2; -- жена
      exception when others then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,родственники:Справочник соответствия не заполнен Таб.Номер='||rec_ok.TABNO);
      end;
      if (rec_ok.gender_code=2) and (rec_okrel.relation_code=cnt)
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,родственники:Таб.Номер='||rec_ok.TABNO||' Пол Женский -родственник не может быть Жена');
      end if;

      if (rec_okrel.relation_birthday is null)
      then
        err('Ошибка 05919 для отчетности ИИАС,Отдел Кадров,родственники:Таб.Номер='||rec_ok.TABNO||' год рождения должен быть обязательно указан');
      else
          if ( (to_number(to_char(sysdate,'yyyy')))-(rec_okrel.relation_birthday )>120)
          then
            err('Ошибка 05919 для отчетности ИИАС,Отдел Кадров,родственники:Таб.Номер='||rec_ok.TABNO||' не правильный год рождения '||to_number(rec_okrel.relation_birthday));
          end if;
      end if;

      begin
        select s_id into cnt from ss_ok_nci
        where nci_id=81 and ok_id=rec_okrel.relation_code and rownum<2; -- жена
      exception when others then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,родственники(279):Справочник соответствия не заполнен Таб.Номер='||rec_ok.TABNO);
      end;

      if cnt in ('03','04') -- данные о родителях для ЦБ должны быть старше сотрудника
      then
          if ( (to_number(to_char(rec_ok.birthday,'yyyy')))-(rec_okrel.relation_birthday )<0)
          then
            err('Ошибка 05933 для отчетности ИИАС,Отдел Кадров,родственники(286):Таб.Номер='||rec_ok.TABNO||' данные о родителях для ЦБ должны быть старше сотрудника. не правильный год рождения '||to_number(rec_okrel.relation_birthday));
          end if;
      end if;

      if cnt in ('09','10') -- данные о детях для ЦБ должны быть младше сотрудника
      then
          if ( (to_number(to_char(rec_ok.birthday,'yyyy')))-(rec_okrel.relation_birthday )>0)
          then
            err('Ошибка 05933 для отчетности ИИАС,Отдел Кадров,родственники(286):Таб.Номер='||rec_ok.TABNO||' данные о детях для ЦБ должны быть младше сотрудника. не правильный год рождения '||to_number(rec_okrel.relation_birthday));
          end if;
      end if;

      if (rec_okrel.COD_STR_LIVE <>'860') or (rec_okrel.COD_STR_LIVE is null)
      then
        if (rec_okrel.COD_OBL_LIVE_PRIM is null)
        then
          err('Ошибка для отчетности ИИАС, Отдел Кадров,родственники: Не указано примечание к <Место проживания Область> Таб.Номер='||rec_ok.TABNO||' Страна проживания='||rec_okrel.COD_STR_LIVE);
        end if;
        if (rec_okrel.COD_CITY_PRIM is null)
        then
          err('Ошибка для отчетности ИИАС, Отдел Кадров,родственники: Не указано примечание к <Место проживания Район> Таб.Номер='||rec_ok.TABNO||' Страна проживания='||rec_okrel.COD_STR_LIVE);
        end if;
      else
        if (rec_okrel.COD_OBL_LIVE is null)
        then
          err('Ошибка для отчетности ИИАС, Отдел Кадров,родственники: Не указано <Место проживания Область> Таб.Номер='||rec_ok.TABNO||' Страна проживания='||rec_okrel.COD_STR_LIVE);
        end if;
        if (rec_okrel.COD_CITY is null)
        then
          err('Ошибка для отчетности ИИАС, Отдел Кадров,родственники: Не указано <Место проживания Район> Таб.Номер='||rec_ok.TABNO||' Страна проживания='||rec_okrel.COD_STR_LIVE);
        end if;
      end if;

      if (rec_okrel.COD_STR_BIRTH <>'860') or (rec_okrel.COD_STR_BIRTH is null)
      then
        if (rec_okrel.COD_OBL_BIRTH_PRIM is null)
        then
          err('Ошибка для отчетности ИИАС, Отдел Кадров,родственники: Не указано примечание к <Место рождения Область> Таб.Номер='||rec_ok.TABNO||' Страна рождения='||rec_okrel.COD_STR_BIRTH);
        end if;
        if (rec_okrel.COD_CITY_BIRTH_PRIM is null)
        then
          err('Ошибка для отчетности ИИАС, Отдел Кадров,родственники: Не указано примечание к <Место рождения Район> Таб.Номер='||rec_ok.TABNO||' Страна рождения='||rec_okrel.COD_STR_BIRTH);
        end if;
      else
        if (rec_okrel.COD_OBL_BIRTH is null)
        then
          err('Ошибка для отчетности ИИАС, Отдел Кадров,родственники: Не указано <Место рождения Область> Таб.Номер='||rec_ok.TABNO||' Страна рождения='||rec_okrel.COD_STR_BIRTH);
        end if;
        if (rec_okrel.COD_CITY_BIRTH is null)
        then
          err('Ошибка для отчетности ИИАС, Отдел Кадров,родственники: Не указано <Место рождения Район> Таб.Номер='||rec_ok.TABNO||' Страна рождения='||rec_okrel.COD_STR_BIRTH);
        end if;
      end if;
     end if;

      if (rec_okrel.RELATION_DEATHDAY is not null)
      then
          if  (to_number(to_char(sysdate,'yyyy')))<(rec_okrel.RELATION_DEATHDAY )
          then
            err('Ошибка для отчетности ИИАС,Отдел Кадров,родственники(344):Таб.Номер='||rec_ok.TABNO||' проверьте данные о смерти родственника '||to_number(rec_okrel.RELATION_DEATHDAY));
          end if;
          if  (rec_okrel.RELATION_BIRTHDAY)>(rec_okrel.RELATION_DEATHDAY )
          then
            err('Ошибка для отчетности ИИАС,Отдел Кадров,родственники(348):Таб.Номер='||rec_ok.TABNO||' проверьте данные о рождении и смерти родственника '||to_number(rec_okrel.RELATION_DEATHDAY));
          end if;
      else
          if (rec_okrel.mm_death is not null) or (rec_okrel.dd_death is not null)
          then
            err('Ошибка для отчетности ИИАС,Отдел Кадров,родственники(344):Таб.Номер='||rec_ok.TABNO||' проверьте день,месяц- данные о смерти родственника ');
          end if;
      end if;

    end loop;

    for rec_okper in (select BRANCH,PERSONAL_CODE,IN_OFFICE_DATE,OUT_OFFICE_DATE,OFFICE_NAME,OFFICE_ADDRESS,ESTABLISHED_POST
           TYPE_PERIOD_CODE,ARTICLE_CODE,BASIS_NUM,BASIS_DATE,BASE_MOVE_CODE,ESTABLISHED_DEPARTMENT,PRIZ_SYSTEM,COD_BANK,COD_TYPE_PRN,COD_PR_OFF,
           PR_OFF,DATE_UTV_KM,NUMB_UTV_KM,DATE_PR_KVL,NUMB_PR_KVL,DATE_ATTEST,RESH_ATTEST,DOLJN_ID,NUM_PR_OFF,DATE_PR_OFF,POST_CODE,DEPARTMENT_CODE,
           established_post
         from ok_period where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if (rec_okper.in_office_date is null) or (rec_okper.in_office_date<rec_ok.birthday)
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' неверна Дата начала работы в должности '||to_char(rec_okper.in_office_date));
      else
        cnt := round(months_between(rec_okper.in_office_date,rec_ok.birthday)/12);
        if cnt<13
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' Разница даты начала работы в должности и даты рождения сотрудника не должна быть меньше 13 лет '||to_char(rec_okper.in_office_date));
        end if;
      end if;

      if (rec_okper.out_office_date is not null)
      then
        if (rec_okper.out_office_date<rec_okper.in_office_date)
        or (rec_okper.out_office_date>sysdate)
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' неверна Дата окончания работы в должности '||to_char(rec_okper.out_office_date));
        end if;
      end if;

      if (rec_okper.type_period_code is null)
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' укажите Тип стажа в строке Дата начала работы в должности '||to_char(rec_okper.in_office_date));
      end if;

      if (rec_okper.doljn_id is not null)
      then
        select count(dolj_id) into cnt from s_doljn where DOLJ_ID=rec_okper.doljn_id;
        if cnt=0
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' неверный код должности для ЦБ в строке Дата начала работы в должности '||to_char(rec_okper.in_office_date));
        end if;
      end if;

      if (rec_okper.established_post is null)
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' укажите должность в строке Дата начала работы в должности '||to_char(rec_okper.in_office_date));
      end if;

      if (rec_okper.cod_bank is not null)
      then
        select count(bank_id) into cnt from s_mfo where BANK_ID=rec_okper.cod_bank;
        if cnt=0
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' неверный код банка для ЦБ в строке Дата начала работы в должности '||to_char(rec_okper.in_office_date));
        end if;
      end if;

      if (rec_okper.basis_date is null)
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' укажите дату приказа в строке Дата начала работы в должности '||to_char(rec_okper.in_office_date));
      else
        if (rec_okper.basis_date> rec_okper.in_office_date)
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' дата приказа больше Даты начала работы в должности '||to_char(rec_okper.in_office_date));
        end if;
      end if;

      if (rec_okper.out_office_date is not null)
      then
        if (rec_okper.NUM_PR_OFF is null)
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' укажите номер приказа основания прекращения работы в должности в строке Дата завершения работы '||to_char(rec_okper.out_office_date));
        end if;
        if (rec_okper.date_pr_off is null)
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' укажите дату приказа основания прекращения работы в должности в строке Дата завершения работы '||to_char(rec_okper.out_office_date));
        else
          if (rec_okper.date_pr_off> rec_okper.out_office_date)
          then
            err('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' дата приказа основания прекращения работы в должности больше Даты завершения работы '||to_char(rec_okper.out_office_date));
          end if;
        end if;
        if (rec_okper.cod_pr_off is null)
        then
          if (rec_okper.PR_OFF is null)
          then
            err('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' укажите причину прекращения работы в должности в строке Дата завершения работы '||to_char(rec_okper.out_office_date));
          end if;
        else
          select count(prich_id) into cnt from s_prich where prich_id=rec_okper.cod_pr_off;
          if cnt=0
          then
            err('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' код причины прекращения работы в должности не соответствует справочнику в строке Дата завершения работы '||to_char(rec_okper.out_office_date));
          end if;
        end if;
      end if;

      if (rec_okper.date_utv_km is not null) and (rec_okper.numb_utv_km is null)
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' укажите Номер постановления Кабинета Министров об утверждении в занимаемой должности в строке Дата завершения работы '||to_char(rec_okper.out_office_date));
      end if;

      if (rec_okper.date_pr_kvl is not null) and (rec_okper.numb_pr_kvl is null)
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' укажите Номер протокола Квалификационной комиссии Центрального банка о соответствии должности на которую выдвигается в строке Дата завершения работы '||to_char(rec_okper.out_office_date));
      end if;

      if (rec_okper.date_attest is not null) and (rec_okper.resh_attest is null)
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе-Мехнат Фаолияти:Таб.Номер='||rec_ok.TABNO||' укажите Решение аттестационной комиссии в строке Дата завершения работы '||to_char(rec_okper.out_office_date));
      end if;

    end loop;

--      begin
--        select s_id into cnt_obraz from ss_ok_nci where nci_id=74
--          and ok_id=rec_ok.EDUCATION_TITLE_CODE and rownum<2;
--      exception when others then
--        err('Ошибка для отчетности ИИАС,Отдел Кадров,образование:Справочник соответствия не заполнен Таб.Номер='||rec_ok.TABNO);
--      end;
--
--    for rec_oked in (select BRANCH,PERSONAL_CODE,EDUCATION_CODE,BASIS_CODE,INSTITUTION_CODE,BEGIN_DATE,END_DATE,PROFESSION_PERSONAL,
--       QUALIFICATION_CODE,DIPLOM_NUM,COD_VUZ_PRIM,CURS,FAKULTET,NOSTRA,NOSTRA_SERIES,NOSTRA_NUMBER,NOSTRA_DATE,
--       DIPLOM_DATE,BEGIN_DATE_MM,BEGIN_DATE_DD,END_DATE_MM,END_DATE_DD,EDUCATION_END,EDUCATION_CITY,EDUCATION_COUNT_CODE,VID_EDUCATION_CODE
--       from ok_education where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
--    loop
--
--      begin
--        select s_id into cnt_uchzav from ss_ok_nci where nci_id=80
--          and ok_id=rec_oked.INSTITUTION_CODE and rownum<2;
--      exception when others then
--        err('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:Справочник соответствия не заполнен Таб.Номер='||rec_ok.TABNO||' код уч.заведения в ОК='||rec_oked.INSTITUTION_CODE);
--      end;
--
--      if (cnt_obraz in (1,6,7)) and (cnt_uchzav<>999)
--      then
--         err('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:неверно указано образование-среднее для высших учебных заведений Таб.Номер='||rec_ok.TABNO);
--       end if;
-- 
--       if ((cnt_uchzav=202) or (cnt_uchzav=999)) and (rec_oked.COD_VUZ_PRIM is null)
--       then
--         err('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:укажите примечание для учебного заведения Таб.Номер='||rec_ok.TABNO);
--       end if;
-- 
--       if (rec_oked.begin_date is null)
--       and (((rec_oked.begin_date_mm is not null)) or (rec_oked.begin_date_dd is not null))
--       then
--         err('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:если не указан год поступления, день и месяц поступления нельзя вводить. Таб.Номер='||rec_ok.TABNO);
--       end if;
-- 
--       if (rec_oked.end_date is null)
--       then
--         if (rec_oked.CURS is null)
--         then
--           err('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:если не указан год окончания, укажите курс. Таб.Номер='||rec_ok.TABNO);
--         end if;
--         if (((rec_oked.end_date_mm is not null)) or (rec_oked.end_date_dd is not null))
--         then
--           err('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:если не указан год окончания, день и месяц окончания нельзя вводить. Таб.Номер='||rec_ok.TABNO);
--         end if;
--       else
--         if to_date( '01.01.'||to_char(rec_oked.end_date),'dd.mm.yyyy')>rec_oked.Diplom_Date
--         then
--           err('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:НЕВЕРНЫЙ год выдачи диплома. Таб.Номер='||rec_ok.TABNO);
--         end if;
--        BEGIN
--         if (((rec_oked.end_date_mm is not null)) and (rec_oked.end_date_dd is not null))
--         then
--           if to_date( to_char(rec_oked.end_date_dd)||'.'||to_char(rec_oked.end_date_mm)||'.'||to_char(rec_oked.end_date),'dd.mm.yyyy')>rec_oked.Diplom_Date
--           then
--             err('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:Неверная дата выдачи диплома. Таб.Номер='||rec_ok.TABNO);
--           end if;
--         end if;
--        EXCEPTION WHEN OTHERS THEN NULL;
--        END;
--       end if;
-- 
--       if (rec_oked.Diplom_Date is not null) and ( rec_oked.DIPLOM_NUM is null)
--       then
--           err('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:Если есть Дата выдачи диплома, то введите Номер диплома. Таб.Номер='||rec_ok.TABNO);
--       end if;
-- 
--       if (rec_oked.begin_date is not null)
--       then
--         if to_date( '01.01.'||to_char(rec_oked.begin_date),'dd.mm.yyyy')>sysdate
--         then
--           err('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:НЕВЕРНЫЙ год поступления. Таб.Номер='||rec_ok.TABNO);
--         end if;
--       end if;
-- 
--       if (rec_oked.begin_date is not null)
--       and (((rec_oked.begin_date_mm is not null)) and (rec_oked.begin_date_dd is not null))
--       then
--        BEGIN
--         if to_date( to_char(rec_oked.begin_date_dd)||'.'||to_char(rec_oked.begin_date_mm)||'.'||to_char(rec_oked.begin_date),'dd.mm.yyyy')>sysdate
--         then
--           err('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:НЕВЕРНЫЙ год, день и месяц поступления. Таб.Номер='||rec_ok.TABNO);
--         end if;
--        EXCEPTION WHEN OTHERS THEN NULL;
--        END;
--       end if;
-- 
--       if (rec_oked.begin_date is null)
--       and (((rec_oked.begin_date_mm is not null)) or (rec_oked.begin_date_dd is not null))
--       then
--         err('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:если не указан год поступления, день и месяц поступления нельзя вводить. Таб.Номер='||rec_ok.TABNO);
--       end if;
-- 
--       if (cnt_obraz in (3,4,5)) and (rec_oked.profession_personal is null)
--       then
--         err('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:Укажите специальность Таб.Номер='||rec_ok.TABNO);
--       end if;
-- 
--       if (rec_oked.nostra='1') and (rec_oked.nostra_number is null or rec_oked.nostra_date is null)
--       then
--           err('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:Если есть Нострификация, то введите Дату и Номер. Таб.Номер='||rec_ok.TABNO);
--       end if;
-- 
--       if rec_oked.nostra_date > sysdate
--       then
--        err('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:Неверная дата Нострификации. Таб.Номер='||rec_ok.TABNO);
--      end if;
-- 
--       if (rec_oked.nostra_date-rec_ok.birthday) < 20*365
--       then
--         err('Ошибка для отчетности ИИАС,Отдел Кадров,Учебные заведения:Разница Даты нострификации и даты рождения сотрудника не должна быть меньше 20 и больше возраста сотрудника. Таб.Номер='||rec_ok.TABNO);
--       end if;
-- 
--    end loop;
      if rec_ok.NATIONALITY_CODE is null
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров:Таб.Номер='||rec_ok.TABNO||' не найдено национальность');
      end if;
    for rec_okpe in (select BASIS_NUM,BASIS_DATE from ok_period where branch=rec_ok.branch and personal_code=rec_ok.personal_code
       and OUT_OFFICE_DATE is null)
    loop
      if rec_okpe.BASIS_NUM is null
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе:Таб.Номер='||rec_ok.TABNO||' не найдено номер приказа');
      end if;
      if rec_okpe.BASIS_DATE is null
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,Сведения о работе:Таб.Номер='||rec_ok.TABNO||' не найдено дата приказа');
      end if;
    end loop;
    for rec_okaw in (select Award_info,Award_date,Award_date_dd,Award_date_mm from ok_award where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if rec_okaw.Award_info is null
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,награды:Таб.Номер='||rec_ok.TABNO||' не найдено сведения о награде');
      end if;
      if rec_okaw.Award_date is null
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,награды:Таб.Номер='||rec_ok.TABNO||' не найдено год награждения');
      end if;

     BEGIN
      if (rec_okaw.Award_date_dd is not null)
      and (rec_okaw.Award_date_mm is not null)
      then
       BEGIN
        if to_date(to_char(rec_okaw.Award_date_dd)||'.'||to_char(rec_okaw.Award_date_mm)||'.'||to_char(rec_okaw.Award_date),'dd.mm.yyyy') >sysdate
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,награды:Таб.Номер='||rec_ok.TABNO||' неправильный год награждения');
        end if;
        if to_date(to_char(rec_okaw.Award_date_dd)||'.'||to_char(rec_okaw.Award_date_mm)||'.'||to_char(rec_okaw.Award_date),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,награды:Таб.Номер='||rec_ok.TABNO||' Разница Даты награждения и даты рождения сотрудника  должна быть больше 18');
        end if;
       EXCEPTION WHEN OTHERS THEN NULL;
       END;

      else
        if to_date('01.01.'||to_char(rec_okaw.Award_date),'dd.mm.yyyy') >sysdate
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,награды:Таб.Номер='||rec_ok.TABNO||' неправильный год награждения');
        end if;
        if to_date('01.01.'||to_char(rec_okaw.Award_date),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,награды:Таб.Номер='||rec_ok.TABNO||' Разница Даты награждения и даты рождения сотрудника  должна быть больше 18');
        end if;
      end if;
     EXCEPTION WHEN OTHERS THEN NULL;
     END;
    end loop;
    for rec_okel in (select BRANCH,PERSONAL_CODE,ELECTION_ADDRESS,ELECTION_NAME,
       ELECTION_POST,ELECTION_DATE_BEGIN,ELECTION_DATE_END,ELECTION_CODE,
       ELECTION_DATE_BEGIN_MM,ELECTION_DATE_BEGIN_DD,ELECTION_DATE_END_MM,
       ELECTION_DATE_END_DD from ok_election
          where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if rec_okel.election_CODE is null
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,избрание:Таб.Номер='||rec_ok.TABNO||' не найдено сведения об избрании');
      end if;
      if rec_okel.election_date_begin is null
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,избрание:Таб.Номер='||rec_ok.TABNO||' не найдено год избрания');
      end if;

     BEGIN
      if (rec_okel.election_date_begin_dd is not null)
      and (rec_okel.election_date_begin_mm is not null)
      then
       BEGIN
        if to_date(to_char(rec_okel.election_date_begin_dd)||'.'||to_char(rec_okel.election_date_begin_mm)||'.'||to_char(rec_okel.election_date_begin),'dd.mm.yyyy') >sysdate
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,избрание:Таб.Номер='||rec_ok.TABNO||' неправильный год избрания');
        end if;
        if to_date(to_char(rec_okel.election_date_begin_dd)||'.'||to_char(rec_okel.election_date_begin_mm)||'.'||to_char(rec_okel.election_date_begin),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,избрание:Таб.Номер='||rec_ok.TABNO||' Разница Даты избрания и даты рождения сотрудника  должна быть больше 18');
        end if;
       EXCEPTION WHEN OTHERS THEN NULL;
       END;

      else
        if to_date('01.01.'||to_char(rec_okel.election_date_begin),'dd.mm.yyyy') >sysdate
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,избрание:Таб.Номер='||rec_ok.TABNO||' неправильный год избрание');
        end if;
        if to_date('01.01.'||to_char(rec_okel.election_date_begin),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,избрание:Таб.Номер='||rec_ok.TABNO||' Разница Даты избрание и даты рождения сотрудника  должна быть больше 18');
        end if;
      end if;
     EXCEPTION WHEN OTHERS THEN NULL;
     END;

    end loop;
    for rec_okri in (select BRANCH,PERSONAL_CODE,RISE_DATE_YEAR,RISE_INFO,RISE_DATE_MM,RISE_DATE_DD from ok_rise
           where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if rec_okri.rise_date_year is null
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,квалификация:Таб.Номер='||rec_ok.TABNO||' не найден год квалификации');
      end if;
      if rec_okri.rise_date_mm is null
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,квалификация:Таб.Номер='||rec_ok.TABNO||' не найден месяц квалификации');
      end if;
      if rec_okri.rise_date_dd is null
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,квалификация:Таб.Номер='||rec_ok.TABNO||' не найден день квалификации');
      end if;

     BEGIN
      if (rec_okri.rise_date_dd is not null)
      and (rec_okri.rise_date_mm is not null)
      then
       BEGIN
        if to_date(to_char(rec_okri.rise_date_dd)||'.'||to_char(rec_okri.rise_date_mm)||'.'||to_char(rec_okri.rise_date_year),'dd.mm.yyyy') >sysdate
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,квалификации:Таб.Номер='||rec_ok.TABNO||' неправильный год квалификации');
        end if;
        if to_date(to_char(rec_okri.rise_date_dd)||'.'||to_char(rec_okri.rise_date_mm)||'.'||to_char(rec_okri.rise_date_year ),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,квалификации:Таб.Номер='||rec_ok.TABNO||' Разница Даты квалификации и даты рождения сотрудника  должна быть больше 18');
        end if;
       EXCEPTION WHEN OTHERS THEN NULL;
       END;
      else
        if to_date('01.01.'||to_char(rec_okri.rise_date_year),'dd.mm.yyyy') >sysdate
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,квалификации:Таб.Номер='||rec_ok.TABNO||' неправильный год квалификации');
        end if;
        if to_date('01.01.'||to_char(rec_okri.rise_date_year),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,квалификации:Таб.Номер='||rec_ok.TABNO||' Разница Даты квалификации и даты рождения сотрудника  должна быть больше 18');
        end if;
      end if;
     EXCEPTION WHEN OTHERS THEN NULL;
     END;

    end loop;
    for rec_oklang in (select LANGUAGE_CODE,COD_LANG_PRIM from ok_LANGUAGE where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if (rec_oklang.LANGUAGE_CODE is null)
      and (rec_oklang.COD_LANG_PRIM is null)
      then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,ин.яз:Таб.Номер='||rec_ok.TABNO||' Если не указан код иностранного языка из справочника, то обязательно заполняется реквизит Примечание для кода иностранного языка');
      end if;
    end loop;
    for rec_okvoy in (select BRANCH,PERSONAL_CODE,VOYAGE_DATE,VOYAGE_LAND,
        VOYAGE_INFO,VOYAGE_STR,DATA_IN,VOYAGE_DATE_MM,
        VOYAGE_DATE_DD,DATA_IN_MM,DATA_IN_DD from ok_voyage
          where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if (rec_okvoy.VOYAGE_STR ='860')
      then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,Зарубежные поездки:Таб.Номер='||rec_ok.TABNO||' Реквизит Пребывание за границей страна не должен быть равен значению Узбекистан');
      end if;
      if (rec_okvoy.VOYAGE_DATE is null)
      then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,Зарубежные поездки:Таб.Номер='||rec_ok.TABNO||' укажите год даты выезда');
      end if;
      if (rec_okvoy.VOYAGE_DATE is null)
      then
        if (rec_okvoy.VOYAGE_DATE_MM is not null) or (rec_okvoy.VOYAGE_DATE_DD is not null)
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,Зарубежные поездки:Таб.Номер='||rec_ok.TABNO||' Если Год выезда за границу не указан, то день и месяц выезда не указывается');
        end if;
        if (rec_okvoy.DATA_IN is not null)
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,Зарубежные поездки:Таб.Номер='||rec_ok.TABNO||' Если Дата выезда за границу не указан, то Дата возвращения не указывается');
        end if;
      end if;
      if (rec_okvoy.DATA_IN is null)
      then
        if (rec_okvoy.DATA_IN_MM is not null) or (rec_okvoy.DATA_IN_DD is not null)
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,Зарубежные поездки:Таб.Номер='||rec_ok.TABNO||' Если год даты возвращения из-за границы не указан, то число и месяц даты возвращения не должны указываться');
        end if;
      end if;

     BEGIN
      if (rec_okvoy.VOYAGE_DATE_dd is not null)
      and (rec_okvoy.VOYAGE_DATE_mm is not null)
      then
       BEGIN
        if to_date(to_char(rec_okvoy.VOYAGE_DATE_dd)||'.'||to_char(rec_okvoy.VOYAGE_DATE_mm)||'.'||to_char(rec_okvoy.VOYAGE_DATE),'dd.mm.yyyy') >sysdate
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,зарубежной поездки:Таб.Номер='||rec_ok.TABNO||' неправильный год зарубежной поездки');
        end if;
        if to_date(to_char(rec_okvoy.VOYAGE_DATE_dd)||'.'||to_char(rec_okvoy.VOYAGE_DATE_mm)||'.'||to_char(rec_okvoy.VOYAGE_DATE ),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,зарубежной поездки:Таб.Номер='||rec_ok.TABNO||' Разница Даты зарубежной поездки и даты рождения сотрудника  должна быть больше 18');
        end if;
       EXCEPTION WHEN OTHERS THEN NULL;
       END;

      else
        if to_date('01.01.'||to_char(rec_okvoy.VOYAGE_DATE),'dd.mm.yyyy') >sysdate
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,зарубежной поездки:Таб.Номер='||rec_ok.TABNO||' неправильный год зарубежной поездки');
        end if;
        if to_date('01.01.'||to_char(rec_okvoy.VOYAGE_DATE),'dd.mm.yyyy') - rec_ok.birthday< 18*365
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,зарубежной поездки:Таб.Номер='||rec_ok.TABNO||' Разница Даты зарубежной поездки и даты рождения сотрудника  должна быть больше 18');
        end if;
      end if;
     EXCEPTION WHEN OTHERS THEN NULL;
     END;

      if ((rec_okvoy.DATA_IN_dd is not null)
      or (rec_okvoy.DATA_IN_mm is not null))
      and ((rec_okvoy.VOYAGE_DATE_dd is null)
      or (rec_okvoy.VOYAGE_DATE_mm is null))
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,зарубежной поездки:Таб.Номер='||rec_ok.TABNO||' если указан день и месяц возвращения из зарубежной поездки то укажите день и месяц поездки');
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
          err('Ошибка для отчетности ИИАС,Отдел Кадров,зарубежной поездки:Таб.Номер='||rec_ok.TABNO||' неправильный год возвращения из зарубежной поездки');
        end if;
        if to_date(to_char(rec_okvoy.DATA_IN_dd)||'.'||to_char(rec_okvoy.DATA_IN_mm)||'.'||to_char(rec_okvoy.DATA_IN ),'dd.mm.yyyy') -
           to_date(to_char(rec_okvoy.VOYAGE_DATE_dd)||'.'||to_char(rec_okvoy.VOYAGE_DATE_mm)||'.'||to_char(rec_okvoy.VOYAGE_DATE),'dd.mm.yyyy') < 0
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,зарубежной поездки:Таб.Номер='||rec_ok.TABNO||' Неверная Даты возвращения из зарубежной поездки ');
        end if;
      else
        if to_date('01.01.'||to_char(rec_okvoy.DATA_IN),'dd.mm.yyyy') >sysdate
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,зарубежной поездки:Таб.Номер='||rec_ok.TABNO||' неправильный год возвращения из зарубежной поездки');
        end if;
        if rec_okvoy.DATA_IN < rec_okvoy.VOYAGE_DATE
        then
          err('Ошибка для отчетности ИИАС,Отдел Кадров,зарубежной поездки:Таб.Номер='||rec_ok.TABNO||' Разница Даты возвращения из зарубежной поездки и даты рождения сотрудника  должна быть больше 18');
        end if;
      end if;
     EXCEPTION WHEN OTHERS THEN NULL;
     END;
    end loop;
    for rec_okpt in (select party_CODE,party_date from ok_party where branch=rec_ok.branch and personal_code=rec_ok.personal_code)
    loop
      if rec_okpt.party_CODE is null
      then
        err('Ошибка для отчетности ИИАС,Отдел Кадров,партия:Таб.Номер='||rec_ok.TABNO||' не найдено сведения о партии');
      else
        select count(s_id) into cnt from ss_ok_nci
        where nci_id=73 and s_id='01' and ok_id= rec_okpt.party_code;
        if (cnt<1) and (rec_okpt.party_date is null)
        then
          err('Ошибка 05928 для отчетности ИИАС,Отдел Кадров,партия:Таб.Номер='||rec_ok.TABNO||' не найдено год вступления');
        end if;
        if (cnt<1) and (rec_okpt.party_date is not null)
        then
          if ((rec_okpt.party_date- to_number(to_char(rec_ok.birthday,'yyyy')) )<18)
          or (rec_okpt.party_date> to_number(to_char(sysdate,'yyyy')) )
          then
            err('Ошибка 05929 для отчетности ИИАС,Отдел Кадров,партия:Таб.Номер='||rec_ok.TABNO||' не правильный год вступления '||to_number(rec_okpt.party_date));
          end if;
        end if;
      end if;
    end loop;
  end loop;
end;
--------------------------------------------------------------------------------
procedure  Check_LD is
 i    number;
 str_ varchar2(100);
 a_id ld_forms.id%type;
begin

  if info.GetBankType='006' then
    for rec in ( select a.account, count(*)
                 from ld_account a, ld_forms b
                 where a.branch=b.branch
                 and a.id=b.id
                 and b.state in(2,98,99)
                 and a.acc_type_id in(2,3)
                 group by a.account
                 having count(*)>1)
    loop
      for rec1 in (select a.* from ld_account a, ld_forms b
                   where a.branch=b.branch and a.id=b.id
                   and b.state in(2,98,99) and a.branch=info.GetBranch and a.account=rec.account)
      loop
         err('Ошибка в подсистеме Кредиты: Cчет участвует в нескольких анкетах:  счет='||rec.account||' анкета='||rec1.id);
      end loop;
    end loop;
  end if;

  for rec in (select a.id,a.shifr_id from ld_char a where a.id in(select id from ld_forms where branch=a.branch and ld_type=1 and state=2) and a.shifr_id in('020202','020203') and a.id not in(select id from ld_account where branch=a.branch and acc_type_id=2 and substr(account,1,5) in ('13301','14301','15701','15703','13309','14305')))
  loop
    Err('Ошибка в подсистеме Кредиты: В анкете кредита '||rec.id||' нет соответствия указаного шифра '||rec.shifr_id||'  балансовому счету учета кредитов фермерских хозяйств (13301/14301/15701/15703/13309/14305)');
  end loop;


  for rec in(select a.id,a.shifr_id from ld_char a where  a.id in(select id from ld_forms where branch=a.branch and ld_type=1 and state=2) and a.shifr_id not in('020202','020203') and a.id in(select id from ld_account where branch=a.branch and acc_type_id=2 and substr(account,1,5) in ('13301','14301')))
  loop
    Err('Ошибка в подсистеме Кредиты: В анкете кредита '||rec.id||' неправильно указан шифр '||rec.shifr_id||'  - для учета кредитов фермерских хозяйств используйте 020202 или 020203');
  end loop;

   for rec in (select /*+ INDEX (a XK3_ACCOUNT) */ a.id, abs(a.s_out/100) s from account a where a.branch=info.getBranch and a.acc_bal in(select bal from ss_ld_acc_bal where acc_type in(2,4,31,33))
                and a.s_out<>0 and a.id not in(select /*+ INDEX (ld_account IND_LD_ACCOUNT) */ account from ld_account where branch=a.branch and id in (select id from ld_forms where branch=a.branch and ld_type in(1,3))  and account is not null))
   loop
     Err('Ошибка в подсистеме Кредиты: Счет '||rec.id||' с остатком '||rec.s||' не указан ни в одной анкете кредита');
   end loop;


   i:=0;
   str_:=' '; --один пробел
   for rec in(select a.id,b.niki_id from ld_forms a,ld_char b where a.branch=info.getBranch  and a.ld_type=1 and a.state in(2,98,99) and b.branch=a.branch and a.id=b.id and b.niki_id in (
              select f.niki_id from (select b.niki_id,count(b.niki_id) cnt from ld_forms a,ld_char b where a.branch=info.getBranch  and a.ld_type=1 and a.state in(2,98,99)
              and b.branch=a.branch and b.id=a.id and b.niki_id is not null and (a.branch,a.id) not in(select c.branch,c.use_id from ld_forms c,ld_char d where c.branch=info.getBranch and c.ld_type=1 and c.use_id is not null
              and d.branch=c.branch and d.id=c.id and d.niki_id is not null) group by b.niki_id) f where f.cnt<>1) order by 2,1)
   loop
      if i=0 then
        i:=rec.niki_id;
      end if;
      if i<> rec.niki_id then
         Err('Ошибка в подсистеме Кредиты: Заявка '||i||' указана в нескольких анкетах:'||substr(str_,1,length(str_)-1));
         str_:=' ';
         i:=rec.niki_id;
      end if;
      str_:=str_||rec.id||',';
   end loop;
   if str_<>' ' then
         Err('Ошибка в подсистеме Кредиты: Заявка '||i||' указана в нескольких анкетах:'||substr(str_,1,length(str_)-1));
   end if;


   if info.GetBankType = '004' then  -- Проверки Агробанка

    -- Письмо Агро банка № 07-45/221 от 28.10.2011г
    Select count(*) into i from general where substr(acc_cl,1,5) in ('13301','14301') and state not in (3,6);
    if i <> 0 then
         Err('13301 ва 14301 хисобракамлари оркали утаетган туловлар "удален" еки "проведен" булиши шарт. Хат №07-45/221 28.10.2011. Тулов сони='||i);
    end if;


    for rec in(select a.id,a.account from ld_account a
              where a.branch=info.getBranch and a.id in(select id from ld_forms where branch=a.branch and ld_type=1 and state in(2,98,99)
              and client not in(select id_client from client where branch=a.branch and code_type='08')) and
              a.acc_type_id=8 and a.account is not null and substr(a.account,1,5)='29801' order by a.id)
    loop
        Err('Ошибка в подсистеме Кредиты: Из анкеты '||rec.id||' необходимо убрать накопительный счет '||rec.account);
    end loop;

    -- Письмо Агро банка № 02003/336 от 11.11.2010г
    for rec in(select a.id,a.account,abs(b.s_out/100) s_out  from ld_account a,ld_saldo b where  a.branch=info.GetBranch
               and a.id in(select /*+ INDEX (ld_forms IND_LDF_TYPE_STATE)*/id from ld_forms where branch=a.branch and ld_type=1 and state=2)
               and a.acc_type_id=12 and b.branch=a.branch and b.id=a.id and b.acc_id=a.acc_type_id
               and b.kind=0 and b.v_date=(select /*+ INDEX_DESC (ld_saldo XPK_LD_SALDO) */  v_date from ld_saldo where branch=b.branch and id=b.id and acc_id=b.acc_id and kind=0 and rownum=1)
               and b.s_out<>0 and a.id not in (select /*+ INDEX (s XPK_LD_SALDO) */ s.id from ld_saldo s where s.branch=a.branch and s.id=a.id and s.acc_id in(2,3,4,9,11,13,17,18,23,24,25,29,31,32,33,34,40,44,45,46,47,48,49,56,57,58,59,71,72,73,74,75)
               and s.kind=0 and s.v_date=(select /*+ INDEX_DESC (ld_saldo XPK_LD_SALDO)*/ v_date from ld_saldo where branch=s.branch and id=s.id and acc_id=s.acc_id and kind=0 and rownum=1)
               and nvl(s.s_out,0)<>0) order by 1,2)
    loop
      Err('Ошибка в подсистеме Кредиты:В анкете кредита '||rec.id||' не списан остаток со счета резерва '||rec.account||'('||rec.s_out||')');
    end loop;
   end if;
end;
--------------------------------------------------------------------------------
procedure  Check_SD is
 i    number;
 str_ varchar2(100);
begin
 begin
   sd_halk_10.get_red_line;
 exception when others then
    Err('Ошибка в СД:'||SQLERRM);
 end;
 For Rec in (Select id from account where state=2 and date_open is null)
 Loop
   Err('Ошибка в подсистеме Счета: Утвержденный счет не имеет дату открытия. Счет='||rec.id);
 End Loop;
 For Rec in (Select id from account where state=2 and nvl(length(trim(TRANSLATE(id, '0123456789', '          '))),0) <> 0)
 Loop
   Err('Ошибка в подсистеме Счета: Утвержденный счет имеет символьный знак. Счет='||rec.id);
 End Loop;

end;
--------------------------------------------------------------------------------
procedure  Check_006 is
 cnt            number;
 vtmpkoeff      number;
 vtmpid_grp     number;
 vtmpkoeff2     number;
 vtmpDat        date;
 acc_           varchar2(20);
 RecCur         Cur;
begin
-- Письмо ХалкБанка №07-Б-29/404 от 23.11.2010г
 Select sum(s_in) Into cnt from account where branch=info.GetBranch and id like '19903%';
 if cnt<>0 then
    Err('Остаток по счетам 19903 на конец предыдущего дня должна быть 0! S='||cnt/100);
 end if;

-- Письмо ХалкБанка №1139 от 14.11.2011г
 Select sum(s_out) Into cnt from account where branch=info.GetBranch and id like '23206840%';
 if cnt<>0 then
    Err('23206840% хисобракам колдиги 0 булиши шарт! S='||cnt/100);
 end if;

 Select prev_date into vtmpDat from branch where bank_id=info.GetBranch;
 select count(*) Into cnt from gensubacc_balans where gensubacc_balans.branch=info.GetBranch and gensubacc_balans.curdate=vtmpDat;
 if cnt=0 then
    Err('Субсчетлар буйича "Формирование баланса по субсчетам" модулида '||vtmpDat||' санага баланс тайерланг!');
 end if;

-- письмо №08-09/422 от 17.02.2012
-- if info.GetRegionId in ('26') then
  Open RecCur for 'select distinct b.acc_bal from check_account_nciduet a, check_accbal_nciduet b where a.branch = :P_1 and a.v_date= :P_2 and a.branch = b.branch and substr(a.account,1,5) = b.acc_bal and a.cdsstate <> 0'
                  USING info.GetBranch, vtmpDat;
  Loop
    FETCH RecCur INTO acc_;
    EXIT WHEN RecCur%NOTFOUND;
    Err('"Синхронизация остатков между ДУЕТ и ИБС" модулида '||acc_||' хисоб ракам буйича ДУЕТ билан тафовут бор. (тел.278-00-02)');
  End loop; -- Rec
-- end if;

-- Проверки денежных переводов
 select max(off_day) into vtmpDat from off_days where close_day=1 and off_day < (select prev_date from branch);

 For Rec In (Select s.name_o, Sum_DP-Sum_ABS Razn from DPF_Rep, S_VEOPER s where branch=info.GetBranch and v_date = vtmpDat and s.kod_o=veoper and s.kod_o<>'42201')
 Loop
   if Rec.Razn < 0 then
      Err('"Денежный переводы" модулида '||vtmpDat||' сана учун '||Rec.name_o ||' пул утказмасида '||Rec.Razn ||' га тафовут бор! Барча саволлар билан 150-12-89 Рузиев Шерзодга мурожаат килинг');
   end if;
 end loop;

 For Rec In (select ac.acc_bal, -sum(ac.s_out)/100 summa from account ac where ac.branch=info.GetBranch and ac.state=2 and ac.acc_bal in (select ab.acc_bal from ss_os_acc_bal_ ab where ab.id_type=1) group by ac.acc_bal
              minus
              select ab.acc_bal, sum(nvl(stoim_,0)) sum_get_stoim from ss_os_acc_bal_ ab, (select /*+ index (r XPKOS_RES)*/ r.branch, r.ID_RES, Pkg_Os_rep.GET_ID_GRP(r.branch, r.id_res, info.GetDay) id_grp_,Pkg_Os_rep.GET_ID_subGRP(r.branch, r.id_res, info.GetDay) id_subgrp_, nvl(Pkg_Os.GetStoim(r.branch, r.id_res, info.GetDay),0) stoim_
                from os_res r, ss_os_grp sog, ss_os_subgrp sss where Pkg_Os_rep.GET_ID_GRP(r.branch, r.id_res, info.GetDay) = sog.id_grp and Pkg_Os_rep.GET_ID_SUBGRP(r.branch, r.id_res, info.GetDay) = sss.id_subgrp and r.branch=info.GetBranch and r.rab=3 and (Pkg_Os.GetKoeff(r.branch, r.id_res, info.GetDay)>=0 or nvl(Pkg_Os.GetIdVid(r.branch, r.id_nkl),0) in (9,32))
                 and (r.EDATE is null or r.EDATE>info.GetDay) and r.bdate<info.GetDay) rs where ab.id_type=1 and rs.id_grp_(+)=ab.id_grp and rs.id_subgrp_(+)=ab.id_subgrp and rs.branch(+)=info.GetBranch group by ab.acc_bal)
 Loop
     Err('Ошибка в подсистеме Основные средства: Разница между балансом и учетом основных средств. БС='||rec.acc_bal||' разница='||rec.summa);
 end loop;

 if to_char(info.GetDay,'dd') > '24' then
   select count(*) Into cnt from os_res rs where rs.branch=info.GetBranch and rs.rab=3 and pkg_os.GetStatus(rs.branch, rs.id_res, info.GetDay) in (1,3) and rs.koeff>0
      and (rs.edate is null or rs.edate>info.getday) and rs.damort<info.getday and Pkg_Os.GetStoim(rs.branch, rs.id_res, info.GetDay)!=Pkg_Os.GetIznos(rs.branch, rs.id_res, info.GetDay)
      and (rs.branch, rs.id_res) not in (select ra.branch, ra.id_res from os_resamort ra where ra.branch=info.GetBranch and ra.trans=3 and ra.date_from=trunc(info.GetDay,'mm'));
   if cnt<>0 then
      Err('Ошибка в подсистеме ОC: "Учет движения ОС" модулида бу ой учун амортизация хисобланмаган. Шу модулда "Ведомость  наличия ОС" хисоботини Excelда олиб "Дата последней амортизации" га каранг!');
   end if;

   for rec in (select rs.invnom, rs.name_res from os_res rs where rs.branch=info.GetBranch and rs.rab=3 and pkg_os.GetStatus(rs.branch, rs.id_res, info.GetDay) in (1,3) and rs.koeff>0 and (rs.edate is null or rs.edate>info.getday) and rs.damort<info.getday and Pkg_Os.GetStoim(rs.branch, rs.id_res, info.GetDay)!=Pkg_Os.GetIznos(rs.branch, rs.id_res, info.GetDay)
    and (rs.branch, rs.id_res) not in (select ra.branch, ra.id_res from os_resamort ra where ra.branch=info.GetBranch and ra.trans=3 and ra.date_from=trunc(info.GetDay,'mm')))
   loop
     Err('Ошибка в подсистеме Основные средства: Для ОС инв.номер: '|| rec.invnom ||' не выполнено оп-я начисления амортизации за месяц: '||to_char(trunc(info.GetDay,'mm'),'dd.mm.yyyy'));
   end loop;

   for rec in (select rs.invnom, rs.id_grp, rs.branch, rs.id_res from os_res rs where rs.branch=info.GetBranch and rs.rab=3 and pkg_os.GetStatus(rs.branch, rs.id_res, info.GetDay) in (1,3) and rs.koeff>0
               and (rs.edate is null or rs.edate>info.getday) and rs.damort<info.getday and Pkg_Os.GetStoim(rs.branch, rs.id_res, info.GetDay)!=Pkg_Os.GetIznos(rs.branch, rs.id_res, info.GetDay) )
   loop
     vtmpkoeff := PKG_OS.GETKOEFF(rec.branch, rec.id_res, last_day(info.GetDay));
     vtmpid_grp:= Pkg_Os_rep.GET_ID_GRP(rec.branch, rec.id_res, last_day(info.GetDay));
     Begin
       Select /*+ index_desc(ss_os_norm xpk_ss_os_norm)*/ proc,date_from into vtmpkoeff2, vtmpDat from ss_os_norm where id_grp=vtmpid_grp and date_from <= last_day(info.GetDay) and rownum = 1;
     Exception
       when NO_DATA_FOUND then
         vtmpkoeff2:=null;
     End;
     if vtmpkoeff2 is null then
       Err('Ошибка в подсистеме Основные средства: По группе: '||vtmpid_grp||' не существует нормы амортизации за '|| to_char(info.GetDay,'dd.mm.yyyy'));
     end if;
     if vtmpkoeff is not null then
       if vtmpkoeff<>vtmpkoeff2 then
         Err('Ошибка в подсистеме Основные средства: По ин.номеру: '||rec.InvNom||' не выполнена оп-я изменение нормы амортизации с '|| to_char(vtmpDat,'dd.mm.yyyy'));
       end if;
     end if;
   end loop;
 end if;

-- писмо ХЛБ № 07-Б-29/189 от 22.04.2011
   for rec in (select ac.acc_bal, -sum(ac.s_out)/100 ss from account ac where ac.branch=ac.branch and ac.state=2 and ac.acc_bal in (select distinct substr(ACC_SKLAD,1,5) from ss_buh_grp) group by ac.acc_bal
      minus    select '19921' acc_bal, nvl(sum("Сумма"),0) ss from (select * from (select substr(mbp.getNameTmc(m.id_tmc),1,80) "Наименование",  max(n.DATE_NKL) "Дата", substr(mbp.getNameEdi(m.id_edi),1,80) "Ед.изм.", sum(m.kolvo) "Количество", m.stoim "Цена", sum(m.ammount) "Сумма", substr(mbp.getNameGrp(m.id_grp),1,80) name_grp,m.id_grp, m.id_tmc, m.id_edi
                        from buh_mbp m , buh_nkl n where m.branch =n.branch and m.id_nkl =n.id_nkl and n.state in (0,1,3) group by m.id_grp, m.id_tmc, m.id_edi, m.stoim) where "Количество" > 0))
   Loop
       Err('Ошибка в подсистеме Складской учет МБП: Разница между балансом и учетом МБП. Данные по стоимости МБП смотрите в модуле "Складской учет МБП"-Выходные документы-Мбп на складе-Специальный отчет(19921)');
   End loop;

   for rec in (select nvl(sum(r.in_stoim),0) from os_nkl n, os_res r where n.id_oper in (1, 62, 64) and n.branch = info.GetBranch and n.date_nkl <= info.GetDay and r.id_nkl = n.id_nkl and r.branch = n.branch
     and r.rab=3 and nvl(pkg_os.GetKoeff(r.branch,r.id_res,info.GetDay),0)=0  and nvl(n.id_vid,0) not in (9,32) and pkg_os.GetStatus(r.branch,r.id_res,info.GetDay)=1
     minus select -sum(ac.s_out)/100 from account ac where ac.branch=info.GetBranch and ac.state=2 and ac.acc_bal in (select ab.acc_bal from ss_os_acc_bal_ ab where ab.id_type=4))
   Loop
       Err('Ошибка в подсистеме Учет движение ОС: Разница между балансом 16561 и учет движение ОС. Данные  смотрите в модуле "Учет движение ОС"-Отчеты-ОС на складе');
   End loop;

-- письмо №07-Б-25/721 от 29.11.2011
   for rec in (select ab.acc_bal, round( sum ( nvl(s.koeffpereoc,1)*Pkg_Os.GetIznos(r.branch, r.id_res, info.getday) ), -1 ) summa from ss_os_acc_bal_ ab, os_res r, os_resstoim s where ab.id_type=2 and r.branch=info.getbranch and r.rab=3 and Pkg_Os.GetKoeff(r.branch, r.id_res, info.getday) >=0 and (r.EDATE is null or r.EDATE > info.getday)
        and r.bdate < info.getday and Pkg_Os_rep.GET_ID_GRP(r.branch, r.id_res, info.getday) = ab.id_grp and Pkg_Os_rep.GET_ID_subGRP(r.branch, r.id_res, info.getday) = ab.id_subgrp and s.branch(+)=r.branch and s.id_res(+)=r.id_res and s.date_from(+)=trunc(to_date(info.getday),'mm') and s.pereoc(+)=1 group by ab.acc_bal
      minus select ac.acc_bal, round(sum(ac.s_out)/100 , -1) summa from account ac where ac.branch=info.getbranch and ac.state=2 and ac.acc_bal in (select ab.acc_bal from ss_os_acc_bal_ ab where ab.id_type=2) group by ac.acc_bal)
   loop
     err('Ошибка в подсистеме Основные средства: Для балансового счета : '|| rec.acc_bal ||' остаток( '|| to_char(rec.summa) ||' ) есть расхождение с модулем Счета!');
   end loop;

--письмо ХЛБ №07-Б-25/197 от 24.04.2014
  if nvl(to_number(const.GetConst(24003)),32)<=to_number(to_char(info.GetDay,'dd')) then
    for rec in( select count(*) num, branch, a.service_id from cs_contract a where branch=info.GetBranch having count(*)>0 group by branch, a.service_id) loop
      select count(*) into i from cs_date a where branch = info.getbranch and to_char(d_date,'mmyyyy') = to_char(info.GetDay,'mmyyyy') and state<>1 and a.branch=rec.branch and a.service_id=rec.service_id;
      if i>0 then
        err('"Комиссионные услуги" модулида шу ой учун абонент тулови олинмаган!');
      end if;
    end loop;
  end if;

-- письмо №17-18/115 от 26.06.2014
   For Rec in (select distinct SubStr(a.DOP_ACCOUNT, 10, 8), a.ID_SUBSCRIBERS from SMS_SUBSCRIBERS_NEWS_DOP a where a.BRANCH = info.GetBranch
                  and SubStr(a.DOP_ACCOUNT, 10, 8) not in (select SubStr(ACCOUNT, 10, 8) from CS_CONTRACT where BRANCH = info.GetBranch and SERVICE_ID = 9)
                  and a.ID_SS_SMS_NEWS in (1, 2, 3))
   Loop
     Err('"Рассылка СМС" модулида ID='||Rec.ID_SUBSCRIBERS||' клиент "Комиссионные услуги" модулида регистрация килинмаган!');
   End Loop;

--письмо ХЛБ №07-Б-25/806 от 07.07.2014
  for rec in (select a.id, a.state from account a where a.branch=info.GetBranch
              and (a.id like '20208%' or a.id like '20210%' or a.id like '20214%' or a.id like '20216%' or a.id like '20218%' or a.id like '20296%')
              and a.id_order<>'888'
              and a.currency='000'
              and a.state=2
              and a.id not in(select b.account from cs_contract b where b.branch=a.branch and b.service_id=13))
  loop
    err('Счёт '||rec.id||' "Комиссионные услуги" модулида регистрациядан утмаган!');
  end loop;

 end;
--------------------------------------------------------------------------------
end;
/
