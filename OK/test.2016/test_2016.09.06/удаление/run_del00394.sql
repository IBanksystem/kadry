spool c:\run_del00394.txt
prompt # удаление


-- 1
declare
  V_DATE_ date :=to_date('15.09.2016','dd.mm.yyyy');
  branch_ branch.bank_id%type;
personal_code_  ok_personal.personal_code%type;
PASS_SERIYA_ ok_personal.PASS_SERIYA%type;
PASS_NUM_ ok_personal.PASS_NUM%type;
PASS_DATE_ ok_personal.PASS_DATE%type;
id_ ok_personal.id%type;
begin
  select bank_id into branch_ from branch;
  delete from ok_hist where branch=branch_ and tabno in  (869);
--2
for rec_ok in (select okp.* from ok_personal okp
  where okp.tabno=okp.tabno
   and okp.branch='00395'
   and okp.tabno in  (869))
  loop

select branch,personal_code,PASS_SERIYA,PASS_NUM,PASS_DATE,id
into branch_,personal_code_,PASS_SERIYA_,PASS_NUM_,PASS_DATE_,id_  from ok_personal where branch in (select bank_id  from branch) and personal_code= okp.personal_code;

ok_service2.ok_hist_proc(branch_,personal_code_,'OK_PERSONAL',4,
         PASS_SERIYA_,PASS_NUM_,PASS_DATE_,PASS_SERIYA_,PASS_NUM_,PASS_DATE_,id_,null);

        update ok_personal set EMP_CODE=EMP_CODE where branch=rec_ok.BRANCH and PERSONAL_CODE=rec_ok.PERSONAL_CODE;
        update ok_hist set ACTION_HIST_ID=4,V_DATE=V_DATE_ where branch=rec_ok.BRANCH and PERSONAL_CODE=rec_ok.PERSONAL_CODE;

  end loop;
  
  
end;  
/

commit;

select * from ok_hist where branch in (select bank_id  from branch) and personal_code  in  (select personal_code from ok_personal where branch='00394' and tabno in (869));




delete from ok_personal where branch='00394' and tabno= 869 ;
commit;

delete from ok_academic
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_ADDINFORM
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_ARMY
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_ATTESTATION
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_AWARD
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_BUSINESS_VOYAGE
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_CHANGE_FIO
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_CONVICTIONS
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_DEGREE
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_EDUCATION
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_ELECTION
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_HOSPITAL
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_INCREASE
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_KURS
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_LANGUAGE
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_LEAVE
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_PARTY
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_PENALTY
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_PERIOD
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_POST
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_PREMIUM
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_PRIVILEGE
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_RELATION
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_RISE
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_SCIENTIFIC
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_VOYAGE
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_YOUTH
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       

commit;
delete from ok_hist where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
commit;

spool off;
