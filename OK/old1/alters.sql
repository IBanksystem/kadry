

delete from SS_OK_PERS_COL_DFLT;

insert into SS_OK_PERS_COL_DFLT values('001','01','PP.BRANCH','C','МФО','МФО',5,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','02','OK_SERVICE.GET_STATUSNAME(PP.STATUS_CODE)','C','Статус','Статус',6,null,'select to_char(status_code) id, status_name name from ss_ok_status');
insert into SS_OK_PERS_COL_DFLT values('001','03','OK_SERVICE.GET_DEPARTMENTNAME(PP.DEPARTMENT_CODE)','C','Отдел','Отдел',9,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','04','OK_SERVICE.GET_POSTNAME(PP.POST_CODE)','C','Должность','Должность',9,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','05','PP.FAMILY','C','Фамилия','Фамилия',20,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','06','PP.FIRST_NAME','C','Имя','Имя',20,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','07','PP.PATRONYMIC','C','Отчество','Отчество',20,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','08','OK_SERVICE.GET_GENDERNAME(PP.GENDER_CODE)','C','Пол','Пол',3,null,'select to_char(gender_code) id,gender_name name from ss_ok_gender');
insert into SS_OK_PERS_COL_DFLT values('001','09','PP.BIRTHDAY','D','День рождения','День рожд.',10,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','10','OK_SERVICE.GET_REGIONNAME(PP.REGION_ID)','C','Место рождения (область)','Место рождения (обл)',20,null,'select region_id id,region_nam name from s_region');
insert into SS_OK_PERS_COL_DFLT values('001','11','OK_SERVICE.GET_DISTRNAME(PP.DISTR)','C','Место рождения (город)','Место рождения (город)',20,null,'select distr id, distr_name name from s_distr');
insert into SS_OK_PERS_COL_DFLT values('001','12','OK_SERVICE.GET_BIRTHPLACE(PP.BIRTHPLACE,PP.REGION_ID,PP.DISTR)','C','Место рождения (обл,город или не Узбекистан)','Место рождения',30,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','13','PP.BIRTHPLACE','C','Место рождения (иностр)','Место рождения (иностр)',30,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','14','OK_SERVICE.GET_NATIONALITYNAME(PP.NATIONALITY_CODE)','C','Национальность','Национальность',10,null,'select to_char(nationality_code) id, nationality_name name from ss_ok_nationality where state_notes=''A'' ');
insert into SS_OK_PERS_COL_DFLT values('001','15','OK_SERVICE.GET_FAMILYSTATUSNAME(PP.FAMILY_STATUS_CODE)','C','Семейное положение','Семейное положение',10,null,'select family_status_code id, family_status_name name from ss_ok_family_status');
insert into SS_OK_PERS_COL_DFLT values('001','16','OK_SERVICE.GET_REGTYPENAME(PP.REG_TYPE_CODE)','C','Тип прописки','Прописка',10,null,'select reg_type_code id, reg_type_name name from ss_ok_reg_type');
insert into SS_OK_PERS_COL_DFLT values('001','17','PP.HOME_ADDRESS','C','Полный домашний адрес (прописка)','Полный домашний адрес (прописка)',30,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','18','PP.HOME_ADDRESSFACT','C','Фактическое место проживания','Фактическое место проживания',30,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','19','PP.PASS_SERIYA','C','Серия паспорта','Серия паспорта',2,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','20','PP.PASS_NUM','C','Номер паспорта','N паспорта',7,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','21','PP.PASS_DATE','D','Дата выдачи паспорта','Дата выдачи паспорта',10,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','22','PP.PASS_REG','C','Место выдачи паспорта','Место выдачи паспорта',30,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','24','PP.RECORD_BOOK_SERIES','C','Серия трудовой книжки','Серия трудовой книжки',5,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','23','PP.RECORD_BOOK_NUMBER','C','Номер трудовой книжки','N трудовой книжки',10,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','25','PP.TELEFON','C','Телефон','Телефон',10,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','26','OK_SERVICE.GET_PROFMEMBERNAME(PP.PROFMEMBER)','C','Профсоюз','Профсоюз',3,null,'select profmember_code id, profmember_name name from ss_ok_profmember');
insert into SS_OK_PERS_COL_DFLT values('001','27','OK_SERVICE.GET_EDUCATIONTITLENAME(PP.EDUCATION_TITLE_CODE)','C','Образование','Образование',10,null,'select to_char (EDUCATION_TITLE_CODE) id, EDUCATION_TITLE_NAME name from SS_OK_EDUCATION_TITLE');
insert into SS_OK_PERS_COL_DFLT values('001','28','PP.TABNO','C','Табельный номер','Табельный номер',9,null,null);
insert into SS_OK_PERS_COL_DFLT values('001','29','PP.NPS_ID','C','Пенсионный ИН','Пенсионный ИН',9,null,null);

insert into SS_OK_PERS_COL_DFLT values('002','01','OK_SERVICE.GET_ACADEMICNAME(AC.ACADEMIC_CODE)','C','Ученое звание','Ученое звание',15,null,'select to_char(academic_code) id, academic_name name from ss_ok_academic where state_notes=''A'' ');
insert into SS_OK_PERS_COL_DFLT values('002','02','AC.ACADEMIC_DATE','D','Дата получения ученого звания','Дата получения ученого звания',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('003','01','AD.CHARACTER_ADDINFORM','C','Дополнительные сведения','Доп.сведения',30,null,null);
insert into SS_OK_PERS_COL_DFLT values('003','02','AD.ADDINFORM_DATE','D','Дата ввода дополнительных сведений','Дата ввода доп.сведений',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('004','01','ok_service.get_armytype(AR.ARMY_CODE)','C','Отношение к военной службе','Отношение к ВС',20,null,'select to_char(ARMY_code) id,ARMY_TYPE name from SS_OK_ARMY');
insert into SS_OK_PERS_COL_DFLT values('004','02','ok_service.get_fitnessarmytype(AR.FITNESS_ARMY_CODE)','C','Годность к службе','Годность к ВС',8,null,'select to_char(FITNESS_ARMY_code) id,FITNESS_ARMY_TYPE name from SS_OK_ARMY');
insert into SS_OK_PERS_COL_DFLT values('004','03','AR.STAFF','C','Вид состава','Вид состава',15,null,null);
insert into SS_OK_PERS_COL_DFLT values('004','04','AR.TYPE_FORCE','C','Род войск','Род войск',15,null,null);
insert into SS_OK_PERS_COL_DFLT values('004','05','AR.ARMY_GROUP','C','Группа учета','Гр.учета',15,null,null);
insert into SS_OK_PERS_COL_DFLT values('004','06','AR.CATEGORY_ARMY','C','Категория учета','Категория учета',15,null,null);
insert into SS_OK_PERS_COL_DFLT values('004','07','AR.SPECIAL_ARMY','C','Воинская Специальность','Воинская Спец-ть',15,null,null);
insert into SS_OK_PERS_COL_DFLT values('004','08','AR.MILITARY_RANK','C','Воинское звание','Воинское звание',15,null,null);
insert into SS_OK_PERS_COL_DFLT values('004','09','AR.NUMBER_VUS','C','Номер военной учетной специальности (ВУС)','N ВУС',15,null,null);
insert into SS_OK_PERS_COL_DFLT values('004','10','AR.CODE_ARMY_POST','C','Код должности и особые признаки военной службы','Код должности и особые признаки военной службы',15,null,null);
insert into SS_OK_PERS_COL_DFLT values('004','11','AR.NAME_ARMY_OFFICE','C','Военкомат','Военкомат',15,null,null);
insert into SS_OK_PERS_COL_DFLT values('004','12','AR.SPECREG_NUMBER','C','Состоит на спецучете N','Состоит на спецучете N',15,null,null);

insert into SS_OK_PERS_COL_DFLT values('005','01','AA.NUM_ATTESTATION','C','Номер удостоверения аттестации','N уд-я атт',9,null,null);
insert into SS_OK_PERS_COL_DFLT values('005','02','AA.DATE_ATTESTATION','D','Дата прохождения аттестации','Дата прохождения аттестации',10,null,null);

--OK_AWARD is AW ';
--create table OK_AWARD( -- Сведения о наградах
insert into SS_OK_PERS_COL_DFLT values('006','01','AW.AWARD_DATE','N','Дата получения награды(год)','Дата получения награды(год)',10,null,null);
insert into SS_OK_PERS_COL_DFLT values('006','02','AW.AWARD_INFO','C','Сведения о наградах','Сведения о наградах',30,null,null);


--ok_change_fio CH ';
--create table OK_CHANGE_FIO( -- 'Cведения об изменении Фамилии, Имени, Отчества'
insert into SS_OK_PERS_COL_DFLT values('007','01','CH.FAMILY','C','Фамилия сотрудника',
'Фамилия сотрудника',30,null,null);
insert into SS_OK_PERS_COL_DFLT values('007','02','CH.FIRST_NAME','C','Имя сотрудника',
'Имя сотрудника',30,null,null);
insert into SS_OK_PERS_COL_DFLT values('007','03','CH.PATRONYMIC','C','Отчество сотрудника',
'Отчество сотрудника',30,null,null);
insert into SS_OK_PERS_COL_DFLT values('007','04','CH.CHANGE_DATE','D','Дата изменения ФИО',
'Дата изм.ФИО',10,null,null);
insert into SS_OK_PERS_COL_DFLT values('007','05','CH.CHANGE_MOTIVE','C','Причина изменения ФИО',
'Причина изменения ФИО',30,null,null);

--OK_CONVICTIONS is CO ';
--create table	OK_CONVICTIONS( -- Сведения о судебной ответственности
insert into SS_OK_PERS_COL_DFLT values('008','01','CO.CONVICTIONS_MOTIVE','C','Причина привлечения',
'Причина привлечения',30,null,null);
insert into SS_OK_PERS_COL_DFLT values('008','02','CO.CONVICTIONS_DATE','D','Дата привлечения',
'Дата привлечения',10,null,null);


--OK_DEGREE is DE ';
--create table	OK_DEGREE( -- Сведения об ученых степенях
insert into SS_OK_PERS_COL_DFLT values('009','01','OK_SERVICE.GET_DEGREENAME(DE.DEGREE_CODE)','C','Ученая степень',
'Ученая степень',30,null,null);
insert into SS_OK_PERS_COL_DFLT values('009','02','DE.DEGREE_DATE','D','Дата получения ученой степени',
'Дата получения ученой степени',10,null,null);


--OK_EDUCATION ED ';
--create table	OK_EDUCATION(  -- Сведения об образовании
insert into SS_OK_PERS_COL_DFLT values('010','01','OK_SERVICE.GET_EDUCATIONNAME(ED.EDUCATION_CODE)','C','Образование',
'Образование',11,null,null);
-- SS_OK_EDUCATION

insert into SS_OK_PERS_COL_DFLT values('010','02','OK_SERVICE.GET_BASISNAME(ED.BASIS_CODE)','C','Базовое образование',
'Базовое образование',11,null,null);
--	выбирается из справочника SS_OK_BASIS  поле  BASIS_CODE,  видимое поле, обязательное для заполнения

insert into SS_OK_PERS_COL_DFLT values('010','03','OK_SERVICE.GET_INSTITUTIONNAME(ED.INSTITUTION_CODE)','C','Учебное заведение',
'Учебное заведение',11,null,null);
--	Код учебного заведения	выбирается из справочника  SS_OK_INSTITUTION  поле  INSTITUTION_CODE,в отчетную форму может выводиться и аббревиатура и полное наименование учебного заведения, видимое поле, необязательное для заполнения

insert into SS_OK_PERS_COL_DFLT values('010','04','ED.BEGIN_DATE','C','Дата поступления в учебное заведение',
'Дата поступления в учебное заведение',4,null,null);
insert into SS_OK_PERS_COL_DFLT values('010','05','ED.END_DATE','C','Дата окончания учебного заведения',
'Дата окончания учебного заведения',4,null,null);

insert into SS_OK_PERS_COL_DFLT values('010','06','ED.PROFESSION_PERSONAL','C','Специальность по диплому',
'Специальность по диплому',12,null,null);

insert into SS_OK_PERS_COL_DFLT values('010','07','OK_SERVICE.GET_QUALIFICATIONNAME(ED.QUALIFICATION_CODE)','C','Квалификация',
'Квалификация',12,null,null);
--Код квалификации по диплому	выбирается из справочника SS_OK_QUALIFICATION  поле QUALIFICATION_CODE , в отчетные формы  выводится  наименование, видимое поле, необязательное для заполнения

insert into SS_OK_PERS_COL_DFLT values('010','08','ED.DIPLOM_NUM','C','Номер диплома или удостоверения',
'N диплома',10,null,null);


--OK_ELECTION is EL ';
--'Сведения об избрании в исполнительные органы'
insert into SS_OK_PERS_COL_DFLT values('011','01','OK_SERVICE.GET_ELECTIONADDRESS(EL.ELECTION_CODE)','C','Адрес исполнительного органа',
'Адрес исполнительного органа',25,null,null);
insert into SS_OK_PERS_COL_DFLT values('011','02','OK_SERVICE.GET_ELECTIONNAME(EL.ELECTION_CODE)','C','Наименование исполнительного органа',
'Наименование исполнительного органа',25,null,null);
insert into SS_OK_PERS_COL_DFLT values('011','03','EL.ELECTION_POST','C','Кем был избран',
'Кем был избран',25,null,null);
insert into SS_OK_PERS_COL_DFLT values('011','04','EL.ELECTION_DATE_BEGIN','C','Дата избрания',
'Дата избрания',4,null,null);
insert into SS_OK_PERS_COL_DFLT values('011','05','EL.ELECTION_DATE_END','C','Дата окончания срока избрания',
'Дата окончания срока избрания',4,null,null);

--OK_LANGUAGE is LA ';
--create table	OK_LANGUAGE( --Сведения об иностранных языках
insert into SS_OK_PERS_COL_DFLT values('012','01','OK_SERVICE.GET_LANGUAGENAME(LA.LANGUAGE_CODE)','C','Ин.Яз.',
'Ин.Яз.',25,null,null);
--Код иностранного языка	Выбирается из таблицы SS_OK_LANGUAGE  поле LANGUAGE_CODE , видимое поле, обязательное для заполнения

insert into SS_OK_PERS_COL_DFLT values('012','02','OK_SERVICE.GET_LEVELNAME(LA.LEVEL_CODE)','C','Ур.знания Ин.Яз.',
'Ур.знания Ин.Яз.',25,null,null);
--	Код уровня знаний иностранного языка	 Выбирается из таблицы SS_OK_LEVEL _LANGUAGE  поле LEVEL_CODE, видимое поле, обязательное для заполнения


--OK_LEAVE is LE ';
--Отпуска
insert into SS_OK_PERS_COL_DFLT values('013','01','OK_SERVICE.GET_LEAVENAME(LE.LEAVE_CODE)','C','Вид отпуска',
'Вид отпуска',10,null,null);
--'Вид отпуска	Выбирается из таблицы SS_OK_LEAVE  поле LEAVE_CODE, видимое поле, обязательное для заполнения';

insert into SS_OK_PERS_COL_DFLT values('013','02','LE.BEGIN_YEAR','D','Рабочий год-начало',
'Рабочий год-начало',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('013','03','LE.END_YEAR','D','Рабочий год-окончание',
'Рабочий год-окончание',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('013','04','LE.PERIOD_LEAVE','C','Количество дней отпуска',
'Количество дней отпуска',3,null,null);

insert into SS_OK_PERS_COL_DFLT values('013','05','LE.DATE_IN_LEAVE','D','Дата выхода в отпуск',
'Дата выхода в отпуск',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('013','06','LE.DATE_OUT_LEAVE','D','Дата выхода из отпуска',
'Дата выхода из отпуска',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('013','07','LE.MOTIVE_LEAVE','C','Причина/основание выхода в отпуск',
'Причина/основание выхода в отпуск',15,null,null);

insert into SS_OK_PERS_COL_DFLT values('013','08','LE.NUM_BASIS','C','Номер приказа/основания',
'Номер приказа/основания',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('013','09','LE.DATE_BASIS','D','Дата приказа/основания',
'Дата приказа/основания',10,null,null);



--OK_PARTY is PA ';
--create table	OK_PARTY(
insert into SS_OK_PERS_COL_DFLT values('014','01','OK_SERVICE.GET_PARTYNAME(PA.PARTY_CODE)','C','Партия',
'Партия',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('014','02','PA.OUT_PARTY','C','Причина выхода из партии',
'Причина выхода из партии',20,null,null);

insert into SS_OK_PERS_COL_DFLT values('014','03','PA.PARTY_DATE','C','Год вступления в партию',
'Год вступления в партию',4,null,null);

insert into SS_OK_PERS_COL_DFLT values('014','04','PA.PARTY_OUTDATE','C','Год выхода из партии',
'Год выхода из партии',4,null,null);

insert into SS_OK_PERS_COL_DFLT values('014','05','PA.PUNISHMENT_MOTIVE','C','Причина партийного наказания',
'Причина партийного наказания',20,null,null);

insert into SS_OK_PERS_COL_DFLT values('014','06','PA.PUNISHMENT_DATE','C','Дата партийного наказания',
'Дата партийного наказания',4,null,null);


--OK_PENALTY is PE ';
--'Сведения о получении наказания'
insert into SS_OK_PERS_COL_DFLT values('015','01','OK_SERVICE.GET_PENALTYNAME(PE.PENALTY_CODE)',
 --	Код наказания 	выбирается из справочника SS_OK_PENALTY  поле PENALTY_CODE , в отчетные формы выводится название наказания  из справочника, видимое поле, обязательное для заполнения
'C','Взыскание',
'Взыскание',25,null,null);
 
insert into SS_OK_PERS_COL_DFLT values('015','02',
'PE.PENALTY_MOTIVE','C','Причина Взыскания',
'Причина Взыскания',25,null,null);

insert into SS_OK_PERS_COL_DFLT values('015','03','PE.PENALTY_DATE','D','Дата получения Взыскания',
'Дата получения Взыскания',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('015','04','PE.PENALTY_NUM','C','Номер протокола',
'N протокола',5,null,null);



--OK_PERIOD is PR ';
--'Сведения о предыдущих местах работы'
insert into SS_OK_PERS_COL_DFLT values('016','01','PR.IN_OFFICE_DATE','D','Дата поступления',
'Дата поступления',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('016','02','PR.OUT_OFFICE_DATE','D','Дата увольнения',
'Дата увольнения',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('016','03','PR.OFFICE_NAME','C','Наименование организации',
'Наименование организации',25,null,null);

insert into SS_OK_PERS_COL_DFLT values('016','04','PR.OFFICE_ADDRESS','C','Адрес организации',
'Адрес организации',25,null,null);

insert into SS_OK_PERS_COL_DFLT values('016','05','PR.ESTABLISHED_POST','C','Занимаемая должность',
'Занимаемая должность',25,null,null);

insert into SS_OK_PERS_COL_DFLT values('016','06','OK_SERVICE.GET_TYPEPERIODNAME(PR.TYPE_PERIOD_CODE)','C','Тип стажа',
'Тип стажа',25,null,null);

insert into SS_OK_PERS_COL_DFLT values('016','07','OK_SERVICE.GET_ARTICLENAME(PR.ARTICLE_CODE)','C','Номер статьи',
'Номер статьи',7,null,null);

insert into SS_OK_PERS_COL_DFLT values('016','08','PR.BASIS_NUM','C','Номер приказа/основания',
'Номер приказа/основания',7,null,null);

insert into SS_OK_PERS_COL_DFLT values('016','09','PR.BASIS_DATE','D','Дата приказа/основания',
'Дата приказа/основания',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('016','10','OK_SERVICE.GET_BASEMOVENAME(PR.BASE_MOVE_CODE)','C','Причина перемещения',
'Причина перемещения',15,null,null);

insert into SS_OK_PERS_COL_DFLT values('016','11','ESTABLISHED_DEPARTMENT','C','Наименование отдела',
'Наименование отдела',15,null,null);

--OK_YOUTH is YO ';
--create table	OK_YOUTH( --Членство в молодежной организации
insert into SS_OK_PERS_COL_DFLT values('017','01','OK_SERVICE.GET_YOUTHNAME(YO.YOUTH_CODE)','C','Молодежная организация',
'Молодежная организация',20,null,null);
--	Код  молод.  организации	выбирается из справочника SS_OK_YOUTH поле YOUTH_CODE , в отчетные формы выводится название орг-и из справочника, видимое поле, обязательное для заполнения

insert into SS_OK_PERS_COL_DFLT values('017','02','YO.IN_DATE','D','Дата вступления',
'Дата вступления',10,null,null);

insert into SS_OK_PERS_COL_DFLT values('017','03','YO.OUT_DATE','D','Дата выхода',
'Дата выхода',10,null,null);

--OK_PREMIUM is PM ';
--create table	OK_PREMIUM(
insert into SS_OK_PERS_COL_DFLT values('018','01','PM.PREMIUM_DATE','C','Дата получения премии',
'Дата получения премии',4,null,null);
insert into SS_OK_PERS_COL_DFLT values('018','02','PM.PREMIUM_NAME','C','Наименование премии',
'Наименование премии',25,null,null);

--OK_RELATION is RE ';
--create table OK_RELATION(

insert into SS_OK_PERS_COL_DFLT values('019','01','OK_SERVICE.GET_RELATIONNAME(RE.RELATION_CODE)','C','Родственное отношение',
'Родственное отношение',10,null,null);
insert into SS_OK_PERS_COL_DFLT values('019','02','RE.RELATION_FAMILY','C','Фамилия родственника',
'Фамилия родственника',10,null,null);
insert into SS_OK_PERS_COL_DFLT values('019','03','RE.RELATION_NAME','C','Имя родственника',
'Имя родственника',10,null,null);
insert into SS_OK_PERS_COL_DFLT values('019','04','RE.RELATION_PATRONYMIC','C','Отчество родственника',
'Отчество родственника',10,null,null);
insert into SS_OK_PERS_COL_DFLT values('019','05','RE.RELATION_BIRTHDAY','C','Год рождения родственника',
'Год рождения родственника',4,null,null);
insert into SS_OK_PERS_COL_DFLT values('019','06','RE.RELATION_BIRTHPLACE','C','Место рождения родственника',
'Место рождения родственника',20,null,null);
insert into SS_OK_PERS_COL_DFLT values('019','07','RE.RELATION_OFFICE','C','Место работы родственника',
'Место работы родственника',20,null,null);
insert into SS_OK_PERS_COL_DFLT values('019','08','RE.RELATION_POST','C','Занимаемая должность родственника',
'Занимаемая должность родственника',10,null,null);
insert into SS_OK_PERS_COL_DFLT values('019','09','RE.RELATION_HOME_ADDRESS','C','Место жительства родственника',
'Место жительства родственника',20,null,null);

--OK_RISE is RI ';
--create table	OK_RISE(

insert into SS_OK_PERS_COL_DFLT values('020','01','RI.RISE_DATE_YEAR','C','Год прохождения повышения квалификации',
'Год прохождения повышения квалификации',4,null,null);

insert into SS_OK_PERS_COL_DFLT values('020','02','RI.RISE_INFO','C','Сведения о повышении квалификации',
'Сведения о повышении квалификации',25,null,null);

--OK_SCIENTIFIC is SC ';
--create table	OK_SCIENTIFIC( --Сведения о научных работах
insert into SS_OK_PERS_COL_DFLT values('021','01','SC.SCIENTIFIC_INFO','C','Сведения о научной работе',
'Сведения о научной работе',15,null,null);

insert into SS_OK_PERS_COL_DFLT values('021','02','SC.SCIENTIFIC_DATE','C','Дата написания н.р.(год)',
'Дата написания н.р.(год)',4,null,null);


--OK_VOYAGE is VO ';
--create table	OK_VOYAGE( -- Сведения о зарубежных поездках
insert into SS_OK_PERS_COL_DFLT values('022','01','VO.VOYAGE_DATE','C','Дата выезда(год)',
'Дата выезда(год)',4,null,null);

insert into SS_OK_PERS_COL_DFLT values('022','02','VO.VOYAGE_LAND','C','Страна выезда',
'Страна выезда',15,null,null);

insert into SS_OK_PERS_COL_DFLT values('022','03','VO.VOYAGE_INFO','C','Сведения о зарубежной поездке',
'Сведения о зарубежной поездке',25,null,null);




-------------------------------------------------




------------
-------------------

delete from OK_NSI;

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('001', 'Основные данные', 'OK_PERSONAL', 'H', 'Основные данные');
insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('002', 'Ученые звания', 'OK_ACADEMIC', 'H', 'Ученые звания');
insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('003', 'Дополнительные сведения', 'OK_ADDINFORM', 'H', 'Дополнительные сведения');
insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('004', 'Воинская служба', 'OK_ARMY', 'H', 'Воинская служба');
insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('005', 'Аттестация', 'OK_ATTESTATION', 'H', 'Аттестация');
insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('006', 'Сведения о наградах', 'OK_AWARD', 'H', 'Сведения о наградах');
insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('007', 'Cведения об изменении ФИО', 'OK_CHANGE_FIO', 'H', 'Cведения об изменении ФИО');
insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('008', 'Сведения о судебной ответственности', 'OK_CONVICTIONS', 'H', 'Сведения о судебной ответственности');
insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('009', 'Сведения об ученых степенях', 'OK_DEGREE', 'H', 'Сведения об ученых степенях');
insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('010', 'Сведения об образовании', 'OK_EDUCATION', 'H', 'Сведения об образовании');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('011','Сведения об избрании в исполнительные органы',
'OK_ELECTION','H',
'Сведения об избрании в исполнительные органы');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('012','Сведения об иностранных языках',
'OK_LANGUAGE','H',
'Сведения об иностранных языках');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('013','Отпуска',
'OK_LEAVE','H',
'Отпуска');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('014','Партия',
'OK_PARTY','H',
'Партия');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('015','Сведения о получении наказания',
'OK_PENALTY','H',
'Сведения о получении наказания');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('016','Сведения о работе',
'OK_PERIOD','H',
'Сведения о предыдущих местах работы');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('017','Молодежные организации',
'OK_YOUTH','H',
'Молодежные организации');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('018','Премии',
'OK_PREMIUM','H',
'Премии');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('019','Родственные отношения',
'OK_RELATION','H',
'Родственные отношения');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('020','Квалификация',
'OK_RISE','H',
'Квалификация');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('021','Сведения о научных работах',
'OK_SCIENTIFIC','H',
'Сведения о научных работах');

insert into OK_NSI (ok_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('022','Сведения о зарубежных поездках',
'OK_VOYAGE','H',
'Сведения о зарубежных поездках');

------------------
truncate table ss_ok_status;
insert into SS_OK_STATUS select 1,'Новый' from dual;
insert into SS_OK_STATUS select 2,'Принят' from dual;
insert into SS_OK_STATUS select 3,'Не принят' from dual;
insert into SS_OK_STATUS select 4,'Уволен' from dual;
insert into SS_OK_STATUS select 5,'Декретный отпуск' from dual;


insert into SS_OK_LEAVE select 5,5,'Декрет','A',114,sysdate from dual;


