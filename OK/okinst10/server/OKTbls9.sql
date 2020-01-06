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

delete from ss_ok_zp_rate;
insert into ss_ok_zp_rate (zp_rate_code,zp_rate_simbol,zp_rate_name,zp_rate,STATE_NOTES,EMP_CODE,INS_DATE) 
values (2,'2','0.25',0.25,'A',99,sysdate);
insert into ss_ok_zp_rate (zp_rate_code,zp_rate_simbol,zp_rate_name,zp_rate,STATE_NOTES,EMP_CODE,INS_DATE) 
values (4,'4','0.50',0.50,'A',99,sysdate);
insert into ss_ok_zp_rate (zp_rate_code,zp_rate_simbol,zp_rate_name,zp_rate,STATE_NOTES,EMP_CODE,INS_DATE) 
values (6,'6','0.75',0.75,'A',99,sysdate);
insert into ss_ok_zp_rate (zp_rate_code,zp_rate_simbol,zp_rate_name,zp_rate,STATE_NOTES,EMP_CODE,INS_DATE) 
values (8,'8','1.00',1.00,'A',99,sysdate);
commit;

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

delete from ss_ok_zp_rate_type;
insert into ss_ok_zp_rate_type (zp_rate_type_code, zp_rate_type_name ,STATE_NOTES,EMP_CODE,INS_DATE) 
values (1,'Основная','A',99,sysdate);
insert into ss_ok_zp_rate_type (zp_rate_type_code, zp_rate_type_name ,STATE_NOTES,EMP_CODE,INS_DATE) 
values (2,'По совместительству','A',99,sysdate);

commit;

drop table ok_zp_rate;
create table ok_zp_rate(
branch char(5),
PERSONAL_CODE NUMBER (9) not null,
zp_rate_code number not null,
zp_rate_type_code number not null,
zp_rate_order_num varchar2(15),
zp_rate_order_date date,
zp_rate_date date not null,
zp_fakt number,
EMP_CODE              NUMBER(6),
INS_DATE              DATE 
);

ALTER TABLE ok_zp_rate ADD CONSTRAINT ok_zp_rate_PK
  PRIMARY KEY ( branch,PERSONAL_CODE,zp_rate_code,zp_rate_date );


comment on table ok_zp_rate   is 'ставка';

comment on column ok_zp_rate.branch is 'мфо';
comment on column ok_zp_rate.PERSONAL_CODE is 'код сотрудника';
comment on column ok_zp_rate.zp_rate_code  is 'код ставки';
comment on column ok_zp_rate.zp_rate_type_code  is 'код типа ставки';
comment on column ok_zp_rate.zp_rate_order_num  is 'номер приказа';
comment on column ok_zp_rate.zp_rate_order_date  is 'дата приказа';
comment on column ok_zp_rate.zp_rate_date is 'Дата назначения ставки';
comment on column ok_zp_rate.zp_fakt is 'Фактический оклад';
comment on column ok_zp_rate.EMP_CODE is 'код сотрудника ОК';
comment on column ok_zp_rate.INS_DATE is 'дата вставки записи';



comment on table OK_ARMY
  is 'Отношение к воинской службе';
-- Add comments to the columns 
comment on column OK_ARMY.ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_ARMY.BRANCH
  is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_ARMY.PERSONAL_CODE
  is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_ARMY.ARMY_CODE
  is 'Отношение к военной службе 	Выбирается из справочника SS_OK_ARMY  поле ARMY_CODE  обязательное для заполнения';
comment on column OK_ARMY.FITNESS_ARMY_CODE
  is 'Годность к службе	Выбирается из справочника   поле fitness_ARMY_Code';
comment on column OK_ARMY.SPECIAL_ARMY
  is 'Воинская Специальность	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ARMY.NUMBER_VUS
  is 'Номер военной учетной специальности (ВУС)	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ARMY.CODE_ARMY_POST
  is 'Код должности и особые признаки военной службы	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ARMY.NAME_ARMY_OFFICE
  is 'Военкомат	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ARMY.SPECREG_NUMBER
  is 'Состоит на спецучете N	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ARMY.EMP_CODE
  is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_ARMY.INS_DATE
  is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';
comment on column OK_ARMY.ARMY_GROUP_CODE
  is 'Группа учета код SS_OK_ARMY_GROUP';
