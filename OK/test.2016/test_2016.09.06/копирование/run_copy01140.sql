spool c:\perenos.txt

insert into bank1140.OK_ZP_RATE select * from bank394.OK_ZP_RATE;

commit;
insert into bank1140.OK_YOUTH select * from bank394.OK_YOUTH;

commit;
insert into bank1140.OK_VOYAGE_HIST_DEL select * from bank394.OK_VOYAGE_HIST_DEL;

commit;
insert into bank1140.OK_VOYAGE select * from bank394.OK_VOYAGE;

commit;
insert into bank1140.OK_STAT_SALARY select * from bank394.OK_STAT_SALARY;

commit;
insert into bank1140.OK_STAT_HIST select * from bank394.OK_STAT_HIST;

commit;
insert into bank1140.OK_STAT select * from bank394.OK_STAT;

commit;
insert into bank1140.OK_SCIENTIFIC select * from bank394.OK_SCIENTIFIC;

commit;
insert into bank1140.OK_RISE_HIST_DEL select * from bank394.OK_RISE_HIST_DEL;

commit;
insert into bank1140.OK_RISE select * from bank394.OK_RISE;

commit;
insert into bank1140.OK_REZERV_DETAIL select * from bank394.OK_REZERV_DETAIL;

commit;
insert into bank1140.OK_REZERV select * from bank394.OK_REZERV;

commit;
insert into bank1140.OK_RELATION_HIST_DEL select * from bank394.OK_RELATION_HIST_DEL;

commit;
insert into bank1140.OK_RELATION select * from bank394.OK_RELATION;

commit;
insert into bank1140.OK_PRIVILEGE select * from bank394.OK_PRIVILEGE;

commit;
insert into bank1140.OK_PREMIUM select * from bank394.OK_PREMIUM;

commit;
insert into bank1140.OK_POST select * from bank394.OK_POST;

commit;
insert into bank1140.OK_PERSONAL select * from bank394.OK_PERSONAL;

commit;
insert into bank1140.OK_PERIOD_HIST_DEL select * from bank394.OK_PERIOD_HIST_DEL;

commit;
insert into bank1140.OK_PERIOD select * from bank394.OK_PERIOD;

commit;
insert into bank1140.OK_PENALTY select * from bank394.OK_PENALTY;

commit;
insert into bank1140.OK_PARTY select * from bank394.OK_PARTY;

commit;
insert into bank1140.OK_LEAVE select * from bank394.OK_LEAVE;

commit;
insert into bank1140.OK_LANGUAGE_HIST_DEL select * from bank394.OK_LANGUAGE_HIST_DEL;

commit;
insert into bank1140.OK_LANGUAGE select * from bank394.OK_LANGUAGE;

commit;
insert into bank1140.OK_KURS select * from bank394.OK_KURS;

commit;
insert into bank1140.OK_INCREASE select * from bank394.OK_INCREASE;

commit;
insert into bank1140.OK_HOSPITAL select * from bank394.OK_HOSPITAL;

commit;

insert into bank1140.OK_FREEDAYS select * from bank394.OK_FREEDAYS;

commit;
insert into bank1140.OK_ELECTION_HIST_DEL select * from bank394.OK_ELECTION_HIST_DEL;

commit;
insert into bank1140.OK_ELECTION select * from bank394.OK_ELECTION;

commit;
insert into bank1140.OK_EDUCATION_HIST_DEL select * from bank394.OK_EDUCATION_HIST_DEL;

commit;
insert into bank1140.OK_EDUCATION select * from bank394.OK_EDUCATION;

commit;
insert into bank1140.OK_DEGREE select * from bank394.OK_DEGREE;

commit;
insert into bank1140.OK_CONVICTIONS select * from bank394.OK_CONVICTIONS;

commit;
insert into bank1140.OK_CHANGE_FIO select * from bank394.OK_CHANGE_FIO;

commit;
insert into bank1140.OK_BUSINESS_VOYAGE select * from bank394.OK_BUSINESS_VOYAGE;

commit;
insert into bank1140.OK_AWARD_HIST_DEL select * from bank394.OK_AWARD_HIST_DEL;

commit;
insert into bank1140.OK_AWARD select * from bank394.OK_AWARD;

commit;
insert into bank1140.OK_ATTESTATION select * from bank394.OK_ATTESTATION;

commit;
insert into bank1140.OK_ARMY select * from bank394.OK_ARMY;

commit;
insert into bank1140.OK_ADDINFORM select * from bank394.OK_ADDINFORM;

commit;
insert into bank1140.OK_ACADEMIC select * from bank394.OK_ACADEMIC;

commit;
insert into bank1140.OKEDB_APPOINTS_ARH select * from bank394.OKEDB_APPOINTS_ARH;

commit;
insert into bank1140.OKEDB_APPOINTS select * from bank394.OKEDB_APPOINTS;

commit;


update bank1140.OK_ZP_RATE set branch='01140';

commit;
update bank1140.OK_YOUTH set branch='01140';

commit;
update bank1140.OK_VOYAGE_HIST_DEL set branch='01140';

commit;
update bank1140.OK_VOYAGE set branch='01140';

commit;

update bank1140.OK_STAT_SALARY set branch='01140';

commit;
update bank1140.OK_STAT_HIST set branch='01140';

commit;
update bank1140.OK_STAT set branch='01140';

commit;
update bank1140.OK_SCIENTIFIC set branch='01140';

commit;
update bank1140.OK_RISE_HIST_DEL set branch='01140';

commit;
update bank1140.OK_RISE set branch='01140';

commit;
update bank1140.OK_REZERV_DETAIL set branch='01140';

commit;
update bank1140.OK_REZERV set branch='01140';

commit;
update bank1140.OK_RELATION_HIST_DEL set branch='01140';

commit;
update bank1140.OK_RELATION set branch='01140';

commit;
update bank1140.OK_PRIVILEGE set branch='01140';

commit;
update bank1140.OK_PREMIUM set branch='01140';

commit;
update bank1140.OK_POST set branch='01140';

commit;
update bank1140.OK_PERSONAL set branch='01140';

commit;
update bank1140.OK_PERIOD_HIST_DEL set branch='01140';

commit;
update bank1140.OK_PERIOD set branch='01140';

commit;
update bank1140.OK_PENALTY set branch='01140';

commit;
update bank1140.OK_PARTY set branch='01140';

commit;

update bank1140.OK_LEAVE set branch='01140';

commit;
update bank1140.OK_LANGUAGE_HIST_DEL set branch='01140';

commit;
update bank1140.OK_LANGUAGE set branch='01140';

commit;
update bank1140.OK_KURS set branch='01140';

commit;
update bank1140.OK_INCREASE set branch='01140';

commit;
update bank1140.OK_HOSPITAL set branch='01140';
commit;
update bank1140.OK_FREEDAYS set branch='01140';

commit;




update bank1140.OK_PHOTO set branch='01140';

commit;

spool off;
