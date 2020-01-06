
drop table OK_ACADEMIC;

drop table OK_ADDINFORM;

drop table OK_ARMY;

drop table OK_ATTESTATION;

drop table OK_AWARD;

drop table OK_CHANGE_FIO;

drop table OK_CONVICTIONS;

drop table OK_DEGREE;

drop table OK_EDUCATION;

drop table OK_ELECTION;

drop table OK_LANGUAGE;

drop table OK_LEAVE;

drop table OK_NSI;

drop table OK_PARTY;

drop table OK_PENALTY;

drop table OK_PERIOD;

drop table OK_PERSONAL;

drop table OK_POST;

drop table OK_PREMIUM;

drop table OK_RELATION;

drop table OK_REZERV;

drop table OK_REZERV_DETAIL;

drop table OK_RISE;

drop table OK_SCIENTIFIC;

drop table OK_STAT;

drop table OK_STAT_SALARY;

drop table OK_VOYAGE;

drop table OK_YOUTH;


create table OK_ACADEMIC as select * from bank394.OK_ACADEMIC where rownum<1;

create table OK_ADDINFORM as select * from bank394.OK_ADDINFORM where rownum<1;

create table OK_ARMY as select * from bank394.OK_ARMY where rownum<1;

create table OK_ATTESTATION as select * from bank394.OK_ATTESTATION where rownum<1;

create table OK_AWARD as select * from bank394.OK_AWARD where rownum<1;

create table OK_CHANGE_FIO as select * from bank394.OK_CHANGE_FIO where rownum<1;

create table OK_CONVICTIONS as select * from bank394.OK_CONVICTIONS where rownum<1;

create table OK_DEGREE as select * from bank394.OK_DEGREE where rownum<1;

create table OK_EDUCATION as select * from bank394.OK_EDUCATION where rownum<1;

create table OK_ELECTION as select * from bank394.OK_ELECTION where rownum<1;

create table OK_LANGUAGE as select * from bank394.OK_LANGUAGE where rownum<1;

create table OK_LEAVE as select * from bank394.OK_LEAVE where rownum<1;

create table OK_NSI as select * from bank394.OK_NSI where rownum<1;

create table OK_PARTY as select * from bank394.OK_PARTY where rownum<1;

create table OK_PENALTY as select * from bank394.OK_PENALTY where rownum<1;

create table OK_PERIOD as select * from bank394.OK_PERIOD where rownum<1;

create table OK_PERSONAL as select * from bank394.OK_PERSONAL where rownum<1;

create table OK_POST as select * from bank394.OK_POST where rownum<1;

create table OK_PREMIUM as select * from bank394.OK_PREMIUM where rownum<1;

create table OK_RELATION as select * from bank394.OK_RELATION where rownum<1;

create table OK_REZERV as select * from bank394.OK_REZERV where rownum<1;

create table OK_REZERV_DETAIL as select * from bank394.OK_REZERV_DETAIL where rownum<1;

create table OK_RISE as select * from bank394.OK_RISE where rownum<1;

create table OK_SCIENTIFIC as select * from bank394.OK_SCIENTIFIC where rownum<1;

create table OK_STAT as select * from bank394.OK_STAT where rownum<1;

create table OK_STAT_SALARY as select * from bank394.OK_STAT_SALARY where rownum<1;

create table OK_VOYAGE as select * from bank394.OK_VOYAGE where rownum<1;

create table OK_YOUTH as select * from bank394.OK_YOUTH where rownum<1;

