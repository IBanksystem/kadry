

declare
  id_ number;
begin
  begin
    select id into id_ from apps where upper(package_name) = upper('OKOrder.bpl');
  exception
    when no_data_found then
      id_ := null;
  end;
  if id_ is null then
    insert into apps values(seq_apps.nextval, 'Кадры - генератор отчетов ЕДБ', 'OKOrder.bpl', 'TBOKOrderForm', 'ICON96', '2.0.0.0', 'Кадры - генератор отчетов ЕДБ', null, 1, 0);
  else
    Update Apps Set Version = '2.0.0.0'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKOrder.bpl');
  end if;
end;
/

commit;

    Update Apps Set Version = '2.0.0.0',GROUP_ID=null
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKOrder.bpl');

commit;
