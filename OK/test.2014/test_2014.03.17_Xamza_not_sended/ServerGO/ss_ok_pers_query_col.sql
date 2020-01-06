prompt PL/SQL Developer import file
prompt Created on 24 Январь 2014 г. by user
set feedback off
set define off
delete from SS_OK_PERS_QUERY_COL;
prompt Loading SS_OK_PERS_QUERY_COL...
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (23, 1101, 'OK_SERVICE.GET_POSTNAME(PP.POST_CODE)', 'C', 'Должность', 'Должность', 9, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (23, 1102, 'PP.FAMILY', 'C', 'Фамилия', 'Фамилия', 20, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (23, 1103, 'PP.FIRST_NAME', 'C', 'Имя', 'Имя', 20, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (23, 1104, 'PP.PATRONYMIC', 'C', 'Отчество', 'Отчество', 20, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (23, 1105, 'OK_SERVICE.GET_REGIONNAME(PP.HOME_ADDRESS_REGION_ID)||'' ''||OK_SERVICE.GET_DISTRNAME(PP.HOME_ADDRESS_DISTR)||'' ''||PP.HOME_ADDRESS', 'C', 'Полный домашний адрес (прописка)', 'Полный домашний адрес (прописка)', 30, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (23, 1106, 'OK_SERVICE.GET_REGIONNAME(PP.HOME_ADDRESSFACT_REGION_ID)||'' ''||OK_SERVICE.GET_DISTRNAME(PP.HOME_ADDRESSFACT_DISTR)||'' ''||PP.HOME_ADDRESSFACT', 'C', 'Фактическое место проживания', 'Фактическое место проживания', 30, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (2, 1083, 'PP.PATRONYMIC', 'C', 'Отчество', 'Отчество', 20, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (2, 1084, 'HO.DATE_OPEN', 'D', 'Дата открытия', 'Дата открытия', 10, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (2, 1085, 'HO.DATE_CLOSE', 'D', 'Дата закрытия', 'Дата закрытия', 10, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (2, 1086, 'HO.NUMBER_DAY', 'C', 'Кол-во дней', 'Кол-во дней', 4, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (2, 1087, 'HO.WORK_PERIOD', 'C', 'стаж', 'стаж', 30, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (2, 1088, 'HO.PERCENTAGE', 'C', 'Процент', 'Процент', 10, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (2, 1089, 'HO.DIAGNOSIS', 'C', 'Диагноз', 'Диагноз', 150, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (2, 1090, 'HO.SHIFR', 'C', 'Шифр', 'Шифр', 10, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (2, 1091, 'HO.HOSPITAL_DOC', 'C', 'номер', 'номер', 10, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (2, 1081, 'PP.FAMILY', 'C', 'Фамилия', 'Фамилия', 20, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (2, 1082, 'PP.FIRST_NAME', 'C', 'Имя', 'Имя', 20, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (21, 1014, 'KUKU.KV_KURS_NAME', 'C', 'Наименование', 'Наименование', 150, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (21, 1015, 'KUKU.KV_ORGANIZER', 'C', 'Организатор', 'Организатор', 150, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (21, 1016, 'KUKU.KV_PLACE', 'C', 'Место проведения', 'Место проведения', 150, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (21, 1017, 'ok_service.GET_S_STR(KUKU.CODE_STR)', 'C', 'Страна', 'Страна', 50, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (21, 1018, 'KUKU.KV_NUMBER_PERS', 'C', 'Количество участников', 'Количество участников', 4, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (21, 1019, 'KUKU.DATE_OPEN', 'D', 'Начало', 'дата Начало', 10, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (21, 1020, 'KUKU.DATE_CLOSE', 'D', 'Завершение', 'Завершение', 10, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (21, 1021, 'KUKU.NUMBER_DAY', 'C', 'Кол-во дней', 'Кол-во дней', 4, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (21, 1022, 'KUKU.PAY_SUM', 'C', 'Оплата за помещение или тренинг', 'Оплата за помещение или тренинг', 15, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (21, 1023, 'KUKU.PAY_SUM_TRENER', 'C', 'Оплата тренерам', 'Оплата тренерам', 15, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (21, 1024, 'KUKU.ORDER_NUM', 'C', 'Номер приказа', 'Номер приказа', 15, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (21, 1025, 'KUKU.ORDER_DATE', 'D', 'Дата приказа', 'Дата приказа', 10, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (21, 1026, 'ok_service.GET_PROFMEMBERNAME(KUKU.ORDER_BUSINESS_VOYAGE)', 'C', 'Командировка', 'Командировка', 4, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (21, 1027, 'ok_service.GET_ORG_BUSINESS_VOYAGE(KUKU.ORG_BUSINESS_VOYAGE_CODE)', 'C', 'Организатор командировки', 'Организатор командировки', 150, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (21, 1012, 'KU.KV_KURS_CODE', 'N', 'Код курсов', 'Код курсов', 9, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (21, 1013, 'KU.FIO', 'C', 'ФИО', 'ФИО', 150, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (21, 1028, 'ok_service.GET_THEME_BUSINESS_VOYAGE(KUKU.THEME_BUSINESS_VOYAGE_CODE)', 'C', 'Тема командировки', 'Тема командировки', 150, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (21, 1029, 'KUKU.PRIM', 'C', 'Примечание', 'Примечание', 150, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (41, 1048, 'KU.KV_KURS_CODE', 'N', 'Код курсов', 'Код курсов', 9, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (41, 1049, 'KU.FIO', 'C', 'ФИО', 'ФИО', 150, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (41, 1050, 'KUKU.KV_KURS_NAME', 'C', 'Наименование', 'Наименование', 150, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (41, 1051, 'KUKU.KV_ORGANIZER', 'C', 'Организатор', 'Организатор', 150, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (41, 1052, 'KUKU.KV_PLACE', 'C', 'Место проведения', 'Место проведения', 150, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (41, 1053, 'ok_service.GET_S_STR(KUKU.CODE_STR)', 'C', 'Страна', 'Страна', 50, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (41, 1054, 'KUKU.KV_NUMBER_PERS', 'C', 'Количество участников', 'Количество участников', 4, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (41, 1055, 'KUKU.DATE_OPEN', 'D', 'Начало', 'дата Начало', 10, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (41, 1056, 'KUKU.DATE_CLOSE', 'D', 'Завершение', 'Завершение', 10, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (41, 1057, 'KUKU.NUMBER_DAY', 'C', 'Кол-во дней', 'Кол-во дней', 4, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (41, 1058, 'KUKU.PAY_SUM', 'C', 'Оплата за помещение или тренинг', 'Оплата за помещение или тренинг', 15, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (41, 1059, 'KUKU.PAY_SUM_TRENER', 'C', 'Оплата тренерам', 'Оплата тренерам', 15, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (41, 1060, 'KUKU.ORDER_NUM', 'C', 'Номер приказа', 'Номер приказа', 15, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (41, 1061, 'KUKU.ORDER_DATE', 'D', 'Дата приказа', 'Дата приказа', 10, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (41, 1062, 'ok_service.GET_PROFMEMBERNAME(KUKU.ORDER_BUSINESS_VOYAGE)', 'C', 'Командировка', 'Командировка', 4, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (41, 1063, 'ok_service.GET_ORG_BUSINESS_VOYAGE(KUKU.ORG_BUSINESS_VOYAGE_CODE)', 'C', 'Организатор командировки', 'Организатор командировки', 150, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (41, 1064, 'ok_service.GET_THEME_BUSINESS_VOYAGE(KUKU.THEME_BUSINESS_VOYAGE_CODE)', 'C', 'Тема командировки', 'Тема командировки', 150, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (41, 1065, 'KUKU.PRIM', 'C', 'Примечание', 'Примечание', 150, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (3, 918, 'OK_SERVICE.GET_DEPARTMENTNAME(PP.DEPARTMENT_CODE)', 'C', 'Отдел', 'Отдел', 9, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (3, 919, 'PP.FAMILY', 'C', 'Фамилия', 'Фамилия', 20, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (3, 920, 'PP.FIRST_NAME', 'C', 'Имя', 'Имя', 20, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (22, 934, 'PP.PATRONYMIC', 'C', 'Отчество', 'Отчество', 20, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (22, 935, 'OK_SERVICE.GET_DEPARTMENTNAME(PP.DEPARTMENT_CODE)', 'C', 'Отдел', 'Отдел', 9, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (22, 936, 'OK_SERVICE.GET_POSTNAME(PP.POST_CODE)', 'C', 'Должность', 'Должность', 9, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (22, 937, 'OK_SERVICE.GET_STATUSNAME(PP.STATUS_CODE)', 'C', 'Статус', 'Статус', 6, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (22, 938, 'PP.TABNO', 'C', 'Табельный номер', 'Табельный номер', 9, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (22, 939, 'PR.IN_OFFICE_DATE', 'D', 'Дата поступления', 'Дата поступления', 10, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (22, 940, 'PR.BASIS_NUM', 'C', 'Номер приказа/основания', 'Номер приказа/основания', 7, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (22, 941, 'PP.FAMILY', 'C', 'Фамилия', 'Фамилия', 20, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (22, 942, 'PR.BASIS_DATE', 'D', 'Дата приказа/основания', 'Дата приказа/основания', 10, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (22, 932, 'PR.OFFICE_NAME', 'C', 'Наименование организации', 'Наименование организации', 25, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (22, 933, 'PP.FIRST_NAME', 'C', 'Имя', 'Имя', 20, null);
insert into SS_OK_PERS_QUERY_COL (CODE_QUERY, CODE_COL, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP)
values (3, 917, 'PP.BRANCH', 'C', 'МФО', 'МФО', 5, null);
commit;
prompt 68 records loaded
set feedback on
set define on
prompt Done.
