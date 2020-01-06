

create table ACTION_OK
(
  DEAL_ID NUMBER(6),
  ID      NUMBER(6) not null,
  NAME    VARCHAR2(80),
  MANUAL  NUMBER(1)
  );
-- Create/Recreate primary, unique and foreign key constraints 
alter table ACTION_OK
  add constraint XPK_ACTION_OK primary key (ID);

--create or replace public synonym ACTION_OK for ACTION_OK;

CREATE OR REPLACE FORCE VIEW V_TRANS_OK AS
select id,DEAL_ID,name from ACTION_OK where ID IN
(SELECT ACTION_ID FROM ROLE_ACTIONS WHERE GROUP_ID=70 AND ROLE_ID IN
(SELECT ROLE_ID FROM USER_ROLES  WHERE USER_ID=info.getempid));

--create or replace public synonym V_TRANS_OK for V_TRANS_OK;

delete from deal_group where id=70;
 insert into deal_group select 70,'�����',null,'ACTION_OK' ,null,null from dual;

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


insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(20,214,'���������',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(20,222,'�����������',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(20,233,'���������',1); 
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(20,206,'��������� �������',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(20,201,'������� ������',1);

commit;

