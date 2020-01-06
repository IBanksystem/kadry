spool c:\err_2.txt
prompt # код сотрудника personal_code сменить шесть раз, дата два раза 
prompt # создает с признаком 2
select * from ok_personal where branch in (select bank_id  from branch) and personal_code= 65;
delete from ok_hist where branch in (select bank_id  from branch) and trunc(ins_date)=trunc(sysdate) and personal_code= 65;
declare
branch_ ok_personal.branch%type;
personal_code_  ok_personal.personal_code%type;
PASS_SERIYA_ ok_personal.PASS_SERIYA%type;
PASS_NUM_ ok_personal.PASS_NUM%type;
PASS_DATE_ ok_personal.PASS_DATE%type;
id_ ok_personal.id%type;
begin
select branch,personal_code,PASS_SERIYA,PASS_NUM,PASS_DATE,id
into branch_,personal_code_,PASS_SERIYA_,PASS_NUM_,PASS_DATE_,id_  from ok_personal where branch in (select bank_id  from branch) and personal_code= 65;

ok_service2.ok_hist_proc(branch_,personal_code_,'OK_PERSONAL',2,
         PASS_SERIYA_,PASS_NUM_,PASS_DATE_,PASS_SERIYA_,PASS_NUM_,PASS_DATE_,id_,null);

select id into id_ from ok_period where branch=branch_
       and PERSONAL_CODE=personal_code_ 
  and IN_OFFICE_DATE in (select max(IN_OFFICE_DATE) from OK_PERIOD
where branch=branch_
       and PERSONAL_CODE=personal_code_
);

ok_service2.ok_hist_proc(branch_,personal_code_,'OK_PERIOD',2,
         PASS_SERIYA_,PASS_NUM_,PASS_DATE_,PASS_SERIYA_,PASS_NUM_,PASS_DATE_,id_,null);



end;
/         

update ok_hist set ACTION_HIST_ID=2,v_date=to_date('28.03.2016','dd.mm.yyyy')
where branch in (select bank_id  from branch) and personal_code= 65 and nom_ui in ('09_001') and trunc(ins_date)=trunc(sysdate);

update ok_hist set ACTION_HIST_ID=2,V_DATE=to_date('28.03.2016','dd.mm.yyyy') 
where branch in (select bank_id  from branch) and PERSONAL_CODE= 65 and nom_ui in ('09_003') and trunc(ins_date)=trunc(sysdate);


commit;

select * from ok_hist where branch in (select bank_id  from branch) and personal_code= 65 and trunc(ins_date)=trunc(sysdate) order by v_date;

spool off;
