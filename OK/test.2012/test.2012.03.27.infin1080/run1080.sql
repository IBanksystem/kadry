spool c:\err1080.txt
set line 1000

declare
  V_DATE_ date :=to_date('26.03.2012','dd.mm.yyyy');
  branch_ branch.bank_id%type;
begin
  select bank_id into branch_ from branch;

  for rec_ok in (select okp.* from ok_personal okp, SS_OK_NCI son 
  where okp.tabno=okp.tabno
   and okp.branch=okp.branch and okp.STATUS_CODE in (2,5)
                    and okp.post_code=son.ok_id and son.NCI_ID=79
         and okp.branch=branch_ )
  loop

       insert into ok_hist(BRANCH,PERSONAL_CODE,V_DATE,INS_DATE,NOM_UI,
         TABLE_NAME,ACTION_HIST_ID,PASS_SERIYA_OLD,PASS_NUM_OLD,PASS_DATE_OLD,
         PASS_SERIYA_NEW,PASS_NUM_NEW,PASS_DATE_NEW,id_table
       ) select rec_ok.BRANCH,rec_ok.PERSONAL_CODE,V_DATE_,sysdate,'09_002',
         'OK_RELATION','1',null,null,null,
         null,null,null,id
       from OK_RELATION
       where branch=rec_ok.BRANCH and PERSONAL_CODE=rec_ok.PERSONAL_CODE
       and id not in (select id_table from ok_hist 
         where branch=rec_ok.BRANCH and PERSONAL_CODE=rec_ok.PERSONAL_CODE
           and ACTION_HIST_ID='1');

  end loop;
  
end;  
/

commit;

prompt # ok_relation
select to_char(ins_date,'dd.mm.yyyy hh24:mi:ss'),ok_relation.* from ok_relation 
where personal_code in (select personal_code from ok_personal where STATUS_CODE in (2,5)
  and post_code in (select ok_id from SS_OK_NCI where NCI_ID=79) )
order by branch,personal_code,id,ins_date;

prompt # ok_hist
select to_char(ins_date,'dd.mm.yyyy hh24:mi:ss'),branch, PERSONAL_CODE
       ,ID_TABLE
       ,v_date
       ,ACTION_HIST_ID
 from  ok_hist
 where ok_hist.branch='01080'
   and NOM_UI='09_002'
 order by branch, PERSONAL_CODE,ID_TABLE,ins_date;
 
spool off;
 
