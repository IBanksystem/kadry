--drop table ss_ok_action_hist;
create table ss_ok_action_hist(
  action_hist_id            NUMBER(8) not null,
  action_hist_name        varCHAR2(50) not null
);

ALTER TABLE SS_OK_ACTION_HIST ADD CONSTRAINT SS_OK_ACTION_HIST_PK
  PRIMARY KEY ( ACTION_HIST_ID ) ;

create or replace public synonym SS_OK_ACTION_HIST for SS_OK_ACTION_HIST;
grant all on SS_OK_ACTION_HIST to public;

delete from ss_ok_action_hist;

insert into ss_ok_action_hist values (1,'�������');
insert into ss_ok_action_hist values (2,'���������');
insert into ss_ok_action_hist values (3,'�����������');
insert into ss_ok_action_hist values (4,'��������');
insert into ss_ok_action_hist values (5,'��������� � ���������');
commit;

comment on table ss_ok_action_hist
  is '������� ������ � �������';

--drop table ok_hist;
CREATE TABLE OK_HIST(
BRANCH          VARCHAR2(5) NOT NULL,
PERSONAL_CODE   NUMBER(9)    NOT NULL,
V_DATE          DATE NOT NULL,
INS_DATE        DATE,                   
NOM_UI          VARCHAR2(6)  NOT NULL,
TABLE_NAME      VARCHAR2(50),
ACTION_HIST_ID  NUMBER(2)  NOT NULL,
PASS_SERIYA_OLD VARCHAR2(20),
PASS_NUM_OLD    VARCHAR2(20),
PASS_DATE_OLD   DATE,
PASS_SERIYA_NEW VARCHAR2(20),
PASS_NUM_NEW    VARCHAR2(20),
PASS_DATE_NEW   DATE,
ID_TABLE        NUMBER
);

alter table ok_hist add ID_TABLE        NUMBER;

create or replace public synonym ok_hist for ok_hist;
--drop index ok_hist_PK;
create index ok_hist_PK on ok_hist (BRANCH, V_DATE, INS_DATE);

comment on table OK_HIST
  is '�������� �� ��������� ������ ��� ����';
comment on column OK_HIST.BRANCH
  is '��� ���������	���������� S_MFO ���� BANK_ID';
comment on column OK_HIST.PERSONAL_CODE
  is '��� ���������� � ���������.���������� �� ������� OK_PERSONAL';

comment on column OK_HIST.v_date is '���� ���� info.getday';
comment on column OK_HIST.INS_DATE is '���� � ����� ����� ������	SYSDATE dd.mm.yyyy hh24:mi:ss';
comment on column OK_HIST.NOM_UI     is '����� ���������� ���� � 09_001 �� 09_012';
comment on column OK_HIST.TABLE_NAME   is '������� OK';
comment on column OK_HIST.action_hist_id is '���������� ss_ok_action_hist.action_hist_id';
comment on column OK_HIST.PASS_SERIYA_OLD  is '����� ������� ��������';
comment on column OK_HIST.PASS_NUM_OLD       is '����� ������� ��������';
comment on column OK_HIST.PASS_DATE_OLD        is '���� ������ ������� ��������';

create or replace public synonym OK_HIST for OK_HIST;
grant all on OK_HIST to public;

