--  F - ‘инансисты
--  Q -  адры

--* вместо ADMIN ставить пользовател€ большими англ.буквами
--* добавить доступ финансисты
 insert into ss_ok_dostup (user_name,table_name) select 'ADMIN',table_name from ss_ok_dostup where user_name='F'; 
 commit;

--* добавить доступ кадры
 insert into ss_ok_dostup (user_name,table_name) select 'ADMIN',table_name from ss_ok_dostup where user_name='Q'; 
 commit;

--* удалить доступ
-- delete from ss_ok_dostup where user_name='ADMIN';
-- commit;
