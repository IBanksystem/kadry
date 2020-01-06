spool c:\perenos.txt

insert into bank394.OK_ZP_RATE select * from bank1140.OK_ZP_RATE where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_YOUTH select * from bank1140.OK_YOUTH where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_VOYAGE_HIST_DEL select * from bank1140.OK_VOYAGE_HIST_DEL where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_VOYAGE select * from bank1140.OK_VOYAGE where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_STAT_SALARY select * from bank1140.OK_STAT_SALARY where branch='01140' and personal_code in (769,770,792,912);

commit;

insert into bank394.OK_SCIENTIFIC select * from bank1140.OK_SCIENTIFIC where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_RISE_HIST_DEL select * from bank1140.OK_RISE_HIST_DEL where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_RISE select * from bank1140.OK_RISE where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_REZERV_DETAIL select * from bank1140.OK_REZERV_DETAIL where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_REZERV select * from bank1140.OK_REZERV where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_RELATION_HIST_DEL select * from bank1140.OK_RELATION_HIST_DEL where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_RELATION select * from bank1140.OK_RELATION where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_PRIVILEGE select * from bank1140.OK_PRIVILEGE where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_PREMIUM select * from bank1140.OK_PREMIUM where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_POST select * from bank1140.OK_POST where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_PERSONAL select * from bank1140.OK_PERSONAL where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_PERIOD_HIST_DEL select * from bank1140.OK_PERIOD_HIST_DEL where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_PERIOD select * from bank1140.OK_PERIOD where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_PENALTY select * from bank1140.OK_PENALTY where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_PARTY select * from bank1140.OK_PARTY where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_LEAVE select * from bank1140.OK_LEAVE where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_LANGUAGE_HIST_DEL select * from bank1140.OK_LANGUAGE_HIST_DEL where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_LANGUAGE select * from bank1140.OK_LANGUAGE where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_KURS select * from bank1140.OK_KURS where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_INCREASE select * from bank1140.OK_INCREASE where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_HOSPITAL select * from bank1140.OK_HOSPITAL where branch='01140' and personal_code in (769,770,792,912);

commit;

insert into bank394.OK_FREEDAYS select * from bank1140.OK_FREEDAYS where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_ELECTION_HIST_DEL select * from bank1140.OK_ELECTION_HIST_DEL where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_ELECTION select * from bank1140.OK_ELECTION where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_EDUCATION_HIST_DEL select * from bank1140.OK_EDUCATION_HIST_DEL where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_EDUCATION select * from bank1140.OK_EDUCATION where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_DEGREE select * from bank1140.OK_DEGREE where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_CONVICTIONS select * from bank1140.OK_CONVICTIONS where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_CHANGE_FIO select * from bank1140.OK_CHANGE_FIO where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_BUSINESS_VOYAGE select * from bank1140.OK_BUSINESS_VOYAGE where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_AWARD_HIST_DEL select * from bank1140.OK_AWARD_HIST_DEL where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_AWARD select * from bank1140.OK_AWARD where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_ATTESTATION select * from bank1140.OK_ATTESTATION where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_ARMY select * from bank1140.OK_ARMY where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_ADDINFORM select * from bank1140.OK_ADDINFORM where branch='01140' and personal_code in (769,770,792,912);

commit;
insert into bank394.OK_ACADEMIC select * from bank1140.OK_ACADEMIC where branch='01140' and personal_code in (769,770,792,912);

commit;

update bank394.OK_ZP_RATE set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_YOUTH set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_VOYAGE_HIST_DEL set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_VOYAGE set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;

update bank394.OK_STAT_SALARY set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;

update bank394.OK_SCIENTIFIC set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_RISE_HIST_DEL set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_RISE set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_REZERV_DETAIL set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_REZERV set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_RELATION_HIST_DEL set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_RELATION set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_PRIVILEGE set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_PREMIUM set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_POST set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_PERSONAL set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_PERIOD_HIST_DEL set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_PERIOD set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_PENALTY set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_PARTY set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;

update bank394.OK_LEAVE set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_LANGUAGE_HIST_DEL set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_LANGUAGE set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_KURS set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_INCREASE set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;
update bank394.OK_HOSPITAL set branch='00394' where branch='01140' and personal_code in (769,770,792,912);
commit;
update bank394.OK_FREEDAYS set branch='00394' where branch='01140' and personal_code in (769,770,792,912);

commit;





spool off;