comment on column OK_ARMY.CATEGORY_ARMY_CODE
  is 'Категория учета код SS_OK_CATEGORY_ARMY';
comment on column OK_ARMY.MILITARY_RANK_CODE
  is 'Воинское звание код SS_OK_MILITARY_RANK';
comment on column OK_ARMY.STAFF_CODE
  is 'Вид состава код SS_OK_STAFF';
comment on column OK_ARMY.TYPE_FORCE_CODE
  is 'Род войск код SS_OK_TYPE_FORCE';

create table ss_ok_str(
CODE_STR char(3),
NAME       VARCHAR2(60)
);

comment on table ss_ok_str is 'Отношение к воинской службе';

comment on column ss_ok_str.CODE_STR  is 'код';
comment on column ss_ok_str.NAME  is 'название';


comment on table OK_ELECTION
  is 'Сведения об избрании в исполнительные органы';
-- Add comments to the columns 
comment on column OK_ELECTION.ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_ELECTION.BRANCH
  is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_ELECTION.PERSONAL_CODE
  is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_ELECTION.ELECTION_CODE
  is 'код исполнительный орган SS_OK_ELECTION';
comment on column OK_ELECTION.ELECTION_POST
  is 'Кем был избран	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ELECTION.ELECTION_DATE_BEGIN
  is 'год  избрания в органы	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ELECTION.ELECTION_DATE_END
  is 'год  окончания срока работы в органах	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_ELECTION.EMP_CODE
  is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_ELECTION.INS_DATE
  is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';
comment on column OK_ELECTION.ELECTION_ADDRESS
  is 'адрес исполнительного органа ';
comment on column OK_ELECTION.ELECTION_NAME
  is 'название исполнительного органа ';


comment on table OK_LANGUAGE
  is 'Сведения об иностранных языках';
-- Add comments to the columns 
comment on column OK_LANGUAGE.ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_LANGUAGE.BRANCH
  is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_LANGUAGE.PERSONAL_CODE
  is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_LANGUAGE.LANGUAGE_CODE
  is 'Код иностранного языка	Количество иностранных языков может быть сколько угодно, необходимо внести все языки указанные сотрудником. В Отчетные формы  выводятся наименования всех указанных иностранных языков вместе с уровнем знаний этих языков язык - уровень и т.д.Выбирается из таблицы SS_OK_LANGUAGE  поле LANGUAGE_CODE , видимое поле, обязательное для заполнения';
comment on column OK_LANGUAGE.LEVEL_CODE
  is 'Код уровня знаний иностранного языка	Код уровня знаний предлагается из списка при выборе языка В отчетные формы  выводятся наименования всех указанных иностранных языков вместе с уровнем знаний этих языков язык - уровень и т.д. Выбирается из таблицы SS_OK_LEVEL _LANGUAGE  поле LEVEL_CODE, видимое поле, обязательное для заполнения';
comment on column OK_LANGUAGE.EMP_CODE
  is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_LANGUAGE.INS_DATE
  is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';
comment on column OK_LANGUAGE.STATE
  is 'не используется';
comment on column OK_LANGUAGE.COD_LANG_PRIM
  is 'Примечание';

comment on table OK_PARTY
  is 'Сведения о партийности';
-- Add comments to the columns 
comment on column OK_PARTY.ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_PARTY.BRANCH
  is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_PARTY.PERSONAL_CODE
  is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_PARTY.PARTY_CODE
  is 'Код партийности	выбирается из справочникаSS_OK_PARTY поле PARTY_CODE , в отчетные формы выводится название партии из справочника, видимое поле, обязательное для заполнения';
comment on column OK_PARTY.OUT_PARTY
  is 'Причина выхода из партии	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column OK_PARTY.PARTY_DATE
  is 'год вступления в партию';
comment on column OK_PARTY.PARTY_OUTDATE
  is 'год Дата выхода	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column OK_PARTY.PUNISHMENT_MOTIVE
  is 'Причина партийного наказания	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column OK_PARTY.PUNISHMENT_DATE
  is 'год Дата получения парт.наказания	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column OK_PARTY.EMP_CODE
  is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_PARTY.INS_DATE
  is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';
comment on column OK_PARTY.CODE_PARTII_PRIM
  is 'примечание к коду партии (название партии)';

