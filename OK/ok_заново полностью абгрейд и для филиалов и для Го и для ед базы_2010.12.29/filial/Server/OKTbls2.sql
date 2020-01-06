




--4 изменение

alter table ss_ok_post add(
category_code number(2)
);

comment on column ss_ok_post.category_code is 'код разряда оплаты труда справочник ss_ok_category';

