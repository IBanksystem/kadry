-- первая вставка
spool c:\err.txt
-- дата 
-- селект
select okp.* from ok_personal okp, SS_OK_NCI son 
  where okp.tabno=okp.tabno
   and okp.branch=okp.branch and okp.STATUS_CODE in (2,5)
                    and okp.post_code=son.ok_id and son.NCI_ID=79
   and okp.personal_code=728;
--
declare
  V_DATE_ date :=to_date('16.11.2012','dd.mm.yyyy');
  branch_ branch.bank_id%type;
begin
  select bank_id into branch_ from branch;
  delete from ok_hist where branch=branch_ and personal_code=728;

  for rec_ok in (select okp.* from ok_personal okp, SS_OK_NCI son 
  where okp.tabno=okp.tabno
   and okp.branch=okp.branch and okp.STATUS_CODE in (2,5)
                    and okp.post_code=son.ok_id and son.NCI_ID=79
   and okp.personal_code=728)
  loop


        update ok_personal set EMP_CODE=EMP_CODE where branch=rec_ok.BRANCH and PERSONAL_CODE=rec_ok.PERSONAL_CODE;
        update OK_RELATION set EMP_CODE=EMP_CODE where branch=rec_ok.BRANCH and PERSONAL_CODE=rec_ok.PERSONAL_CODE;
        update OK_PERIOD set EMP_CODE=EMP_CODE where branch=rec_ok.BRANCH and PERSONAL_CODE=rec_ok.PERSONAL_CODE;
        update OK_EDUCATION set EMP_CODE=EMP_CODE where branch=rec_ok.BRANCH and PERSONAL_CODE=rec_ok.PERSONAL_CODE;
        update OK_ELECTION set EMP_CODE=EMP_CODE where branch=rec_ok.BRANCH and PERSONAL_CODE=rec_ok.PERSONAL_CODE;
        update OK_AWARD set EMP_CODE=EMP_CODE where branch=rec_ok.BRANCH and PERSONAL_CODE=rec_ok.PERSONAL_CODE;
        update OK_VOYAGE set EMP_CODE=EMP_CODE where branch=rec_ok.BRANCH and PERSONAL_CODE=rec_ok.PERSONAL_CODE;
        update OK_LANGUAGE set EMP_CODE=EMP_CODE where branch=rec_ok.BRANCH and PERSONAL_CODE=rec_ok.PERSONAL_CODE;
        update OK_RISE set EMP_CODE=EMP_CODE where branch=rec_ok.BRANCH and PERSONAL_CODE=rec_ok.PERSONAL_CODE;
        update ok_hist set ACTION_HIST_ID=1,V_DATE=V_DATE_ where branch=rec_ok.BRANCH and PERSONAL_CODE=rec_ok.PERSONAL_CODE;

  end loop;
  
  
end;  
/

  commit;
select * from ok_hist where branch='00974' and personal_code= 728;


spool off;  


   