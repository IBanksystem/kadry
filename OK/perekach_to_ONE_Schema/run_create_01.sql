
spool c:\run_01.sql
select 'conn '||user_name||'/'||user_name||'@bfd'||chr(13)||'sho user'||chr(13)||
'@D:\backup\ReadOnly\OK\perekach_to_ONE_Schema\sql\filials_1\run1.sql'
 from ss_dblink_branch
where user_name like '%BANK%'
and user_name not in ('BANK1056','BANK157','BANK184');
spool off;