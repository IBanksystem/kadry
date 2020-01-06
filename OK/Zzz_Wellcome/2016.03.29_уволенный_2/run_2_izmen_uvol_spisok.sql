spool c:\err_3.txt
declare
 V_DATE_ date :=to_date('29.01.2018','dd.mm.yyyy');
 branch_ ok_personal.branch%type;
personal_code_  ok_personal.personal_code%type;
PASS_SERIYA_ ok_personal.PASS_SERIYA%type;
PASS_NUM_ ok_personal.PASS_NUM%type;
PASS_DATE_ ok_personal.PASS_DATE%type;
id_ ok_personal.id%type;
count_ number;
begin
-- уволенные по списку personal_code in (1,2,3,4)
  select bank_id into branch_ from branch;

delete from ok_hist where branch=branch_
and personal_code in (select okp.personal_code from ok_personal okp
    where branch=branch_ and okp.STATUS_CODE in (4) and personal_code in (1,2,3,4) );
    
  for rec_ok in (select distinct okp.* from ok_personal okp
  where okp.STATUS_CODE in (4)
   and okp.branch=branch_ 
   and okp.personal_code in (1,2,3,4) 
   )   
loop
  ok_service2.ok_hist_proc(branch_,rec_ok.personal_code,'OK_PERSONAL',2,
         rec_ok.PASS_SERIYA,rec_ok.PASS_NUM,rec_ok.PASS_DATE,rec_ok.PASS_SERIYA,rec_ok.PASS_NUM,rec_ok.PASS_DATE,rec_ok.id,null);

  select count(id) into count_ from ok_period where branch=branch_
       and PERSONAL_CODE=rec_ok.personal_code 
  and IN_OFFICE_DATE in (select max(IN_OFFICE_DATE) from OK_PERIOD
  where branch=branch_
       and PERSONAL_CODE=rec_ok.personal_code
  );
--
  if count_>0
  then
  select id into id_ from ok_period where branch=branch_
       and PERSONAL_CODE=rec_ok.personal_code 
  and IN_OFFICE_DATE in (select max(IN_OFFICE_DATE) from OK_PERIOD
  where branch=branch_
       and PERSONAL_CODE=rec_ok.personal_code
  );
--
  ok_service2.ok_hist_proc(branch_,rec_ok.personal_code,'OK_PERIOD',2,
         rec_ok.PASS_SERIYA,rec_ok.PASS_NUM,rec_ok.PASS_DATE,rec_ok.PASS_SERIYA,rec_ok.PASS_NUM,rec_ok.PASS_DATE,id_,null);
--
end if;

   update ok_hist set ACTION_HIST_ID=2,V_DATE=V_DATE_ where branch=rec_ok.BRANCH
      and PERSONAL_CODE=rec_ok.PERSONAL_CODE; 
      
  end loop;

end;
/         

commit;

spool off;