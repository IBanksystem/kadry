spool c:\OtKadr2.txt

select table_name,comments from all_tab_comments where owner='BANK394' and table_name='OK_PERSONAL';  
  desc OK_PERSONAL

select table_name,comments from all_tab_comments where owner='BANK394' and table_name='OK_TABEL';  
  desc OK_TABEL

select table_name,comments from all_tab_comments where owner='BANK394' and table_name='OK_BUSINESS_VOYAGE';  
  desc OK_BUSINESS_VOYAGE

select table_name,comments from all_tab_comments where owner='BANK394' and table_name='SS_OK_ORG_BUSINESS_VOYAGE';  
  desc SS_OK_ORG_BUSINESS_VOYAGE
  
select table_name,comments from all_tab_comments where owner='BANK394' and table_name='OK_TABEL';  
  desc OK_TABEL

select table_name,comments from all_tab_comments where owner='BANK394' and table_name='SS_OK_THEME_BUSINESS_VOYAGE';  
  desc SS_OK_THEME_BUSINESS_VOYAGE

select table_name,comments from all_tab_comments where owner='BANK394' and table_name='OK_INCREASE';  
  desc OK_INCREASE

select table_name,comments from all_tab_comments where owner='BANK394' and table_name='SS_OK_INCREASE';  
  desc SS_OK_INCREASE

select table_name,comments from all_tab_comments where owner='BANK394' and table_name='SS_OK_PASSPORT_TYPE';  
  desc SS_OK_PASSPORT_TYPE

select table_name,comments from all_tab_comments where owner='BANK394' and table_name='OK_LEAVE';  
  desc OK_LEAVE

select table_name,comments from all_tab_comments where owner='BANK394' and table_name='SS_OK_KV_KURS';  
  desc SS_OK_KV_KURS

select table_name,comments from all_tab_comments where owner='BANK394' and table_name='OK_KURS';  
  desc OK_KURS

select table_name,comments from all_tab_comments where owner='BANK394' and table_name='SS_OK_CITY';  
  desc SS_OK_CITY
  
select table_name,comments from all_tab_comments where owner='BANK394' and table_name='SS_OK_REGPLACE';  
  desc SS_OK_REGPLACE
spool off;