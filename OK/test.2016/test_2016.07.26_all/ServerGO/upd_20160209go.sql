alter trigger TR_DOSTUP_SS_OK_RELATION disable;

alter table ss_ok_relation add relation_order number(3);
update ss_ok_relation set relation_order=relation_code where relation_order is null;
commit;

alter trigger TR_DOSTUP_SS_OK_RELATION enable;
