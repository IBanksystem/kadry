spool c:\run_del01125.txt
prompt # удаление

delete from ok_personal where branch='01125' and tabno= 1348 ;
delete from ok_personal where branch='01125' and tabno= 1443 ;
delete from ok_personal where branch='01125' and tabno= 1334 ;
delete from ok_personal where branch='01125' and tabno= 1335 ;
delete from ok_personal where branch='01125' and tabno= 158 ;
delete from ok_personal where branch='01125' and tabno= 1546 ;
delete from ok_personal where branch='01125' and tabno= 862 ;
delete from ok_personal where branch='01125' and tabno= 1229 ;
delete from ok_personal where branch='01125' and tabno= 1164 ;
delete from ok_personal where branch='01125' and tabno= 1400 ;
delete from ok_personal where branch='01125' and tabno= 1350 ;
delete from ok_personal where branch='01125' and tabno= 320 ;
delete from ok_personal where branch='01125' and tabno= 810 ;
delete from ok_personal where branch='01125' and tabno= 806 ;
delete from ok_personal where branch='01125' and tabno= 964 ;
delete from ok_personal where branch='01125' and tabno= 1156 ;
delete from ok_personal where branch='01125' and tabno= 1344 ;
delete from ok_personal where branch='01125' and tabno= 384 ;
delete from ok_personal where branch='01125' and tabno= 995 ;
delete from ok_personal where branch='01125' and tabno= 1314 ;
delete from ok_personal where branch='01125' and tabno= 1045 ;
delete from ok_personal where branch='01125' and tabno= 239 ;
delete from ok_personal where branch='01125' and tabno= 799 ;
delete from ok_personal where branch='01125' and tabno= 1214 ;
delete from ok_personal where branch='01125' and tabno= 1349 ;
delete from ok_personal where branch='01125' and tabno= 814 ;
delete from ok_personal where branch='01125' and tabno= 1432 ;
delete from ok_personal where branch='01125' and tabno= 1091 ;
delete from ok_personal where branch='01125' and tabno= 994 ;
delete from ok_personal where branch='01125' and tabno= 746 ;
delete from ok_personal where branch='01125' and tabno= 1403 ;
delete from ok_personal where branch='01125' and tabno= 1248 ;
delete from ok_personal where branch='01125' and tabno= 1340 ;
delete from ok_personal where branch='01125' and tabno= 966 ;
delete from ok_personal where branch='01125' and tabno= 599 ;
delete from ok_personal where branch='01125' and tabno= 102 ;
delete from ok_personal where branch='01125' and tabno= 1113 ;
delete from ok_personal where branch='01125' and tabno= 2104 ;
delete from ok_personal where branch='01125' and tabno= 1475 ;
delete from ok_personal where branch='01125' and tabno= 680 ;
delete from ok_personal where branch='01125' and tabno= 69 ;
delete from ok_personal where branch='01125' and tabno= 1205 ;
delete from ok_personal where branch='01125' and tabno= 238 ;
delete from ok_personal where branch='01125' and tabno= 1024 ;
delete from ok_personal where branch='01125' and tabno= 892 ;
delete from ok_personal where branch='01125' and tabno= 1007 ;
delete from ok_personal where branch='01125' and tabno= 734 ;
delete from ok_personal where branch='01125' and tabno= 1391 ;
delete from ok_personal where branch='01125' and tabno= 1133 ;
delete from ok_personal where branch='01125' and tabno= 869 ;
delete from ok_personal where branch='01125' and tabno= 649 ;
delete from ok_personal where branch='01125' and tabno= 1169 ;
delete from ok_personal where branch='01125' and tabno= 5 ;
delete from ok_personal where branch='01125' and tabno= 1453 ;
delete from ok_personal where branch='01125' and tabno= 1243 ;
delete from ok_personal where branch='01125' and tabno= 519 ;
delete from ok_personal where branch='01125' and tabno= 296 ;
delete from ok_personal where branch='01125' and tabno= 1228 ;
delete from ok_personal where branch='01125' and tabno= 897 ;
delete from ok_personal where branch='01125' and tabno= 1524 ;

delete from ok_academic
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_ADDINFORM
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_ARMY
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_ATTESTATION
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_AWARD
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_BUSINESS_VOYAGE
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_CHANGE_FIO
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_CONVICTIONS
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_DEGREE
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_EDUCATION
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_ELECTION
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_HOSPITAL
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_INCREASE
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_KURS
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_LANGUAGE
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_LEAVE
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_PARTY
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_PENALTY
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_PERIOD
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_POST
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_PREMIUM
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_PRIVILEGE
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_RELATION
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_RISE
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_SCIENTIFIC
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_VOYAGE
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       
delete from ok_YOUTH
where branch='01125' and personal_code not in (select personal_code from ok_personal where branch='01125');       

commit;

spool off;