comment on table OK_PERIOD
  is 'Сведения о работе';
-- Add comments to the columns 
comment on column OK_PERIOD.ID
  is 'Системный номер';
comment on column OK_PERIOD.BRANCH
  is 'МФО отделения';
comment on column OK_PERIOD.PERSONAL_CODE
  is 'Код сотрудника';
comment on column OK_PERIOD.IN_OFFICE_DATE
  is 'Дата поступления';
comment on column OK_PERIOD.OUT_OFFICE_DATE
  is 'Дата увольнения';
comment on column OK_PERIOD.OFFICE_NAME
  is 'Наименование организации';
comment on column OK_PERIOD.OFFICE_ADDRESS
  is 'Адрес организации';
comment on column OK_PERIOD.ESTABLISHED_POST
  is 'Занимаемая должность';
comment on column OK_PERIOD.ESTABLISHED_DEPARTMENT
  is 'Отдел';
comment on column OK_PERIOD.BASE_MOVE_CODE
  is 'основание перемещения SS_OK_BASE_MOVE';
comment on column OK_PERIOD.TYPE_PERIOD_CODE
  is 'Код типа стажа SS_OK_TYPE_PERIOD';
comment on column OK_PERIOD.ARTICLE_CODE
  is 'Номер статьи';
comment on column OK_PERIOD.BASIS_NUM
  is 'Номер приказа/основания';
comment on column OK_PERIOD.BASIS_DATE
  is 'Дата приказа/основания';
comment on column OK_PERIOD.PRIZ_SYSTEM
  is 'признак системы';
comment on column OK_PERIOD.COD_BANK
  is 'код банка';
comment on column OK_PERIOD.COD_TYPE_PRN
  is 'Основание для прекращения работы в должности( ИИАС ):Код типа приказа: см ss_ok_base_move';
comment on column OK_PERIOD.COD_PR_OFF
  is 'Основание для прекращения работы в должности( ИИАС ):Код причины по справочнику ЦБ s_prich';
comment on column OK_PERIOD.PR_OFF
  is 'Причина прекращения работы в должности( ИИАС )';
comment on column OK_PERIOD.DATE_UTV_KM
  is 'Дата утверждения КМ';
comment on column OK_PERIOD.NUMB_UTV_KM
  is 'Номер постановления КМ';
comment on column OK_PERIOD.DATE_PR_KVL
  is 'Дата прохождения КК ЦБ';
comment on column OK_PERIOD.NUMB_PR_KVL
  is 'Номер протокола КК ЦБ';
comment on column OK_PERIOD.DATE_ATTEST
  is 'Дата аттестации';
comment on column OK_PERIOD.RESH_ATTEST
  is 'Решение аттестационной комиссии';
comment on column OK_PERIOD.DOLJN_ID
  is 'пусто Код должности ( ИИАС ): по справочнику ЦБ s_dolgn';
comment on column OK_PERIOD.NUM_PR_OFF
  is 'номер приказа Основание для прекращения работы в должности ( ИИАС )';
comment on column OK_PERIOD.DATE_PR_OFF
  is 'дата приказа Основание для прекращения работы в должности( ИИАС ) ';
comment on column OK_PERIOD.POST_CODE
  is 'код должности SS_OK_POST';
comment on column OK_PERIOD.DEPARTMENT_CODE
  is 'код отдела SS_OK_DEPARTMENT';


comment on table OK_PERSONAL
  is 'рабочая таблица "Сведения о сотруднике"';
-- Add comments to the columns 
comment on column OK_PERSONAL.ID
  is 'Системный номер	В порядке возрастания, начиная   с "1"';
comment on column OK_PERSONAL.BRANCH
  is 'МФО отделения	Выбирается из таблицы S_MFO поле BANK_ID, невидимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.PERSONAL_CODE
  is 'Код сотрудника в отделении	Автоматически присваивается в отделении и передается в Головной офис  в файле - уникален в отделении, невидимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.COLLEAGUE_CODE
  is 'Код сотрудника в Головном офисе 	Автоматически присваивается сотруднику после получения файла из отделения и спускается в отделение с ответным файлом - уникальный в системе банка  по Республике независимо от номера МФО отделения, невидимое поле';
comment on column OK_PERSONAL.STATUS_CODE
  is 'Статус сотрудника ';
