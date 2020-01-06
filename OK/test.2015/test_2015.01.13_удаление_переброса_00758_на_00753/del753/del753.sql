spool c:\ok753del.txt

delete from bank753.ok_personal where branch='00753'
and personal_code in (select personal_code+1000 from bank758.ok_personal where branch='00758');
commit;
delete from bank753.ok_academic
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_ADDINFORM
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_ARMY
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_ATTESTATION
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_AWARD
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_BUSINESS_VOYAGE
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_CHANGE_FIO
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_CONVICTIONS
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_DEGREE
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_EDUCATION
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_ELECTION
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_HOSPITAL
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_INCREASE
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_KURS
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_LANGUAGE
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_LEAVE
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_PARTY
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_PENALTY
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_PERIOD
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_POST
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_PREMIUM
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_PRIVILEGE
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_RELATION
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_RISE
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_SCIENTIFIC
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_VOYAGE
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       
delete from bank753.ok_YOUTH
where branch='00753' and personal_code not in (select personal_code from bank753.ok_personal where branch='00753');       

commit;

spool off;
