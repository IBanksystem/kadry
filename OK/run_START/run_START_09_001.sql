spool c:\err09_001.txt

declare
  V_DATE_ date :=to_date('20.03.2012','dd.mm.yyyy');
  branch_ branch.bank_id%type;
begin
  select bank_id into branch_ from branch;
  delete from ok_hist where branch=branch_ and nom_ui in ('09_001');

  for rec_ok in (select okp.* from ok_personal okp, SS_OK_NCI son 
  where okp.tabno=okp.tabno
   and okp.branch=okp.branch and okp.STATUS_CODE in (2,5)
                    and okp.post_code=son.ok_id and son.NCI_ID=79
   and okp.branch=branch_ )                 
  loop
    update OK_PERSONAL set EMP_CODE=EMP_CODE where branch=rec_ok.BRANCH
      and PERSONAL_CODE=rec_ok.PERSONAL_CODE;

    update ok_hist set ACTION_HIST_ID=1,V_DATE=V_DATE_ where branch=rec_ok.BRANCH
      and PERSONAL_CODE=rec_ok.PERSONAL_CODE 
      and nom_ui in ('09_001');

  end loop;
  
end;  
/

commit;







    