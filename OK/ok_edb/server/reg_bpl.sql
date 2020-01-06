alter trigger tr_apps disable;

delete from apps where  upper(package_name) = upper('OK.bpl');
commit;

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
    insert into apps values(seq_apps.nextval, 'Кадры', 'OK.bpl', 'TBOKForm', 'ICON96', '1.0.0.2', 'Кадры', 70, 1, 0);
  else 
    Update Apps Set Version = '1.0.0.2',GROUP_ID=70
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK.bpl');
  end if;
end;
/



commit;

alter trigger tr_apps enable;

