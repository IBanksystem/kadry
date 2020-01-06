-- 19.08.2009

alter table ok_education add diplom_date date;
comment on column ok_education.diplom_date is 'дата выдачи диплома';

comment on column ok_education.COD_VUZ_PRIM is ' примечание к коду ВУЗа ';
comment on column ok_education.CURS is ' курс';
comment on column ok_education.FAKULTET is ' факультет';
comment on column ok_education.NOSTRA is 'наличие нострификации 1-есть 2-нет';
comment on column ok_education.NOSTRA_SERIES is 'Серия свидетельства нострификации ';
comment on column ok_education.NOSTRA_NUMBER is 'Номер свидетельства нострификации ';
comment on column ok_education.NOSTRA_DATE is ' дата нострификации';

comment on column ok_period.ID  is 'Системный номер';
comment on column ok_period.BRANCH  is 'МФО отделения';
comment on column ok_period.PERSONAL_CODE is  'Код сотрудника';
comment on column ok_period.COD_TYPE_PRN  is 'Основание для прекращения работы в должности( ИИАС ):Код типа приказа: см ss_ok_base_move';
comment on column ok_period.COD_PR_OFF  is 'Основание для прекращения работы в должности( ИИАС ):Код причины по справочнику ЦБ s_prich';
comment on column ok_period.PR_OFF  is 'Причина прекращения работы в должности( ИИАС )';
comment on column ok_period.DOLJN_ID  is 'Код должности ( ИИАС ): по справочнику ЦБ s_dolgn';
comment on column ok_period.NUM_PR_OFF  is 'номер приказа Основание для прекращения работы в должности ( ИИАС )';
comment on column ok_period.DATE_PR_OFF  is 'дата приказа Основание для прекращения работы в должности( ИИАС ) ';


create table ss_ok_region(
REGION_ID  CHAR(2),
REGION_NAM VARCHAR2(30)
);

comment on table ss_ok_region is 'справочник областей';
comment on column ss_ok_region.region_id is 'код области';
comment on column ss_ok_region.region_nam is 'название области или г.Ташкент';


create table ss_ok_distr(                    
REGION_ID  CHAR(2),
DISTR      CHAR(3),
DISTR_NAME VARCHAR2(30)
);

comment on table ss_ok_distr is 'справочник Районы';
comment on column ss_ok_distr.region_id is 'код области или г.Ташкента';
comment on column ss_ok_distr.distr is 'код  района области или  г.Ташкента';
comment on column ss_ok_distr.distr_name is 'название района области или  г.Ташкента';

-- 25.08.2009

create table ss_ok_zp_rate(
zp_rate_code number not null,
zp_rate_simbol varchar2(5),
zp_rate_name varchar2(150),
zp_rate number(3,2) not null,
STATE_NOTES           CHAR(1),
EMP_CODE              NUMBER(6),
INS_DATE              DATE 
);

ALTER TABLE ss_ok_zp_rate ADD CONSTRAINT ss_ok_zp_rate_PK
  PRIMARY KEY ( zp_rate_code );

comment on table ss_ok_zp_rate is 'справочник ставка рабочего времени';
comment on column ss_ok_zp_rate.zp_rate_code is 'время в часах 2 4 6 8';
comment on column ss_ok_zp_rate.zp_rate_simbol is 'символ для заполнения табеля 2 4 6 8 ';
comment on column ss_ok_zp_rate.zp_rate_name is 'Название';
comment on column ss_ok_zp_rate.zp_rate is 'ставка 0.25 0.50 0.75 1.00';
comment on column ss_ok_zp_rate.STATE_NOTES is 'A-активный';
comment on column ss_ok_zp_rate.EMP_CODE is 'код сотрудника ОК';
comment on column ss_ok_zp_rate.INS_DATE is 'дата вставки записи';

--
create table ss_ok_zp_rate_type(
zp_rate_type_code number not null,
zp_rate_type_name varchar2(150),
STATE_NOTES           CHAR(1),
EMP_CODE              NUMBER(6),
INS_DATE              DATE 
);

ALTER TABLE ss_ok_zp_rate_type ADD CONSTRAINT ss_ok_zp_rate_type_PK
  PRIMARY KEY ( zp_rate_type_code );

comment on table ss_ok_zp_rate_type is 'справочник ТИПЫ ставки рабочего времени';
comment on column ss_ok_zp_rate_type.zp_rate_type_code is 'код 1 2';
comment on column ss_ok_zp_rate_type.zp_rate_type_name is 'Название 1-Основная 2-По совместительству';
comment on column ss_ok_zp_rate_type.STATE_NOTES is 'A-активный';
comment on column ss_ok_zp_rate_type.EMP_CODE is 'код сотрудника ОК';
comment on column ss_ok_zp_rate_type.INS_DATE is 'дата вставки записи';



create table ok_zp_rate(
branch char(5),
PERSONAL_CODE NUMBER (9) not null,
zp_rate_code number not null,
zp_rate_type_code number not null,
zp_rate_order_num varchar2(15),
zp_rate_order_date date,
zp_rate_date date not null,
EMP_CODE              NUMBER(6),
INS_DATE              DATE 
);

ALTER TABLE ok_zp_rate ADD CONSTRAINT ok_zp_rate_PK
  PRIMARY KEY ( branch,PERSONAL_CODE,zp_rate_code,zp_rate_date );

alter table OK_ZP_RATE modify ZP_RATE_ORDER_NUM VARCHAR2(15);

comment on table ok_zp_rate   is 'ставка';

comment on column ok_zp_rate.branch is 'мфо';
comment on column ok_zp_rate.PERSONAL_CODE is 'код сотрудника';
comment on column ok_zp_rate.zp_rate_code  is 'код ставки';
comment on column ok_zp_rate.zp_rate_type_code  is 'код типа ставки';
comment on column ok_zp_rate.zp_rate_order_num  is 'номер приказа';
comment on column ok_zp_rate.zp_rate_order_date  is 'дата приказа';
comment on column ok_zp_rate.zp_rate_date is 'Дата назначения ставки';

comment on column ok_zp_rate.EMP_CODE is 'код сотрудника ОК';
comment on column ok_zp_rate.INS_DATE is 'дата вставки записи';




create table ss_ok_str(
CODE_STR char(3),
NAME       VARCHAR2(60)
);

comment on table ss_ok_str is 'Отношение к воинской службе';

comment on column ss_ok_str.CODE_STR  is 'код';
comment on column ss_ok_str.NAME  is 'название';


