
create table ok_free_access(
branch varchar2(5),
personal_code NUMBER(9),
tabno NUMBER(9),
table_name_ varchar2(100),
table_name_show varchar2(100),
field_name_ varchar2(100),
field_name_show varchar2(100),
value_ varchar2(255),
  EMP_ID_         varchar2(10),
USER_NAME_   VARCHAR2(50),                                  
FULL_NAME_   VARCHAR2(180),                                  
TITLE_       VARCHAR2(180),  
  IP_ADDRESS_     varchar2(20) default sys_context('USERENV', 'IP_ADDRESS'),
  TERMINAL_       varchar2(25) default userenv('TERMINAL'),
  LOGIN_          varchar2(20) default sys_context('USERENV', 'SESSION_USER'),
  TIMESTAMP_      date default SYSDATE
);

create or replace public synonym ok_free_access for ok_free_access;
grant all on ok_free_access to public;


create table ok_free_access_hist(
action_show varchar2(100),
branch varchar2(5),
personal_code NUMBER(9),
tabno NUMBER(9),
table_name_ varchar2(100),
table_name_show varchar2(100),
field_name_ varchar2(100),
field_name_show varchar2(100),
value_ varchar2(255),
  EMP_ID_         varchar2(10),
USER_NAME_   VARCHAR2(50),                                  
FULL_NAME_   VARCHAR2(180),                                  
TITLE_       VARCHAR2(180),  
  IP_ADDRESS_     varchar2(20) default sys_context('USERENV', 'IP_ADDRESS'),
  TERMINAL_       varchar2(25) default userenv('TERMINAL'),
  LOGIN_          varchar2(20) default sys_context('USERENV', 'SESSION_USER'),
  TIMESTAMP_      date default SYSDATE
);

create or replace public synonym ok_free_access_hist for ok_free_access_hist;

grant select on ok_free_access_hist to public;
grant insert on ok_free_access_hist to public;
