-- select dbms_lob.getlength(PHOTO_B64) from ok_photo_b64;
-- �� 9004
--  select substr(TABLE_HEAD,1,dbms_lob.getlength(TABLE_HEAD)) aa
--   from  HTML_PORTS 

-- Create table
create table ok_photo_b64(
  ID            NUMBER(8) not null,
  BRANCH        CHAR(5) not null,
  PERSONAL_CODE NUMBER(9) not null,
  PHOTO_B64         CLOB not null,
  EMP_CODE      NUMBER(6) not null,
  INS_DATE      DATE not null,
  PRIZNAK       NUMBER(1),
  OK_ID         NUMBER(8),
  FILE_NAME     VARCHAR2(50),
  EMP_CODE_NAME VARCHAR2(180)
  );

-- Add comments to the table 
comment on table ok_photo_b64
  is '����������';
-- Add comments to the columns 
comment on column ok_photo_b64.ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column ok_photo_b64.BRANCH
  is '��� ���������	���������� �� ������� S_MFO ���� BANK_ID, ��������� ����, ������������ ��� ����������';
comment on column ok_photo_b64.PERSONAL_CODE
  is '��� ���������� � ���������	���������� �� ������� OK_PERSONAL  ���� ID, ��������� ����, ������������ ��� ����������';
comment on column ok_photo_b64.PHOTO_B64
  is '����';
comment on column ok_photo_b64.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ����  ID, ��������� ����, ������������ ��� ����������';
comment on column ok_photo_b64.INS_DATE
  is '���� � ����� ����� ������	SYSDATE, ��������� ����, ������������ ��� ����������';
comment on column ok_photo_b64.PRIZNAK
  is 'null ��� 1-����  2-������  3-������� � ���������';
comment on column ok_photo_b64.OK_ID
  is 'ok_education.id ����� ������  ��� OK_Convictions_id ����� ������� ���';
comment on column ok_photo_b64.FILE_NAME
  is ' ��� �����';

alter table ok_photo_b64 add constraint ok_photo_b64_UK primary key (ID);

alter table ok_photo_b64 add constraint ok_photo_b64_U unique (BRANCH, PERSONAL_CODE);

create or replace public synonym ok_photo_b64 for ok_photo_b64;

grant all on ok_photo_b64 to public;


create sequence seq_OK_PHOTO_B64 order;
select seq_OK_PHOTO_B64.NEXTVAL  from dual;
create or replace public synonym seq_OK_PHOTO_B64 for seq_OK_PHOTO_B64;
grant all on seq_OK_PHOTO_B64 to public;





