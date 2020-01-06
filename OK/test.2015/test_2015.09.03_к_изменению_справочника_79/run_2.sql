-- добавляет с признаком 1 в ок-хист сотрудников которые были неруководящие
-- 

update ok_personal set EMP_CODE=EMP_CODE where branch in (select branch from sets)
and post_code in (select ok_id from ss_ok_nci where nci_id=79)
and personal_code not in (select personal_code from ok_hist where branch in (select branch from sets))
and STATUS_CODE in (2,5);
commit;

update ok_hist set ACTION_HIST_ID=1 where branch in (select branch from sets) 
       and nom_ui in ('09_001') and V_DATE in (select curdate from sets)
       and ((personal_code) not in (select personal_code from ok_hist where branch in (select branch from sets) and ACTION_HIST_ID=1));
commit;

declare
  V_DATE_ date;
  branch_ branch.bank_id%type;
begin
  select bank_id into branch_ from branch;
  select curdate into V_DATE_ from sets;
  for rec_ok in (select okp.* from ok_personal okp, SS_OK_NCI son 
  where okp.branch=branch_ and okp.STATUS_CODE in (2,5)
                    and okp.post_code=son.ok_id and son.NCI_ID=79
   and okp.personal_code in (select personal_code from ok_hist where branch in (select branch from sets) and ACTION_HIST_ID=1) )
  loop
        ok_service2.ok_hist_proc(rec_ok.branch,rec_ok.personal_code,'OK_PERSONAL',1,
          rec_ok.PASS_SERIYA,rec_ok.PASS_NUM,rec_ok.PASS_DATE,rec_ok.PASS_SERIYA,rec_ok.PASS_NUM,rec_ok.PASS_DATE,rec_ok.id,null);
  end loop;
  
  
end;  
/

  commit;
