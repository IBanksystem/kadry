--grant all on ok_yourth to public;
select 'grant all on  '||table_name||'  to public;' from all_all_tables
where owner ='BNK974'
and table_name like 'OK%'

grant all on  OK_ACADEMIC  to public;
grant all on  OK_ADDINFORM  to public;
grant all on  OK_ARMY  to public;
grant all on  OK_ATTESTATION  to public;
grant all on  OK_AWARD  to public;
grant all on  OK_BUSINESS_VOYAGE  to public;
grant all on  OK_CHANGE_FIO  to public;
grant all on  OK_CONVICTIONS  to public;
grant all on  OK_DEGREE  to public;
grant all on  OK_EDUCATION  to public;
grant all on  OK_ELECTION  to public;
grant all on  OK_HOSPITAL  to public;
grant all on  OK_INCREASE  to public;
grant all on  OK_KURS  to public;
grant all on  OK_LANGUAGE  to public;
grant all on  OK_LEAVE  to public;
grant all on  OK_PARTY  to public;
grant all on  OK_PENALTY  to public;
grant all on  OK_PERIOD  to public;
grant all on  OK_PERSONAL  to public;
grant all on  OK_PHOTO  to public;
grant all on  OK_POST  to public;
grant all on  OK_PREMIUM  to public;
grant all on  OK_PRIVILEGE  to public;
grant all on  OK_RELATION  to public;
grant all on  OK_REZERV  to public;
grant all on  OK_REZERV_DETAIL  to public;
grant all on  OK_RISE  to public;
grant all on  OK_SCIENTIFIC  to public;
grant all on  OK_STAT  to public;
grant all on  OK_STAT_SALARY  to public;
grant all on  OK_TABEL  to public;
grant all on  OK_VOYAGE  to public;
grant all on  OK_YOUTH  to public;
grant all on  OK_ZP_RATE  to public;

select 'delete from '||table_name||' where branch<>''00974'';' from all_all_tables
where owner ='BNK974'
and table_name like 'OK%'


delete from OK_ACADEMIC where branch<>'00974';
delete from OK_ADDINFORM where branch<>'00974';
delete from OK_ARMY where branch<>'00974';
delete from OK_ATTESTATION where branch<>'00974';
delete from OK_AWARD where branch<>'00974';
delete from OK_BUSINESS_VOYAGE where branch<>'00974';
delete from OK_CHANGE_FIO where branch<>'00974';
delete from OK_CONVICTIONS where branch<>'00974';
delete from OK_DEGREE where branch<>'00974';
delete from OK_EDUCATION where branch<>'00974';
delete from OK_ELECTION where branch<>'00974';
delete from OK_HOSPITAL where branch<>'00974';
delete from OK_INCREASE where branch<>'00974';
delete from OK_KURS where branch<>'00974';
delete from OK_LANGUAGE where branch<>'00974';
delete from OK_LEAVE where branch<>'00974';
delete from OK_NSI where branch<>'00974';
delete from OK_PARTY where branch<>'00974';
delete from OK_PENALTY where branch<>'00974';
delete from OK_PERIOD where branch<>'00974';
delete from OK_PERSONAL where branch<>'00974';
delete from OK_PHOTO where branch<>'00974';
delete from OK_POST where branch<>'00974';
delete from OK_PREMIUM where branch<>'00974';
delete from OK_PRIVILEGE where branch<>'00974';
delete from OK_RELATION where branch<>'00974';
delete from OK_REZERV where branch<>'00974';
delete from OK_REZERV_DETAIL where branch<>'00974';
delete from OK_RISE where branch<>'00974';
delete from OK_SCIENTIFIC where branch<>'00974';
delete from OK_SEND_ALL where branch<>'00974';
delete from OK_SEND_ALL_IIAS where branch<>'00974';
delete from OK_STAT where branch<>'00974';
delete from OK_STAT_SALARY where branch<>'00974';
delete from OK_TABEL where branch<>'00974';
delete from OK_VOYAGE where branch<>'00974';
delete from OK_YOUTH where branch<>'00974';
delete from OK_ZP_RATE where branch<>'00974';
commit;
