
alter table ok_photo add priznak number(1); 
comment on column ok_photo.priznak   is '1-����  2-������  3-������� � ���������';

alter table ok_photo add ok_id number(8); 
comment on column ok_photo.ok_id   is 'ok_education.id ����� ������  ��� OK_Convictions_id ����� ������� ���';

alter table ok_photo add file_name VARCHAR2(50); 
comment on column ok_photo.file_name   is ' ��� �����';

alter table OK_PHOTO
  drop constraint OK_PHOTO_PK;
  drop index OK_PHOTO_PK;


alter table ok_tabel add dep_nn number(5); 
comment on column ok_tabel.dep_nn   is '���������� �� ������ ������� ';

alter table ok_personal add USER_NAME   VARCHAR2(15);
comment on column ok_personal.USER_NAME   is '��� ������������ � ��� users.user_name';
