
drop table SS_OK_PERS_COL_DFLT;
create table SS_OK_PERS_COL_DFLT(
CODE_TABLE varchar2(3) not null,
CODE_NUM varchar2(2) not null,
NAME varchar2(250) not null, -- ��� ������� � ���������
COL_TYPE varchar2(2), -- ��� ����
NAME_DISPL varchar2(250), -- ��� ��� ������
NAME_PAPER varchar2(250), -- ��� ��� ������ ������
LEN number(4), -- ����� ����
CODE_LOOK_UP varchar2(4),
SEL_SQL    VARCHAR2(455),
real_name  varchar2(200)
);

ALTER TABLE SS_OK_PERS_COL_DFLT ADD CONSTRAINT SS_OK_PERS_COL_DFLT_PK
  PRIMARY KEY ( CODE_TABLE,CODE_NUM );

CREATE INDEX SS_OK_PERS_COL_DFLT_IX ON SS_OK_PERS_COL_DFLT
  ( CODE_TABLE,CODE_NUM, NAME) ;

--0000 PP create table OK_PERSONAL( -- '������� ������� "�������� � ����������"'
------------------------------
delete from SS_OK_PERS_COL_DFLT;

insert into SS_OK_PERS_COL_DFLT values('001','01','PP.BRANCH','C','���','���',5,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','02','OK_SERVICE.GET_STATUSNAME(PP.STATUS_CODE)','C','������','������',6,null,'select to_char(status_code) id, status_name name from ss_ok_status','PP.STATUS_CODE');
insert into SS_OK_PERS_COL_DFLT values('001','03','OK_SERVICE.GET_DEPARTMENTNAME(PP.DEPARTMENT_CODE)','C','�����','�����',9,null,'select to_char(department_code) id, department_name name from ss_ok_department where state_notes=''A'' ','PP.DEPARTMENT_CODE');
insert into SS_OK_PERS_COL_DFLT values('001','04','OK_SERVICE.GET_POSTNAME(PP.POST_CODE)','C','���������','���������',9,null,null,'PP.POST_CODE');
insert into SS_OK_PERS_COL_DFLT values('001','05','OK_SERVICE.GET_SPECIALNAME(PP.SPECIAL_CODE)','C','�������������','�������������',13,null,null,'PP.SPECIAL_CODE');
insert into SS_OK_PERS_COL_DFLT values('001','06','PP.FAMILY','C','�������','�������',20,null,null,'PP.FAMILY');
insert into SS_OK_PERS_COL_DFLT values('001','07','PP.FIRST_NAME','C','���','���',20,null,null,'PP.FIRST_NAME');
insert into SS_OK_PERS_COL_DFLT values('001','08','PP.PATRONYMIC','C','��������','��������',20,null,null,'PP.PATRONYMIC');
insert into SS_OK_PERS_COL_DFLT values('001','09','OK_SERVICE.GET_GENDERNAME(PP.GENDER_CODE)','C','���','���',3,null,'select to_char(gender_code) id,gender_name name from ss_ok_gender',null);
insert into SS_OK_PERS_COL_DFLT values('001','10','PP.BIRTHDAY','D','���� ��������','���� ����.',10,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','11','OK_SERVICE.GET_REGIONNAME(PP.REGION_ID)','C','����� �������� (�������)','����� �������� (���)',20,null,'select region_id id,region_nam name from s_region',null);
insert into SS_OK_PERS_COL_DFLT values('001','12','OK_SERVICE.GET_DISTRNAME(PP.DISTR)','C','����� �������� (�����)','����� �������� (�����)',20,null,'select distr id, distr_name name from s_distr',null);
insert into SS_OK_PERS_COL_DFLT values('001','13','OK_SERVICE.GET_BIRTHPLACE(PP.BIRTHPLACE,PP.REGION_ID,PP.DISTR)','C','����� �������� (���,����� ��� �� ����������)','����� ��������',30,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','14','PP.BIRTHPLACE','C','����� �������� (������)','����� �������� (������)',30,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','15','OK_SERVICE.GET_NATIONALITYNAME(PP.NATIONALITY_CODE)','C','��������������','��������������',10,null,'select to_char(nationality_code) id, nationality_name name from ss_ok_nationality where state_notes=''A'' ',null);
insert into SS_OK_PERS_COL_DFLT values('001','16','OK_SERVICE.GET_FAMILYSTATUSNAME(PP.FAMILY_STATUS_CODE)','C','�������� ���������','�������� ���������',10,null,'select family_status_code id, family_status_name name from ss_ok_family_status',null);
insert into SS_OK_PERS_COL_DFLT values('001','17','OK_SERVICE.GET_REGTYPENAME(PP.REG_TYPE_CODE)','C','��� ��������','��������',10,null,'select reg_type_code id, reg_type_name name from ss_ok_reg_type',null);
insert into SS_OK_PERS_COL_DFLT values('001','18','PP.HOME_ADDRESS','C','������ �������� ����� (��������)','������ �������� ����� (��������)',30,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','19','PP.HOME_ADDRESSFACT','C','����������� ����� ����������','����������� ����� ����������',30,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','20','PP.PASS_SERIYA','C','����� ��������','����� ��������',2,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','21','PP.PASS_NUM','C','����� ��������','N ��������',7,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','22','PP.PASS_DATE','D','���� ������ ��������','���� ������ ��������',10,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','23','PP.PASS_REG','C','����� ������ ��������','����� ������ ��������',30,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','24','PP.RECORD_BOOK_SERIES','C','����� �������� ������','����� �������� ������',5,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','25','PP.RECORD_BOOK_NUMBER','C','����� �������� ������','N �������� ������',10,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','26','PP.TELEFON','C','�������','�������',10,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','27','OK_SERVICE.GET_PROFMEMBERNAME(PP.PROFMEMBER)','C','��������','��������',3,null,'select profmember_code id, profmember_name name from ss_ok_profmember',null);
insert into SS_OK_PERS_COL_DFLT values('001','28','OK_SERVICE.GET_EDUCATIONTITLENAME(PP.EDUCATION_TITLE_CODE)','C','�����������','�����������',10,null,'select to_char (EDUCATION_TITLE_CODE) id, EDUCATION_TITLE_NAME name from SS_OK_EDUCATION_TITLE',null);
insert into SS_OK_PERS_COL_DFLT values('001','29','PP.TABNO','C','��������� �����','��������� �����',9,null,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','30','PP.NPS_ID','C','���������� ��','���������� ��',9,null,null,null);

/* �������� ������������ ���� �������!!!! */
insert into SS_OK_PERS_COL_DFLT values('002','01','OK_SERVICE.GET_ACADEMICNAME(AC.ACADEMIC_CODE)','C','������ ������','������ ������',15,null,'select to_char(academic_code) id, academic_name name from ss_ok_academic where state_notes=''A'' ');
insert into SS_OK_PERS_COL_DFLT values('002','02','AC.ACADEMIC_DATE','D','���� ��������� ������� ������','���� ��������� ������� ������',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('003','01','AD.CHARACTER_ADDINFORM','C','�������������� ��������','���.��������',30,null,null);
insert into SS_OK_PERS_COL_DFLT values('003','02','AD.ADDINFORM_DATE','D','���� ����� �������������� ��������','���� ����� ���.��������',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('004','01','ok_service.get_armytype(AR.ARMY_CODE)','C','��������� � ������� ������','��������� � ��',20,null,'select to_char(ARMY_code) id,ARMY_TYPE name from SS_OK_ARMY');
insert into SS_OK_PERS_COL_DFLT values('004','02','ok_service.get_fitnessarmytype(AR.FITNESS_ARMY_CODE)','C','�������� � ������','�������� � ��',8,null,'select to_char(FITNESS_ARMY_code) id,FITNESS_ARMY_TYPE name from SS_OK_ARMY');
insert into SS_OK_PERS_COL_DFLT values('004','03','ok_service.get_staffname(AR.STAFF_CODE)','C','��� �������','��� �������',15,null,null);
insert into SS_OK_PERS_COL_DFLT values('004','04','ok_service.get_typeforcename(AR.TYPE_FORCE_CODE)','C','��� �����','��� �����',15,null,null);
insert into SS_OK_PERS_COL_DFLT values('004','05','ok_service.get_armygroupname(AR.ARMY_GROUP_CODE)','C','������ �����','��.�����',15,null,null);
insert into SS_OK_PERS_COL_DFLT values('004','06','ok_service.get_categoryarmyname(AR.CATEGORY_ARMY_CODE)','C','��������� �����','��������� �����',15,null,null);
insert into SS_OK_PERS_COL_DFLT values('004','07','AR.SPECIAL_ARMY','C','�������� �������������','�������� ����-��',15,null,null);
insert into SS_OK_PERS_COL_DFLT values('004','08','ok_service.get_militaryrankname(AR.MILITARY_RANK_CODE)','C','�������� ������','�������� ������',15,null,null);
insert into SS_OK_PERS_COL_DFLT values('004','09','AR.NUMBER_VUS','C','����� ������� ������� ������������� (���)','N ���',15,null,null);
insert into SS_OK_PERS_COL_DFLT values('004','10','AR.CODE_ARMY_POST','C','��� ��������� � ������ �������� ������� ������','��� ��������� � ������ �������� ������� ������',15,null,null);
insert into SS_OK_PERS_COL_DFLT values('004','11','AR.NAME_ARMY_OFFICE','C','���������','���������',15,null,null);
insert into SS_OK_PERS_COL_DFLT values('004','12','AR.SPECREG_NUMBER','C','������� �� ��������� N','������� �� ��������� N',15,null,null);

insert into SS_OK_PERS_COL_DFLT values('005','01','AA.NUM_ATTESTATION','C','����� ������������� ����������','N ��-� ���',9,null,null);
insert into SS_OK_PERS_COL_DFLT values('005','02','AA.DATE_ATTESTATION','D','���� ����������� ����������','���� ����������� ����������',10,null,null);

--OK_AWARD is AW ';
--create table OK_AWARD( -- �������� � ��������
insert into SS_OK_PERS_COL_DFLT values('006','01','AW.AWARD_DATE','N','���� ��������� �������(���)','���� ��������� �������(���)',10,null,null);
insert into SS_OK_PERS_COL_DFLT values('006','02','AW.AWARD_INFO','C','�������� � ��������','�������� � ��������',30,null,null);


--ok_change_fio CH ';
--create table OK_CHANGE_FIO( -- 'C������� �� ��������� �������, �����, ��������'
insert into SS_OK_PERS_COL_DFLT values('007','01','CH.FAMILY','C','������� ����������',
'������� ����������',30,null,null);
insert into SS_OK_PERS_COL_DFLT values('007','02','CH.FIRST_NAME','C','��� ����������',
'��� ����������',30,null,null);
insert into SS_OK_PERS_COL_DFLT values('007','03','CH.PATRONYMIC','C','�������� ����������',
'�������� ����������',30,null,null);
insert into SS_OK_PERS_COL_DFLT values('007','04','CH.CHANGE_DATE','D','���� ��������� ���',
'���� ���.���',10,null,null);
insert into SS_OK_PERS_COL_DFLT values('007','05','CH.CHANGE_MOTIVE','C','������� ��������� ���',
'������� ��������� ���',30,null,null);

--OK_CONVICTIONS is CO ';
--create table	OK_CONVICTIONS( -- �������� � �������� ���������������
insert into SS_OK_PERS_COL_DFLT values('008','01','CO.CONVICTIONS_MOTIVE','C','������� �����������',
'������� �����������',30,null,null);
insert into SS_OK_PERS_COL_DFLT values('008','02','CO.CONVICTIONS_DATE','D','���� �����������',
'���� �����������',10,null,null);


--OK_DEGREE is DE ';
--create table	OK_DEGREE( -- �������� �� ������ ��������
insert into SS_OK_PERS_COL_DFLT values('009','01','OK_SERVICE.GET_DEGREENAME(DE.DEGREE_CODE)','C','������ �������',
'������ �������',30,null,null);
insert into SS_OK_PERS_COL_DFLT values('009','02','DE.DEGREE_DATE','D','���� ��������� ������ �������',
'���� ��������� ������ �������',10,null,null);


--OK_EDUCATION ED ';
--create table	OK_EDUCATION(  -- �������� �� �����������
insert into SS_OK_PERS_COL_DFLT values('010','01','OK_SERVICE.GET_EDUCATIONNAME(ED.EDUCATION_CODE)','C','�����������',
'�����������',11,null,null);
-- SS_OK_EDUCATION

insert into SS_OK_PERS_COL_DFLT values('010','02','OK_SERVICE.GET_BASISNAME(ED.BASIS_CODE)','C','������� �����������',
'������� �����������',11,null,null);
--	���������� �� ����������� SS_OK_BASIS  ����  BASIS_CODE,  ������� ����, ������������ ��� ����������

insert into SS_OK_PERS_COL_DFLT values('010','03','OK_SERVICE.GET_INSTITUTIONNAME(ED.INSTITUTION_CODE)','C','������� ���������',
'������� ���������',11,null,null);
--	��� �������� ���������	���������� �� �����������  SS_OK_INSTITUTION  ����  INSTITUTION_CODE,� �������� ����� ����� ���������� � ������������ � ������ ������������ �������� ���������, ������� ����, �������������� ��� ����������

insert into SS_OK_PERS_COL_DFLT values('010','04','ED.BEGIN_DATE','C','���� ����������� � ������� ���������',
'���� ����������� � ������� ���������',4,null,null);
insert into SS_OK_PERS_COL_DFLT values('010','05','ED.END_DATE','C','���� ��������� �������� ���������',
'���� ��������� �������� ���������',4,null,null);

insert into SS_OK_PERS_COL_DFLT values('010','06','ED.PROFESSION_PERSONAL','C','������������� �� �������',
'������������� �� �������',12,null,null);

insert into SS_OK_PERS_COL_DFLT values('010','07','OK_SERVICE.GET_QUALIFICATIONNAME(ED.QUALIFICATION_CODE)','C','������������',
'������������',12,null,null);
--��� ������������ �� �������	���������� �� ����������� SS_OK_QUALIFICATION  ���� QUALIFICATION_CODE , � �������� �����  ���������  ������������, ������� ����, �������������� ��� ����������

insert into SS_OK_PERS_COL_DFLT values('010','08','ED.DIPLOM_NUM','C','����� ������� ��� �������������',
'N �������',10,null,null);


--OK_ELECTION is EL ';
--'�������� �� �������� � �������������� ������'
insert into SS_OK_PERS_COL_DFLT values('011','01','OK_SERVICE.GET_ELECTIONADDRESS(EL.ELECTION_CODE)','C','����� ��������������� ������',
'����� ��������������� ������',25,null,null);
insert into SS_OK_PERS_COL_DFLT values('011','02','OK_SERVICE.GET_ELECTIONNAME(EL.ELECTION_CODE)','C','������������ ��������������� ������',
'������������ ��������������� ������',25,null,null);
insert into SS_OK_PERS_COL_DFLT values('011','03','EL.ELECTION_POST','C','��� ��� ������',
'��� ��� ������',25,null,null);
insert into SS_OK_PERS_COL_DFLT values('011','04','EL.ELECTION_DATE_BEGIN','C','���� ��������',
'���� ��������',4,null,null);
insert into SS_OK_PERS_COL_DFLT values('011','05','EL.ELECTION_DATE_END','C','���� ��������� ����� ��������',
'���� ��������� ����� ��������',4,null,null);

--OK_LANGUAGE is LA ';
--create table	OK_LANGUAGE( --�������� �� ����������� ������
insert into SS_OK_PERS_COL_DFLT values('012','01','OK_SERVICE.GET_LANGUAGENAME(LA.LANGUAGE_CODE)','C','��.��.',
'��.��.',25,null,null);
--��� ������������ �����	���������� �� ������� SS_OK_LANGUAGE  ���� LANGUAGE_CODE , ������� ����, ������������ ��� ����������

insert into SS_OK_PERS_COL_DFLT values('012','02','OK_SERVICE.GET_LEVELNAME(LA.LEVEL_CODE)','C','��.������ ��.��.',
'��.������ ��.��.',25,null,null);
--	��� ������ ������ ������������ �����	 ���������� �� ������� SS_OK_LEVEL _LANGUAGE  ���� LEVEL_CODE, ������� ����, ������������ ��� ����������


--OK_LEAVE is LE ';
--�������
insert into SS_OK_PERS_COL_DFLT values('013','01','OK_SERVICE.GET_LEAVENAME(LE.LEAVE_CODE)','C','��� �������',
'��� �������',10,null,null);
--'��� �������	���������� �� ������� SS_OK_LEAVE  ���� LEAVE_CODE, ������� ����, ������������ ��� ����������';

insert into SS_OK_PERS_COL_DFLT values('013','02','LE.BEGIN_YEAR','D','������� ���-������',
'������� ���-������',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('013','03','LE.END_YEAR','D','������� ���-���������',
'������� ���-���������',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('013','04','LE.PERIOD_LEAVE','C','���������� ���� �������',
'���������� ���� �������',3,null,null);

insert into SS_OK_PERS_COL_DFLT values('013','05','LE.DATE_IN_LEAVE','D','���� ������ � ������',
'���� ������ � ������',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('013','06','LE.DATE_OUT_LEAVE','D','���� ������ �� �������',
'���� ������ �� �������',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('013','07','LE.MOTIVE_LEAVE','C','�������/��������� ������ � ������',
'�������/��������� ������ � ������',15,null,null);

insert into SS_OK_PERS_COL_DFLT values('013','08','LE.NUM_BASIS','C','����� �������/���������',
'����� �������/���������',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('013','09','LE.DATE_BASIS','D','���� �������/���������',
'���� �������/���������',10,null,null);



--OK_PARTY is PA ';
--create table	OK_PARTY(
insert into SS_OK_PERS_COL_DFLT values('014','01','OK_SERVICE.GET_PARTYNAME(PA.PARTY_CODE)','C','������',
'������',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('014','02','PA.OUT_PARTY','C','������� ������ �� ������',
'������� ������ �� ������',20,null,null);

insert into SS_OK_PERS_COL_DFLT values('014','03','PA.PARTY_DATE','C','��� ���������� � ������',
'��� ���������� � ������',4,null,null);

insert into SS_OK_PERS_COL_DFLT values('014','04','PA.PARTY_OUTDATE','C','��� ������ �� ������',
'��� ������ �� ������',4,null,null);

insert into SS_OK_PERS_COL_DFLT values('014','05','PA.PUNISHMENT_MOTIVE','C','������� ���������� ���������',
'������� ���������� ���������',20,null,null);

insert into SS_OK_PERS_COL_DFLT values('014','06','PA.PUNISHMENT_DATE','C','���� ���������� ���������',
'���� ���������� ���������',4,null,null);


--OK_PENALTY is PE ';
--'�������� � ��������� ���������'
insert into SS_OK_PERS_COL_DFLT values('015','01','OK_SERVICE.GET_PENALTYNAME(PE.PENALTY_CODE)',
 --	��� ��������� 	���������� �� ����������� SS_OK_PENALTY  ���� PENALTY_CODE , � �������� ����� ��������� �������� ���������  �� �����������, ������� ����, ������������ ��� ����������
'C','���������',
'���������',25,null,null);
 
insert into SS_OK_PERS_COL_DFLT values('015','02',
'PE.PENALTY_MOTIVE','C','������� ���������',
'������� ���������',25,null,null);

insert into SS_OK_PERS_COL_DFLT values('015','03','PE.PENALTY_DATE','D','���� ��������� ���������',
'���� ��������� ���������',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('015','04','PE.PENALTY_NUM','C','����� ���������',
'N ���������',5,null,null);



--OK_PERIOD is PR ';
--'�������� � ���������� ������ ������'
insert into SS_OK_PERS_COL_DFLT values('016','01','PR.IN_OFFICE_DATE','D','���� �����������',
'���� �����������',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('016','02','PR.OUT_OFFICE_DATE','D','���� ����������',
'���� ����������',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('016','03','PR.OFFICE_NAME','C','������������ �����������',
'������������ �����������',25,null,null);

insert into SS_OK_PERS_COL_DFLT values('016','04','PR.OFFICE_ADDRESS','C','����� �����������',
'����� �����������',25,null,null);

insert into SS_OK_PERS_COL_DFLT values('016','05','PR.ESTABLISHED_POST','C','���������� ���������',
'���������� ���������',25,null,null);

insert into SS_OK_PERS_COL_DFLT values('016','06','OK_SERVICE.GET_TYPEPERIODNAME(PR.TYPE_PERIOD_CODE)','C','��� �����',
'��� �����',25,null,null);

insert into SS_OK_PERS_COL_DFLT values('016','07','OK_SERVICE.GET_ARTICLENAME(PR.ARTICLE_CODE)','C','����� ������',
'����� ������',7,null,null);

insert into SS_OK_PERS_COL_DFLT values('016','08','PR.BASIS_NUM','C','����� �������/���������',
'����� �������/���������',7,null,null);

insert into SS_OK_PERS_COL_DFLT values('016','09','PR.BASIS_DATE','D','���� �������/���������',
'���� �������/���������',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('016','10','OK_SERVICE.GET_BASEMOVENAME(PR.BASE_MOVE_CODE)','C','������� �����������',
'������� �����������',15,null,null);

insert into SS_OK_PERS_COL_DFLT values('016','11','ESTABLISHED_DEPARTMENT','C','������������ ������',
'������������ ������',15,null,null);

--OK_YOUTH is YO ';
--create table	OK_YOUTH( --�������� � ���������� �����������
insert into SS_OK_PERS_COL_DFLT values('017','01','OK_SERVICE.GET_YOUTHNAME(YO.YOUTH_CODE)','C','���������� �����������',
'���������� �����������',20,null,null);
--	���  �����.  �����������	���������� �� ����������� SS_OK_YOUTH ���� YOUTH_CODE , � �������� ����� ��������� �������� ���-� �� �����������, ������� ����, ������������ ��� ����������

insert into SS_OK_PERS_COL_DFLT values('017','02','YO.IN_DATE','D','���� ����������',
'���� ����������',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('017','03','YO.OUT_DATE','D','���� ������',
'���� ������',10,null,null);

--OK_PREMIUM is PM ';
--create table	OK_PREMIUM(
insert into SS_OK_PERS_COL_DFLT values('018','01','PM.PREMIUM_DATE','C','���� ��������� ������',
'���� ��������� ������',4,null,null);
insert into SS_OK_PERS_COL_DFLT values('018','02','PM.PREMIUM_NAME','C','������������ ������',
'������������ ������',25,null,null);

--OK_RELATION is RE ';
--create table OK_RELATION(

insert into SS_OK_PERS_COL_DFLT values('019','01','OK_SERVICE.GET_RELATIONNAME(RE.RELATION_CODE)','C','����������� ���������',
'����������� ���������',10,null,null);
insert into SS_OK_PERS_COL_DFLT values('019','02','RE.RELATION_FAMILY','C','������� ������������',
'������� ������������',10,null,null);
insert into SS_OK_PERS_COL_DFLT values('019','03','RE.RELATION_NAME','C','��� ������������',
'��� ������������',10,null,null);
insert into SS_OK_PERS_COL_DFLT values('019','04','RE.RELATION_PATRONYMIC','C','�������� ������������',
'�������� ������������',10,null,null);
insert into SS_OK_PERS_COL_DFLT values('019','05','RE.RELATION_BIRTHDAY','C','��� �������� ������������',
'��� �������� ������������',4,null,null);
insert into SS_OK_PERS_COL_DFLT values('019','06','RE.RELATION_BIRTHPLACE','C','����� �������� ������������',
'����� �������� ������������',20,null,null);
insert into SS_OK_PERS_COL_DFLT values('019','07','RE.RELATION_OFFICE','C','����� ������ ������������',
'����� ������ ������������',20,null,null);
insert into SS_OK_PERS_COL_DFLT values('019','08','RE.RELATION_POST','C','���������� ��������� ������������',
'���������� ��������� ������������',10,null,null);
insert into SS_OK_PERS_COL_DFLT values('019','09','RE.RELATION_HOME_ADDRESS','C','����� ���������� ������������',
'����� ���������� ������������',20,null,null);

--OK_RISE is RI ';
--create table	OK_RISE(

insert into SS_OK_PERS_COL_DFLT values('020','01','RI.RISE_DATE_YEAR','C','��� ����������� ��������� ������������',
'��� ����������� ��������� ������������',4,null,null);

insert into SS_OK_PERS_COL_DFLT values('020','02','RI.RISE_INFO','C','�������� � ��������� ������������',
'�������� � ��������� ������������',25,null,null);

--OK_SCIENTIFIC is SC ';
--create table	OK_SCIENTIFIC( --�������� � ������� �������
insert into SS_OK_PERS_COL_DFLT values('021','01','SC.SCIENTIFIC_INFO','C','�������� � ������� ������',
'�������� � ������� ������',15,null,null);

insert into SS_OK_PERS_COL_DFLT values('021','02','SC.SCIENTIFIC_DATE','C','���� ��������� �.�.(���)',
'���� ��������� �.�.(���)',4,null,null);


--OK_VOYAGE is VO ';
--create table	OK_VOYAGE( -- �������� � ���������� ��������
insert into SS_OK_PERS_COL_DFLT values('022','01','VO.VOYAGE_DATE','C','���� ������(���)',
'���� ������(���)',4,null,null);

insert into SS_OK_PERS_COL_DFLT values('022','02','VO.VOYAGE_LAND','C','������ ������',
'������ ������',15,null,null);

insert into SS_OK_PERS_COL_DFLT values('022','03','VO.VOYAGE_INFO','C','�������� � ���������� �������',
'�������� � ���������� �������',25,null,null);




-------------------------------------------------

drop table ss_ok_Pers_Query;
create table ss_ok_Pers_Query(
CODE number(4) not null,
NAME varchar2(250),
QUERY_TYPE varchar2(1),
QUERY_TEXT varchar2(250),
QUERY_CLAUSE varchar2(250)
);

ALTER TABLE SS_OK_PERS_QUERY ADD CONSTRAINT SS_OK_PERS_QUERY_PK
  PRIMARY KEY ( CODE );

drop SEQUENCE SEQ_SS_OK_PERS_QUERY;
CREATE SEQUENCE SEQ_SS_OK_PERS_QUERY
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

CREATE OR REPLACE TRIGGER TR_SS_OK_PERS_QUERY_SEQ
 BEFORE 
 INSERT
 ON SS_OK_PERS_QUERY
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_SS_OK_PERS_QUERY.NEXTVAL into new_ID from dual;
   :NEW.CODE:=new_ID;

END;
/


------------
-------------------
drop table ss_ok_Pers_Query_col;
create table ss_ok_Pers_Query_col(
CODE_QUERY number(4),
CODE_COL number(4) not null,
NAME varchar2(250),
COL_TYPE varchar2(1), -- ��� ����
NAME_DISPL varchar2(100), -- ��� ��� ������
NAME_PAPER varchar2(50), -- ��� ��� ������ ������
LEN number(4), -- ����� ����
CODE_LOOK_UP varchar2(4)
);

ALTER TABLE SS_OK_PERS_QUERY_COL ADD CONSTRAINT SS_OK_PERS_QUERY_COL_PK
  PRIMARY KEY ( CODE_COL );

drop SEQUENCE SEQ_SS_OK_PERS_QUERY_COL;
CREATE SEQUENCE SEQ_SS_OK_PERS_QUERY_COL
 minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 20 NOCYCLE 
 NOORDER 
;

CREATE OR REPLACE TRIGGER TR_SS_OK_PERS_QUERY_COL_SEQ
 BEFORE 
 INSERT
 ON SS_OK_PERS_QUERY_COL
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
declare
new_id NUMBER;
BEGIN
    select SEQ_SS_OK_PERS_QUERY_COL.NEXTVAL into new_ID from dual;
   :NEW.CODE_COL:=new_ID;

END;
/

----------------
drop table OK_NSI;
create table OK_NSI
(
  OK_ID      varchar2(3) not null,
  NAME_F     VARCHAR2(100) not null,
  TABLE_NAME VARCHAR2(30) not null,
  TYPE       varchar2(1),
  PRIM       VARCHAR2(60)
);

delete from OK_NSI;

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('001', '�������� ������', 'OK_PERSONAL', 'H', '�������� ������');
insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('002', '������ ������', 'OK_ACADEMIC', 'H', '������ ������');
insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('003', '�������������� ��������', 'OK_ADDINFORM', 'H', '�������������� ��������');
insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('004', '�������� ������', 'OK_ARMY', 'H', '�������� ������');
insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('005', '����������', 'OK_ATTESTATION', 'H', '����������');
insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('006', '�������� � ��������', 'OK_AWARD', 'H', '�������� � ��������');
insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('007', 'C������� �� ��������� ���', 'OK_CHANGE_FIO', 'H', 'C������� �� ��������� ���');
insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('008', '�������� � �������� ���������������', 'OK_CONVICTIONS', 'H', '�������� � �������� ���������������');
insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('009', '�������� �� ������ ��������', 'OK_DEGREE', 'H', '�������� �� ������ ��������');
insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('010', '�������� �� �����������', 'OK_EDUCATION', 'H', '�������� �� �����������');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('011','�������� �� �������� � �������������� ������',
'OK_ELECTION','H',
'�������� �� �������� � �������������� ������');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('012','�������� �� ����������� ������',
'OK_LANGUAGE','H',
'�������� �� ����������� ������');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('013','�������',
'OK_LEAVE','H',
'�������');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('014','������',
'OK_PARTY','H',
'������');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('015','�������� � ��������� ���������',
'OK_PENALTY','H',
'�������� � ��������� ���������');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('016','�������� � ������',
'OK_PERIOD','H',
'�������� � ���������� ������ ������');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('017','���������� �����������',
'OK_YOUTH','H',
'���������� �����������');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('018','������',
'OK_PREMIUM','H',
'������');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('019','����������� ���������',
'OK_RELATION','H',
'����������� ���������');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('020','������������',
'OK_RISE','H',
'������������');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('021','�������� � ������� �������',
'OK_SCIENTIFIC','H',
'�������� � ������� �������');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('022','�������� � ���������� ��������',
'OK_VOYAGE','H',
'�������� � ���������� ��������');

-------------------

