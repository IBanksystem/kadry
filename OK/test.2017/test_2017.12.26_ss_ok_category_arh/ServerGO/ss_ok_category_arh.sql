
alter table SS_OK_CATEGORY add V_DATE_FROM date;
alter table SS_OK_CATEGORY add V_DATE_TO date;
alter table SS_OK_CATEGORY add USER_NAME varchar2(80);

alter trigger TR_DOSTUP_SS_OK_CATEGORY disable;
update SS_OK_CATEGORY set V_DATE_FROM =to_DATE('01.01.2017','DD.MM.YYYY') where V_DATE_FROM is null ;
COMMIT;
alter trigger TR_DOSTUP_SS_OK_CATEGORY enable;

alter table SS_OK_CATEGORY drop constraint SS_OK_CATEGORY_PK; -- primary key (CATEGORY_CODE)

alter table SS_OK_CATEGORY add constraint SS_OK_CATEGORY_PK primary key (CATEGORY_CODE,V_DATE_FROM);

-- Add comments to the columns 
comment on column SS_OK_CATEGORY.V_DATE_FROM
  is 'начало периода';
comment on column SS_OK_CATEGORY.V_DATE_TO
  is 'конец периода';

--   STATE_NOTES   CHAR(1)     'A' активный      'Z' неактивный

-- Create table
create table SS_OK_CATEGORY_ARH
(
  CATEGORY_CODE NUMBER(2) not null,
  CATEGORY_NAME VARCHAR2(10) not null,
  CATEGORY_RATE NUMBER(15,5) not null,
  SALARY        NUMBER(15) not null,
  STATE_NOTES   CHAR(1),
  EMP_CODE      NUMBER(6),
  INS_DATE      DATE,
  V_DATE_FROM   DATE,
  V_DATE_TO     DATE,
  USER_NAME varchar2(80)
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
comment on column SS_OK_CATEGORY_ARH.V_DATE_TO
  is 'конец периода';
  
-- Create/Recreate primary, unique and foreign key constraints 
alter table SS_OK_CATEGORY_ARH  add constraint SS_OK_CATEGORY_ARH_PK primary key (CATEGORY_CODE,V_DATE_FROM)  ;

create or replace public synonym SS_OK_CATEGORY_ARH for SS_OK_CATEGORY_ARH;

grant all on SS_OK_CATEGORY_ARH to public;

CREATE OR REPLACE TRIGGER TR_SS_OK_CATEGORY_TO_ARH
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON SS_OK_CATEGORY
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
Version constant char(12) := '#~02082013~#';
Table_name_ VARCHAR2(50);
User_name_ VARCHAR2(50);
dostup_ number(5);
BEGIN
--
  Table_name_:='SS_OK_CATEGORY';
  User_name_:=USER;
-- здесь логирование при изменении SS_OK_CATEGORY записывается в SS_OK_CATEGORY_ARH
    if inserting then
      :NEW.user_name:=User_name_;
      :NEW.INS_DATE:=sysdate;
    end if;
--
    if updating then
      :NEW.user_name:=User_name_;
      :NEW.INS_DATE:=sysdate;
    end if;
--
    if deleting then
      :OLD.user_name:=User_name_;
      :OLD.INS_DATE:=sysdate;
    end if;
--
END;
/

