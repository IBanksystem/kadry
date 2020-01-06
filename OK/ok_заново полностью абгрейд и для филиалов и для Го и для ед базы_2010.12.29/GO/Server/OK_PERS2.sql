

delete from SS_OK_PERS_COL_DFLT
where CODE_TABLE ='011' and CODE_NUM='08';

insert into SS_OK_PERS_COL_DFLT values('010','09','ED.COD_VUZ_PRIM','C','Примечание','Примечание',50,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('010','10','ED.CURS','C','Курс','Курс',10,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('010','11','ED.FAKULTET','C','Факультет','Факультет',20,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('010','12','ED.NOSTRA','C','Ностра','Ностра',10,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('010','13','ED.NOSTRA_SERIES','C','серия Ностра','серия Ностра',10,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('010','14','ED.NOSTRA_NUMBER','C','номер Ностра','номер Ностра',10,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('010','15','ED.NOSTRA_DATE','C','дата Ностра','дата Ностра',10,null,null,null);

commit;

