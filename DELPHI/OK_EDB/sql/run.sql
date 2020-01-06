CREATE OR REPLACE FORCE VIEW V_TRANS_OK AS
select id from ACTION_OK where ID IN
(SELECT ACTION_ID FROM ROLE_ACTIONS WHERE GROUP_ID=70 AND ROLE_ID IN
(SELECT ROLE_ID FROM USER_ROLES  WHERE USER_ID=info.getempid));


delete from  ROLE_ACTIONS where group_id=70;

delete from ACTION_OK;
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,03,'�H����H �������',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,06,'������ �������',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,08,'������ �������',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,10,'�������Ш �������',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,12,'������ �������',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,14,'����H��H �������',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,18,'�������H� �������',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,22,'�����H��Ш �������',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,24,'�����Ш �������',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,26,'�����H� �����',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,27,'�����H� �������',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,30,'�����H� �������',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,33,'������ �������',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,35,'��������������� ������������',1);


update apps set version='1.0.0.0' where upper(package_name)='OK_EDB.BPL';

commit;