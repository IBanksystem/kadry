spool c:\err_4_4.txt
prompt # код сотрудника через запятую (1200) сменить пять раз, дата один раз 
prompt # создает с признаком 4
select * from ok_personal where branch in (select bank_id  from branch) and personal_code in (1200);
delete from ok_hist where branch in (select bank_id  from branch) and personal_code in (1200);
declare
branch_ ok_personal.branch%type;
personal_code_  ok_personal.personal_code%type;
PASS_SERIYA_ ok_personal.PASS_SERIYA%type;
PASS_NUM_ ok_personal.PASS_NUM%type;
PASS_DATE_ ok_personal.PASS_DATE%type;
id_ ok_personal.id%type;
begin
  for rec_ok in (select okp.* from ok_personal okp 
  where okp.tabno=okp.tabno
   and okp.branch=okp.branch and okp.STATUS_CODE in (4)
   and okp.personal_code in (1200))
  loop

     select branch,personal_code,PASS_SERIYA,PASS_NUM,PASS_DATE,id
      into branch_,personal_code_,PASS_SERIYA_,PASS_NUM_,PASS_DATE_,id_  from ok_personal where branch in (select bank_id  from branch) and personal_code= rec_ok.personal_code;

     ok_service2.ok_hist_proc(branch_,personal_code_,'OK_PERSONAL',4,
         PASS_SERIYA_,PASS_NUM_,PASS_DATE_,PASS_SERIYA_,PASS_NUM_,PASS_DATE_,id_,null);

  end loop;

end;
/         

update ok_hist set v_date=to_date('27.09.2015','dd.mm.yyyy')
where branch in (select bank_id  from branch) and personal_code in (1200) and ACTION_HIST_ID=4;

commit;

select * from ok_hist where branch in (select bank_id  from branch) and personal_code in (1200) order by v_date;

spool off;