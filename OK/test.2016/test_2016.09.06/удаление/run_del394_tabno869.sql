spool c:\run_del00394.txt
prompt # удаление




delete from ok_personal where branch='00394' and tabno= 869 ;
commit;

delete from ok_academic
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_ADDINFORM
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_ARMY
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_ATTESTATION
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_AWARD
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_BUSINESS_VOYAGE
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_CHANGE_FIO
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_CONVICTIONS
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_DEGREE
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_EDUCATION
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_ELECTION
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_HOSPITAL
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_INCREASE
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_KURS
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_LANGUAGE
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_LEAVE
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_PARTY
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_PENALTY
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_PERIOD
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_POST
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_PREMIUM
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_PRIVILEGE
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_RELATION
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_RISE
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_SCIENTIFIC
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_VOYAGE
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       
delete from ok_YOUTH
where branch='00394' and personal_code not in (select personal_code from ok_personal where branch='00394');       

commit;
delete from ok_hist where branch='00394' 
and personal_code not in (select personal_code from ok_personal where branch='00394')
and v_date>=to_date('16.09.2016','dd.mm.yyyy');       
commit;

spool off;
