alter trigger TR_DOSTUP_SS_OK_RELATION disable;

alter table ss_ok_relation add relation_order number(3);
update ss_ok_relation set relation_order=relation_code where relation_order is null;
commit;

alter trigger TR_DOSTUP_SS_OK_RELATION enable;


insert into deal_group (id,name,action_table) values (70,'Кадры','ACTION_OK');
commit;

update apps set group_id=70 where upper(package_name) like 'OK.BPL' and (group_id is null or group_id<>70);
commit;


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

create or replace public synonym ACTION_OK for ACTION_OK;

CREATE OR REPLACE FORCE VIEW V_TRANS_OK AS
select id,DEAL_ID,name from ACTION_OK where ID IN
(SELECT ACTION_ID FROM ROLE_ACTIONS WHERE GROUP_ID=70 AND ROLE_ID IN
(SELECT ROLE_ID FROM USER_ROLES  WHERE USER_ID=info.getempid));


 insert into deal_group select 70,'Кадры',null,'ACTION_OK' ,null,null from dual;

delete from ACTION_OK;

insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(30,301,'Филиал Новый',1);

commit;

insert into ACTION_OK(DEAL_ID,ID,NAME,MANUAL) values(30,302,'Филиал Сохранить',1);


commit;


update SS_OK_PERS_COL_DFLT set LEN=100 where name='PP.TELEFON';
commit;   

