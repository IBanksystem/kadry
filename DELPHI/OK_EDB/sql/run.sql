CREATE OR REPLACE FORCE VIEW V_TRANS_OK AS
select id from ACTION_OK where ID IN
(SELECT ACTION_ID FROM ROLE_ACTIONS WHERE GROUP_ID=70 AND ROLE_ID IN
(SELECT ROLE_ID FROM USER_ROLES  WHERE USER_ID=info.getempid));


delete from  ROLE_ACTIONS where group_id=70;

delete from ACTION_OK;
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,03,'юHдхфнH бхкнърх',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,06,'асунпн бхкнърх',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,08,'фхггюу бхкнърх',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,10,'йюьйюдюп╗ бхкнърх',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,12,'мюбнхи бхкнърх',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,14,'мюлюHцюH бхкнърх',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,18,'яюлюпйюHд бхкнърх',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,22,'яспунHдюп╗ бхкнърх',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,24,'яхпдюп╗ бхкнърх',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,26,'рньйеHр ьюупх',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,27,'рньйеHр бхкнърх',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,30,'тюпцнHю бхкнърх',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,33,'унпюгл бхкнърх',1);
insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(10,35,'йнпюйюконцхярнм пеяосакхйюях',1);


update apps set version='1.0.0.0' where upper(package_name)='OK_EDB.BPL';

commit;