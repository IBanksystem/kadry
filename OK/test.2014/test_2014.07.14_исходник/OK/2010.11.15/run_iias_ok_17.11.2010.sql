update ok_relation set relation_office='ме пюанрюер' where relation_office is null;
commit;
update ok_relation set relation_post='мер днкфмнярх' where relation_post is null;
commit;


alter table ok_personal add LIVE_PLACE varchar2(50);

update ok_personal set LIVE_PLACE=substr(pass_reg,1,50)
where live_place is null;
commit;


