

alter table ss_ok_post add EDUCATION_TITLE_CODE NUMBER(3)  ;
 
comment on column ss_ok_post.EDUCATION_TITLE_CODE   is '����������� ����������� ��� ������ ���������';

alter table ss_ok_relation
  add constraint ss_ok_relation_UKUK unique (relation_name);

drop table ok_edb_diplom;
drop public synonym ok_edb_diplom;
commit;
