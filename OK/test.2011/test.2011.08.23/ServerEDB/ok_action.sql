

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
 insert into deal_group select 70,'Кадры',null,'ACTION_OK' ,null,null from dual;

delete from  ROLE_ACTIONS where group_id=70;

delete from ACTION_OK;
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,03,'АHДИЖОH ВИЛОЯТИ',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,06,'БУХОРО ВИЛОЯТИ',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,08,'ЖИЗЗАХ ВИЛОЯТИ',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,10,'КАШКАДАРЁ ВИЛОЯТИ',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,12,'НАВОИЙ ВИЛОЯТИ',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,14,'НАМАHГАH ВИЛОЯТИ',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,18,'САМАРКАHД ВИЛОЯТИ',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,22,'СУРХОHДАРЁ ВИЛОЯТИ',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,24,'СИРДАРЁ ВИЛОЯТИ',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,26,'ТОШКЕHТ ШАХРИ',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,27,'ТОШКЕHТ ВИЛОЯТИ',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,30,'ФАРГОHА ВИЛОЯТИ',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,33,'ХОРАЗМ ВИЛОЯТИ',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,35,'КОРАКАЛПОГИСТОН РЕСПУБЛИКАСИ',1);


insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(20,214,'Отклонить',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(20,222,'Подтвердить',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(20,233,'Утвердить',1); 
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(20,206,'Разрешено Уволить',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(20,201,'Вернуть Введен',1);

commit;