comment on column OK_PERSONAL.SALARY_CODE
  is 'Код Рабочего Места в отделении ok_stat_salary';
comment on column OK_PERSONAL.FAMILY
  is 'Фамилия сотрудника	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.FIRST_NAME
  is 'Имя сотрудника	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.PATRONYMIC
  is 'Отчество сотрудника	Вводится с клавиатуры. невидимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.GENDER_CODE
  is 'Пол сотрудника	Выбирается  из системного справочника SS_OK_GENDER, поле GENDER_CODE В отчетную форму выводится наименование пола, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.BIRTHDAY
  is 'День рождения сотрудника DDMMYYYY	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.REGION_ID
  is 'ss_ok_region место рождения область,город Ташкент справочник ЦБ s_region';
comment on column OK_PERSONAL.DISTR
  is 'ss_ok_distr место рождения район,город справочник ЦБ s_distr';
comment on column OK_PERSONAL.NATIONALITY_CODE
  is 'Код национальности 	Выбирается из справочника SS_OK_NATIONALITY  поле NATIONALITY_CODE, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.FAMILY_STATUS_CODE
  is 'Код семейного положения	Выбирается из справочникаSS_OK_FAMILY_STATUSполе FAMILY_STATUS_CODE, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.REG_TYPE_CODE
  is 'Код типа прописки	Выбирается из справочника SS_OK_REGISTRATION_TYPE, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.HOME_ADDRESS
  is 'Полный домашний адрес сотрудника(прописка) 	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.HOME_ADDRESSFACT
  is 'Фактическое место проживания	Вводится с клавиатуры. Видимое поле';
comment on column OK_PERSONAL.PASS_SERIYA
  is 'Серия паспорта	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.PASS_NUM
  is 'Номер паспорта	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.PASS_DATE
  is 'Дата выдачи паспорта	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.PASS_REG
  is 'Место выдачи паспорта	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.RECORD_BOOK_NUMBER
  is 'Номер трудовой книжки	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column OK_PERSONAL.RECORD_BOOK_SERIES
  is 'Серия трудовой книжки	Вводится с клавиатуры, видимое поле, необязательное для заполнения';
comment on column OK_PERSONAL.TELEFON
  is 'Информация о контактных Телефонах	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.EMP_CODE
  is 'Код пользователя, вводившего 	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.INS_DATE
  is 'Дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';
comment on column OK_PERSONAL.PROFMEMBER
  is 'профсоюз 1-да';
comment on column OK_PERSONAL.TABNO
  is 'табельный номер';
comment on column OK_PERSONAL.EDUCATION_TITLE_CODE
  is 'SS_OK_EDUCATION_TITLE';
comment on column OK_PERSONAL.BIRTHPLACE
  is 'место рождения';
comment on column OK_PERSONAL.MOTIVE_OUT
  is 'причина увольнения';
comment on column OK_PERSONAL.BASIS_NUM
  is 'номер приказа ';
comment on column OK_PERSONAL.BASIS_DATE
  is 'дата приказа';
comment on column OK_PERSONAL.LEAVE_CODE
  is 'SS_OK_LEAVE';
comment on column OK_PERSONAL.DEPARTMENT_CODE
  is 'SS_OK_DEPARTMENT код подразделения, используется вместе с branch рабочая таблица ss_ok_department';
comment on column OK_PERSONAL.POST_CODE
  is 'SS_OK_POST код наименования должности справочник ss_ok_post';
comment on column OK_PERSONAL.NN
  is 'порядковый номер в отчетах';
comment on column OK_PERSONAL.MOTIVE_DISMISSIAL_CODE
  is 'SS_OK_MOTIVE_DISMISSIAL';
comment on column OK_PERSONAL.NPS_ID
  is 'пенсионный ИН';
comment on column OK_PERSONAL.SPECIAL_CODE
  is 'код специализации см ss_ok_special';
comment on column OK_PERSONAL.COD_DISTR_UVD
  is 'ss_ok_distr Код района, подразделением УВД которого выдан паспорт (ИИАС)';
comment on column OK_PERSONAL.COD_DISTR_PRIM
  is 'примечание к Код района, подразделением УВД которого выдан паспорт (ИИАС)';
comment on column OK_PERSONAL.COD_STR_BIRTH
  is 'ss_ok_str код страна рождения см справочник цб s_str (ИИАС)';
