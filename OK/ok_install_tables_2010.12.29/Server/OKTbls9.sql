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



