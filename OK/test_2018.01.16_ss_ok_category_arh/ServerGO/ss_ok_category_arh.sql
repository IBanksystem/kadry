
alter table SS_OK_CATEGORY add V_DATE_FROM date;
alter table SS_OK_CATEGORY add USER_NAME varchar2(80);

alter trigger TR_DOSTUP_SS_OK_CATEGORY disable;
update SS_OK_CATEGORY set V_DATE_FROM =to_DATE('01.01.2017','DD.MM.YYYY') where V_DATE_FROM is null ;
COMMIT;
alter trigger TR_DOSTUP_SS_OK_CATEGORY enable;

alter table SS_OK_CATEGORY drop constraint SS_OK_CATEGORY_PK; -- primary key (CATEGORY_CODE)
drop index SS_OK_CATEGORY_PK ;
alter table SS_OK_CATEGORY add constraint SS_OK_CATEGORY_PK primary key (CATEGORY_CODE,V_DATE_FROM);

-- Add comments to the columns 
comment on column SS_OK_CATEGORY.V_DATE_FROM
  is 'начало периода';

--   STATE_NOTES   CHAR(1)     'A' активный      'P' неактивный

-- drop table SS_OK_CATEGORY_ARH;

create table SS_OK_CATEGORY_ARH (
  CATEGORY_CODE NUMBER(2) not null,
  CATEGORY_NAME VARCHAR2(10) not null,
  CATEGORY_RATE NUMBER(15,5) not null,
  SALARY        NUMBER(15) not null,
  STATE_NOTES   CHAR(1),
  EMP_CODE      NUMBER(6),
  INS_DATE      DATE,
  V_DATE_FROM   DATE,
  USER_NAME varchar2(80),
  priznak number(1) 
  );

-- Add comments to the table 
comment on table SS_OK_CATEGORY_ARH
  is 'справочник "Разряды"';
-- Add comments to the columns 
comment on column SS_OK_CATEGORY_ARH.CATEGORY_CODE
  is 'номер в тарифной сетке';
comment on column SS_OK_CATEGORY_ARH.CATEGORY_NAME
  is 'разряд оплаты труда';
comment on column SS_OK_CATEGORY_ARH.CATEGORY_RATE
  is 'тарифные коэффициенты';
comment on column SS_OK_CATEGORY_ARH.SALARY
  is 'оклад';
comment on column SS_OK_CATEGORY_ARH.STATE_NOTES
  is 'A-активный';
comment on column SS_OK_CATEGORY_ARH.EMP_CODE
  is 'код сотрудника ОК';
comment on column SS_OK_CATEGORY_ARH.INS_DATE
  is 'дата вставки записи';
comment on column SS_OK_CATEGORY_ARH.V_DATE_FROM
  is 'начало периода';
comment on column SS_OK_CATEGORY_ARH.priznak
  is 'признак -- 1-ins 2-upd 4-del';


  
create index SS_OK_CATEGORY_ARH_IDX on SS_OK_CATEGORY_ARH (CATEGORY_CODE,V_DATE_FROM)  ;

create or replace public synonym SS_OK_CATEGORY_ARH for SS_OK_CATEGORY_ARH;

grant all on SS_OK_CATEGORY_ARH to public;

CREATE OR REPLACE TRIGGER TR_SS_OK_CATEGORY_TO_ARH
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON SS_OK_CATEGORY
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
Version constant char(12) := '#~17012018~#';
Table_name_ VARCHAR2(50);
User_name_ VARCHAR2(50);
insupddel_ number(1); -- 1-ins 2-upd 4-del
BEGIN
--
  Table_name_:='SS_OK_CATEGORY';
  User_name_:=USER;
-- здесь логирование при изменении SS_OK_CATEGORY записывается в SS_OK_CATEGORY_ARH
    if inserting then
      :NEW.user_name:=User_name_;
      :NEW.INS_DATE:=sysdate;
      insupddel_ := 1;
      insert into SS_OK_CATEGORY_ARH
       (  CATEGORY_CODE,  CATEGORY_NAME,  CATEGORY_RATE ,  SALARY,  STATE_NOTES,
         EMP_CODE,  INS_DATE,  V_DATE_FROM,  USER_NAME, priznak) values
       (  :NEW.CATEGORY_CODE,  :NEW.CATEGORY_NAME,  :NEW.CATEGORY_RATE ,  :NEW.SALARY,  :NEW.STATE_NOTES,
         :NEW.EMP_CODE,  :NEW.INS_DATE,  :NEW.V_DATE_FROM,  :NEW.USER_NAME, insupddel_) ;
    end if;
--
    if updating then
      :NEW.user_name:=User_name_;
      :NEW.INS_DATE:=sysdate;
      insupddel_ := 2;
      insert into SS_OK_CATEGORY_ARH
       (  CATEGORY_CODE,  CATEGORY_NAME,  CATEGORY_RATE ,  SALARY,  STATE_NOTES,
         EMP_CODE,  INS_DATE,  V_DATE_FROM,  USER_NAME, priznak) values
       (  :NEW.CATEGORY_CODE,  :NEW.CATEGORY_NAME,  :NEW.CATEGORY_RATE ,  :NEW.SALARY,  :NEW.STATE_NOTES,
         :NEW.EMP_CODE,  :NEW.INS_DATE,  :NEW.V_DATE_FROM,  :NEW.USER_NAME, insupddel_) ;
    end if;
--
    if deleting then
--      :OLD.user_name:=User_name_;
--      :OLD.INS_DATE:=sysdate;
      insupddel_ := 4;
      insert into SS_OK_CATEGORY_ARH
        (  CATEGORY_CODE,  CATEGORY_NAME,  CATEGORY_RATE ,  SALARY,  STATE_NOTES,
           EMP_CODE,  INS_DATE,  V_DATE_FROM,  USER_NAME, priznak) values
       (  :OLD.CATEGORY_CODE,  :OLD.CATEGORY_NAME,  :OLD.CATEGORY_RATE ,  :OLD.SALARY,  :OLD.STATE_NOTES,
           :OLD.EMP_CODE,  :OLD.INS_DATE,  :OLD.V_DATE_FROM,  :OLD.USER_NAME, insupddel_ ) ;
    end if;
--
END;
/

