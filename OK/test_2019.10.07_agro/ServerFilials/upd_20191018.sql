alter table OK_PERSONAL
  add constraint OK_PERSONAL_UK_user_id unique (user_id);

alter table OK_PERSONAL
  add constraint OK_PERSONAL_UK_user_name unique (user_name);
