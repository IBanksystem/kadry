-- первая вставка
spool c:\err_09_001_2.txt
-- дата 
-- селект
prompt # код сотрудника personal_code сменить четыре раза, дата два раза 

select okp.* from ok_personal okp, SS_OK_NCI son 
  where okp.tabno=okp.tabno
   and okp.branch=okp.branch and okp.STATUS_CODE in (2,5)
                    and okp.post_code=son.ok_id and son.NCI_ID=79
   and okp.personal_code=68;
--
declare
  V_DATE_ date :=to_date('31.05.2014','dd.mm.yyyy');
  branch_ branch.bank_id%type;
begin
  select bank_id into branch_ from branch;
  delete from ok_hist where branch=branch_ and personal_code=68 and v_date in (select curdate from sets);


  for rec_ok in (select okp.* from ok_personal okp, SS_OK_NCI son 
  where okp.tabno=okp.tabno
   and okp.branch=okp.branch and okp.STATUS_CODE in (2,5)
                    and okp.post_code=son.ok_id and son.NCI_ID=79
   and okp.personal_code=68)
  loop


        update ok_personal set EMP_CODE=EMP_CODE where branch=rec_ok.BRANCH and PERSONAL_CODE=rec_ok.PERSONAL_CODE;
        update ok_hist set ACTION_HIST_ID=2,V_DATE=V_DATE_ where branch=rec_ok.BRANCH and PERSONAL_CODE=rec_ok.PERSONAL_CODE and v_date in (select curdate from sets);

  end loop;
  
  
end;  
/

  commit;
select * from ok_hist where branch in (select bank_id  from branch) and personal_code= 68 and v_date=to_date('31.05.2014','dd.mm.yyyy');


spool off;  


   