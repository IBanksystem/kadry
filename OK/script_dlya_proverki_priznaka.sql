-- кадры для ииаса мфо 01128 sotrudnik  2
spool c:\infin_001128_iias_ok_2.txt
set line 100
select action_hist_id,to_char(ins_date,'dd.mm.yyyy hh24:mi:ss') "vremya",branch,personal_code,v_date,nom_ui,table_name,id_table from ok_hist
where branch='01128' and personal_code=2 order by ins_date;
spool off;