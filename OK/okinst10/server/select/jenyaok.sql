spool c:\jenyaok2.sql
set line 1000
select 'select table_name,comments from all_tab_comments where owner=''BANK394'' and table_name='''||table_name||''';  ' from all_all_tables
where table_name like 'OK%' and owner='BANK394'
order by table_name;

select 'select table_name,comments from all_tab_comments where owner=''BANK394'' and table_name='''||table_name||''';  ' from all_all_tables
where table_name like 'SS_OK%' and owner='BANK394'
order by table_name;

spool off;