comment on column OK_PERSONAL.COD_OBL_PRIM
  is 'примечание к коду области рождения (ИИАС)';
comment on column OK_PERSONAL.COD_PLACE_BIRTH_PRIM
  is 'примечание к коду района рождения (ИИАС)';
comment on column OK_PERSONAL.COD_SITIZENT
  is 'пусто код гражданства';
comment on column OK_PERSONAL.COD_STR_SITIZENT
  is 'ss_ok_str код страны гражданства';
comment on column OK_PERSONAL.COD_STR_LIVE
  is 'ss_ok_str код страны проживания см справочник цб s_str (ИИАС)';
comment on column OK_PERSONAL.COD_OBL_LIVE
  is 'ss_ok_region  код области проживания см справочник цб s_region (ИИАС) s_region';
comment on column OK_PERSONAL.COD_OBL_LIVE_PRIM
  is 'примечание к код области проживания (ИИАС)';
comment on column OK_PERSONAL.COD_DISTR_LIVE
  is 'ss_ok_distr код района проживания см справочник цб s_distr (ИИАС)';
comment on column OK_PERSONAL.COD_DISTR_LIVE_PRIM
  is 'примечание к код района проживания (ИИАС)';
comment on column OK_PERSONAL.CODE_NACI_PRIM
  is 'примечание к коду национальности (ИИАС)  ';
comment on column OK_PERSONAL.CHECK_KFS
  is 'Резерв руководящего состава: 1-да 2-нет';
comment on column OK_PERSONAL.IS_BOSS
  is 'руководящий состав 1-да  (ИИАС) иначе пусто';
comment on column OK_PERSONAL.BANK_SPEC
  is 'наличие банковской специальности 1-да иначе пусто';
comment on column OK_PERSONAL.NOTICE
  is 'примечание';
comment on column OK_PERSONAL.PRICH_ID
  is 'пусто код причины увольнения';
comment on column OK_PERSONAL.NAME_PR
  is 'наименование причины увольнения';
comment on column OK_PERSONAL.INN
  is 'ИНН';
comment on column OK_PERSONAL.SROK_DATE
  is 'Дата Окончания Испытательного Срока';
comment on column OK_PERSONAL.HOME_ADDRESSFACT_REGION_ID
  is 'ss_ok_region место жит-ва s_region.region_id';
comment on column OK_PERSONAL.HOME_ADDRESSFACT_DISTR
  is 'место жит-ва s_distr.distr';
comment on column OK_PERSONAL.HOME_ADDRESS_REGION_ID
  is 'ss_ok_region место прописки s_region.region_id';
comment on column OK_PERSONAL.HOME_ADDRESS_DISTR
  is 'место прописки s_distr.distr';
comment on column OK_PERSONAL.PASSPORT_TYPE_CODE
  is 'вид документа 1-паспорт 2-вид на жит-во 3-военбилет ss_ok_passport_type';
comment on column OK_PERSONAL.REGPLACE_CODE
  is 'ss_ok_regplace код место регистрации';


comment on table OK_POST
  is 'Назначения и перемещения';
-- Add comments to the columns 
comment on column OK_POST.ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_POST.BRANCH
  is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_POST.PERSONAL_CODE
  is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_POST.APPOINTMENT_DATE
  is 'Дата с какого числа перемещен в должности	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_POST.APPOINTMENT_MOTIVE
  is 'Причина перемещения	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_POST.DEPARTMENT_CODE
  is 'Наименование отдела куда перемещен	Выбирается из справочника SS_OK_DEPARTAMENT поле DEPARTAMENT_CODE  в зависимости от типа отдела . видимое поле, обязательное для заполнения';
comment on column OK_POST.POST_CODE
  is 'На какую должность перемещен	Выбирается из справочника SS_OK_POST поле POST_CODE, видимое поле, обязательное для заполнения';
comment on column OK_POST.GRADE
  is 'Разряд 	Вводится с клавиатуры, невидимое поле, необязательное для заполнения';
comment on column OK_POST.SALARY_FACT
  is 'Должностной оклад	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_POST.RAISE_PERSONAL
  is 'Персональная надбавка 	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_POST.RAISE_ADD
  is 'Другая надбавка	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_POST.BASIS_NUM
  is 'Номер приказа/основания	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_POST.BASIS_DATE
  is 'Дата приказа/основания	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_POST.EMP_CODE
  is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_POST.INS_DATE
  is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';
