
prompt Loading SS_OK_PERS_COL_DFLT...
delete from SS_OK_PERS_COL_DFLT;
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '01', 'PP.BRANCH', 'C', '���', '���', 5, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '02', 'OK_SERVICE.GET_STATUSNAME(PP.STATUS_CODE)', 'C', '������', '������', 6, null, 'select to_char(status_code) id, status_name name from ss_ok_status', 'PP.STATUS_CODE');

insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '03', 'PP.DEPARTMENT_CODE', 'C', '��� ������', '��� ������', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '04', 'OK_SERVICE.GET_DEPARTMENTNAME(PP.DEPARTMENT_CODE)', 'C', '�����', '�����', 9, null, 'select to_char(department_code) id, department_name name from ss_ok_department where state_notes=''A'' ', 'PP.DEPARTMENT_CODE');

insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '05', 'PP.POST_CODE', 'C', '��� ���������', '��� ���������', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '06', 'OK_SERVICE.GET_POSTNAME(PP.POST_CODE)', 'C', '���������', '���������', 9, null, null, 'PP.POST_CODE');

insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '07', 'PP.SPECIAL_CODE', 'C', '��� �������������', '��� �������������', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '08', 'OK_SERVICE.GET_SPECIALNAME(PP.SPECIAL_CODE)', 'C', '�������������', '�������������', 13, null, null, 'PP.SPECIAL_CODE');

insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '09', 'PP.FAMILY', 'C', '�������', '�������', 20, null, null, 'PP.FAMILY');
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '10', 'PP.FIRST_NAME', 'C', '���', '���', 20, null, null, 'PP.FIRST_NAME');
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '11', 'PP.PATRONYMIC', 'C', '��������', '��������', 20, null, null, 'PP.PATRONYMIC');
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '12', 'OK_SERVICE.GET_GENDERNAME(PP.GENDER_CODE)', 'C', '���', '���', 3, null, 'select to_char(gender_code) id,gender_name name from ss_ok_gender', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '13', 'PP.BIRTHDAY', 'D', '���� ��������', '���� ����.', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '14', 'OK_SERVICE.GET_REGIONNAME(PP.REGION_ID)', 'C', '����� �������� (�������)', '����� �������� (���)', 20, null, 'select region_id id,region_nam name from s_region', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '15', 'OK_SERVICE.GET_DISTRNAME(PP.DISTR)', 'C', '����� �������� (�����)', '����� �������� (�����)', 20, null, 'select distr id, distr_name name from s_distr', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '16', 'OK_SERVICE.GET_BIRTHPLACE(PP.BIRTHPLACE,PP.REGION_ID,PP.DISTR)', 'C', '����� �������� (���,����� ��� �� ����������)', '����� ��������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '17', 'PP.BIRTHPLACE', 'C', '����� �������� (������)', '����� �������� (������)', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '18', 'OK_SERVICE.GET_NATIONALITYNAME(PP.NATIONALITY_CODE)', 'C', '��������������', '��������������', 10, null, 'select to_char(nationality_code) id, nationality_name name from ss_ok_nationality where state_notes=''A'' ', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '19', 'OK_SERVICE.GET_FAMILYSTATUSNAME(PP.FAMILY_STATUS_CODE)', 'C', '�������� ���������', '�������� ���������', 10, null, 'select family_status_code id, family_status_name name from ss_ok_family_status', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '20', 'OK_SERVICE.GET_REGTYPENAME(PP.REG_TYPE_CODE)', 'C', '��� ��������', '��������', 10, null, 'select reg_type_code id, reg_type_name name from ss_ok_reg_type', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '21', 'OK_SERVICE.GET_REGIONNAME(PP.HOME_ADDRESS_REGION_ID)||'' ''||OK_SERVICE.GET_DISTRNAME(PP.HOME_ADDRESS_DISTR)||'' ''||PP.HOME_ADDRESS', 'C', '������ �������� ����� (��������)', '������ �������� ����� (��������)', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '22', 'OK_SERVICE.GET_REGIONNAME(PP.HOME_ADDRESSFACT_REGION_ID)||'' ''||OK_SERVICE.GET_DISTRNAME(PP.HOME_ADDRESSFACT_DISTR)||'' ''||PP.HOME_ADDRESSFACT', 'C', '����������� ����� ����������', '����������� ����� ����������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '23', 'PP.PASS_SERIYA', 'C', '����� ��������', '����� ��������', 2, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '24', 'PP.PASS_NUM', 'C', '����� ��������', 'N ��������', 7, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '25', 'PP.PASS_DATE', 'D', '���� ������ ��������', '���� ������ ��������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '26', 'OK_SERVICE.GET_DISTRNAME(PP.COD_DISTR_UVD)', 'C', '����� ������ ��������', '����� ������ ��������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '27', 'OK_SERVICE.GET_REGPLACENAME(PP.REGPLACE_CODE)', 'C', '����� ������ �������� (���)', '����� ������ ��������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '28', 'PP.PASS_DATE_END', 'D', '������� ������������ ��', '������� ������������ ��', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '29', 'PP.RECORD_BOOK_SERIES', 'C', '����� �������� ������', '����� �������� ������', 5, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '30', 'PP.RECORD_BOOK_NUMBER', 'C', '����� �������� ������', 'N �������� ������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '31', 'PP.TELEFON', 'C', '�������', '�������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '32', 'OK_SERVICE.GET_PROFMEMBERNAME(PP.PROFMEMBER)', 'C', '��������', '��������', 3, null, 'select profmember_code id, profmember_name name from ss_ok_profmember', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '33', 'OK_SERVICE.GET_EDUCATIONTITLENAME(PP.EDUCATION_TITLE_CODE)', 'C', '�����������', '�����������', 10, null, 'select to_char (EDUCATION_TITLE_CODE) id, EDUCATION_TITLE_NAME name from SS_OK_EDUCATION_TITLE', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '34', 'PP.TABNO', 'C', '��������� �����', '��������� �����', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '35', 'PP.NPS_ID', 'C', '���������� ��', '���������� ��', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '36', 'PP.INN', 'C', '���', '���', 9, null, null, null);

insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '37', 'PP.PERSONAL_CODE', 'C', '�������� ���', '�������� ���', 9, null, null, null);


insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('002', '01', 'OK_SERVICE.GET_ACADEMICNAME(AC.ACADEMIC_CODE)', 'C', '������ ������', '������ ������', 15, null, 'select to_char(academic_code) id, academic_name name from ss_ok_academic where state_notes=''A'' ', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('002', '02', 'AC.ACADEMIC_DATE', 'D', '���� ��������� ������� ������', '���� ��������� ������� ������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('003', '01', 'AD.CHARACTER_ADDINFORM', 'C', '�������������� ��������', '���.��������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('003', '02', 'AD.ADDINFORM_DATE', 'D', '���� ����� �������������� ��������', '���� ����� ���.��������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '01', 'ok_service.get_armytype(AR.ARMY_CODE)', 'C', '��������� � ������� ������', '��������� � ��', 20, null, 'select to_char(ARMY_code) id,ARMY_TYPE name from SS_OK_ARMY', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '02', 'ok_service.get_fitnessarmytype(AR.FITNESS_ARMY_CODE)', 'C', '�������� � ������', '�������� � ��', 8, null, 'select to_char(FITNESS_ARMY_code) id,FITNESS_ARMY_TYPE name from SS_OK_ARMY', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '03', 'ok_service.get_staffname(AR.STAFF_CODE)', 'C', '��� �������', '��� �������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '04', 'ok_service.get_typeforcename(AR.TYPE_FORCE_CODE)', 'C', '��� �����', '��� �����', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '05', 'ok_service.get_armygroupname(AR.ARMY_GROUP_CODE)', 'C', '������ �����', '��.�����', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '06', 'ok_service.get_categoryarmyname(AR.CATEGORY_ARMY_CODE)', 'C', '��������� �����', '��������� �����', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '07', 'AR.SPECIAL_ARMY', 'C', '�������� �������������', '�������� ����-��', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '08', 'ok_service.get_militaryrankname(AR.MILITARY_RANK_CODE)', 'C', '�������� ������', '�������� ������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '09', 'AR.NUMBER_VUS', 'C', '����� ������� ������� ������������� (���)', 'N ���', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '10', 'AR.CODE_ARMY_POST', 'C', '��� ��������� � ������ �������� ������� ������', '��� ��������� � ������ �������� ������� ������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '11', 'AR.NAME_ARMY_OFFICE', 'C', '���������', '���������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '12', 'AR.SPECREG_NUMBER', 'C', '������� �� ��������� N', '������� �� ��������� N', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('005', '01', 'AA.NUM_ATTESTATION', 'C', '����� ������������� ����������', 'N ��-� ���', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('005', '02', 'AA.DATE_ATTESTATION', 'D', '���� ����������� ����������', '���� ����������� ����������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('006', '01', 'AW.AWARD_DATE', 'N', '���� ��������� �������(���)', '���� ��������� �������(���)', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('006', '02', 'AW.AWARD_INFO', 'C', '�������� � ��������', '�������� � ��������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('007', '01', 'CH.FAMILY', 'C', '������� ����������', '������� ����������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('007', '02', 'CH.FIRST_NAME', 'C', '��� ����������', '��� ����������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('007', '03', 'CH.PATRONYMIC', 'C', '�������� ����������', '�������� ����������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('007', '04', 'CH.CHANGE_DATE', 'D', '���� ��������� ���', '���� ���.���', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('007', '05', 'CH.CHANGE_MOTIVE', 'C', '������� ��������� ���', '������� ��������� ���', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('008', '01', 'CO.CONVICTIONS_MOTIVE', 'C', '������� �����������', '������� �����������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('008', '02', 'CO.CONVICTIONS_DATE', 'D', '���� �����������', '���� �����������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('009', '01', 'OK_SERVICE.GET_DEGREENAME(DE.DEGREE_CODE)', 'C', '������ �������', '������ �������', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('009', '02', 'DE.DEGREE_DATE', 'D', '���� ��������� ������ �������', '���� ��������� ������ �������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '01', 'OK_SERVICE.GET_EDUCATIONNAME(ED.EDUCATION_CODE)', 'C', '�����������', '�����������', 11, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '02', 'OK_SERVICE.GET_BASISNAME(ED.BASIS_CODE)', 'C', '������� �����������', '������� �����������', 11, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '03', 'OK_SERVICE.GET_INSTITUTIONNAME(ED.INSTITUTION_CODE)', 'C', '������� ���������', '������� ���������', 11, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '04', 'ED.BEGIN_DATE', 'C', '���� ����������� � ������� ���������', '���� ����������� � ������� ���������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '05', 'ED.END_DATE', 'C', '���� ��������� �������� ���������', '���� ��������� �������� ���������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '06', 'ED.PROFESSION_PERSONAL', 'C', '������������� �� �������', '������������� �� �������', 12, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '07', 'OK_SERVICE.GET_QUALIFICATIONNAME(ED.QUALIFICATION_CODE)', 'C', '������������', '������������', 12, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '08', 'ED.DIPLOM_NUM', 'C', '����� ������� ��� �������������', 'N �������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '09', 'ED.COD_VUZ_PRIM', 'C', '����������', '����������', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '10', 'ED.CURS', 'C', '����', '����', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '11', 'ED.FAKULTET', 'C', '���������', '���������', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '12', 'ED.NOSTRA', 'C', '������', '������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '13', 'ED.NOSTRA_SERIES', 'C', '����� ������', '����� ������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '14', 'ED.NOSTRA_NUMBER', 'C', '����� ������', '����� ������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '15', 'ED.NOSTRA_DATE', 'C', '���� ������', '���� ������', 10, null, null, null);


insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('011', '01', 'OK_SERVICE.GET_ELECTIONADDRESS(EL.ELECTION_CODE)', 'C', '����� ��������������� ������', '����� ��������������� ������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('011', '02', 'OK_SERVICE.GET_ELECTIONNAME(EL.ELECTION_CODE)', 'C', '������������ ��������������� ������', '������������ ��������������� ������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('011', '03', 'EL.ELECTION_POST', 'C', '��� ��� ������', '��� ��� ������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('011', '04', 'EL.ELECTION_DATE_BEGIN', 'C', '���� ��������', '���� ��������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('011', '05', 'EL.ELECTION_DATE_END', 'C', '���� ��������� ����� ��������', '���� ��������� ����� ��������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('012', '01', 'OK_SERVICE.GET_LANGUAGENAME(LA.LANGUAGE_CODE)', 'C', '��.��.', '��.��.', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('012', '02', 'OK_SERVICE.GET_LEVELNAME(LA.LEVEL_CODE)', 'C', '��.������ ��.��.', '��.������ ��.��.', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '01', 'OK_SERVICE.GET_LEAVENAME(LE.LEAVE_CODE)', 'C', '��� �������', '��� �������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '02', 'LE.BEGIN_YEAR', 'D', '������� ���-������', '������� ���-������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '03', 'LE.END_YEAR', 'D', '������� ���-���������', '������� ���-���������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '04', 'LE.PERIOD_LEAVE', 'C', '���������� ���� �������', '���������� ���� �������', 3, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '05', 'LE.DATE_IN_LEAVE', 'D', '���� ������ � ������', '���� ������ � ������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '06', 'LE.DATE_OUT_LEAVE', 'D', '���� ������ �� �������', '���� ������ �� �������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '07', 'LE.MOTIVE_LEAVE', 'C', '�������/��������� ������ � ������', '�������/��������� ������ � ������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '08', 'LE.NUM_BASIS', 'C', '����� �������/���������', '����� �������/���������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '09', 'LE.DATE_BASIS', 'D', '���� �������/���������', '���� �������/���������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '01', 'OK_SERVICE.GET_PARTYNAME(PA.PARTY_CODE)', 'C', '������', '������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '02', 'PA.OUT_PARTY', 'C', '������� ������ �� ������', '������� ������ �� ������', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '03', 'PA.PARTY_DATE', 'C', '��� ���������� � ������', '��� ���������� � ������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '04', 'PA.PARTY_OUTDATE', 'C', '��� ������ �� ������', '��� ������ �� ������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '05', 'PA.PUNISHMENT_MOTIVE', 'C', '������� ���������� ���������', '������� ���������� ���������', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '06', 'PA.PUNISHMENT_DATE', 'C', '���� ���������� ���������', '���� ���������� ���������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('015', '01', 'OK_SERVICE.GET_PENALTYNAME(PE.PENALTY_CODE)', 'C', '���������', '���������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('015', '02', 'PE.PENALTY_MOTIVE', 'C', '������� ���������', '������� ���������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('015', '03', 'PE.PENALTY_DATE', 'D', '���� ��������� ���������', '���� ��������� ���������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('015', '04', 'PE.PENALTY_NUM', 'C', '����� ���������', 'N ���������', 5, null, null, null);

insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '01', 'PR.IN_OFFICE_DATE', 'D', '���� �����������', '���� �����������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '02', 'PR.OUT_OFFICE_DATE', 'D', '���� ����������', '���� ����������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '03', 'PR.OFFICE_NAME', 'C', '������������ �����������', '������������ �����������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '04', 'PR.OFFICE_ADDRESS', 'C', '����� �����������', '����� �����������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '05', 'PR.ESTABLISHED_POST', 'C', '���������� ���������', '���������� ���������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '06', 'OK_SERVICE.GET_TYPEPERIODNAME(PR.TYPE_PERIOD_CODE)', 'C', '��� �����', '��� �����', 25, null, null, null);

insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '07', 'OK_SERVICE.GET_ARTICLENUM(PR.ARTICLE_CODE)', 'C', '����� ������', '����� ������', 7, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '08', 'OK_SERVICE.GET_ARTICLENAME(PR.ARTICLE_CODE)', 'C', '�������� ������', '�������� ������', 7, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '09', 'PR.ARTICLE_CODE', 'C', '��� ������', '��� ������', 7, null, null, null);


insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '10', 'PR.BASIS_NUM', 'C', '����� �������/���������', '����� �������/���������', 7, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '11', 'PR.BASIS_DATE', 'D', '���� �������/���������', '���� �������/���������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '12', 'OK_SERVICE.GET_BASEMOVENAME(PR.BASE_MOVE_CODE)', 'C', '������� �����������', '������� �����������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '13', 'ESTABLISHED_DEPARTMENT', 'C', '������������ ������', '������������ ������', 15, null, null, null);

insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('017', '01', 'OK_SERVICE.GET_YOUTHNAME(YO.YOUTH_CODE)', 'C', '���������� �����������', '���������� �����������', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('017', '02', 'YO.IN_DATE', 'D', '���� ����������', '���� ����������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('017', '03', 'YO.OUT_DATE', 'D', '���� ������', '���� ������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('018', '01', 'PM.PREMIUM_DATE', 'C', '���� ��������� ������', '���� ��������� ������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('018', '02', 'PM.PREMIUM_NAME', 'C', '������������ ������', '������������ ������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '01', 'OK_SERVICE.GET_RELATIONNAME(RE.RELATION_CODE)', 'C', '����������� ���������', '����������� ���������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '02', 'RE.RELATION_FAMILY', 'C', '������� ������������', '������� ������������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '03', 'RE.RELATION_NAME', 'C', '��� ������������', '��� ������������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '04', 'RE.RELATION_PATRONYMIC', 'C', '�������� ������������', '�������� ������������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '05', 'RE.RELATION_BIRTHDAY', 'C', '��� �������� ������������', '��� �������� ������������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '06', 'RE.RELATION_BIRTHPLACE', 'C', '����� �������� ������������', '����� �������� ������������', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '07', 'RE.RELATION_OFFICE', 'C', '����� ������ ������������', '����� ������ ������������', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '08', 'RE.RELATION_POST', 'C', '���������� ��������� ������������', '���������� ��������� ������������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '09', 'RE.RELATION_HOME_ADDRESS', 'C', '����� ���������� ������������', '����� ���������� ������������', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('020', '01', 'RI.RISE_DATE_YEAR', 'C', '��� ����������� ��������� ������������', '��� ����������� ��������� ������������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('020', '02', 'RI.RISE_INFO', 'C', '�������� � ��������� ������������', '�������� � ��������� ������������', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('021', '01', 'SC.SCIENTIFIC_INFO', 'C', '�������� � ������� ������', '�������� � ������� ������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('021', '02', 'SC.SCIENTIFIC_DATE', 'C', '���� ��������� �.�.(���)', '���� ��������� �.�.(���)', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('022', '01', 'VO.VOYAGE_DATE', 'C', '���� ������(���)', '���� ������(���)', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('022', '02', 'VO.VOYAGE_LAND', 'C', '������ ������', '������ ������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('022', '03', 'VO.VOYAGE_INFO', 'C', '�������� � ���������� �������', '�������� � ���������� �������', 25, null, null, null);

insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '01', 'KU.FIO', 'C', '���', '���', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '02', 'KU.KV_KURS_CODE', 'N', '��� ������', '��� ������', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '03', 'KUKU.KV_KURS_NAME', 'C', '������������', '������������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '04', 'KUKU.KV_ORGANIZER', 'C', '�����������', '�����������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '05', 'KUKU.KV_PLACE', 'C', '����� ����������', '����� ����������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '06', 'ok_service.GET_S_STR(KUKU.CODE_STR)', 'C', '������', '������', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '07', 'KUKU.KV_NUMBER_PERS', 'C', '���������� ����������', '���������� ����������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '08', 'KUKU.DATE_OPEN', 'D', '������', '���� ������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '09', 'KUKU.DATE_CLOSE', 'D', '����������', '����������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '10', 'KUKU.NUMBER_DAY', 'C', '���-�� ����', '���-�� ����', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '11', 'KUKU.PAY_SUM', 'C', '������ �� ��������� ��� �������', '������ �� ��������� ��� �������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '12', 'KUKU.PAY_SUM_TRENER', 'C', '������ ��������', '������ ��������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '13', 'KUKU.ORDER_NUM', 'C', '����� �������', '����� �������', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '14', 'KUKU.ORDER_DATE', 'D', '���� �������', '���� �������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '15', 'ok_service.GET_PROFMEMBERNAME(KUKU.ORDER_BUSINESS_VOYAGE)', 'C', '������������', '������������', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '16', 'ok_service.GET_ORG_BUSINESS_VOYAGE(KUKU.ORG_BUSINESS_VOYAGE_CODE)', 'C', '����������� ������������', '����������� ������������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '17', 'ok_service.GET_THEME_BUSINESS_VOYAGE(KUKU.THEME_BUSINESS_VOYAGE_CODE)', 'C', '���� ������������', '���� ������������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '18', 'KUKU.PRIM', 'C', '����������', '����������', 150, null, null, null);

insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '01', 'ok_service.get_hospital(HO.HOSPITAL_CODE)', 'C', '���', '���', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '02', 'HO.HOSPITAL_DOC', 'C', '�����', '�����', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '03', 'HO.DATE_OPEN', 'D', '���� ��������', '���� ��������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '04', 'HO.DATE_CLOSE', 'D', '���� ��������', '���� ��������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '05', 'HO.NUMBER_DAY', 'C', '���-�� ����', '���-�� ����', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '06', 'HO.WORK_PERIOD', 'C', '����', '����', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '07', 'HO.PERCENTAGE', 'C', '�������', '�������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '08', 'HO.DIAGNOSIS', 'C', '�������', '�������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '09', 'HO.DATE_HOSPITAL', 'D', '���� ������ �����������', '���� ������ �����������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '10', 'HO.PRIM_HOSPITAL', 'C', '����� ������ �����������', '����� ������ �����������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '11', 'HO.SHIFR', 'C', '����', '����', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '12', 'HO.PRIM', 'C', '����������', '����������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('025', '01', 'OK_SERVICE.get_PRIVILEGE(PI.PRIVILEGE_CODE)', 'C', '��� ������', '��� ������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('025', '02', 'PI.PRIVILEGE_DOC', 'C', '��������-��������� ������', '��������-��������� ������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '03', 'II.RAZN', 'C', '�����', '�����', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('025', '03', 'PI.DATE_OPEN', 'D', '���� ������ ��������', '���� ������ ��������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('025', '04', 'PI.DATE_CLOSE', 'D', '���� ���������� ��������', '���� ���������� ��������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('025', '05', 'PI.PRIM', 'C', '����������', '����������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '01', 'ok_service.GET_INCREASE(II.INCREASE_CODE)', 'C', '��� ��������', '��� ��������', 100, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '02', 'II.INCREASE_PERCENTAGE', 'C', '�������', '�������', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '04', 'II.DATE_OPEN', 'D', '���� ������', '���� ������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '05', 'II.DATE_CLOSE', 'D', '���� ���������', '���� ���������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '06', 'II.ORDER_NUM', 'C', '����� �������', '����� �������', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '07', 'II.ORDER_DATE', 'D', '���� �������', '���� �������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '08', 'II.PRIM', 'C', '����������', '����������', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '01', 'ok_service.GET_KV_KURS(BV.KV_KURS_CODE)', 'C', '����', '����', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '02', 'BV.DATE_OPEN', 'D', '���� ��������', '���� ��������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '03', 'BV.DATE_CLOSE', 'D', '���� ��������', '���� ��������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '04', 'BV.NUMBER_DAY', 'C', '���-�� ����', '���-�� ����', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '05', 'ok_service.GET_ORG_BUSINESS_VOYAGE(BV.ORG_BUSINESS_VOYAGE_CODE)', 'C', '�����������', '�����������', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '06', 'ok_service.GET_THEME_BUSINESS_VOYAGE(BV.THEME_BUSINESS_VOYAGE_CODE)', 'C', '����', '����', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '07', 'ok_service.GET_S_STR(BV.CODE_STR)', 'C', '������', '������', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '08', 'BV.ORDER_NUM', 'C', '����� �������', '����� �������', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '09', 'BV.ORDER_DATE', 'D', '���� �������', '���� �������', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '10', 'BV.PRIM', 'C', '����������', '����������', 150, null, null, null);
commit;
prompt  records loaded
set feedback on
set define on
prompt Done.
