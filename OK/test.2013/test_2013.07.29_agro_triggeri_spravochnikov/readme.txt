--  F - ����������
--  Q - �����

--* ������ ADMIN ������� ������������ �������� ����.�������
--* �������� ������ ����������
 insert into ss_ok_dostup (user_name,table_name) select 'ADMIN',table_name from ss_ok_dostup where user_name='F'; 
 commit;

--* �������� ������ �����
 insert into ss_ok_dostup (user_name,table_name) select 'ADMIN',table_name from ss_ok_dostup where user_name='Q'; 
 commit;

--* ������� ������
-- delete from ss_ok_dostup where user_name='ADMIN';
-- commit;
