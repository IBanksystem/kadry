

delete from SS_OK_PERS_COL_DFLT where CODE_TABLE='023';
------------------- C-символ D-дата N-номер
--23'OK_KURS','H','Курсы повышения квалификации');
insert into SS_OK_PERS_COL_DFLT values('023','01','KU.KV_KURS_CODE','N','Код курсов',
'Код курсов',9,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','02','KU.FIO','C','ФИО',
'ФИО',150,null,null,null);

--все поля из справочника курсы через KV_KURS_CODE
insert into SS_OK_PERS_COL_DFLT values('023','03','KUKU.KV_KURS_NAME','C','Наименование',
'Наименование',150,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','04','KUKU.KV_ORGANIZER','C','Организатор',
'Организатор',150,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','05','KUKU.KV_PLACE','C','Место проведения',
'Место проведения', 150,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('023','06','ok_service.GET_S_STR(KUKU.CODE_STR)','C','Страна',
'Страна',50,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','07','KUKU.KV_NUMBER_PERS','C','Количество участников',
'Количество участников',4,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','08','KUKU.DATE_OPEN','D','Начало',
'дата Начало',10,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','09','KUKU.DATE_CLOSE','D','Завершение',
'Завершение',10,null,null,null);


insert into SS_OK_PERS_COL_DFLT values('023','10','KUKU.NUMBER_DAY','C','Кол-во дней',
'Кол-во дней',4,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('023','11','KUKU.PAY_SUM','C','Оплата за помещение или тренинг',
'Оплата за помещение или тренинг',15,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('023','12','KUKU.PAY_SUM_TRENER','C','Оплата тренерам',
'Оплата тренерам',15,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','13','KUKU.ORDER_NUM','C','Номер приказа',
'Номер приказа',15,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','14','KUKU.ORDER_DATE','D','Дата приказа',
'Дата приказа',10,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','15','ok_service.GET_PROFMEMBERNAME(KUKU.ORDER_BUSINESS_VOYAGE)','C','Командировка',
'Командировка',4,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','16','ok_service.GET_ORG_BUSINESS_VOYAGE(KUKU.ORG_BUSINESS_VOYAGE_CODE)','C','Организатор командировки',
'Организатор командировки',150,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','17','ok_service.GET_THEME_BUSINESS_VOYAGE(KUKU.THEME_BUSINESS_VOYAGE_CODE)','C','Тема командировки',
'Тема командировки',150,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','18','KUKU.PRIM','C','Примечание',
'Примечание',150,null,null,null);
commit;

