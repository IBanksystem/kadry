

delete from SS_OK_PERS_COL_DFLT where CODE_TABLE='023';
------------------- C-������ D-���� N-�����
--23'OK_KURS','H','����� ��������� ������������');
insert into SS_OK_PERS_COL_DFLT values('023','01','KU.KV_KURS_CODE','N','��� ������',
'��� ������',9,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','02','KU.FIO','C','���',
'���',150,null,null,null);

--��� ���� �� ����������� ����� ����� KV_KURS_CODE
insert into SS_OK_PERS_COL_DFLT values('023','03','KUKU.KV_KURS_NAME','C','������������',
'������������',150,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','04','KUKU.KV_ORGANIZER','C','�����������',
'�����������',150,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','05','KUKU.KV_PLACE','C','����� ����������',
'����� ����������', 150,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('023','06','ok_service.GET_S_STR(KUKU.CODE_STR)','C','������',
'������',50,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','07','KUKU.KV_NUMBER_PERS','C','���������� ����������',
'���������� ����������',4,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','08','KUKU.DATE_OPEN','D','������',
'���� ������',10,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','09','KUKU.DATE_CLOSE','D','����������',
'����������',10,null,null,null);


insert into SS_OK_PERS_COL_DFLT values('023','10','KUKU.NUMBER_DAY','C','���-�� ����',
'���-�� ����',4,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('023','11','KUKU.PAY_SUM','C','������ �� ��������� ��� �������',
'������ �� ��������� ��� �������',15,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('023','12','KUKU.PAY_SUM_TRENER','C','������ ��������',
'������ ��������',15,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','13','KUKU.ORDER_NUM','C','����� �������',
'����� �������',15,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','14','KUKU.ORDER_DATE','D','���� �������',
'���� �������',10,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','15','ok_service.GET_PROFMEMBERNAME(KUKU.ORDER_BUSINESS_VOYAGE)','C','������������',
'������������',4,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','16','ok_service.GET_ORG_BUSINESS_VOYAGE(KUKU.ORG_BUSINESS_VOYAGE_CODE)','C','����������� ������������',
'����������� ������������',150,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','17','ok_service.GET_THEME_BUSINESS_VOYAGE(KUKU.THEME_BUSINESS_VOYAGE_CODE)','C','���� ������������',
'���� ������������',150,null,null,null);

insert into SS_OK_PERS_COL_DFLT values('023','18','KUKU.PRIM','C','����������',
'����������',150,null,null,null);
commit;

