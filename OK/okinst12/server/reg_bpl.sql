alter trigger tr_apps disable;

declare
  id_ number;
begin
  begin
    select id into id_ from apps where upper(package_name) = upper('OKRef.bpl');
  exception
    when no_data_found then
      id_ := null;
  end;
  if id_ is null then
    insert into apps values(seq_apps.nextval, 'Кадры - справочники', 'OKRef.bpl', 'TBOKRefForm', 'ICON96', '1.0.0.9', 'Кадры - справочники', null, 1, 0);
  else 
    Update Apps Set Version = '1.0.0.9',GROUP_ID=null
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKRef.bpl');
  end if;
end;
/
declare
  id_ number;
begin
  begin
    select id into id_ from apps where upper(package_name) = upper('OK.bpl');
  exception
    when no_data_found then
      id_ := null;
  end;
  if id_ is null then
    insert into apps values(seq_apps.nextval, 'Кадры', 'OK.bpl', 'TBOKForm', 'ICON96', '1.0.1.2', 'Кадры', null, 1, 0);
  else 
    Update Apps Set Version = '1.0.1.2',GROUP_ID=null
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK.bpl');
  end if;
end;
/

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
    insert into apps values(seq_apps.nextval, 'Кадры - генератор отчетов', 'OKOrder.bpl', 'TBOKOrderForm', 'ICON96', '1.0.0.0', 'Кадры - генератор отчетов', null, 1, 0);
  else
    Update Apps Set Version = '1.0.0.0',GROUP_ID=null
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKOrder.bpl');
  end if;
end;
/

commit;

alter trigger tr_apps enable;
