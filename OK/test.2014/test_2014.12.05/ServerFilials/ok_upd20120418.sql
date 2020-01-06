

alter table ss_ok_post add EDUCATION_TITLE_CODE NUMBER(3)  ;
 
comment on column ss_ok_post.EDUCATION_TITLE_CODE   is 'образование необходимое для данной должности';

alter table ss_ok_relation
  add constraint ss_ok_relation_UKUK unique (relation_name);

commit;
