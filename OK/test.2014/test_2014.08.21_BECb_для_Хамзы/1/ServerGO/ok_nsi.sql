prompt PL/SQL Developer import file
prompt Created on 24 Январь 2014 г. by user
set feedback off
set define off
delete from OK_NSI where ok_id in ('001','002','003','004','005','006','007','008','009','010',
'011','012','013','014','015','016','017','018','019','020',
'021','022','023','024','025','026','027');
prompt Loading OK_NSI...
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('001', 'Основные данные', 'OK_PERSONAL', 'H', 'Основные данные');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('002', 'Ученые звания', 'OK_ACADEMIC', 'H', 'Ученые звания');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('003', 'Дополнительные сведения', 'OK_ADDINFORM', 'H', 'Дополнительные сведения');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('004', 'Воинская служба', 'OK_ARMY', 'H', 'Воинская служба');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('005', 'Аттестация', 'OK_ATTESTATION', 'H', 'Аттестация');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('006', 'Сведения о наградах', 'OK_AWARD', 'H', 'Сведения о наградах');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('007', 'Cведения об изменении ФИО', 'OK_CHANGE_FIO', 'H', 'Cведения об изменении ФИО');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('008', 'Сведения о судебной ответственности', 'OK_CONVICTIONS', 'H', 'Сведения о судебной ответственности');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('009', 'Сведения об ученых степенях', 'OK_DEGREE', 'H', 'Сведения об ученых степенях');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('010', 'Сведения об образовании', 'OK_EDUCATION', 'H', 'Сведения об образовании');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('011', 'Сведения об избрании в исполнительные органы', 'OK_ELECTION', 'H', 'Сведения об избрании в исполнительные органы');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('012', 'Сведения об иностранных языках', 'OK_LANGUAGE', 'H', 'Сведения об иностранных языках');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('013', 'Отпуска', 'OK_LEAVE', 'H', 'Отпуска');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('014', 'Партия', 'OK_PARTY', 'H', 'Партия');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('015', 'Сведения о получении наказания', 'OK_PENALTY', 'H', 'Сведения о получении наказания');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('016', 'Сведения о работе', 'OK_PERIOD', 'H', 'Сведения о предыдущих местах работы');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('017', 'Молодежные организации', 'OK_YOUTH', 'H', 'Молодежные организации');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('018', 'Премии', 'OK_PREMIUM', 'H', 'Премии');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('019', 'Родственные отношения', 'OK_RELATION', 'H', 'Родственные отношения');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('020', 'Квалификация', 'OK_RISE', 'H', 'Квалификация');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('021', 'Сведения о научных работах', 'OK_SCIENTIFIC', 'H', 'Сведения о научных работах');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('022', 'Сведения о зарубежных поездках', 'OK_VOYAGE', 'H', 'Сведения о зарубежных поездках');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('023', 'Курсы повышения квалификации', 'SS_OK_KV_KURS KUKU, OK_KURS', 'H', 'Курсы повышения квалификации');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('024', 'Больничные', 'OK_HOSPITAL', 'H', 'Больничные');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('025', 'Льготы', 'OK_PRIVILEGE', 'H', 'Льготы');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('026', 'Надбавки', 'OK_INCREASE', 'H', 'Надбавки');
insert into OK_NSI (OK_ID, NAME_F, TABLE_NAME, TYPE, PRIM)
values ('027', 'Командировки', 'OK_BUSINESS_VOYAGE', 'H', 'Командировки');
commit;
prompt 27 records loaded
set feedback on
set define on
prompt Done.
