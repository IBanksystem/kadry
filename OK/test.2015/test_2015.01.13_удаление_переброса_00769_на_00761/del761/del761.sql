spool c:\ok761del.txt

delete from bank761.ok_personal where branch='00761'
and personal_code in (select personal_code+1000 from bank769.ok_personal where branch='00769');
commit;
delete from bank761.ok_academic
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_ADDINFORM
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_ARMY
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_ATTESTATION
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_AWARD
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_BUSINESS_VOYAGE
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_CHANGE_FIO
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_CONVICTIONS
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_DEGREE
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_EDUCATION
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_ELECTION
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_HOSPITAL
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_INCREASE
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_KURS
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_LANGUAGE
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_LEAVE
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_PARTY
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_PENALTY
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_PERIOD
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_POST
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_PREMIUM
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_PRIVILEGE
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_RELATION
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_RISE
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_SCIENTIFIC
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_VOYAGE
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       
delete from bank761.ok_YOUTH
where branch='00761' and personal_code not in (select personal_code from bank761.ok_personal where branch='00761');       

commit;

spool off;
