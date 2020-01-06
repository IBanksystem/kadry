alter table ok_personal add DEPARTMENT_CODE_NEW        NUMBER(9);
alter table ok_personal add POST_CODE_NEW              NUMBER(3);
alter table ok_personal add SPECIAL_CODE_NEW           NUMBER(3);

comment on column ok_personal.DEPARTMENT_CODE_NEW
  is 'новый отдел';
comment on column ok_personal.POST_CODE_NEW
  is 'новый должность';
comment on column ok_personal.SPECIAL_CODE_NEW
  is 'новая специализация необязательное поле';
