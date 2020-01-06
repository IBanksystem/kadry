spool c:\sprk79.txt
set line 1000
select s_id, dolj_name,ok_id, post_name from ss_ok_nci sson, s_doljn s ,ss_ok_post sop
where sson.nci_id='79'
and sson.s_id=s.dolj_id(+)
and sson.ok_id=sop.post_code(+)
order by s_id,ok_id;
spool off;


