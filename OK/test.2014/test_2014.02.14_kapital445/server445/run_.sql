spool c:\okelection445.txt

drop table bank445.ok_election;
create table ok_election as select * from bank974.ok_election where rownum<1;
commit;

alter table OK_ELECTION
  add constraint OK_ELECTION_PK primary key (BRANCH, PERSONAL_CODE, ID);
alter table OK_ELECTION
  add constraint OK_ELECTION_UK unique (BRANCH, ID);

@@TR_OK_ELECTION_HIST_DEL.trg
@@TR_OK_ELECTION_HIST.trg

spool off;
