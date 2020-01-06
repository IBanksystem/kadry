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




CREATE OR REPLACE TRIGGER "TR_OK_PHOTO_B64_HIST"
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_PHOTO_B64
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~08012018~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type;
 to_send_ number(1);
 v_date_ date;
 ins_date_ date;
BEGIN
-- 09_012
  select curdate into v_date_ from sets where rownum<2;
  ins_date_ := sysdate;
--
  if inserting then
    if :NEW.ID is null
    then
      select seq_OK_PHOTO_B64.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
--
  select count(*) into to_send_
  from ok_personal where branch=branch_ and personal_code=personal_code_ and status_code<>1;
  if to_send_>0
  then
  insert into ok_hist(BRANCH,PERSONAL_CODE,V_DATE,INS_DATE,NOM_UI,
         TABLE_NAME,ACTION_HIST_ID, id_table
   ) values (BRANCH_,PERSONAL_CODE_,V_DATE_,INS_DATE_,'09_012',
         'OK_PHOTO_B64',new_id, id_table_
   );
--
  end if;
END;
/


