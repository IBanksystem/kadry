

delete from SS_OK_PERS_COL_DFLT
where CODE_TABLE ='011' and CODE_NUM='08';

insert into SS_OK_PERS_COL_DFLT values('010','09','ED.COD_VUZ_PRIM','C','����������','����������',50,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('010','10','ED.CURS','C','����','����',10,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('010','11','ED.FAKULTET','C','���������','���������',20,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('010','12','ED.NOSTRA','C','������','������',10,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('010','13','ED.NOSTRA_SERIES','C','����� ������','����� ������',10,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('010','14','ED.NOSTRA_NUMBER','C','����� ������','����� ������',10,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('010','15','ED.NOSTRA_DATE','C','���� ������','���� ������',10,null,null,null);

commit;

