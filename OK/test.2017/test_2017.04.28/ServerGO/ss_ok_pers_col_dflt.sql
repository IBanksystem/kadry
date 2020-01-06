
prompt Loading SS_OK_PERS_COL_DFLT...
delete from SS_OK_PERS_COL_DFLT;
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '01', 'PP.BRANCH', 'C', 'МФО', 'МФО', 5, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '02', 'OK_SERVICE.GET_STATUSNAME(PP.STATUS_CODE)', 'C', 'Статус', 'Статус', 6, null, 'select to_char(status_code) id, status_name name from ss_ok_status', 'PP.STATUS_CODE');

insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '03', 'PP.DEPARTMENT_CODE', 'C', 'Код Отдела', 'Код Отдела', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '04', 'OK_SERVICE.GET_DEPARTMENTNAME(PP.DEPARTMENT_CODE)', 'C', 'Отдел', 'Отдел', 9, null, 'select to_char(department_code) id, department_name name from ss_ok_department where state_notes=''A'' ', 'PP.DEPARTMENT_CODE');

insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '05', 'PP.POST_CODE', 'C', 'Код Должности', 'Код Должности', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '06', 'OK_SERVICE.GET_POSTNAME(PP.POST_CODE)', 'C', 'Должность', 'Должность', 9, null, null, 'PP.POST_CODE');

insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '07', 'PP.SPECIAL_CODE', 'C', 'Код Специализации', 'Код Специализации', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '08', 'OK_SERVICE.GET_SPECIALNAME(PP.SPECIAL_CODE)', 'C', 'Специализация', 'Специализация', 13, null, null, 'PP.SPECIAL_CODE');

insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '09', 'PP.FAMILY', 'C', 'Фамилия', 'Фамилия', 20, null, null, 'PP.FAMILY');
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '10', 'PP.FIRST_NAME', 'C', 'Имя', 'Имя', 20, null, null, 'PP.FIRST_NAME');
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '11', 'PP.PATRONYMIC', 'C', 'Отчество', 'Отчество', 20, null, null, 'PP.PATRONYMIC');
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '12', 'OK_SERVICE.GET_GENDERNAME(PP.GENDER_CODE)', 'C', 'Пол', 'Пол', 3, null, 'select to_char(gender_code) id,gender_name name from ss_ok_gender', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '13', 'PP.BIRTHDAY', 'D', 'День рождения', 'День рожд.', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '14', 'OK_SERVICE.GET_REGIONNAME(PP.REGION_ID)', 'C', 'Место рождения (область)', 'Место рождения (обл)', 20, null, 'select region_id id,region_nam name from s_region', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '15', 'OK_SERVICE.GET_DISTRNAME(PP.DISTR)', 'C', 'Место рождения (город)', 'Место рождения (город)', 20, null, 'select distr id, distr_name name from s_distr', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '16', 'OK_SERVICE.GET_BIRTHPLACE(PP.BIRTHPLACE,PP.REGION_ID,PP.DISTR)', 'C', 'Место рождения (обл,город или не Узбекистан)', 'Место рождения', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '17', 'PP.BIRTHPLACE', 'C', 'Место рождения (иностр)', 'Место рождения (иностр)', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '18', 'OK_SERVICE.GET_NATIONALITYNAME(PP.NATIONALITY_CODE)', 'C', 'Национальность', 'Национальность', 10, null, 'select to_char(nationality_code) id, nationality_name name from ss_ok_nationality where state_notes=''A'' ', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '19', 'OK_SERVICE.GET_FAMILYSTATUSNAME(PP.FAMILY_STATUS_CODE)', 'C', 'Семейное положение', 'Семейное положение', 10, null, 'select family_status_code id, family_status_name name from ss_ok_family_status', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '20', 'OK_SERVICE.GET_REGTYPENAME(PP.REG_TYPE_CODE)', 'C', 'Тип прописки', 'Прописка', 10, null, 'select reg_type_code id, reg_type_name name from ss_ok_reg_type', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '21', 'OK_SERVICE.GET_REGIONNAME(PP.HOME_ADDRESS_REGION_ID)||'' ''||OK_SERVICE.GET_DISTRNAME(PP.HOME_ADDRESS_DISTR)||'' ''||PP.HOME_ADDRESS', 'C', 'Полный домашний адрес (прописка)', 'Полный домашний адрес (прописка)', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '22', 'OK_SERVICE.GET_REGIONNAME(PP.HOME_ADDRESSFACT_REGION_ID)||'' ''||OK_SERVICE.GET_DISTRNAME(PP.HOME_ADDRESSFACT_DISTR)||'' ''||PP.HOME_ADDRESSFACT', 'C', 'Фактическое место проживания', 'Фактическое место проживания', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '23', 'PP.PASS_SERIYA', 'C', 'Серия паспорта', 'Серия паспорта', 2, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '24', 'PP.PASS_NUM', 'C', 'Номер паспорта', 'N паспорта', 7, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '25', 'PP.PASS_DATE', 'D', 'Дата выдачи паспорта', 'Дата выдачи паспорта', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '26', 'OK_SERVICE.GET_DISTRNAME(PP.COD_DISTR_UVD)', 'C', 'Место выдачи паспорта', 'Место выдачи паспорта', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '27', 'OK_SERVICE.GET_REGPLACENAME(PP.REGPLACE_CODE)', 'C', 'Место выдачи паспорта (спр)', 'Место выдачи паспорта', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '28', 'PP.PASS_DATE_END', 'D', 'Паспорт Действителен До', 'Паспорт Действителен До', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '29', 'PP.RECORD_BOOK_SERIES', 'C', 'Серия трудовой книжки', 'Серия трудовой книжки', 5, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '30', 'PP.RECORD_BOOK_NUMBER', 'C', 'Номер трудовой книжки', 'N трудовой книжки', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '31', 'PP.TELEFON', 'C', 'Телефон', 'Телефон', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '32', 'OK_SERVICE.GET_PROFMEMBERNAME(PP.PROFMEMBER)', 'C', 'Профсоюз', 'Профсоюз', 3, null, 'select profmember_code id, profmember_name name from ss_ok_profmember', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '33', 'OK_SERVICE.GET_EDUCATIONTITLENAME(PP.EDUCATION_TITLE_CODE)', 'C', 'Образование', 'Образование', 10, null, 'select to_char (EDUCATION_TITLE_CODE) id, EDUCATION_TITLE_NAME name from SS_OK_EDUCATION_TITLE', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '34', 'PP.TABNO', 'C', 'Табельный номер', 'Табельный номер', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '35', 'PP.NPS_ID', 'C', 'Пенсионный ИН', 'Пенсионный ИН', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '36', 'PP.INN', 'C', 'ИНН', 'ИНН', 9, null, null, null);

insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('001', '37', 'PP.PERSONAL_CODE', 'C', 'Персонал Код', 'Персонал Код', 9, null, null, null);


insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('002', '01', 'OK_SERVICE.GET_ACADEMICNAME(AC.ACADEMIC_CODE)', 'C', 'Ученое звание', 'Ученое звание', 15, null, 'select to_char(academic_code) id, academic_name name from ss_ok_academic where state_notes=''A'' ', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('002', '02', 'AC.ACADEMIC_DATE', 'D', 'Дата получения ученого звания', 'Дата получения ученого звания', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('003', '01', 'AD.CHARACTER_ADDINFORM', 'C', 'Дополнительные сведения', 'Доп.сведения', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('003', '02', 'AD.ADDINFORM_DATE', 'D', 'Дата ввода дополнительных сведений', 'Дата ввода доп.сведений', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '01', 'ok_service.get_armytype(AR.ARMY_CODE)', 'C', 'Отношение к военной службе', 'Отношение к ВС', 20, null, 'select to_char(ARMY_code) id,ARMY_TYPE name from SS_OK_ARMY', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '02', 'ok_service.get_fitnessarmytype(AR.FITNESS_ARMY_CODE)', 'C', 'Годность к службе', 'Годность к ВС', 8, null, 'select to_char(FITNESS_ARMY_code) id,FITNESS_ARMY_TYPE name from SS_OK_ARMY', null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '03', 'ok_service.get_staffname(AR.STAFF_CODE)', 'C', 'Вид состава', 'Вид состава', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '04', 'ok_service.get_typeforcename(AR.TYPE_FORCE_CODE)', 'C', 'Род войск', 'Род войск', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '05', 'ok_service.get_armygroupname(AR.ARMY_GROUP_CODE)', 'C', 'Группа учета', 'Гр.учета', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '06', 'ok_service.get_categoryarmyname(AR.CATEGORY_ARMY_CODE)', 'C', 'Категория учета', 'Категория учета', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '07', 'AR.SPECIAL_ARMY', 'C', 'Воинская Специальность', 'Воинская Спец-ть', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '08', 'ok_service.get_militaryrankname(AR.MILITARY_RANK_CODE)', 'C', 'Воинское звание', 'Воинское звание', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '09', 'AR.NUMBER_VUS', 'C', 'Номер военной учетной специальности (ВУС)', 'N ВУС', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '10', 'AR.CODE_ARMY_POST', 'C', 'Код должности и особые признаки военной службы', 'Код должности и особые признаки военной службы', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '11', 'AR.NAME_ARMY_OFFICE', 'C', 'Военкомат', 'Военкомат', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('004', '12', 'AR.SPECREG_NUMBER', 'C', 'Состоит на спецучете N', 'Состоит на спецучете N', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('005', '01', 'AA.NUM_ATTESTATION', 'C', 'Номер удостоверения аттестации', 'N уд-я атт', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('005', '02', 'AA.DATE_ATTESTATION', 'D', 'Дата прохождения аттестации', 'Дата прохождения аттестации', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('006', '01', 'AW.AWARD_DATE', 'N', 'Дата получения награды(год)', 'Дата получения награды(год)', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('006', '02', 'AW.AWARD_INFO', 'C', 'Сведения о наградах', 'Сведения о наградах', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('007', '01', 'CH.FAMILY', 'C', 'Фамилия сотрудника', 'Фамилия сотрудника', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('007', '02', 'CH.FIRST_NAME', 'C', 'Имя сотрудника', 'Имя сотрудника', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('007', '03', 'CH.PATRONYMIC', 'C', 'Отчество сотрудника', 'Отчество сотрудника', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('007', '04', 'CH.CHANGE_DATE', 'D', 'Дата изменения ФИО', 'Дата изм.ФИО', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('007', '05', 'CH.CHANGE_MOTIVE', 'C', 'Причина изменения ФИО', 'Причина изменения ФИО', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('008', '01', 'CO.CONVICTIONS_MOTIVE', 'C', 'Причина привлечения', 'Причина привлечения', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('008', '02', 'CO.CONVICTIONS_DATE', 'D', 'Дата привлечения', 'Дата привлечения', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('009', '01', 'OK_SERVICE.GET_DEGREENAME(DE.DEGREE_CODE)', 'C', 'Ученая степень', 'Ученая степень', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('009', '02', 'DE.DEGREE_DATE', 'D', 'Дата получения ученой степени', 'Дата получения ученой степени', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '01', 'OK_SERVICE.GET_EDUCATIONNAME(ED.EDUCATION_CODE)', 'C', 'Образование', 'Образование', 11, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '02', 'OK_SERVICE.GET_BASISNAME(ED.BASIS_CODE)', 'C', 'Базовое образование', 'Базовое образование', 11, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '03', 'OK_SERVICE.GET_INSTITUTIONNAME(ED.INSTITUTION_CODE)', 'C', 'Учебное заведение', 'Учебное заведение', 11, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '04', 'ED.BEGIN_DATE', 'C', 'Дата поступления в учебное заведение', 'Дата поступления в учебное заведение', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '05', 'ED.END_DATE', 'C', 'Дата окончания учебного заведения', 'Дата окончания учебного заведения', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '06', 'ED.PROFESSION_PERSONAL', 'C', 'Специальность по диплому', 'Специальность по диплому', 12, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '07', 'OK_SERVICE.GET_QUALIFICATIONNAME(ED.QUALIFICATION_CODE)', 'C', 'Квалификация', 'Квалификация', 12, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '08', 'ED.DIPLOM_NUM', 'C', 'Номер диплома или удостоверения', 'N диплома', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '09', 'ED.COD_VUZ_PRIM', 'C', 'Примечание', 'Примечание', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '10', 'ED.CURS', 'C', 'Курс', 'Курс', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '11', 'ED.FAKULTET', 'C', 'Факультет', 'Факультет', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '12', 'ED.NOSTRA', 'C', 'Ностра', 'Ностра', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '13', 'ED.NOSTRA_SERIES', 'C', 'серия Ностра', 'серия Ностра', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '14', 'ED.NOSTRA_NUMBER', 'C', 'номер Ностра', 'номер Ностра', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('010', '15', 'ED.NOSTRA_DATE', 'C', 'дата Ностра', 'дата Ностра', 10, null, null, null);


insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('011', '01', 'OK_SERVICE.GET_ELECTIONADDRESS(EL.ELECTION_CODE)', 'C', 'Адрес исполнительного органа', 'Адрес исполнительного органа', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('011', '02', 'OK_SERVICE.GET_ELECTIONNAME(EL.ELECTION_CODE)', 'C', 'Наименование исполнительного органа', 'Наименование исполнительного органа', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('011', '03', 'EL.ELECTION_POST', 'C', 'Кем был избран', 'Кем был избран', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('011', '04', 'EL.ELECTION_DATE_BEGIN', 'C', 'Дата избрания', 'Дата избрания', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('011', '05', 'EL.ELECTION_DATE_END', 'C', 'Дата окончания срока избрания', 'Дата окончания срока избрания', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('012', '01', 'OK_SERVICE.GET_LANGUAGENAME(LA.LANGUAGE_CODE)', 'C', 'Ин.Яз.', 'Ин.Яз.', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('012', '02', 'OK_SERVICE.GET_LEVELNAME(LA.LEVEL_CODE)', 'C', 'Ур.знания Ин.Яз.', 'Ур.знания Ин.Яз.', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '01', 'OK_SERVICE.GET_LEAVENAME(LE.LEAVE_CODE)', 'C', 'Вид отпуска', 'Вид отпуска', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '02', 'LE.BEGIN_YEAR', 'D', 'Рабочий год-начало', 'Рабочий год-начало', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '03', 'LE.END_YEAR', 'D', 'Рабочий год-окончание', 'Рабочий год-окончание', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '04', 'LE.PERIOD_LEAVE', 'C', 'Количество дней отпуска', 'Количество дней отпуска', 3, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '05', 'LE.DATE_IN_LEAVE', 'D', 'Дата выхода в отпуск', 'Дата выхода в отпуск', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '06', 'LE.DATE_OUT_LEAVE', 'D', 'Дата выхода из отпуска', 'Дата выхода из отпуска', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '07', 'LE.MOTIVE_LEAVE', 'C', 'Причина/основание выхода в отпуск', 'Причина/основание выхода в отпуск', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '08', 'LE.NUM_BASIS', 'C', 'Номер приказа/основания', 'Номер приказа/основания', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('013', '09', 'LE.DATE_BASIS', 'D', 'Дата приказа/основания', 'Дата приказа/основания', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '01', 'OK_SERVICE.GET_PARTYNAME(PA.PARTY_CODE)', 'C', 'Партия', 'Партия', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '02', 'PA.OUT_PARTY', 'C', 'Причина выхода из партии', 'Причина выхода из партии', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '03', 'PA.PARTY_DATE', 'C', 'Год вступления в партию', 'Год вступления в партию', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '04', 'PA.PARTY_OUTDATE', 'C', 'Год выхода из партии', 'Год выхода из партии', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '05', 'PA.PUNISHMENT_MOTIVE', 'C', 'Причина партийного наказания', 'Причина партийного наказания', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('014', '06', 'PA.PUNISHMENT_DATE', 'C', 'Дата партийного наказания', 'Дата партийного наказания', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('015', '01', 'OK_SERVICE.GET_PENALTYNAME(PE.PENALTY_CODE)', 'C', 'Взыскание', 'Взыскание', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('015', '02', 'PE.PENALTY_MOTIVE', 'C', 'Причина Взыскания', 'Причина Взыскания', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('015', '03', 'PE.PENALTY_DATE', 'D', 'Дата получения Взыскания', 'Дата получения Взыскания', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('015', '04', 'PE.PENALTY_NUM', 'C', 'Номер протокола', 'N протокола', 5, null, null, null);

insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '01', 'PR.IN_OFFICE_DATE', 'D', 'Дата поступления', 'Дата поступления', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '02', 'PR.OUT_OFFICE_DATE', 'D', 'Дата увольнения', 'Дата увольнения', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '03', 'PR.OFFICE_NAME', 'C', 'Наименование организации', 'Наименование организации', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '04', 'PR.OFFICE_ADDRESS', 'C', 'Адрес организации', 'Адрес организации', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '05', 'PR.ESTABLISHED_POST', 'C', 'Занимаемая должность', 'Занимаемая должность', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '06', 'OK_SERVICE.GET_TYPEPERIODNAME(PR.TYPE_PERIOD_CODE)', 'C', 'Тип стажа', 'Тип стажа', 25, null, null, null);

insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '07', 'OK_SERVICE.GET_ARTICLENUM(PR.ARTICLE_CODE)', 'C', 'Номер статьи', 'Номер статьи', 7, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '08', 'OK_SERVICE.GET_ARTICLENAME(PR.ARTICLE_CODE)', 'C', 'Название статьи', 'Название статьи', 7, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '09', 'PR.ARTICLE_CODE', 'C', 'Код статьи', 'Код статьи', 7, null, null, null);


insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '10', 'PR.BASIS_NUM', 'C', 'Номер приказа/основания', 'Номер приказа/основания', 7, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '11', 'PR.BASIS_DATE', 'D', 'Дата приказа/основания', 'Дата приказа/основания', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '12', 'OK_SERVICE.GET_BASEMOVENAME(PR.BASE_MOVE_CODE)', 'C', 'Причина перемещения', 'Причина перемещения', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('016', '13', 'ESTABLISHED_DEPARTMENT', 'C', 'Наименование отдела', 'Наименование отдела', 15, null, null, null);

insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('017', '01', 'OK_SERVICE.GET_YOUTHNAME(YO.YOUTH_CODE)', 'C', 'Молодежная организация', 'Молодежная организация', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('017', '02', 'YO.IN_DATE', 'D', 'Дата вступления', 'Дата вступления', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('017', '03', 'YO.OUT_DATE', 'D', 'Дата выхода', 'Дата выхода', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('018', '01', 'PM.PREMIUM_DATE', 'C', 'Дата получения премии', 'Дата получения премии', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('018', '02', 'PM.PREMIUM_NAME', 'C', 'Наименование премии', 'Наименование премии', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '01', 'OK_SERVICE.GET_RELATIONNAME(RE.RELATION_CODE)', 'C', 'Родственное отношение', 'Родственное отношение', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '02', 'RE.RELATION_FAMILY', 'C', 'Фамилия родственника', 'Фамилия родственника', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '03', 'RE.RELATION_NAME', 'C', 'Имя родственника', 'Имя родственника', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '04', 'RE.RELATION_PATRONYMIC', 'C', 'Отчество родственника', 'Отчество родственника', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '05', 'RE.RELATION_BIRTHDAY', 'C', 'Год рождения родственника', 'Год рождения родственника', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '06', 'RE.RELATION_BIRTHPLACE', 'C', 'Место рождения родственника', 'Место рождения родственника', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '07', 'RE.RELATION_OFFICE', 'C', 'Место работы родственника', 'Место работы родственника', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '08', 'RE.RELATION_POST', 'C', 'Занимаемая должность родственника', 'Занимаемая должность родственника', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('019', '09', 'RE.RELATION_HOME_ADDRESS', 'C', 'Место жительства родственника', 'Место жительства родственника', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('020', '01', 'RI.RISE_DATE_YEAR', 'C', 'Год прохождения повышения квалификации', 'Год прохождения повышения квалификации', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('020', '02', 'RI.RISE_INFO', 'C', 'Сведения о повышении квалификации', 'Сведения о повышении квалификации', 25, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('021', '01', 'SC.SCIENTIFIC_INFO', 'C', 'Сведения о научной работе', 'Сведения о научной работе', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('021', '02', 'SC.SCIENTIFIC_DATE', 'C', 'Дата написания н.р.(год)', 'Дата написания н.р.(год)', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('022', '01', 'VO.VOYAGE_DATE', 'C', 'Дата выезда(год)', 'Дата выезда(год)', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('022', '02', 'VO.VOYAGE_LAND', 'C', 'Страна выезда', 'Страна выезда', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('022', '03', 'VO.VOYAGE_INFO', 'C', 'Сведения о зарубежной поездке', 'Сведения о зарубежной поездке', 25, null, null, null);

insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '01', 'KU.FIO', 'C', 'ФИО', 'ФИО', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '02', 'KU.KV_KURS_CODE', 'N', 'Код курсов', 'Код курсов', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '03', 'KUKU.KV_KURS_NAME', 'C', 'Наименование', 'Наименование', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '04', 'KUKU.KV_ORGANIZER', 'C', 'Организатор', 'Организатор', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '05', 'KUKU.KV_PLACE', 'C', 'Место проведения', 'Место проведения', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '06', 'ok_service.GET_S_STR(KUKU.CODE_STR)', 'C', 'Страна', 'Страна', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '07', 'KUKU.KV_NUMBER_PERS', 'C', 'Количество участников', 'Количество участников', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '08', 'KUKU.DATE_OPEN', 'D', 'Начало', 'дата Начало', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '09', 'KUKU.DATE_CLOSE', 'D', 'Завершение', 'Завершение', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '10', 'KUKU.NUMBER_DAY', 'C', 'Кол-во дней', 'Кол-во дней', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '11', 'KUKU.PAY_SUM', 'C', 'Оплата за помещение или тренинг', 'Оплата за помещение или тренинг', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '12', 'KUKU.PAY_SUM_TRENER', 'C', 'Оплата тренерам', 'Оплата тренерам', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '13', 'KUKU.ORDER_NUM', 'C', 'Номер приказа', 'Номер приказа', 15, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '14', 'KUKU.ORDER_DATE', 'D', 'Дата приказа', 'Дата приказа', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '15', 'ok_service.GET_PROFMEMBERNAME(KUKU.ORDER_BUSINESS_VOYAGE)', 'C', 'Командировка', 'Командировка', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '16', 'ok_service.GET_ORG_BUSINESS_VOYAGE(KUKU.ORG_BUSINESS_VOYAGE_CODE)', 'C', 'Организатор командировки', 'Организатор командировки', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '17', 'ok_service.GET_THEME_BUSINESS_VOYAGE(KUKU.THEME_BUSINESS_VOYAGE_CODE)', 'C', 'Тема командировки', 'Тема командировки', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('023', '18', 'KUKU.PRIM', 'C', 'Примечание', 'Примечание', 150, null, null, null);

insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '01', 'ok_service.get_hospital(HO.HOSPITAL_CODE)', 'C', 'Вид', 'Вид', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '02', 'HO.HOSPITAL_DOC', 'C', 'номер', 'номер', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '03', 'HO.DATE_OPEN', 'D', 'Дата открытия', 'Дата открытия', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '04', 'HO.DATE_CLOSE', 'D', 'Дата закрытия', 'Дата закрытия', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '05', 'HO.NUMBER_DAY', 'C', 'Кол-во дней', 'Кол-во дней', 4, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '06', 'HO.WORK_PERIOD', 'C', 'стаж', 'стаж', 30, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '07', 'HO.PERCENTAGE', 'C', 'Процент', 'Процент', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '08', 'HO.DIAGNOSIS', 'C', 'Диагноз', 'Диагноз', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '09', 'HO.DATE_HOSPITAL', 'D', 'дата выдачи больничного', 'дата выдачи больничного', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '10', 'HO.PRIM_HOSPITAL', 'C', 'место выдачи больничного', 'место выдачи больничного', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '11', 'HO.SHIFR', 'C', 'Шифр', 'Шифр', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('024', '12', 'HO.PRIM', 'C', 'Примечание', 'Примечание', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('025', '01', 'OK_SERVICE.get_PRIVILEGE(PI.PRIVILEGE_CODE)', 'C', 'Вид льготы', 'Вид льготы', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('025', '02', 'PI.PRIVILEGE_DOC', 'C', 'Документ-основание льготы', 'Документ-основание льготы', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '03', 'II.RAZN', 'C', 'Сумма', 'Сумма', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('025', '03', 'PI.DATE_OPEN', 'D', 'Дата начала действия', 'Дата начала действия', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('025', '04', 'PI.DATE_CLOSE', 'D', 'Дата завершения действия', 'Дата завершения действия', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('025', '05', 'PI.PRIM', 'C', 'Примечание', 'Примечание', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '01', 'ok_service.GET_INCREASE(II.INCREASE_CODE)', 'C', 'Вид надбавки', 'Вид надбавки', 100, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '02', 'II.INCREASE_PERCENTAGE', 'C', 'Процент', 'Процент', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '04', 'II.DATE_OPEN', 'D', 'Дата начала', 'Дата начала', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '05', 'II.DATE_CLOSE', 'D', 'Дата окончания', 'Дата окончания', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '06', 'II.ORDER_NUM', 'C', 'Номер приказа', 'Номер приказа', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '07', 'II.ORDER_DATE', 'D', 'Дата приказа', 'Дата приказа', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('026', '08', 'II.PRIM', 'C', 'Примечание', 'Примечание', 150, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '01', 'ok_service.GET_KV_KURS(BV.KV_KURS_CODE)', 'C', 'Курс', 'Курс', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '02', 'BV.DATE_OPEN', 'D', 'Дата открытия', 'Дата открытия', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '03', 'BV.DATE_CLOSE', 'D', 'Дата закрытия', 'Дата закрытия', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '04', 'BV.NUMBER_DAY', 'C', 'Кол-во дней', 'Кол-во дней', 9, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '05', 'ok_service.GET_ORG_BUSINESS_VOYAGE(BV.ORG_BUSINESS_VOYAGE_CODE)', 'C', 'Организатор', 'Организатор', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '06', 'ok_service.GET_THEME_BUSINESS_VOYAGE(BV.THEME_BUSINESS_VOYAGE_CODE)', 'C', 'Тема', 'Тема', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '07', 'ok_service.GET_S_STR(BV.CODE_STR)', 'C', 'Страна', 'Страна', 50, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '08', 'BV.ORDER_NUM', 'C', 'Номер приказа', 'Номер приказа', 20, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '09', 'BV.ORDER_DATE', 'D', 'Дата приказа', 'Дата приказа', 10, null, null, null);
insert into SS_OK_PERS_COL_DFLT (CODE_TABLE, CODE_NUM, NAME, COL_TYPE, NAME_DISPL, NAME_PAPER, LEN, CODE_LOOK_UP, SEL_SQL, REAL_NAME)
values ('027', '10', 'BV.PRIM', 'C', 'Примечание', 'Примечание', 150, null, null, null);
commit;
prompt  records loaded
set feedback on
set define on
prompt Done.