comment on column OK_POST.STATE
  is 'состояние A - активно, P (не A)- неактивно';
comment on column OK_POST.BASE_MOVE_CODE
  is 'код причины перемещения см ss_ok_base_move ';


comment on table OK_RELATION
  is 'сведения о близких родственниках';
-- Add comments to the columns 
comment on column OK_RELATION.ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_RELATION.BRANCH
  is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_RELATION.PERSONAL_CODE
  is 'Код сотрудника в отделении	Выбирается из таблицы OK_PERSONAL  поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_RELATION.RELATION_CODE
  is 'Код родственного отношения	Выбирается из SS_OK_RELATION  поле RELATION_CODE, видимое поле, обязательное для заполнения';
comment on column OK_RELATION.RELATION_FAMILY
  is 'Фамилия  родственника	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_RELATION.RELATION_NAME
  is 'Имя родственника	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_RELATION.RELATION_PATRONYMIC
  is 'Отчество родственника	Вводится с клавиатуры видимое поле, обязательное для заполнения,';
comment on column OK_RELATION.RELATION_BIRTHDAY
  is 'год День рождения родственника DDMMYYYY	Вводится с клавиатуры , видимое поле, обязательное для заполнения';
comment on column OK_RELATION.RELATION_BIRTHPLACE
  is 'Место рождения  родственника	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_RELATION.RELATION_OFFICE
  is 'Место работы родственника	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_RELATION.RELATION_POST
  is 'Занимаемая должность родственника	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_RELATION.RELATION_HOME_ADDRESS
  is 'Место жительства родственника	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_RELATION.EMP_CODE
  is 'Код пользователя, вводившего информацию	Выбирается из таблицы USERS  поле  ID, видимое поле, обязательное для заполнения';
comment on column OK_RELATION.INS_DATE
  is 'Дата и время ввода данных	SYSDATE, видимое поле, обязательное для заполнения';
comment on column OK_RELATION.RELATION_DEATHDAY
  is 'год смерти родственника данные для ЦБ';
comment on column OK_RELATION.COD_STR_LIVE
  is 'SS_OK_STR место жительство код страны s_str данные для ЦБ';
comment on column OK_RELATION.COD_OBL_LIVE
  is 'SS_OK_REGION  место жительство код области s_region код данные для ЦБ';
comment on column OK_RELATION.COD_OBL_LIVE_PRIM
  is 'место жительство примечание к код области данные для ЦБ';
comment on column OK_RELATION.COD_CITY
  is 'SS_OK_CITY место жительство код района-города s_distr данные для ЦБ';
comment on column OK_RELATION.COD_CITY_PRIM
  is 'примечание к место жительство код района-города данные для ЦБ';
comment on column OK_RELATION.COD_STR_LIVE_PRIM
  is 'примечание к место жительство код страны данные для ЦБ';
comment on column OK_RELATION.COD_STR_BIRTH
  is 'SS_OK_STR место рождения код страны s_str данные для ЦБ';
comment on column OK_RELATION.COD_STR_BIRTH_PRIM
  is 'примечание к место рождения код страны данные для ЦБданные для ЦБ';
comment on column OK_RELATION.COD_OBL_BIRTH
  is 'SS_OK_REGION  место рождения код области s_region код данные для ЦБ';
comment on column OK_RELATION.COD_OBL_BIRTH_PRIM
  is ' место рождения примечание к код области данные для ЦБ ';
comment on column OK_RELATION.COD_CITY_BIRTH
  is 'SS_OK_CITY место рождения код района-города s_distr данные для ЦБ';
comment on column OK_RELATION.COD_CITY_BIRTH_PRIM
  is 'примечание к место рождения код района-города данные для ЦБ';
comment on column OK_RELATION.DD
  is 'день dd рождения родственника  данные для ЦБ';
comment on column OK_RELATION.MM
  is 'месяц mm рождения родственнника данные для ЦБ';
comment on column OK_RELATION.DD_DEATH
  is 'день смерти родственника данные для ЦБ  ';
comment on column OK_RELATION.MM_DEATH
  is 'месяц смерти родственника данные для ЦБ';



comment on table OK_STAT
  is 'штатное расписание - основная часть';
