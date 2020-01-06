spool c:\err.txt

declare

  branch_ branch.bank_id%type;
begin
  select bank_id into branch_ from branch;


  for rec_ok in (select okp.* from ok_personal okp
  where okp.branch=branch_ )                 
  loop
    if gender_code=1
    update OK_relation set relation_code=8
      where branch=rec_ok.BRANCH
      and PERSONAL_CODE=rec_ok.PERSONAL_CODE and relation_code=7;
    end if;
    if gender_code=2
    update OK_relation set relation_code=7
      where branch=rec_ok.BRANCH
      and PERSONAL_CODE=rec_ok.PERSONAL_CODE and relation_code=8;
    end if;


  end loop;
  
end;  
/

commit;







    