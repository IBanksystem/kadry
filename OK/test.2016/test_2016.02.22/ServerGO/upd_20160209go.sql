alter trigger TR_DOSTUP_SS_OK_RELATION disable;

alter table ss_ok_relation add relation_order number(3);
update ss_ok_relation set relation_order=relation_code;
commit;

update ss_ok_relation set relation_order=11 where relation_code=9 and '00394' in (select branch from sets);
commit;
update ss_ok_relation set relation_order=12 where relation_code=10  and '00394' in (select branch from sets);
commit;
update ss_ok_relation set relation_order=9 where relation_code=11  and '00394' in (select branch from sets);
commit;
update ss_ok_relation set relation_order=10 where relation_code=12  and '00394' in (select branch from sets);
commit;

alter trigger TR_DOSTUP_SS_OK_RELATION enable;
