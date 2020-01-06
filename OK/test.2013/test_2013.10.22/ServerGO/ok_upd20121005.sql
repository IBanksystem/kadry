alter table ss_ok_post add confirm_code number(2);

comment on column ss_ok_post.confirm_code 
  is 'должность подтверждается в республике или в области или в районе';
