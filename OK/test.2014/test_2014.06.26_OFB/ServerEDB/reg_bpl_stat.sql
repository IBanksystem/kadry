
declare
  id_ number;
begin
  begin
    select id into id_ from apps where upper(package_name) = upper('OKSTAT.bpl');
  exception
    when no_data_found then
      id_ := null;
  end;
  if id_ is null then
    insert into apps values(seq_apps.nextval, 'Кадры - Штатное расписание', 'OKSTAT.bpl', 'TBOKFormSTAT', 'ICON96', '1.0.9.6', 'Кадры - Штатное расписание', null, 1, 0);
  else 
    Update Apps Set Version = '1.0.9.6'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKSTAT.bpl');
  end if;
end;
/

commit;
    Update Apps Set Version = '1.0.9.6'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKSTAT.bpl');
commit;