-- Add comments to the columns 
comment on column OK_STAT.ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_STAT.BRANCH
  is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_STAT.STAT_CODE
  is 'Код типа рабочего места';
comment on column OK_STAT.DEPARTMENT_CODE
  is 'Код отдела	Выбирается из справочника SS_OK_DEPARTAMENT  поле DEPARTAMENT_CODE, в отчетные формы  выводится наименование отдела, видимое поле, обязательное для заполнения';
comment on column OK_STAT.POST_CODE
  is 'Код должности	Выбирается из справочника SS_OK_POST поле POST_CODE, на экран и в отчетные формы выводится наименование должности, видимое поле, обязательное для заполнения';
comment on column OK_STAT.QUANTITY_POST
  is 'Общее количество сотрудников в  данной должности в  одном отделе	Ситоговое поле. Суммируются  записи  по одному отделу с одинаковым кодом должности POST_CODE, видимое поле, обязательное для заполнения';
comment on column OK_STAT.SALARY_FACT
  is 'Утвержденные должностные оклады	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_STAT.EMP_CODE
  is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_STAT.INS_DATE
  is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';
comment on column OK_STAT.SPECIAL_CODE
  is 'код специализации SS_OK_SPECIAL';

-- Add comments to the table 
comment on table OK_VOYAGE
  is 'Сведения о зарубежных поездках';
-- Add comments to the columns 
comment on column OK_VOYAGE.ID
  is 'Системный номер	Присваивается  начиная с "1", не видимое поле, обязательно для заполнения';
comment on column OK_VOYAGE.BRANCH
  is 'МФО отделения	Выбирается из таблицыS_MFO поле ID, невидимое поле, обязательное для заполнения';
comment on column OK_VOYAGE.PERSONAL_CODE
  is 'Код сотрудника в отделении.Выбирается из таблицы OK_PERSONAL, невидимое поле, обязательное для заполнения';
comment on column OK_VOYAGE.VOYAGE_DATE
  is 'год Дата поездки	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_VOYAGE.VOYAGE_LAND
  is 'Страна выезда	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_VOYAGE.VOYAGE_INFO
  is 'Сведения о зарубежных поездках	Вводится с клавиатуры, видимое поле, обязательное для заполнения';
comment on column OK_VOYAGE.EMP_CODE
  is 'Код пользователя	Выбирается из таблицы USERS  поле  ID, невидимое поле, обязательное для заполнения';
comment on column OK_VOYAGE.INS_DATE
  is 'дата и время ввода данных	SYSDATE, невидимое поле, обязательное для заполнения';
comment on column OK_VOYAGE.VOYAGE_STR
  is 'SS_OK_STR код страны s_str ';
comment on column OK_VOYAGE.DATA_IN
  is 'год возвращения из поездки';


comment on table SS_OK_ARMY_GROUP
  is 'группа учета';
-- Add comments to the columns 
comment on column SS_OK_ARMY_GROUP.ARMY_GROUP_ID
  is 'id записи';
comment on column SS_OK_ARMY_GROUP.ARMY_GROUP_CODE
  is 'код ';
comment on column SS_OK_ARMY_GROUP.ARMY_GROUP_NAME
  is 'название';
comment on column SS_OK_ARMY_GROUP.STATE_NOTES
  is 'A-активная';
comment on column SS_OK_ARMY_GROUP.EMP_CODE
  is 'код сотрудника вводившиего записи';
comment on column SS_OK_ARMY_GROUP.INS_DATE
  is 'вермя ввода sysdate';

comment on table SS_OK_BASE_MOVE
  is 'причины перемещения';
-- Add comments to the columns 
comment on column SS_OK_BASE_MOVE.BASE_MOVE_ID
  is 'id';
comment on column SS_OK_BASE_MOVE.BASE_MOVE_CODE
  is 'код';
comment on column SS_OK_BASE_MOVE.BASE_MOVE_NAME
  is 'название';
comment on column SS_OK_BASE_MOVE.STATE_NOTES
  is 'A';
comment on column SS_OK_BASE_MOVE.EMP_CODE
  is '99';
comment on column SS_OK_BASE_MOVE.INS_DATE
  is 'sysdate';


comment on table SS_OK_CATEGORY_ARMY
  is 'категория учета (МО)';
