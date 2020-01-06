
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
    insert into apps values(seq_apps.nextval, 'Кадры - справочники', 'OKRef.bpl', 'TBOKRefForm', 'ICON96', '1.0.0.4', 'Кадры - справочники', null, 1, 0);
  else 
    Update Apps Set Version = '1.0.0.4'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKRef.bpl');
  end if;
end;
/

commit;

