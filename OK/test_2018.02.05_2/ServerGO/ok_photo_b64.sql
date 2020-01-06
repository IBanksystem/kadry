-- select dbms_lob.getlength(PHOTO_B64) from ok_photo_b64;
-- на 9004
--  select substr(TABLE_HEAD,1,dbms_lob.getlength(TABLE_HEAD)) aa
--   from  HTML_PORTS 

-- Create table
create table ok_photo_b64(
  ID            NUMBER(8) not null,
  BRANCH        CHAR(5) not null,
  PERSONAL_CODE NUMBER(9) not null,
  PHOTO_B64         CLOB not null,
  EMP_CODE      NUMBER(6) not null,
  INS_DATE      DATE not null,
  PRIZNAK       NUMBER(1),
  OK_ID         NUMBER(8),
  FILE_NAME     VARCHAR2(50),
  EMP_CODE_NAME VARCHAR2(180)
  );

-- Add comments to the table 
comment on table ok_photo_b64
  is 'Фотографии';
-- Add comments to the columns 
comment on column ok_photo_b64.ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column ok_photo_b64.BRANCH
  is 'МФО отделения	Выбирается из таблицы S_MFO поле BANK_ID, невидимое поле, обязательное для заполнения';
comment on column ok_photo_b64.PERSONAL_CODE
  is 'Код сотрудника в отделении	Выбирается из таблицы OK_PERSONAL  поле ID, невидимое поле, обязательное для заполнения';
comment on column ok_photo_b64.PHOTO_B64
  is 'Фото';
comment on column ok_photo_b64.EMP_CODE
  is 'Код пользователя вводившего информацию	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column ok_photo_b64.INS_DATE
  is 'Дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';
comment on column ok_photo_b64.PRIZNAK
  is 'null или 1-фото  2-диплом  3-справка о судимости';
comment on column ok_photo_b64.OK_ID
  is 'ok_education.id копия дилома  или OK_Convictions_id копия справки УВД';
comment on column ok_photo_b64.FILE_NAME
  is ' имя файла';

alter table ok_photo_b64 add constraint ok_photo_b64_UK primary key (ID);

alter table ok_photo_b64 add constraint ok_photo_b64_U unique (BRANCH, PERSONAL_CODE);

create or replace public synonym ok_photo_b64 for ok_photo_b64;

grant all on ok_photo_b64 to public;


create sequence seq_OK_PHOTO_B64 order;
select seq_OK_PHOTO_B64.NEXTVAL  from dual;
create or replace public synonym seq_OK_PHOTO_B64 for seq_OK_PHOTO_B64;
grant all on seq_OK_PHOTO_B64 to public;





