spool c:\err09_004_1.txt

declare
  V_DATE_ date :=to_date('18.09.2015','dd.mm.yyyy');
  branch_ branch.bank_id%type;
begin
  select bank_id into branch_ from branch;
    delete from ok_hist where branch=branch_ and nom_ui in ('09_004') and personal_code in (-1,-2,-3,-4);


  for rec_ok in (select okp.* from ok_personal okp, SS_OK_NCI son 
  where okp.tabno=okp.tabno
   and okp.branch=okp.branch and okp.STATUS_CODE in (2,5)
                    and okp.post_code=son.ok_id and son.NCI_ID=79
                    and branch=branch_ and personal_code in (-1,-2,-3,-4))
  loop
    update OK_EDUCATION set EMP_CODE=EMP_CODE where branch=rec_ok.BRANCH 
      and PERSONAL_CODE=rec_ok.PERSONAL_CODE;

    update ok_hist set ACTION_HIST_ID=1,V_DATE=V_DATE_ where branch=rec_ok.BRANCH 
       and PERSONAL_CODE=rec_ok.PERSONAL_CODE 
       and nom_ui in ('09_004');

  end loop;
  
end;  
/

commit;
