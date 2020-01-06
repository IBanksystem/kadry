create or replace package pers_rep_cb_ruz is
  version constant char(14) := '->>28082010<<-';
  -- Author  : Xudayberdiyev Latif
  -- Task    : Учет и ведение работы отдела кадров
  -- Purpose : О Т Ч Е Т Ы по кадрам для ЦБ
  -- Created : 18.11.2010
  -- Updated : 18.11.2010
  s_filial    varchar2(5) := pers_inupdel.getfilial;
  s_name_bank pers_param.value%type;
  s_line      varchar2(4000) := '';
  s_num       number := 0;

  s_width number := 700;
  s_col   number := 0;

  --=============================================================
  --
  --=============================================================
  function get_age_group(ipersid number) return number;
  --=============================================================
  --
  --=============================================================
  function get_rezerv(iempid number) return varchar2;
  --=============================================================
  --
  --=============================================================
  function get_sprcodecb(isprcode varchar2) return varchar2;
  --=============================================================
  --
  --=============================================================
  function get_sprprimcb(isprcode varchar2) return varchar2;
  --=============================================================
  --
  --=============================================================
  function get_dep_condition(piddep in number -- Код департамента
                             ) return varchar;
  --=============================================================
  --
  --=============================================================
  function get_dolj_condition(piddolj in number -- Код
                              ) return varchar;
  --=============================================================
  --
  --=============================================================
  function getsprname(sprcode varchar2) return varchar2;
  --=============================================================
  --  Требования №  09_001
  --  Информация по руководящему кадровому составу коммерческих банков
  --=============================================================
  procedure rep_09_001
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  );
  --=============================================================
  --  Требования № 09_002
  --  Информация по составу семей руководящего кадрового состава коммерческих банков
  --=============================================================
  procedure rep_09_002
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  );
  --=============================================================
  --  Требования № 09_003
  --  Информация по трудовой деятельности руководящего кадрового состава коммерческих банков
  --=============================================================
  procedure rep_09_003
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  );
  --=============================================================
  --  Требования № 09_004
  --  Информация по образованию руководящего кадрового состава коммерческих банков
  --=============================================================
  procedure rep_09_004
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  );
  --=============================================================
  --  Требования №  09_005
  --  Информация по награждениям руководящего кадрового состава коммерческих банков
  --=============================================================
  procedure rep_09_005
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  );
  --=============================================================
  --  Требования №  09_006
  --  Информация по выборности руководящего кадрового состава коммерческих банков
  --=============================================================
  procedure rep_09_006
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  );
  --=============================================================
  --  Требования №  09_007
  --  Информация о пребываниее за границей руководящего кадрового состава коммерческих банков
  --=============================================================
  procedure rep_09_007
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  );
  --=============================================================
  --  Требования №  09_008
  --  Информация по владению иностранными языками руководящего кадрового состава коммерческих банков
  --=============================================================
  procedure rep_09_008
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  );
  --=============================================================
  --  Требования №  09_009
  --  Информация по повышению квалификации руководящего кадрового состава коммерческих банков
  --=============================================================
  procedure rep_09_009
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  );
  --=============================================================
  --  Требования №  09_010
  --  Информация по штатному расписанию в коммерческом банке
  --=============================================================
  procedure rep_09_010
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  );
  --=============================================================
  --  Требования №  09_011
  --  Информация по количеству и составу сотрудников в коммерческом банке (для отчета 1-Т)
  --=============================================================
  procedure rep_09_011
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  );
end;
/
create or replace package body pers_rep_cb_ruz is
  --=============================================================
  --
  --=============================================================
  function get_age_group(ipersid number) return number is

    fpol       varchar2(1) := 'M';
    fborn      number := 0;
    fage_group number := 1;
    -----Определяет обший банковский стаж
  begin

    select nvl(d.gender, 'M'), sysdate - nvl(d.born_date, sysdate)
      into fpol, fborn
      from pers_employee_desc d
     where d.pers_id = ipersid;
    --До 30 лет
    if (fborn < 10950) then
      fage_group := 1;
      --От 30 до 40
    elsif (fborn >= 10950 and fborn < 14600) then
      fage_group := 2;
      --От 40 до 50
    elsif (fborn >= 14600 and fborn < 18250) then
      fage_group := 3;
      --Старше 50
    elsif (fborn >= 18250) then
      fage_group := 4;
    end if;

    --Женщины старше 55
    if (fborn > 20075 and fpol = 'F') then
      fage_group := 5;
    end if;
    --Мужчины старше 60
    if (fborn > 21900 and fpol = 'M') then
      fage_group := 6;
    end if;

    return fage_group;
  exception
    when others then
      return 1;
  end;
  --=============================================================
  --
  --=============================================================
  function get_rezerv(iempid number) return varchar2 is
    vvalue varchar2(1);
  begin
    select '1'
      into vvalue
      from pers_reserv t
     where t.pers_id = iempid
       and rownum = 1;

    return vvalue;
  exception
    when others then
      return '0';
  end;
  --=============================================================
  --
  --=============================================================
  function get_sprcodecb(isprcode varchar2) return varchar2 is
    result pers_look_up.name%type := '';
  begin
    if isprcode like '01%' then
      select nvl(t.code_cb, '')
        into result
        from pers_look_up t, v_nation n
       where n.code = t.code_cb
         and t.code = isprcode;
    elsif isprcode like '02%' then
      select nvl(t.code_cb, '')
        into result
        from pers_look_up t, v_party n
       where n.code = t.code_cb
         and t.code = isprcode;
    elsif isprcode like '04%' then
      select nvl(t.code_cb, '')
        into result
        from pers_look_up t, v_uch_step n
       where n.code = t.code_cb
         and t.code = isprcode;
    elsif isprcode like '05%' then
      select nvl(t.code_cb, '')
        into result
        from pers_look_up t, v_uch_zvn n
       where n.code = t.code_cb
         and t.code = isprcode;
    elsif isprcode like '13%' then
      select nvl(t.code_cb, '')
        into result
        from pers_look_up t, v_langs n
       where n.code = t.code_cb
         and t.code = isprcode;
    elsif isprcode like '14%' then
      select nvl(t.code_cb, '')
        into result
        from pers_look_up t, v_uch_zav n
       where n.code = t.code_cb
         and t.code = isprcode;
    elsif isprcode like '19%' then
      select nvl(t.code_cb, '')
        into result
        from pers_look_up t, v_obraz n
       where n.code = t.code_cb
         and t.code = isprcode;
    elsif isprcode like '21%' then
      select nvl(t.code_cb, '')
        into result
        from pers_look_up t, v_lang n
       where n.code = t.code_cb
         and t.code = isprcode;
      if result = 999 then
        result := 3;
      end if;
    elsif isprcode like '23%' then
      select nvl(t.code_cb, '')
        into result
        from pers_look_up t, v_family n
       where n.code = t.code_cb
         and t.code = isprcode;
    elsif isprcode like '44%' then
      select nvl(t.code_cb, '')
        into result
        from pers_look_up t, v_district n
       where n.code = t.code_cb
         and t.code = isprcode;
    elsif isprcode like '45%' then
      select nvl(t.code_cb, '')
        into result
        from pers_look_up t, v_country n
       where n.code = t.code_cb
         and t.code = isprcode;
    elsif isprcode like '46%' then
      select nvl(t.code_cb, '')
        into result
        from pers_look_up t, v_region n
       where n.code = t.code_cb
         and t.code = isprcode;
    end if;

    return result;

  exception
    when others then
      return '';

  end;
  --=============================================================
  --
  --=============================================================
  function get_sprprimcb(isprcode varchar2) return varchar2 is
    vsprname pers_look_up.name%type;
  begin
    if pers_rep_cb_ruz.get_sprcodecb(isprcode) is null then

      select nvl(substr(t.name, 1, 50), '')
        into vsprname
        from pers_look_up t
       where code = isprcode;
    end if;
    return vsprname;

  exception
    when others then
      return '';
  end;
  --=============================================================
  --
  --=============================================================
  function get_dep_condition(piddep in number -- Код департамента
                             ) return varchar is

    vcondition pers_department.condition%type; --

  begin
    select nvl(d.condition, 'A')
      into vcondition
      from pers_department d
     where d.id = piddep;

    return trim(vcondition);
  exception
    when others then
      return '';
  end;
  --=============================================================
  --
  --=============================================================
  function get_dolj_condition(piddolj in number -- Код
                              ) return varchar is

    vcondition pers_crew.condition%type; --

  begin
    select nvl(d.condition, 'A')
      into vcondition
      from pers_crew d
     where d.id = piddolj;

    return trim(vcondition);
  exception
    when others then
      return '';
  end;
  --=============================================================
  --
  --=============================================================
  function getsprname(sprcode varchar2) return varchar2 is
    result pers_look_up.name%type;
  begin

    select nvl(replace(t.name, '"', ''), '')
      into result
      from pers_look_up t
     where code = sprcode;

    return result;
  exception
    when others then
      return '';
  end;

  --=============================================================
  --
  --=============================================================
  function nvl_table
  (
    vvalue varchar2,
    vnbsp  varchar2
  ) return varchar2 is
    presult varchar2(4000);
  begin
    presult := vvalue;

    if vvalue is null or vvalue in ('null', '', ' ', '  ') then
      presult := vnbsp;
    end if;
    return presult;
  end;

  --=============================================================
  --
  --=============================================================
  function obligation(i_value varchar2) return varchar2 is
    result varchar2(10) := '';
  begin

    if i_value is null or i_value in ('null', '', ' ', '  ') then
      result := '#ff5599';
    end if;

    return result;
  end;

  --=============================================================
  --  Требования №  09_001
  --  Информация по руководящему кадровому составу коммерческих банков
  --=============================================================
  procedure rep_09_001
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  ) is
  begin
    s_width := 1024;
    s_col   := 43;

    s_filial := pers_inupdel.getfilial;
    delete from pers_rep;

    pers_rep_util.set_rep_code(i_rep_code);

    s_name_bank := pers_rep_util.get_param(2);
    --1------
    s_line := '<table width=' || s_width || ' border=0 style="font-size:10pt">' ||
              '<tr><th colspan=' || s_col || '>' || s_name_bank || '<tr><th colspan=' || s_col || '>' ||
              pers_rep_util.get_rep_line(1) || '<tr><td colspan=' || s_col ||
              ' align=right style="font-size:8pt">"*" - Обязательный<br>"-" - Не обязательный</td>';
    pers_rep_util.put_report(1, s_line);
    --2------
    s_line := '<table width=' || s_width ||
              ' border=1 cellpadding=0 cellspacing=0 style="FONT-SIZE:8pt">
         <tr bgcolor="#cacaca" align=center valign=top><td>№';
    for i in 2 .. s_col
    loop
      s_line := s_line || '<td>' || pers_rep_util.get_rep_line(i);
    end loop;
    s_line := s_line || '</td>';
    pers_rep_util.put_report(2, s_line);
    --3---
    s_line := '<tr bgcolor="#eaeaea" align=center valign=top><td>&nbsp;' || '<td>*' || '<td>*' ||
              '<td>-' || '<td>*' || '<td>*' || '<td>*' || '<td>*' || '<td>*' || '<td>*' || '<td>*' ||
              '<td>*' || '<td>*' || '<td>-' || '<td>-' || '<td>*' || '<td>-' || '<td>-' || '<td>-' ||
              '<td>-' || '<td>*' || '<td>*' || '<td>*' || '<td>-' || '<td>-' || '<td>-' || '<td>-' ||
              '<td>*' || '<td>-' || '<td>*' || '<td>-' || '<td>-' || '<td>-' || '<td>-' || '<td>-' ||
              '<td>-' || '<td>-' || '<td>*' || '<td>*' || '<td>*' || '<td>*' || '<td>*' || '<td>*';
    pers_rep_util.put_report(3, s_line);
    --4---
    s_num := 3;
    for s in (select substr(c.inps, 1, 14) inps,
                     c.last_name,
                     c.last_name_old,
                     c.first_name,
                     c.middle_name,

                     decode(d.gender, 'M', '1', 'F', '0', '1') pol,
                     to_char(nvl(d.born_date, sysdate), 'yyyy') god_roj,
                     to_char(nvl(d.born_date, sysdate), 'mm') mes_roj,
                     to_char(nvl(d.born_date, sysdate), 'dd') den_roj,
                     substr(trim(d.pass_ser), 1, 2) pass_ser,

                     d.pass_num pass_num,
                     to_char(d.pass_date, 'yyyymmdd') pass_date,
                     pers_rep_cb_ruz.get_sprcodecb(d.code_ray_uvd) code_ray_uvd,
                     pers_rep_cb_ruz.get_sprprimcb(d.code_ray_uvd) prim_ray_uvd,
                     nvl(pers_rep_cb_ruz.get_sprcodecb(d.code_str_mest), '860') code_str_mest,

                     pers_rep_cb_ruz.get_sprcodecb(d.code_obl_mest) code_obl_mest,
                     pers_rep_cb_ruz.get_sprprimcb(d.code_obl_mest) prim_obl_mest,
                     pers_rep_cb_ruz.get_sprcodecb(d.code_ray_mest) code_ray_mest,
                     pers_rep_cb_ruz.get_sprprimcb(d.code_ray_mest) prim_ray_mest,
                     substr(d.born_place, 1, 50) mest_roj,

                     nvl(pers_rep_cb_ruz.get_sprcodecb(d.code_str_grajd), '860') code_str_grajd,
                     nvl(pers_rep_cb_ruz.get_sprcodecb(d.code_str_proj), '860') code_str_proj,
                     pers_rep_cb_ruz.get_sprcodecb(d.code_obl_proj) code_obl_proj,
                     pers_rep_cb_ruz.get_sprprimcb(d.code_obl_proj) prim_obl_proj,
                     pers_rep_cb_ruz.get_sprcodecb(d.code_ray_proj) code_ray_proj,

                     pers_rep_cb_ruz.get_sprprimcb(d.code_ray_proj) prim_ray_proj,
                     substr(d.address, 1, 50) mest_proj,
                     substr(trim(d.phone), 1, 10) tel_dom,
                     pers_rep_cb_ruz.get_sprcodecb(d.nationality) code_natn,
                     pers_rep_cb_ruz.get_sprprimcb(d.nationality) prim_natn,

                     pers_rep_cb_ruz.get_sprcodecb(d.party_mship) code_part,
                     pers_rep_cb_ruz.get_sprprimcb(d.party_mship) prim_part,
                     to_char(nvl(d.party_data, sysdate), 'yyyy') god_part,
                     to_char(nvl(d.party_data, sysdate), 'mm') mes_part,
                     to_char(nvl(d.party_data, sysdate), 'dd') den_part,

                     c.code_dolj_cb cod_dolj,
                     s_filial filial,
                     pers_rep_cb_ruz.get_rezerv(c.id) otmet_rezerv,
                     d.bank_spes bank_spes,
                     nvl(pers_rep_cb_ruz.get_sprcodecb(d.education), 1) code_obraz,

                     nvl(pers_rep_cb_ruz.get_sprcodecb(d.sience_degree), 1) uch_step,
                     nvl(pers_rep_cb_ruz.get_sprcodecb(d.sience_name), 1) uch_zvn

                from v_doljn dol, pers_employee_code c
                left outer join pers_employee_desc d on (c.id = d.pers_id)
               where dol.code = c.code_dolj_cb
                 and c.inps is not null
                 and c.condition in ('A', 'AD', 'AO')
                 and c.filial = s_filial
               order by c.code)
    loop
      s_num  := s_num + 1;
      s_line := '<tr align=center valign=top><td>' || (s_num - 3) || '<td bgcolor="' ||
                obligation(s.inps) || '">' || nvl_table(s.inps, i_nbsp) || '<td bgcolor="' ||
                obligation(s.last_name) || '" align=left>' || nvl_table(s.last_name, i_nbsp) ||
                '<td align=left>' || nvl_table(s.last_name_old, i_nbsp) || '<td bgcolor="' ||
                obligation(s.first_name) || '" align=left>' || nvl_table(s.first_name, i_nbsp) ||
                '<td bgcolor="' || obligation(s.middle_name) || '" align=left>' ||
                nvl_table(s.middle_name, i_nbsp) || '<td bgcolor="' || obligation(s.pol) || '">' ||
                nvl_table(s.pol, i_nbsp) || '<td bgcolor="' || obligation(s.god_roj) || '">' ||
                nvl_table(s.god_roj, i_nbsp) || '<td bgcolor="' || obligation(s.mes_roj) || '">' ||
                nvl_table(s.mes_roj, i_nbsp) || '<td bgcolor="' || obligation(s.den_roj) || '">' ||
                nvl_table(s.den_roj, i_nbsp) || '<td bgcolor="' || obligation(s.pass_ser) || '">' ||
                nvl_table(s.pass_ser, i_nbsp) || '<td bgcolor="' || obligation(s.pass_num) || '">' ||
                nvl_table(s.pass_num, i_nbsp) || '<td bgcolor="' || obligation(s.pass_date) || '">' ||
                nvl_table(s.pass_date, i_nbsp) || '<td>' || nvl_table(s.code_ray_uvd, i_nbsp) ||
                '<td>' || nvl_table(s.prim_ray_uvd, i_nbsp) || '<td bgcolor="' ||
                obligation(s.code_str_mest) || '">' || nvl_table(s.code_str_mest, i_nbsp) || '<td>' ||
                nvl_table(s.code_obl_mest, i_nbsp) || '<td>' || nvl_table(s.prim_obl_mest, i_nbsp) ||
                '<td>' || nvl_table(s.code_ray_mest, i_nbsp) || '<td>' ||
                nvl_table(s.prim_ray_mest, i_nbsp) || '<td bgcolor="' || obligation(s.mest_roj) || '">' ||
                nvl_table(s.mest_roj, i_nbsp) || '<td bgcolor="' || obligation(s.code_str_grajd) || '">' ||
                nvl_table(s.code_str_grajd, i_nbsp) || '<td bgcolor="' ||
                obligation(s.code_str_proj) || '">' || nvl_table(s.code_str_proj, i_nbsp) || '<td>' ||
                nvl_table(s.code_obl_proj, i_nbsp) || '<td>' || nvl_table(s.prim_obl_proj, i_nbsp) ||
                '<td>' || nvl_table(s.code_ray_proj, i_nbsp) || '<td>' ||
                nvl_table(s.prim_ray_proj, i_nbsp) || '<td bgcolor="' || obligation(s.mest_proj) || '">' ||
                nvl_table(s.mest_proj, i_nbsp) || '<td>' || nvl_table(s.tel_dom, i_nbsp) ||
                '<td bgcolor="' || obligation(s.code_natn) || '">' ||
                nvl_table(s.code_natn, i_nbsp) || '<td>' || nvl_table(s.prim_natn, i_nbsp) ||
                '<td>' || nvl_table(s.code_part, i_nbsp) || '<td>' ||
                nvl_table(s.prim_part, i_nbsp) || '<td>' || nvl_table(s.god_part, i_nbsp) || '<td>' ||
                nvl_table(s.mes_part, i_nbsp) || '<td>' || nvl_table(s.den_part, i_nbsp) || '<td>' ||
                nvl_table(s.cod_dolj, i_nbsp) || '<td bgcolor="' || obligation(s.filial) || '">' ||
                nvl_table(s.filial, i_nbsp) || '<td bgcolor="' || obligation(s.otmet_rezerv) || '">' ||
                nvl_table(s.otmet_rezerv, i_nbsp) || '<td bgcolor="' || obligation(s.bank_spes) || '">' ||
                nvl_table(s.bank_spes, i_nbsp) || '<td bgcolor="' || obligation(s.code_obraz) || '">' ||
                nvl_table(s.code_obraz, i_nbsp) || '<td bgcolor="' || obligation(s.uch_step) || '">' ||
                nvl_table(s.uch_step, i_nbsp) || '<td bgcolor="' || obligation(s.uch_zvn) || '">' ||
                nvl_table(s.uch_zvn, i_nbsp);
      pers_rep_util.put_report(s_num, s_line);
    end loop;
    ---
  end;

  --=============================================================
  --  Требования № 09_002
  --  Информация по составу семей руководящего кадрового состава коммерческих банков
  --=============================================================
  procedure rep_09_002
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  ) is
  begin
    s_width  := 1024;
    s_col    := 30;
    s_filial := pers_inupdel.getfilial;
    delete from pers_rep;

    pers_rep_util.set_rep_code(i_rep_code);

    s_name_bank := pers_rep_util.get_param(2);
    --1------
    s_line := '<table width=' || s_width || ' border=0 style="font-size:10pt">' ||
              '<tr><th colspan=' || s_col || '>' || s_name_bank || '<tr><th colspan=' || s_col || '>' ||
              pers_rep_util.get_rep_line(1) || '<tr><td colspan=' || s_col ||
              ' align=right style="font-size:8pt">"*" - Обязательный<br>"-" - Не обязательный</td>';
    pers_rep_util.put_report(1, s_line);
    --2------
    s_line := '<table width=' || s_width ||
              ' border=1 cellpadding=0 cellspacing=0 style="FONT-SIZE:8pt">
         <tr bgcolor="#cacaca" align=center valign=top><td>№';
    for i in 2 .. s_col
    loop
      s_line := s_line || '<td>' || pers_rep_util.get_rep_line(i);
    end loop;
    s_line := s_line || '</td>';
    pers_rep_util.put_report(2, s_line);
    --3---
    s_line := '<tr bgcolor="#eaeaea" align=center valign=top><td>&nbsp;' || '<td>*' || '<td>*' ||
              '<td>*' || '<td>*' || '<td>-' || '<td>*' || '<td>*' || '<td>*' || '<td>*' || '<td>-' ||
              '<td>-' || '<td>-' || '<td>-' || '<td>*' || '<td>-' || '<td>-' || '<td>-' || '<td>-' ||
              '<td>-' || '<td>-' || '<td>-' || '<td>-' || '<td>-' || '<td>-' || '<td>-' || '<td>*' ||
              '<td>-' || '<td>*' || '<td>*';
    pers_rep_util.put_report(3, s_line);
    --4---
    s_num := 3;
    for s in (select substr(c.inps, 1, 14) inps,
                     pers_rep_cb_ruz.get_sprcodecb(f.type_of_rel) code_st_rodn,
                     f.last_name last_,
                     f.first_name first_,
                     f.middle_name middle_,

                     to_char(f.born_date, 'yyyy') god_roj,
                     to_char(f.born_date, 'mm') mes_roj,
                     to_char(f.born_date, 'dd') den_roj,
                     nvl(pers_rep_cb_ruz.get_sprcodecb(f.code_str_roj), '860') code_str_roj,
                     pers_rep_cb_ruz.get_sprcodecb(f.code_obl_roj) code_obl_roj,

                     pers_rep_cb_ruz.get_sprprimcb(f.code_obl_roj) prim_obl_roj,
                     pers_rep_cb_ruz.get_sprcodecb(f.code_ray_roj) code_ray_roj,
                     pers_rep_cb_ruz.get_sprprimcb(f.code_ray_roj) prim_ray_roj,
                     substr(f.address, 1, 50) mest_roj,
                     to_char(f.death_date, 'yyyy') god_smert,

                     to_char(f.death_date, 'mm') mes_smert,
                     to_char(f.death_date, 'dd') den_smert,
                     pers_rep_cb_ruz.get_sprcodecb(f.code_str_death) code_str_smert,
                     pers_rep_cb_ruz.get_sprprimcb(f.code_str_death) prim_str_smert,
                     nvl(pers_rep_cb_ruz.get_sprcodecb(f.code_str_proj), '860') code_str_proj,

                     pers_rep_cb_ruz.get_sprcodecb(f.code_obl_proj) code_obl_proj,
                     pers_rep_cb_ruz.get_sprcodecb(f.code_ray_proj) code_ray_proj,
                     nvl(pers_rep_cb_ruz.get_sprcodecb(f.code_str_proj), '860') prim_str_proj,
                     pers_rep_cb_ruz.get_sprcodecb(f.code_obl_proj) prim_obl_proj,
                     pers_rep_cb_ruz.get_sprcodecb(f.code_ray_proj) prim_ray_proj,

                     substr(f.address, 1, 50) mest_proj,
                     f.phone phone,
                     substr(f.work_occ, 1, 100) mest_rabot,
                     substr(f.doljn, 1, 100) doljn

                from v_doljn dol, pers_family f, pers_employee_code c
               where c.id = f.pers_id
                 and c.inps is not null
                 and dol.code = c.code_dolj_cb
                 and c.condition in ('A', 'AD', 'AO')
                 and c.filial = s_filial
               order by c.code)
    loop
      s_num  := s_num + 1;
      s_line := '<tr align=center valign=top><td>' || (s_num - 3) || '<td bgcolor="' ||
                obligation(s.inps) || '">' || nvl_table(s.inps, i_nbsp) || '<td bgcolor="' ||
                obligation(s.code_st_rodn) || '" align=left>' || nvl_table(s.code_st_rodn, i_nbsp) ||
                '<td bgcolor="' || obligation(s.last_) || '" align=left>' ||
                nvl_table(s.last_, i_nbsp) || '<td bgcolor="' || obligation(s.first_) ||
                '" align=left>' || nvl_table(s.first_, i_nbsp) || '<td align=left>' ||
                nvl_table(s.middle_, i_nbsp) || '<td bgcolor="' || obligation(s.god_roj) || '">' ||
                nvl_table(s.god_roj, i_nbsp) || '<td bgcolor="' || obligation(s.mes_roj) || '">' ||
                nvl_table(s.mes_roj, i_nbsp) || '<td bgcolor="' || obligation(s.den_roj) || '">' ||
                nvl_table(s.den_roj, i_nbsp) || '<td bgcolor="' || obligation(s.code_str_roj) || '">' ||
                nvl_table(s.code_str_roj, i_nbsp) || '<td>' || nvl_table(s.code_obl_roj, i_nbsp) ||
                '<td>' || nvl_table(s.prim_obl_roj, i_nbsp) || '<td>' ||
                nvl_table(s.code_ray_roj, i_nbsp) || '<td>' || nvl_table(s.prim_ray_roj, i_nbsp) ||
                '<td bgcolor="' || obligation(s.mest_roj) || '">' || nvl_table(s.mest_roj, i_nbsp) ||
                '<td>' || nvl_table(s.god_smert, i_nbsp) || '<td>' ||
                nvl_table(s.mes_smert, i_nbsp) || '<td>' || nvl_table(s.den_smert, i_nbsp) ||
                '<td>' || nvl_table(s.code_str_smert, i_nbsp) || '<td>' ||
                nvl_table(s.prim_str_smert, i_nbsp) || '<td>' || nvl_table(s.code_str_proj, i_nbsp) ||
                '<td>' || nvl_table(s.code_obl_proj, i_nbsp) || '<td>' ||
                nvl_table(s.code_ray_proj, i_nbsp) || '<td>' || nvl_table(s.prim_str_proj, i_nbsp) ||
                '<td>' || nvl_table(s.prim_obl_proj, i_nbsp) || '<td>' ||
                nvl_table(s.prim_ray_proj, i_nbsp) || '<td bgcolor="' || obligation(s.mest_proj) || '">' ||
                nvl_table(s.mest_proj, i_nbsp) || '<td>' || nvl_table(s.phone, i_nbsp) ||
                '<td bgcolor="' || obligation(s.mest_rabot) || '">' ||
                nvl_table(s.mest_rabot, i_nbsp) || '<td bgcolor="' || obligation(s.doljn) || '">' ||
                nvl_table(s.doljn, i_nbsp);
      pers_rep_util.put_report(s_num, s_line);
    end loop;
    ---
  end;

  --=============================================================
  --  Требования № 09_003
  --  Информация по трудовой деятельности руководящего кадрового состава коммерческих банков
  --=============================================================
  procedure rep_09_003
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  ) is
  begin
    s_width  := 1024;
    s_col    := 21;
    s_filial := pers_inupdel.getfilial;
    delete from pers_rep;

    pers_rep_util.set_rep_code(i_rep_code);

    s_name_bank := pers_rep_util.get_param(2);
    --1------
    s_line := '<table width=' || s_width || ' border=0 style="font-size:10pt">' ||
              '<tr><th colspan=' || s_col || '>' || s_name_bank || '<tr><th colspan=' || s_col || '>' ||
              pers_rep_util.get_rep_line(1) || '<tr><td colspan=' || s_col ||
              ' align=right style="font-size:8pt">"*" - Обязательный<br>"-" - Не обязательный</td>';
    pers_rep_util.put_report(1, s_line);
    --2------
    s_line := '<table width=' || s_width ||
              ' border=1 cellpadding=0 cellspacing=0 style="FONT-SIZE:8pt">
         <tr bgcolor="#cacaca" align=center valign=top><td>№';
    for i in 2 .. s_col
    loop
      s_line := s_line || '<td>' || pers_rep_util.get_rep_line(i);
    end loop;
    s_line := s_line || '</td>';
    pers_rep_util.put_report(2, s_line);
    --3---
    s_line := '<tr bgcolor="#eaeaea" align=center valign=top><td>&nbsp;' || '<td>*' || '<td>-' ||
              '<td>*' || '<td>*' || '<td>-' || '<td>-' || '<td>*' || '<td>-' || '<td>*' || '<td>*' ||
              '<td>-' || '<td>-' || '<td>-' || '<td>-' || '<td>-' || '<td>-' || '<td>-' || '<td>-' ||
              '<td>-' || '<td>-';
    pers_rep_util.put_report(3, s_line);
    --4---
    s_num := 3;
    for s in (select substr(c.inps, 1, 14) inps,
                     c.code_dolj_cb cod_dolj,
                     decode(w.fbank, 'Y', 1, 'N', 2, 1) pr_system,
                     s_filial filial,
                     substr(w.work_name, 1, 100) mes_rabot,

                     substr(w.work_occ, 1, 100) doljn,
                     to_char(w.begin_date, 'yyyymmdd') begin_date,
                     to_char(w.end_date, 'yyyymmdd') end_date,
                     w.prik_beg num_prik_beg,
                     to_char(w.date_prik_beg, 'yyyymmdd') date_prik_beg,

                     w.prik_end num_prik_end,
                     to_char(w.date_prik_end, 'yyyymmdd') date_prik_end,
                     substr(w.code_prich_end, 5, 6) code_prich_end,
                     w.prich_end,
                     to_char(w.date_ut_km, 'yyyymmdd') date_ut_km,

                     w.nom_km num_km,
                     to_char(w.date_kval_cb, 'yyyymmdd') date_kval_cb,
                     w.nom_kval_cb num_kval_cb,
                     to_char(w.date_attes, 'yyyymmdd') date_attes,
                     w.attestat
                from v_doljn dol, pers_work_history w, pers_employee_code c
               where c.id = w.pers_id
                 and c.inps is not null
                 and dol.code = c.code_dolj_cb
                 and c.condition in ('A', 'AD', 'AO')
                 and c.filial = s_filial
               order by c.code)
    loop
      s_num  := s_num + 1;
      s_line := '<tr align=center valign=top><td>' || (s_num - 3) || '<td bgcolor="' ||
                obligation(s.inps) || '">' || nvl_table(s.inps, i_nbsp) || '<td>' ||
                nvl_table(s.cod_dolj, i_nbsp) || '<td bgcolor="' || obligation(s.pr_system) || '">' ||
                nvl_table(s.pr_system, i_nbsp) || '<td bgcolor="' || obligation(s.filial) || '">' ||
                nvl_table(s.filial, i_nbsp) || '<td align=left>' || nvl_table(s.mes_rabot, i_nbsp) ||
                '<td>' || nvl_table(s.doljn, i_nbsp) || '<td bgcolor="' || obligation(s.begin_date) || '">' ||
                nvl_table(s.begin_date, i_nbsp) || '<td>' || nvl_table(s.end_date, i_nbsp) ||
                '<td bgcolor="' || obligation(s.num_prik_beg) || '">' ||
                nvl_table(s.num_prik_beg, i_nbsp) || '<td bgcolor="' || obligation(s.date_prik_beg) || '">' ||
                nvl_table(s.date_prik_beg, i_nbsp) || '<td>' || nvl_table(s.num_prik_end, i_nbsp) ||
                '<td>' || nvl_table(s.date_prik_end, i_nbsp) || '<td>' ||
                nvl_table(s.code_prich_end, i_nbsp) || '<td>' || nvl_table(s.prich_end, i_nbsp) ||
                '<td>' || nvl_table(s.date_ut_km, i_nbsp) || '<td>' || nvl_table(s.num_km, i_nbsp) ||
                '<td>' || nvl_table(s.date_kval_cb, i_nbsp) || '<td>' ||
                nvl_table(s.num_kval_cb, i_nbsp) || '<td>' || nvl_table(s.date_attes, i_nbsp) ||
                '<td>' || nvl_table(s.attestat, i_nbsp);
      pers_rep_util.put_report(s_num, s_line);
    end loop;
    ---
  end;

  --=============================================================
  --  Требования №  09_004
  --  Информация по образованию руководящего кадрового состава коммерческих банков
  --=============================================================
  procedure rep_09_004
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  ) is
  begin
    s_width  := 1024;
    s_col    := 21;
    s_filial := pers_inupdel.getfilial;
    delete from pers_rep;

    pers_rep_util.set_rep_code(i_rep_code);

    s_name_bank := pers_rep_util.get_param(2);
    --1------
    s_line := '<table width=' || s_width || ' border=0 style="font-size:10pt">' ||
              '<tr><th colspan=' || s_col || '>' || s_name_bank || '<tr><th colspan=' || s_col || '>' ||
              pers_rep_util.get_rep_line(1) || '<tr><td colspan=' || s_col ||
              ' align=right style="font-size:8pt">"*" - Обязательный<br>"-" - Не обязательный</td>';
    pers_rep_util.put_report(1, s_line);
    --2------
    s_line := '<table width=' || s_width ||
              ' border=1 cellpadding=0 cellspacing=0 style="FONT-SIZE:8pt">
         <tr bgcolor="#cacaca" align=center valign=top><td>№';
    for i in 2 .. s_col
    loop
      s_line := s_line || '<td>' || pers_rep_util.get_rep_line(i);
    end loop;
    s_line := s_line || '</td>';
    pers_rep_util.put_report(2, s_line);
    --3---
    s_line := '<tr bgcolor="#eaeaea" align=center valign=top><td>&nbsp;' || '<td>*' || '<td>-' ||
              '<td>-' || '<td>-' || '<td>-' || '<td>-' || '<td>-' || '<td>-' || '<td>-' || '<td>-' ||
              '<td>-' || '<td>-' || '<td>-' || '<td>-' || '<td>-' || '<td>-' || '<td>-' || '<td>-' ||
              '<td>-' || '<td>-';
    pers_rep_util.put_report(3, s_line);
    --4---
    s_num := 3;
    for s in (select substr(c.inps, 1, 14) inps,
                     pers_rep_cb_ruz.get_sprcodecb(e.un_col_sc) code_uch_zav,
                     pers_rep_cb_ruz.get_sprprimcb(e.un_col_sc) prim_uch_zav,
                     substr(trim(e.kurs), 1, 1) kurs,
                     substr(trim(e.fakultet), 1, 40) fakultet,

                     substr(pers_rep_cb_ruz.getsprname(e.dipl_spec), 1, 50) dipl_spec,
                     substr(trim(e.dipl_num), 1, 20) dipl_num,
                     to_char(e.dipl_date, 'yyyy') god_dipl,
                     to_char(e.dipl_date, 'mm') mes_dipl,
                     to_char(e.dipl_date, 'dd') den_dipl,

                     decode(e.nostrif, 'Y', 1, 2) nostrif,
                     e.nostrif_ser,
                     e.nostrif_num,
                     to_char(e.nostrif_date, 'yyyymmdd') nostrif_date,
                     to_char(e.enter_year, 'yyyy') god_post,

                     to_char(e.enter_year, 'mm') mes_post,
                     to_char(e.enter_year, 'dd') den_post,
                     to_char(e.grad_year, 'yyyy') god_okon,
                     to_char(e.grad_year, 'mm') mes_okon,
                     to_char(e.grad_year, 'dd') den_okon

                from v_doljn dol, pers_education e, pers_employee_code c
               where c.id = e.pers_id
                 and c.inps is not null
                 and dol.code = c.code_dolj_cb
                 and c.condition in ('A', 'AD', 'AO')
                 and c.filial = s_filial
               order by c.code)
    loop
      s_num  := s_num + 1;
      s_line := '<tr align=center valign=top><td>' || (s_num - 3) || '<td bgcolor="' ||
                obligation(s.inps) || '">' || nvl_table(s.inps, i_nbsp) || '<td>' ||
                nvl_table(s.code_uch_zav, i_nbsp) || '<td>' || nvl_table(s.prim_uch_zav, i_nbsp) ||
                '<td>' || nvl_table(s.kurs, i_nbsp) || '<td align=left>' ||
                nvl_table(s.fakultet, i_nbsp) || '<td>' || nvl_table(s.dipl_spec, i_nbsp) || '<td>' ||
                nvl_table(s.dipl_num, i_nbsp) || '<td>' || nvl_table(s.god_dipl, i_nbsp) || '<>' ||
                nvl_table(s.mes_dipl, i_nbsp) || '<td>' || nvl_table(s.den_dipl, i_nbsp) || '<td>' ||
                nvl_table(s.nostrif, i_nbsp) || '<td>' || nvl_table(s.nostrif_ser, i_nbsp) ||
                '<td>' || nvl_table(s.nostrif_num, i_nbsp) || '<td>' ||
                nvl_table(s.nostrif_date, i_nbsp) || '<td>' || nvl_table(s.god_post, i_nbsp) ||
                '<td>' || nvl_table(s.mes_post, i_nbsp) || '<td>' || nvl_table(s.den_post, i_nbsp) ||
                '<td>' || nvl_table(s.god_okon, i_nbsp) || '<td>' || nvl_table(s.mes_okon, i_nbsp) ||
                '<td>' || nvl_table(s.den_okon, i_nbsp);
      pers_rep_util.put_report(s_num, s_line);
    end loop;
    ---
  end;

  --=============================================================
  --  Требования №  09_005
  --  Информация по награждениям руководящего кадрового состава коммерческих банков
  --=============================================================
  procedure rep_09_005
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  ) is
  begin
    s_width  := 1024;
    s_col    := 6;
    s_filial := pers_inupdel.getfilial;
    delete from pers_rep;

    pers_rep_util.set_rep_code(i_rep_code);

    s_name_bank := pers_rep_util.get_param(2);
    --1------
    s_line := '<table width=' || s_width || ' border=0 style="font-size:10pt">' ||
              '<tr><th colspan=' || s_col || '>' || s_name_bank || '<tr><th colspan=' || s_col || '>' ||
              pers_rep_util.get_rep_line(1) || '<tr><td colspan=' || s_col ||
              ' align=right style="font-size:8pt">"*" - Обязательный<br>"-" - Не обязательный</td>';
    pers_rep_util.put_report(1, s_line);
    --2------
    s_line := '<table width=' || s_width ||
              ' border=1 cellpadding=0 cellspacing=0 style="FONT-SIZE:8pt">
         <tr bgcolor="#cacaca" align=center valign=top><td>№';
    for i in 2 .. s_col
    loop
      s_line := s_line || '<td>' || pers_rep_util.get_rep_line(i);
    end loop;
    s_line := s_line || '</td>';
    pers_rep_util.put_report(2, s_line);
    --3---
    s_line := '<tr bgcolor="#eaeaea" align=center valign=top><td>&nbsp;' || '<td>*' || '<td>*' ||
              '<td>*' || '<td>-' || '<td>-';
    pers_rep_util.put_report(3, s_line);
    --4---
    s_num := 3;
    for s in (select substr(c.inps, 1, 14) inps,
                     n.name name_nagrad,
                     to_char(n.pres_date, 'yyyy') god_nagrad,
                     to_char(n.pres_date, 'mm') mes_nagrad,
                     to_char(n.pres_date, 'dd') den_nagrad
                from v_doljn dol, pers_decoration n, pers_employee_code c
               where c.id = n.pers_id
                 and n.davlat = 'Y'
                 and c.inps is not null
                 and dol.code = c.code_dolj_cb
                 and c.condition in ('A', 'AD', 'AO')
                 and c.filial = s_filial
               order by c.code)
    loop
      s_num  := s_num + 1;
      s_line := '<tr align=center valign=top><td>' || (s_num - 3) || '<td bgcolor="' ||
                obligation(s.inps) || '">' || nvl_table(s.inps, i_nbsp) || '<td bgcolor="' ||
                obligation(s.name_nagrad) || '">' || nvl_table(s.name_nagrad, i_nbsp) ||
                '<td bgcolor="' || obligation(s.god_nagrad) || '">' ||
                nvl_table(s.god_nagrad, i_nbsp) || '<td>' || nvl_table(s.mes_nagrad, i_nbsp) ||
                '<td align=left>' || nvl_table(s.den_nagrad, i_nbsp);
      pers_rep_util.put_report(s_num, s_line);
    end loop;
    ---
  end;

  --=============================================================
  --  Требования №  09_006
  --  Информация по выборности руководящего кадрового состава коммерческих банков
  --=============================================================
  procedure rep_09_006
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  ) is
  begin
    s_width  := 1024;
    s_col    := 6;
    s_filial := pers_inupdel.getfilial;
    delete from pers_rep;

    pers_rep_util.set_rep_code(i_rep_code);

    s_name_bank := pers_rep_util.get_param(2);
    --1------
    s_line := '<table width=' || s_width || ' border=0 style="font-size:10pt">' ||
              '<tr><th colspan=' || s_col || '>' || s_name_bank || '<tr><th colspan=' || s_col || '>' ||
              pers_rep_util.get_rep_line(1) || '<tr><td colspan=' || s_col ||
              ' align=right style="font-size:8pt">"*" - Обязательный<br>"-" - Не обязательный</td>';
    pers_rep_util.put_report(1, s_line);
    --2------
    s_line := '<table width=' || s_width ||
              ' border=1 cellpadding=0 cellspacing=0 style="FONT-SIZE:8pt">
         <tr bgcolor="#cacaca" align=center valign=top><td>№';
    for i in 2 .. s_col
    loop
      s_line := s_line || '<td>' || pers_rep_util.get_rep_line(i);
    end loop;
    s_line := s_line || '</td>';
    pers_rep_util.put_report(2, s_line);
    --3---
    s_line := '<tr bgcolor="#eaeaea" align=center valign=top><td>&nbsp;' || '<td>*' || '<td>*' ||
              '<td>*' || '<td>-' || '<td>-';
    pers_rep_util.put_report(3, s_line);
    --4---
    s_num := 3;
    for s in (select substr(c.inps, 1, 14) inps,
                     e.name name_organ,
                     to_char(e.begin_date, 'yyyy') god_organ,
                     to_char(e.begin_date, 'mm') mes_organ,
                     to_char(e.begin_date, 'dd') den_organ
                from v_doljn dol, pers_election e, pers_employee_code c
               where c.id = e.pers_id
                 and c.inps is not null
                 and dol.code = c.code_dolj_cb
                 and c.condition in ('A', 'AD', 'AO')
                 and c.filial = s_filial
               order by c.code)
    loop
      s_num  := s_num + 1;
      s_line := '<tr align=center valign=top><td>' || (s_num - 3) || '<td bgcolor="' ||
                obligation(s.inps) || '">' || nvl_table(s.inps, i_nbsp) || '<td bgcolor="' ||
                obligation(s.name_organ) || '">' || nvl_table(s.name_organ, i_nbsp) ||
                '<td bgcolor="' || obligation(s.god_organ) || '">' ||
                nvl_table(s.god_organ, i_nbsp) || '<td>' || nvl_table(s.mes_organ, i_nbsp) ||
                '<td align=left>' || nvl_table(s.den_organ, i_nbsp);
      pers_rep_util.put_report(s_num, s_line);
    end loop;
    ---
  end;

  --=============================================================
  --  Требования №  09_007
  --  Информация о пребываниее за границей руководящего кадрового состава коммерческих банков
  --=============================================================
  procedure rep_09_007
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  ) is
  begin
    s_width  := 1024;
    s_col    := 10;
    s_filial := pers_inupdel.getfilial;
    delete from pers_rep;

    pers_rep_util.set_rep_code(i_rep_code);

    s_name_bank := pers_rep_util.get_param(2);
    --1------
    s_line := '<table width=' || s_width || ' border=0 style="font-size:10pt">' ||
              '<tr><th colspan=' || s_col || '>' || s_name_bank || '<tr><th colspan=' || s_col || '>' ||
              pers_rep_util.get_rep_line(1) || '<tr><td colspan=' || s_col ||
              ' align=right style="font-size:8pt">"*" - Обязательный<br>"-" - Не обязательный</td>';
    pers_rep_util.put_report(1, s_line);
    --2------
    s_line := '<table width=' || s_width ||
              ' border=1 cellpadding=0 cellspacing=0 style="FONT-SIZE:8pt">
         <tr bgcolor="#cacaca" align=center valign=top><td>№';
    for i in 2 .. s_col
    loop
      s_line := s_line || '<td>' || pers_rep_util.get_rep_line(i);
    end loop;
    s_line := s_line || '</td>';
    pers_rep_util.put_report(2, s_line);
    --3---
    s_line := '<tr bgcolor="#eaeaea" align=center valign=top><td>&nbsp;' || '<td>*' || '<td>*' ||
              '<td>*' || '<td>*' || '<td>*' || '<td>*' || '<td>*' || '<td>*' || '<td>*';
    pers_rep_util.put_report(3, s_line);
    --4---
    s_num := 3;
    for s in (select substr(c.inps, 1, 14) inps,
                     nvl(pers_rep_cb_ruz.get_sprcodecb(r.code_land), '860') code_land,
                     r.land_name || '. ' || r.wcc_name wcc_name,
                     to_char(r.beg_date, 'yyyy') god_beg,
                     to_char(r.beg_date, 'mm') mes_beg,
                     to_char(r.beg_date, 'dd') den_beg,
                     to_char(r.end_date, 'yyyy') god_end,
                     to_char(r.end_date, 'mm') mes_end,
                     to_char(r.end_date, 'dd') den_end
                from v_doljn dol, pers_rubej r, pers_employee_code c
               where c.id = r.pers_id
                 and c.inps is not null
                 and dol.code = c.code_dolj_cb
                 and c.condition in ('A', 'AD', 'AO')
                 and c.filial = s_filial
               order by c.code)
    loop
      s_num  := s_num + 1;
      s_line := '<tr align=center valign=top><td>' || (s_num - 3) || '<td bgcolor="' ||
                obligation(s.inps) || '">' || nvl_table(s.inps, i_nbsp) || '<td bgcolor="' ||
                obligation(s.code_land) || '">' || nvl_table(s.code_land, i_nbsp) ||
                '<td bgcolor="' || obligation(s.wcc_name) || '">' || nvl_table(s.wcc_name, i_nbsp) ||
                '<td bgcolor="' || obligation(s.god_beg) || '">' || nvl_table(s.god_beg, i_nbsp) ||
                '<td bgcolor="' || obligation(s.mes_beg) || '">' || nvl_table(s.mes_beg, i_nbsp) ||
                '<td bgcolor="' || obligation(s.den_beg) || '">' || nvl_table(s.den_beg, i_nbsp) ||
                '<td bgcolor="' || obligation(s.god_end) || '">' || nvl_table(s.god_end, i_nbsp) ||
                '<td bgcolor="' || obligation(s.mes_end) || '">' || nvl_table(s.mes_end, i_nbsp) ||
                '<td bgcolor="' || obligation(s.den_end) || '">' || nvl_table(s.den_end, i_nbsp);
      pers_rep_util.put_report(s_num, s_line);
    end loop;
    ---
  end;

  --=============================================================
  --  Требования №  09_008
  --  Информация по владению иностранными языками руководящего кадрового состава коммерческих банков
  --=============================================================
  procedure rep_09_008
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  ) is
  begin
    s_width  := 1024;
    s_col    := 5;
    s_filial := pers_inupdel.getfilial;
    delete from pers_rep;

    pers_rep_util.set_rep_code(i_rep_code);

    s_name_bank := pers_rep_util.get_param(2);
    --1------
    s_line := '<table width=' || s_width || ' border=0 style="font-size:10pt">' ||
              '<tr><th colspan=' || s_col || '>' || s_name_bank || '<tr><th colspan=' || s_col || '>' ||
              pers_rep_util.get_rep_line(1) || '<tr><td colspan=' || s_col ||
              ' align=right style="font-size:8pt">"*" - Обязательный<br>"-" - Не обязательный</td>';
    pers_rep_util.put_report(1, s_line);
    --2------
    s_line := '<table width=' || s_width ||
              ' border=1 cellpadding=0 cellspacing=0 style="FONT-SIZE:8pt">
         <tr bgcolor="#cacaca" align=center valign=top><td>№';
    for i in 2 .. s_col
    loop
      s_line := s_line || '<td>' || pers_rep_util.get_rep_line(i);
    end loop;
    s_line := s_line || '</td>';
    pers_rep_util.put_report(2, s_line);
    --3---
    s_line := '<tr bgcolor="#eaeaea" align=center valign=top><td>&nbsp;' || '<td>*' || '<td>-' ||
              '<td>-' || '<td>*';
    pers_rep_util.put_report(3, s_line);
    --4---
    s_num := 3;
    for s in (select substr(c.inps, 1, 14) inps,
                     pers_rep_cb_ruz.get_sprcodecb(l.code_lang) code_lang,
                     pers_rep_cb_ruz.get_sprprimcb(l.code_lang) prim_lang,
                     nvl(pers_rep_cb_ruz.get_sprcodecb(l.code_lang_zn), 3) code_lang_zn
                from v_doljn dol, pers_for_language l, pers_employee_code c
               where c.id = l.pers_id
                 and c.inps is not null
                 and dol.code = c.code_dolj_cb
                 and c.condition in ('A', 'AD', 'AO')
                 and c.filial = s_filial
               order by c.code)
    loop
      s_num  := s_num + 1;
      s_line := '<tr align=center valign=top><td>' || (s_num - 3) || '<td bgcolor="' ||
                obligation(s.inps) || '">' || nvl_table(s.inps, i_nbsp) || '<td>' ||
                nvl_table(s.code_lang, i_nbsp) || '<td>' || nvl_table(s.prim_lang, i_nbsp) ||
                '<td bgcolor="' || obligation(s.code_lang_zn) || '">' ||
                nvl_table(s.code_lang_zn, i_nbsp);
      pers_rep_util.put_report(s_num, s_line);
    end loop;
    ---
  end;

  --=============================================================
  --  Требования №  09_009
  --  Информация по повышению квалификации руководящего кадрового состава коммерческих банков
  --=============================================================
  procedure rep_09_009
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  ) is
  begin
    s_width  := 1024;
    s_col    := 7;
    s_filial := pers_inupdel.getfilial;
    delete from pers_rep;

    pers_rep_util.set_rep_code(i_rep_code);

    s_name_bank := pers_rep_util.get_param(2);
    --1------
    s_line := '<table width=' || s_width || ' border=0 style="font-size:10pt">' ||
              '<tr><th colspan=' || s_col || '>' || s_name_bank || '<tr><th colspan=' || s_col || '>' ||
              pers_rep_util.get_rep_line(1) || '<tr><td colspan=' || s_col ||
              ' align=right style="font-size:8pt">"*" - Обязательный<br>"-" - Не обязательный</td>';
    pers_rep_util.put_report(1, s_line);
    --2------
    s_line := '<table width=' || s_width ||
              ' border=1 cellpadding=0 cellspacing=0 style="FONT-SIZE:8pt">
         <tr bgcolor="#cacaca" align=center valign=top><td>№';
    for i in 2 .. s_col
    loop
      s_line := s_line || '<td>' || pers_rep_util.get_rep_line(i);
    end loop;
    s_line := s_line || '</td>';
    pers_rep_util.put_report(2, s_line);
    --3---
    s_line := '<tr bgcolor="#eaeaea" align=center valign=top><td>&nbsp;' || '<td>*' || '<td>*' ||
              '<td>*' || '<td>*' || '<td>*' || '<td>*';
    pers_rep_util.put_report(3, s_line);
    --4---
    s_num := 3;
    for s in (select substr(c.inps, 1, 14) inps,
                     q.yonalish pov_qualif,
                     to_char(q.date_beg, 'yyyymmdd') date_beg,
                     to_char(q.date_beg, 'yyyy') god_beg,
                     to_char(q.date_beg, 'mm') mes_beg,
                     to_char(q.date_beg, 'dd') den_beg
                from v_doljn dol, pers_qualific q, pers_employee_code c
               where c.id = q.pers_id
                 and c.inps is not null
                 and dol.code = c.code_dolj_cb
                 and c.condition in ('A', 'AD', 'AO')
                 and c.filial = s_filial
               order by c.code)
    loop
      s_num  := s_num + 1;
      s_line := '<tr align=center valign=top><td>' || (s_num - 3) || '<td bgcolor="' ||
                obligation(s.inps) || '">' || nvl_table(s.inps, i_nbsp) || '<td bgcolor="' ||
                obligation(s.pov_qualif) || '">' || nvl_table(s.pov_qualif, i_nbsp) ||
                '<td bgcolor="' || obligation(s.date_beg) || '">' || nvl_table(s.date_beg, i_nbsp) ||
                '<td bgcolor="' || obligation(s.god_beg) || '">' || nvl_table(s.god_beg, i_nbsp) ||
                '<td bgcolor="' || obligation(s.mes_beg) || '">' || nvl_table(s.mes_beg, i_nbsp) ||
                '<td bgcolor="' || obligation(s.den_beg) || '">' || nvl_table(s.den_beg, i_nbsp);
      pers_rep_util.put_report(s_num, s_line);
    end loop;
    ---
  end;

  --=============================================================
  --  Требования №  09_010
  --  Информация по штатному расписанию в коммерческом банке
  --=============================================================
  procedure rep_09_010
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  ) is
  begin
    s_width  := 1024;
    s_col    := 4;
    s_filial := pers_inupdel.getfilial;
    delete from pers_rep;

    pers_rep_util.set_rep_code(i_rep_code);

    s_name_bank := pers_rep_util.get_param(2);
    --1------
    s_line := '<table width=' || s_width || ' border=0 style="font-size:10pt">' ||
              '<tr><th colspan=' || s_col || '>' || s_name_bank || '<tr><th colspan=' || s_col || '>' ||
              pers_rep_util.get_rep_line(1) || '<tr><td colspan=' || s_col ||
              ' align=right style="font-size:8pt">"*" - Обязательный<br>"-" - Не обязательный</td>';
    pers_rep_util.put_report(1, s_line);
    --2------
    s_line := '<table width=' || s_width ||
              ' border=1 cellpadding=0 cellspacing=0 style="FONT-SIZE:8pt">
         <tr bgcolor="#cacaca" align=center valign=top><td>№';
    for i in 2 .. s_col
    loop
      s_line := s_line || '<td>' || pers_rep_util.get_rep_line(i);
    end loop;
    s_line := s_line || '</td>';
    pers_rep_util.put_report(2, s_line);
    --3---
    s_line := '<tr bgcolor="#eaeaea" align=center valign=top><td>&nbsp;' || '<td>-' || '<td>-' ||
              '<td>*';
    pers_rep_util.put_report(3, s_line);
    --4---
    s_num := 3;
    for s in (select dol.code, dol.name, substr(c.inps, 1, 14) inps
                from v_doljn dol
                left outer join pers_employee_code c on (dol.code = c.code_dolj_cb)
               where c.condition in ('A', 'AD', 'AO')
                 and c.filial = s_filial
               order by c.code)
    loop
      s_num  := s_num + 1;
      s_line := '<tr align=center valign=top><td>' || (s_num - 3) || '<td>' ||
                nvl_table(s.code, i_nbsp) || '<td>' || nvl_table(s.name, i_nbsp) || '<td bgcolor="' ||
                obligation(s.inps) || '">' || nvl_table(s.inps, i_nbsp);
      pers_rep_util.put_report(s_num, s_line);
    end loop;
    ---
  end;

  --=============================================================
  --  Требования №  09_011
  --  Информация по количеству и составу сотрудников в коммерческом банке (для отчета 1-Т)
  --=============================================================
  procedure rep_09_011
  (
    i_rep_code in number,
    i_nbsp     in varchar2
  ) is

    amountshtat number(6) := 0;
    amountemp   number(6) := 0;
  begin
    s_width  := 1024;
    s_col    := 7;
    s_filial := pers_inupdel.getfilial;
    delete from pers_rep;

    pers_rep_util.set_rep_code(i_rep_code);

    s_name_bank := pers_rep_util.get_param(2);
    --1------
    s_line := '<table width=' || s_width || ' border=0 style="font-size:10pt">' ||
              '<tr><th colspan=' || s_col || '>' || s_name_bank || '<tr><th colspan=' || s_col || '>' ||
              pers_rep_util.get_rep_line(1) || '<tr><td colspan=' || s_col ||
              ' align=right style="font-size:8pt">"*" - Обязательный<br>"-" - Не обязательный</td>';
    pers_rep_util.put_report(1, s_line);
    --2------
    s_line := '<table width=' || s_width ||
              ' border=1 cellpadding=0 cellspacing=0 style="FONT-SIZE:8pt">
         <tr bgcolor="#cacaca" align=center valign=top><td>№';
    for i in 2 .. s_col
    loop
      s_line := s_line || '<td>' || pers_rep_util.get_rep_line(i);
    end loop;
    s_line := s_line || '</td>';
    pers_rep_util.put_report(2, s_line);
    --3---
    s_line := '<tr bgcolor="#eaeaea" align=center valign=top><td>&nbsp;' || '<td>*' || '<td>-' ||
              '<td>*' || '<td>*' || '<td>*' || '<td>*';
    pers_rep_util.put_report(3, s_line);
    --4---
    s_num := 3;
    for s in (select decode(c.code_categ,
                            '090001',
                            1,
                            '090002',
                            2,
                            '090001',
                            1,
                            '090006',
                            3,
                            '090003',
                            4,
                            4) dolj_grup,
                     nvl(pers_rep_cb_ruz.get_sprcodecb(d.education), 1) code_obraz,
                     pers_rep_cb_ruz.get_age_group(c.id) age_group,
                     decode(c.condition, 'A', 1, 'AO', 1, 'AD', 2, 'P', 3, 'AV', 3) emp_satus
                from pers_employee_code c
                left outer join pers_employee_desc d on (c.id = d.pers_id)
               where c.condition in ('A', 'AD', 'AO', 'P', 'AV')
                 and c.filial = s_filial
               order by c.code)
    loop
      s_num := s_num + 1;
      select nvl(sum(b.jobamount), 0)
        into amountshtat
        from pers_crew b
       where pers_rep_cb_ruz.get_dep_condition(b.id_dep) = 'A'
         and trim(b.condition) = 'A'
         and filial = s_filial;

      select count(c.id)
        into amountemp
        from pers_employee_code c
       where pers_rep_cb_ruz.get_dep_condition(c.id_dep) = 'A'
         and pers_rep_cb_ruz.get_dolj_condition(c.id_dolj) = 'A'
         and c.condition in ('A', 'AD', 'AO')
         and filial = s_filial;

      s_line := '<tr align=center valign=top><td>' || (s_num - 3) || '<td bgcolor="' ||
                obligation(s.dolj_grup) || '">' || nvl_table(s.dolj_grup, i_nbsp) || '<td>' ||
                nvl_table(s.code_obraz, i_nbsp) || '<td bgcolor="' || obligation(s.age_group) || '">' ||
                nvl_table(s.age_group, i_nbsp) || '<td bgcolor="' || obligation(s.emp_satus) || '">' ||
                nvl_table(s.emp_satus, i_nbsp) || '<td bgcolor="' || obligation(amountshtat) || '">' ||
                nvl_table(amountshtat, i_nbsp) || '<td bgcolor="' || obligation(amountemp) || '">' ||
                nvl_table(amountemp, i_nbsp);
      pers_rep_util.put_report(s_num, s_line);
    end loop;
    ---
  end;

end;
/
