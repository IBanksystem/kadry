--проставляет для сотрудников в состоянии принят и в декрете
--код отдела и код должности в текущую строку сведений о работе, 
--если там пусто или стоит другой код


spool c:\depost.txt
declare
 branch_ ok_personal.branch%type;
begin
  select bank_id into branch_ from branch;
   
  for rec_ok in (select okp.* from ok_personal okp
  where okp.STATUS_CODE in (2,5)
   and okp.branch=branch_ 
   and okp.department_code is NOT null and okp.post_code is NOT null 
   )   
  loop

    update ok_period 
    set department_code=rec_ok.department_code,
        post_code=rec_ok.post_code
    where branch=branch_
    and personal_code=rec_ok.personal_code
    and out_office_date is null
    and (department_code is null or post_code is null 
        or department_code<>rec_ok.department_code 
        or post_code<>rec_ok.post_code);
      
  end loop;

end;
/         

commit;

spool off;
 