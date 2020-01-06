create table ok_period_hist_del
as select * from ok_period where rownum<1;
commit;

ALTER TABLE ok_period_hist_del ADD CONSTRAINT ok_period_hist_del_PK
  PRIMARY KEY ( BRANCH,ID ) ;

create or replace public synonym ok_period_hist_del for ok_period_hist_del;
grant all on ok_period_hist_del to public;


--OK_RELATION
create table ok_RELATION_hist_del
as select * from ok_RELATION where rownum<1;
commit;

ALTER TABLE ok_RELATION_hist_del ADD CONSTRAINT ok_RELATION_hist_del_PK
  PRIMARY KEY ( BRANCH,ID ) ;

create or replace public synonym OK_RELATION_HIST_DEL for OK_RELATION_HIST_DEL;
grant all on OK_RELATION_HIST_DEL to public;


--OK_EDUCATION
create table ok_EDUCATION_hist_del
as select * from ok_EDUCATION where rownum<1;
commit;

ALTER TABLE ok_EDUCATION_hist_del ADD CONSTRAINT ok_EDUCATION_hist_del_PK
  PRIMARY KEY ( BRANCH,ID ) ;

alter table OK_EDUCATION_HIST_DEL modify NOSTRA_SERIES VARCHAR2(3);

create or replace public synonym OK_EDUCATION_HIST_DEL for OK_EDUCATION_HIST_DEL;
grant all on OK_EDUCATION_HIST_DEL to public;

--OK_AWARD
create table ok_AWARD_hist_del
as select * from ok_AWARD where rownum<1;
commit;

ALTER TABLE ok_AWARD_hist_del ADD CONSTRAINT ok_AWARD_hist_del_PK
  PRIMARY KEY ( BRANCH,ID ) ;

create or replace public synonym OK_AWARD_HIST_DEL for OK_AWARD_HIST_DEL;
grant all on OK_AWARD_HIST_DEL to public;

--OK_ELECTION
create table ok_ELECTION_hist_del
as select * from ok_ELECTION where rownum<1;
commit;

ALTER TABLE ok_ELECTION_hist_del ADD CONSTRAINT ok_ELECTION_hist_del_PK
  PRIMARY KEY ( BRANCH,ID ) ;

create or replace public synonym OK_ELECTION_HIST_DEL for OK_ELECTION_HIST_DEL;
grant all on OK_ELECTION_HIST_DEL to public;

--OK_VOYAGE
create table ok_VOYAGE_hist_del
as select * from ok_VOYAGE where rownum<1;
commit;

ALTER TABLE ok_VOYAGE_hist_del ADD CONSTRAINT ok_VOYAGE_hist_del_PK
  PRIMARY KEY ( BRANCH,ID ) ;

create or replace public synonym OK_VOYAGE_HIST_DEL for OK_VOYAGE_HIST_DEL;
grant all on OK_VOYAGE_HIST_DEL to public;

--OK_LANGUAGE
create table ok_LANGUAGE_hist_del
as select * from ok_LANGUAGE where rownum<1;
commit;

ALTER TABLE ok_LANGUAGE_hist_del ADD CONSTRAINT ok_LANGUAGE_hist_del_PK
  PRIMARY KEY ( BRANCH,ID ) ;

create or replace public synonym OK_LANGUAGE_HIST_DEL for OK_LANGUAGE_HIST_DEL;
grant all on OK_LANGUAGE_HIST_DEL to public;

--OK_RISE
create table ok_RISE_hist_del
as select * from ok_RISE where rownum<1;
commit;

ALTER TABLE ok_RISE_hist_del ADD CONSTRAINT ok_RISE_hist_del_PK
  PRIMARY KEY ( BRANCH,ID ) ;

create or replace public synonym OK_RISE_HIST_DEL for OK_RISE_HIST_DEL;
grant all on OK_RISE_HIST_DEL to public;



