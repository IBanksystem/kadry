-- только для ГО
create table ss_ok_dostup(
user_name varchar2(50) not null,
table_name varchar2(50) not null
);
create or replace public synonym ss_ok_dostup for ss_ok_dostup;

create index ss_ok_dostup_PK on ss_ok_dostup (user_name, table_name);

--  --Должность    Отдел       Типи Отдел       Тарифная сетка  
--  SS_OK_POST
--  SS_OK_DEPARTMENT
--  SS_OK_DEPARTMENT_TYPE
--  SS_OK_CATEGORY
--  SS_OK_MIN_ZP
--  
--  F - Финансисты
--  Q - Кадры

--delete from ss_ok_dostup;
insert into ss_ok_dostup (user_name,table_name) select 'F',table_name from all_all_tables
where table_name like 'SS_OK%' and owner='BANK394'
and table_name in ('SS_OK_POST','SS_OK_DEPARTMENT','SS_OK_DEPARTMENT_TYPE','SS_OK_CATEGORY','SS_OK_MIN_ZP')
and table_name not in (select table_name from ss_ok_dostup where user_name='F');
commit;

insert into ss_ok_dostup (user_name,table_name) select 'Q',table_name from all_all_tables
where table_name like 'SS_OK%' and owner='BANK394'
and table_name not in ('SS_OK_POST','SS_OK_DEPARTMENT','SS_OK_DEPARTMENT_TYPE','SS_OK_CATEGORY','SS_OK_MIN_ZP')
and table_name not in (select table_name from ss_ok_dostup where user_name='Q');
commit;








--* вместо ADMIN ставить пользователя большими англ.буквами
--* добавить доступ финансисты
-- insert into ss_ok_dostup (user_name,table_name) select 'ADMIN',table_name from ss_ok_dostup where user_name='F'; 
-- commit;

--* добавить доступ кадры
-- insert into ss_ok_dostup (user_name,table_name) select 'ADMIN',table_name from ss_ok_dostup where user_name='Q'; 
-- commit;

--* удалить доступ
-- delete from ss_ok_dostup where user_name='ADMIN';
-- commit;
