
create table OK_STAT_HIST
(
  ID              NUMBER(8) not null,
  BRANCH          CHAR(5) not null,
  STAT_CODE       NUMBER(8) not null,
  DEPARTMENT_CODE NUMBER(9) not null,
  POST_CODE       NUMBER(3) not null,
  QUANTITY_POST   NUMBER(5,2) not null,
  ACT         varchar2(1) not null,
  Emp_name        varchar2(200) not null,
  User_name       varchar2(200) not null,
  INS_DATE        DATE not null,
  SPECIAL_CODE    NUMBER(3)
  );

-- Add comments to the table 
comment on table OK_STAT_HIST
  is 'штатное расписание - основная часть';
-- Add comments to the columns 
comment on column OK_STAT_HIST.ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_STAT_HIST.BRANCH
  is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_STAT_HIST.STAT_CODE
  is 'Код типа рабочего места';
comment on column OK_STAT_HIST.DEPARTMENT_CODE
  is 'Код отдела	Выбирается из справочника SS_OK_DEPARTAMENT  поле DEPARTAMENT_CODE, в отчетные формы  выводится наименование отдела, видимое поле, обязательное для заполнения';
comment on column OK_STAT_HIST.POST_CODE
  is 'Код должности	Выбирается из справочника SS_OK_POST поле POST_CODE, на экран и в отчетные формы выводится наименование должности, видимое поле, обязательное для заполнения';
comment on column OK_STAT_HIST.QUANTITY_POST
  is 'Общее количество сотрудников в  данной должности в  одном отделе	Ситоговое поле. Суммируются  записи  по одному отделу с одинаковым кодом должности POST_CODE, видимое поле, обязательное для заполнения';
comment on column OK_STAT_HIST.User_name
  is 'Логин пользователя';
comment on column OK_STAT_HIST.INS_DATE
  is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';
comment on column OK_STAT_HIST.SPECIAL_CODE
  is 'код специализации SS_OK_SPECIAL';

-- Create/Recreate primary, unique and foreign key constraints 
create index OK_STAT_HIST_PP on OK_STAT_HIST (BRANCH, DEPARTMENT_CODE, POST_CODE, INS_DATE);
create index OK_STAT_HIST_UU on OK_STAT_HIST (INS_DATE);


create or replace public synonym OK_STAT_HIST for OK_STAT_HIST;


