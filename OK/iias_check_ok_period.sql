-- если код должности и код отдела в последной строчке труд деятельности отличается от кода должности и код подразделение в карточке 
-- нужно заменить в труд деятельности на значения из карточки
spool c:\err.txt
declare
  branch_ branch.bank_id%type;
begin
  select bank_id into branch_ from branch;

  for rec_ok in (select okp.* from ok_personal okp, SS_OK_NCI son 
  where okp.tabno=okp.tabno
   and okp.branch=branch_ and okp.STATUS_CODE in (2,5)
                    and okp.post_code=son.ok_id and son.NCI_ID=79)
  loop

        update OK_PERIOD set post_code=rec_ok.post_code, department_code=rec_ok.department_code
        where branch=rec_ok.BRANCH and PERSONAL_CODE=rec_ok.PERSONAL_CODE
        and (post_code<>rec_ok.post_code or department_code<>rec_ok.department_code)
        and out_office_date is null;

  end loop;
  
  
end;  
/

commit;

spool off;  