-- Add comments to the columns 
comment on column SS_OK_CATEGORY_ARMY.CATEGORY_ARMY_ID
  is 'id';
comment on column SS_OK_CATEGORY_ARMY.CATEGORY_ARMY_CODE
  is 'код';
comment on column SS_OK_CATEGORY_ARMY.CATEGORY_ARMY_NAME
  is 'название';
comment on column SS_OK_CATEGORY_ARMY.STATE_NOTES
  is 'A';
comment on column SS_OK_CATEGORY_ARMY.EMP_CODE
  is '99';
comment on column SS_OK_CATEGORY_ARMY.INS_DATE
  is 'sysdate';


comment on table SS_OK_ELECTION
  is 'Справочник исполнительных органов ';
-- Add comments to the columns 
comment on column SS_OK_ELECTION.ELECTION_ID
  is 'id';
comment on column SS_OK_ELECTION.ELECTION_CODE
  is 'код исполнительных органов ';
comment on column SS_OK_ELECTION.ELECTION_NAME
  is 'название исполнительных органов ';
comment on column SS_OK_ELECTION.ELECTION_ADDRESS
  is 'адрес исполнительных органов ';
comment on column SS_OK_ELECTION.STATE_NOTES
  is 'A';
comment on column SS_OK_ELECTION.EMP_CODE
  is '99';
comment on column SS_OK_ELECTION.INS_DATE
  is 'sysdate';

comment on table SS_OK_MILITARY_RANK
  is 'воинские звания';
-- Add comments to the columns 
comment on column SS_OK_MILITARY_RANK.MILITARY_RANK_ID
  is 'id';
comment on column SS_OK_MILITARY_RANK.MILITARY_RANK_CODE
  is 'код';
comment on column SS_OK_MILITARY_RANK.MILITARY_RANK_NAME
  is 'название';
comment on column SS_OK_MILITARY_RANK.STATE_NOTES
  is 'A';
comment on column SS_OK_MILITARY_RANK.EMP_CODE
  is '99';
comment on column SS_OK_MILITARY_RANK.INS_DATE
  is 'sysdate';


comment on table SS_OK_PROFMEMBER
  is 'профсоюз';
-- Add comments to the columns 
comment on column SS_OK_PROFMEMBER.PROFMEMBER
  is '0 йук нет          1-ха да';
comment on column SS_OK_PROFMEMBER.PROFMEMBER_NAME
  is '0 йук нет          1-ха да';


comment on table SS_OK_SPECIAL
  is 'специализация';
-- Add comments to the columns 
comment on column SS_OK_SPECIAL.SPECIAL_ID
  is 'id';
comment on column SS_OK_SPECIAL.SPECIAL_CODE
  is 'код';
comment on column SS_OK_SPECIAL.SPECIAL_NAME
  is 'название';
comment on column SS_OK_SPECIAL.STATE_NOTES
  is 'A';
comment on column SS_OK_SPECIAL.EMP_CODE
  is '99';
comment on column SS_OK_SPECIAL.INS_DATE
  is 'sysdate';

comment on table SS_OK_STAFF
  is 'Вид состава (МО)';
-- Add comments to the columns 
comment on column SS_OK_STAFF.STAFF_ID
  is 'id';
comment on column SS_OK_STAFF.STAFF_CODE
  is 'код';
comment on column SS_OK_STAFF.STAFF_NAME
  is 'название';
comment on column SS_OK_STAFF.STATE_NOTES
  is 'A';
comment on column SS_OK_STAFF.EMP_CODE
  is '99';
comment on column SS_OK_STAFF.INS_DATE
  is 'sysdate';


comment on table SS_OK_TYPE_FORCE
  is 'Рода войск';
-- Add comments to the columns 
comment on column SS_OK_TYPE_FORCE.TYPE_FORCE_ID
  is 'id';
comment on column SS_OK_TYPE_FORCE.TYPE_FORCE_CODE
  is 'код';
comment on column SS_OK_TYPE_FORCE.TYPE_FORCE_NAME
  is 'название';
comment on column SS_OK_TYPE_FORCE.STATE_NOTES
  is 'A';
comment on column SS_OK_TYPE_FORCE.EMP_CODE
  is '99';
comment on column SS_OK_TYPE_FORCE.INS_DATE
  is 'sysdate';
