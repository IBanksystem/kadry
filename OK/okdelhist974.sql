spool c:\okdelhist974.txt
prompt # ������� � ��������� 4
select * from ok_personal where branch='00974' and personal_code= 728;
declare
branch_ ok_personal.branch%type;
personal_code_  ok_personal.personal_code%type;
PASS_SERIYA_ ok_personal.PASS_SERIYA%type;
PASS_NUM_ ok_personal.PASS_NUM%type;
PASS_DATE_ ok_personal.PASS_DATE%type;
id_ ok_personal.id%type;
begin
select branch,personal_code,PASS_SERIYA,PASS_NUM,PASS_DATE,id
into branch_,personal_code_,PASS_SERIYA_,PASS_NUM_,PASS_DATE_,id_  from ok_personal where branch='00974' and personal_code= 728;

ok_service2.ok_hist_proc(branch_,personal_code_,'OK_PERSONAL',4,
         PASS_SERIYA_,PASS_NUM_,PASS_DATE_,PASS_SERIYA_,PASS_NUM_,PASS_DATE_,id_,null);
end;
/         

update ok_hist set v_date=to_date('22.11.2012','dd.mm.yyyy')
where branch='00974' and personal_code= 728 and ACTION_HIST_ID=4;

commit;
select * from ok_hist where branch='00974' and personal_code= 728 order by v_date;

spool off;