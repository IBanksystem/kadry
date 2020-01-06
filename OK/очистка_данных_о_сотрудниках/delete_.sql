declare
branch_ varchar2(5) := '00395';
tabno_ ok_personal.tabno%type:= 222;
begin
delete from OK_ACADEMIC   where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_ADDINFORM  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_ARMY  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_ATTESTATION  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_AWARD  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_BUSINESS_VOYAGE  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_CHANGE_FIO  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_CONVICTIONS  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_DEGREE  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_EDUCATION  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_ELECTION  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_HOSPITAL  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_INCREASE  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_KURS  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_LANGUAGE  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_LEAVE  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_PARTY  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_PENALTY  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_PERIOD  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_PERSONAL  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_PHOTO  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_POST  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_PREMIUM  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_PRIVILEGE  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_RELATION  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_REZERV  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_RISE  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_SCIENTIFIC  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_SEND_ALL  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_SEND_ALL_IIAS  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_TABEL  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_VOYAGE  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_YOUTH  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from OK_ZP_RATE  where (branch,personal_code) in (select branch,personal_code from ok_personal where branch=branch_ and tabno=tabno_);
delete from ok_personal where branch=branch_ and tabno=tabno_;

commit;
exception when others then rollback;
end;
/
