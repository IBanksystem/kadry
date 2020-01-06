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
    insert into apps values(seq_apps.nextval, 'Кадры - генератор отчетов', 'OKOrder.bpl', 'TBOKOrderForm', 'ICON96', '1.0.0.0', 'Кадры - генератор отчетов', '9', 1, 0);
  end if;
end;
/
