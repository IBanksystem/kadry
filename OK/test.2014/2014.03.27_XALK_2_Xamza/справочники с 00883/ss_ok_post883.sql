prompt PL/SQL Developer import file
prompt Created on 27 ���� 2014 �. by �������������
set feedback off
set define off
prompt Creating SS_OK_POST...
create table SS_OK_POST
(
  POST_ID               NUMBER(8) not null,
  POST_CODE             NUMBER(3) not null,
  POST_NAME             VARCHAR2(80) not null,
  LEVEL_DEPARTMENT_CODE NUMBER(1) not null,
  STATE_NOTES           CHAR(1) not null,
  EMP_CODE              NUMBER(6) not null,
  INS_DATE              DATE not null,
  REZERV_CODE           NUMBER(2),
  CATEGORY_CODE         NUMBER(2),
  POST_GROUP_CODE       NUMBER(5),
  EDUCATION_TITLE_CODE  NUMBER(3),
  CONFIRM_CODE          NUMBER(2)
)
tablespace USER_DATA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SS_OK_POST
  is '���������� ����������';
comment on column SS_OK_POST.POST_ID
  is '��������� �����	�������������  ������� � "1", �� ������� ����, ����������� ��� ����������';
comment on column SS_OK_POST.POST_CODE
  is '��� ���������	���������� � "1" ��� ������ ������� "��������" ������� ����, ������������ ��� ����������';
comment on column SS_OK_POST.POST_NAME
  is '������������ ���������	�������� � ����������, ������� ����, ������������ ��� ����������';
comment on column SS_OK_POST.LEVEL_DEPARTMENT_CODE
  is '��� ������� �������������';
comment on column SS_OK_POST.STATE_NOTES
  is '������� ���������� ������A - �������� ������P - ��������� ������	�������� � ����������, ������� ����, �� ��������� �������� �������  -� -�������� ������';
comment on column SS_OK_POST.EMP_CODE
  is '��� ������������ ���������� ����������	���������� �� ������� USERS  ���� ID, �� ������� ����, ������������ ��� ����������';
comment on column SS_OK_POST.INS_DATE
  is '���� � �����  ����� ���������� 	SYSdate not null, �� ������� ����, ������������ ��� ����������';
comment on column SS_OK_POST.CATEGORY_CODE
  is '��� ������� ������ ����� ���������� ss_ok_category';
comment on column SS_OK_POST.POST_GROUP_CODE
  is '��� ����������� ������ ss_ok_post_group ';
comment on column SS_OK_POST.EDUCATION_TITLE_CODE
  is '����������� ����������� ��� ������ ���������';
comment on column SS_OK_POST.CONFIRM_CODE
  is '��������� �������������� � ���������� ��� � ������� ��� � ������';
alter table SS_OK_POST
  add constraint SS_OK_POST_PK primary key (POST_CODE, STATE_NOTES)
  using index 
  tablespace INDEXES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SS_OK_POST
  add constraint SS_OK_POST_UK unique (POST_CODE)
  using index 
  tablespace INDEXES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SS_OK_POST
  add constraint SS_OK_POST_CHK_CODE
  check (post_code>0);

prompt Disabling triggers for SS_OK_POST...
alter table SS_OK_POST disable all triggers;
prompt Loading SS_OK_POST...
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2762, 93, '�������������', 1, 'A', 611, to_date('03-09-2013 15:23:21', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2763, 94, '������ �������������', 1, 'A', 788, to_date('24-03-2014 17:13:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2764, 95, '��� ������������', 1, 'A', 788, to_date('24-03-2014 17:14:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2782, 178, '����� ������� ����������', 1, 'A', 788, to_date('24-03-2014 17:15:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 34, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2783, 303, '����� ������� ����������', 2, 'A', 787, to_date('26-12-2013 16:19:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 23, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2696, 201, '���������� ����������', 3, 'A', 787, to_date('26-02-2014 11:02:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 22, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2697, 202, '����� ������� - ���������� ����������', 3, 'A', 787, to_date('26-02-2014 11:07:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 23, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2698, 203, '����� �������', 3, 'A', 787, to_date('26-02-2014 11:06:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2699, 204, '��� ���������', 3, 'A', 787, to_date('26-02-2014 11:00:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2700, 205, '��� ����������', 3, 'A', 787, to_date('26-02-2014 11:01:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2701, 206, '������ ����������', 3, 'A', 787, to_date('26-02-2014 11:08:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 28, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2702, 207, '1-������� ����������', 3, 'A', 787, to_date('26-02-2014 10:59:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2703, 208, '2-������� ����������', 3, 'A', 787, to_date('26-02-2014 10:59:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2704, 209, '����������', 3, 'A', 787, to_date('26-02-2014 15:47:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2705, 210, '����� ������', 3, 'A', 787, to_date('27-02-2014 10:16:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2706, 211, '����� ������', 3, 'A', 787, to_date('26-02-2014 15:45:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2707, 212, '������-���������', 3, 'A', 787, to_date('26-02-2014 15:44:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2708, 213, '������', 3, 'A', 787, to_date('26-02-2014 11:10:17', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2709, 214, '��� ��������� ����������', 3, 'A', 787, to_date('26-02-2014 11:00:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 29, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2710, 215, '������-�� ��������', 3, 'A', 787, to_date('26-02-2014 15:46:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2711, 216, '������-����������', 3, 'A', 787, to_date('26-02-2014 15:45:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2713, 218, '������� ����', 3, 'A', 611, to_date('03-09-2013 15:50:49', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2714, 219, '���������', 3, 'A', 787, to_date('27-11-2013 12:11:18', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2715, 220, '��������', 3, 'A', 787, to_date('27-02-2014 10:26:55', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2716, 221, '������', 3, 'A', 787, to_date('26-02-2014 11:00:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2717, 222, '�������', 3, 'A', 611, to_date('03-09-2013 15:51:14', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2718, 223, '������ ������� �������� �������', 3, 'A', 787, to_date('06-01-2014 16:27:55', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2719, 228, '������� ������', 3, 'A', 787, to_date('27-11-2013 12:11:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2720, 229, '����������', 3, 'A', 611, to_date('03-09-2013 15:51:33', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2721, 230, '������', 3, 'A', 787, to_date('10-10-2013 11:24:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2722, 231, '������', 3, 'A', 787, to_date('26-02-2014 15:45:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2723, 232, '�� ��������', 3, 'A', 787, to_date('26-02-2014 11:09:16', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2724, 233, '���� ���� ������', 3, 'A', 787, to_date('26-02-2014 15:47:16', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2725, 234, '��������', 3, 'A', 787, to_date('10-10-2013 11:45:12', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2726, 235, '������ ������� ������ ��� ����������', 4, 'A', 611, to_date('03-09-2013 15:56:43', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2728, 237, '��� ���������� (���� ������� ������)', 3, 'A', 787, to_date('26-02-2014 11:01:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2729, 238, '�����', 3, 'A', 611, to_date('03-09-2013 15:54:35', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2730, 239, 'آ��� ������', 3, 'A', 787, to_date('27-02-2014 10:14:16', 'dd-mm-yyyy hh24:mi:ss'), 1, 29, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2731, 240, '���������-���������', 3, 'A', 787, to_date('26-02-2014 11:04:07', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2732, 241, '���������', 3, 'A', 787, to_date('26-02-2014 15:47:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2733, 242, '����������-�������', 3, 'A', 787, to_date('26-02-2014 15:47:03', 'dd-mm-yyyy hh24:mi:ss'), 1, 22, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2734, 243, '����������-�������', 2, 'A', 788, to_date('24-03-2014 16:54:53', 'dd-mm-yyyy hh24:mi:ss'), 1, 22, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2735, 244, '��� ���������', 3, 'A', 787, to_date('26-02-2014 11:01:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2736, 245, '�� ���� �������', 4, 'A', 611, to_date('03-09-2013 15:57:01', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2737, 246, '����������', 2, 'A', 787, to_date('13-01-2014 12:43:12', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2739, 248, '������ (����� �������)', 2, 'A', 787, to_date('26-12-2013 16:24:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2740, 249, '������ (����� �������)', 2, 'A', 787, to_date('26-12-2013 16:24:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2741, 250, '������ (����� ����� �������)', 2, 'A', 787, to_date('26-12-2013 16:24:37', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2742, 251, '����� ����� �������', 2, 'A', 787, to_date('26-12-2013 16:10:55', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2743, 252, '������ (����� �����)', 3, 'A', 787, to_date('26-02-2014 11:10:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2744, 253, '������ (����� �������)', 3, 'A', 787, to_date('26-02-2014 11:11:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2745, 254, '������ (����� ����� �������)', 3, 'A', 787, to_date('26-02-2014 11:10:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2746, 255, '������ (����� �����)', 3, 'A', 787, to_date('26-02-2014 11:10:28', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2747, 300, '������ ���������� (���� ������� ����������������� ����� �����)', 2, 'A', 787, to_date('26-12-2013 16:23:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 25, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2748, 301, '���� ������������ ����� ������� ����������', 2, 'A', 787, to_date('27-02-2014 16:03:28', 'dd-mm-yyyy hh24:mi:ss'), 1, 22, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2785, 278, '����� ������� ����������', 3, 'A', 787, to_date('26-02-2014 11:07:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 29, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2801, 96, '������', 1, 'A', 611, to_date('03-09-2013 15:23:59', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2821, 302, '��� ������������', 2, 'A', 787, to_date('26-12-2013 16:19:14', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2822, 304, '������ ������������', 2, 'A', 787, to_date('26-12-2013 16:23:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 25, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2823, 305, '������������', 2, 'A', 611, to_date('03-09-2013 15:48:02', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2841, 97, '������ ��������', 1, 'A', 644, to_date('11-03-2014 16:58:08', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2861, 279, '��� ���������� (������� ������ �����)', 3, 'A', 787, to_date('26-02-2014 11:01:14', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2863, 280, '������ ���������� (�������� ����� ����� �����)', 3, 'A', 787, to_date('26-02-2014 11:08:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 28, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2881, 306, '����� ������� - ������ ������� ����������', 2, 'A', 788, to_date('24-03-2014 16:54:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 36, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2921, 307, '����� ���� ������� - ��� ��������� ����������', 2, 'A', 788, to_date('24-03-2014 16:53:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2941, 179, '�������� �������-�������� ����������', 1, 'A', 644, to_date('11-03-2014 15:39:41', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2961, 281, '������ (������ �����)', 3, 'A', 787, to_date('26-02-2014 11:10:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2983, 198, '���������-��������� (����� �����)', 3, 'A', 787, to_date('26-02-2014 11:04:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3001, 197, '������ ���������� (����� ���������)', 3, 'A', 787, to_date('26-02-2014 11:08:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 28, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3022, 180, '���������', 3, 'A', 787, to_date('26-02-2014 15:47:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3041, 282, '����� ��������� ���������', 3, 'A', 787, to_date('26-02-2014 15:44:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3062, 182, '�������� ����� ����� ��� �����������', 1, 'A', 788, to_date('24-03-2014 17:17:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3081, 181, '����� ������� (����� �������)', 3, 'A', 787, to_date('26-02-2014 15:45:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3083, 183, '����� ������ (����� �������)', 3, 'A', 787, to_date('26-02-2014 15:45:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3084, 184, '����� ������ (����� ����� �������)', 3, 'A', 787, to_date('26-02-2014 15:45:18', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3121, 284, '��� ���������� (���� ���������)', 3, 'A', 787, to_date('26-02-2014 11:01:21', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3141, 185, '����� ��������� ���������', 2, 'A', 787, to_date('26-12-2013 16:26:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3162, 187, '��������� ��������� (����� �����)', 2, 'A', 787, to_date('26-12-2013 16:19:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3163, 188, '��������� ������ (����� ����� �������)', 2, 'A', 787, to_date('26-12-2013 16:13:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3164, 189, '������ (������ �����)', 2, 'A', 787, to_date('26-12-2013 16:24:49', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3181, 190, '��� ���������� (���� ������� ������)', 3, 'A', 787, to_date('26-02-2014 11:01:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3221, 191, '���������', 1, 'A', 788, to_date('24-03-2014 17:17:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3222, 192, '������', 1, 'A', 788, to_date('24-03-2014 17:17:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3241, 193, '1-������� ���������-��������� (����� ����� �������)', 1, 'A', 787, to_date('14-11-2013 17:08:50', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3242, 194, '1-������� ��������� ��������� (����� �����)', 1, 'A', 787, to_date('14-11-2013 17:09:16', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3243, 195, '1-������� ���������-��������� (������ ������������ �����)', 1, 'A', 787, to_date('14-11-2013 17:09:59', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3261, 196, '1-������� ��������� ��������� (������ ������������ �����)', 1, 'A', 787, to_date('14-11-2013 17:10:21', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3301, 186, '1-������� ���������� (���� ���������)', 3, 'A', 787, to_date('26-02-2014 10:59:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3321, 308, '��� ���������� (���������� ����� ����� ������)', 2, 'A', 787, to_date('26-12-2013 16:18:53', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3341, 285, '��� ������������', 3, 'A', 787, to_date('26-02-2014 11:01:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3361, 309, '��� ���������� (�������� �������� ����� �����)', 2, 'A', 787, to_date('26-12-2013 16:18:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3381, 286, '������ �������������', 3, 'A', 787, to_date('26-02-2014 11:09:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 28, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3401, 310, '����� ��������� ��������� (����� ����� �������)', 2, 'A', 787, to_date('26-12-2013 16:27:02', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3402, 287, '���������-��������� (����� ����� �������)', 3, 'A', 787, to_date('26-02-2014 11:04:18', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3403, 288, '����� ��������� ��������� (����� ����� �������)', 3, 'A', 787, to_date('26-02-2014 15:45:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3421, 289, 'آ��� ������ - ��� ��������� ����������', 3, 'A', 787, to_date('17-12-2013 11:16:04', 'dd-mm-yyyy hh24:mi:ss'), 1, 22, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3501, 290, '��� ���������� (��������������� ������)', 3, 'A', 787, to_date('26-02-2014 11:00:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3521, 291, '���������� ������� �����������', 3, 'A', 645, to_date('17-09-2013 16:36:47', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3541, 292, '����� ������� - ��� ��������� ����������', 3, 'A', 788, to_date('13-03-2014 14:59:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3561, 293, '������ 1', 3, 'A', 787, to_date('26-02-2014 11:11:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
commit;
prompt 100 records committed...
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3562, 294, '������ 2', 3, 'A', 787, to_date('26-02-2014 15:43:42', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3581, 295, '������ ����������-1', 1, 'A', 788, to_date('24-03-2014 17:21:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3601, 296, '������ ���������� -2', 1, 'A', 788, to_date('24-03-2014 17:21:27', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3602, 311, '��� ���������� (�������� ����� ����� ������)', 2, 'A', 787, to_date('26-12-2013 16:19:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3603, 312, '��� ���������� (������� ������ ������)', 2, 'A', 787, to_date('23-01-2014 12:01:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3621, 313, '��� ���������� (���� ������� ������)', 2, 'A', 787, to_date('26-12-2013 16:18:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3641, 297, '������ 3', 3, 'A', 787, to_date('26-02-2014 15:44:08', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3643, 298, '������ 4', 3, 'A', 787, to_date('26-02-2014 15:44:11', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3661, 299, '������ 5', 3, 'A', 787, to_date('26-02-2014 15:44:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3666, 314, '������ 6', 3, 'A', 787, to_date('26-02-2014 15:44:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3667, 315, '������ 7', 3, 'A', 787, to_date('26-02-2014 15:44:18', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3668, 316, '������ 8', 3, 'A', 787, to_date('26-02-2014 15:44:21', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3669, 317, '������ 9', 3, 'A', 787, to_date('26-02-2014 15:44:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3670, 318, '������ 10', 3, 'A', 787, to_date('26-02-2014 11:11:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3671, 319, '������ 11', 3, 'A', 787, to_date('26-02-2014 11:11:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3682, 320, '������ ���������� (��������������� ������)', 3, 'A', 787, to_date('26-02-2014 11:08:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 28, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3702, 321, '������ (����� ����� �������)', 1, 'A', 788, to_date('24-03-2014 17:19:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2561, 1, '�������� �����', 1, 'A', 788, to_date('24-03-2014 16:59:55', 'dd-mm-yyyy hh24:mi:ss'), 1, 18, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2562, 2, '�������� ����� �������  ����������', 1, 'A', 788, to_date('24-03-2014 16:59:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 17, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2563, 3, '�������� ����� ����������', 1, 'A', 644, to_date('11-03-2014 15:29:10', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 1, 1, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2564, 4, '���� ���������', 1, 'A', 644, to_date('18-09-2013 18:44:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2565, 5, '������ �������', 1, 'A', 788, to_date('24-03-2014 17:00:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2566, 6, '���� ������', 1, 'A', 644, to_date('11-03-2014 15:40:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2567, 7, '������ ���������', 1, 'A', 438, to_date('31-05-2013 15:06:43', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2568, 8, '�������� �������', 1, 'A', 645, to_date('14-09-2013 09:56:17', 'dd-mm-yyyy hh24:mi:ss'), 1, 30, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2569, 9, '�������� ������� - ��� ���������', 1, 'A', 787, to_date('14-11-2013 17:04:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 22, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2570, 10, '�������� �������  ����������', 1, 'A', 438, to_date('31-05-2013 15:06:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 28, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2571, 11, '����� ������� - �������� ������� ����������', 1, 'A', 788, to_date('24-03-2014 17:04:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 36, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2572, 12, '����� �������', 1, 'A', 644, to_date('18-09-2013 18:44:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2573, 13, '����� ���� �������', 1, 'A', 438, to_date('31-05-2013 15:07:01', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2574, 14, 'آ��� ������', 1, 'A', 787, to_date('12-11-2013 15:58:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2575, 15, '�������� �������', 1, 'A', 644, to_date('11-03-2014 15:41:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2576, 16, '��� ����������', 1, 'A', 787, to_date('14-11-2013 17:15:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2577, 17, '������ ����������', 1, 'A', 644, to_date('18-09-2013 18:45:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2578, 18, '1-������� ����������', 1, 'A', 787, to_date('06-01-2014 16:34:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2579, 19, '2-������� ����������', 1, 'A', 787, to_date('06-01-2014 16:34:46', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 2, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2580, 20, '�����������', 1, 'A', 644, to_date('18-09-2013 18:45:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 2, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2581, 21, '������', 1, 'A', 438, to_date('31-05-2013 15:07:40', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2582, 22, '��� ���������', 1, 'A', 787, to_date('06-01-2014 16:34:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 30, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2583, 23, '��� ���������', 1, 'A', 644, to_date('18-09-2013 18:46:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2584, 24, '��� ��������� ����������', 1, 'A', 644, to_date('18-09-2013 18:46:14', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2585, 25, '����� ������� - ��� ��������� ����������', 1, 'A', 788, to_date('24-03-2014 17:03:49', 'dd-mm-yyyy hh24:mi:ss'), 1, 22, 1, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2586, 26, '���������-���������', 1, 'A', 644, to_date('11-03-2014 16:51:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2587, 27, '����� ������', 1, 'A', 644, to_date('11-03-2014 16:51:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2588, 28, '���������-������', 1, 'A', 644, to_date('11-03-2014 16:51:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2589, 29, '����� ������', 1, 'A', 644, to_date('11-03-2014 16:51:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2590, 30, '1 �������  ������', 1, 'A', 438, to_date('31-05-2013 15:08:44', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2591, 31, '������', 1, 'A', 644, to_date('11-03-2014 16:51:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2592, 32, '������ (����� �����)', 1, 'A', 644, to_date('11-03-2014 16:51:49', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2593, 33, '���������� ������', 1, 'A', 438, to_date('31-05-2013 15:09:04', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2594, 34, '����������', 1, 'A', 438, to_date('31-05-2013 15:09:07', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2595, 35, '����������', 1, 'A', 788, to_date('24-03-2014 17:05:17', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2596, 36, '����� ������ ���������', 1, 'A', 788, to_date('24-03-2014 17:05:42', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2597, 37, '1 �������� �����������', 1, 'A', 438, to_date('31-05-2013 15:09:17', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, 2, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2598, 38, '���� ���������� ��������', 1, 'A', 788, to_date('24-03-2014 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2599, 39, '�� ��������-��������', 1, 'A', 644, to_date('11-03-2014 15:42:10', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2600, 40, '������-�� ��������', 1, 'A', 644, to_date('11-03-2014 16:52:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2601, 41, '1-������� �� �������� ������', 1, 'A', 787, to_date('14-11-2013 17:06:03', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2602, 42, '1-������� ����������', 1, 'A', 787, to_date('14-11-2013 17:06:09', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2603, 43, '������������� ����� ����������', 1, 'A', 788, to_date('24-03-2014 17:08:08', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 2, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2604, 44, '��� ���������', 1, 'A', 787, to_date('14-11-2013 17:16:50', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2605, 45, '��������', 1, 'A', 788, to_date('24-03-2014 17:23:11', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2606, 46, '���������', 1, 'A', 788, to_date('24-03-2014 17:23:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2607, 47, '����� ��������� ����������', 1, 'A', 787, to_date('14-11-2013 17:06:19', 'dd-mm-yyyy hh24:mi:ss'), 1, 3, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2608, 48, '1-������� �������-����������', 1, 'A', 787, to_date('06-01-2014 16:35:16', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2609, 49, '������ �������� �������� �������', 1, 'A', 787, to_date('06-01-2014 16:35:46', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2610, 50, '������', 1, 'A', 644, to_date('11-03-2014 16:52:42', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2611, 51, '������� ����', 1, 'A', 438, to_date('31-05-2013 15:10:04', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2612, 52, '��� ���������� (�������� �������� ����� �����)', 1, 'A', 788, to_date('24-03-2014 17:09:16', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2613, 53, '�������', 1, 'A', 438, to_date('31-05-2013 15:10:11', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2614, 54, '��� ���� ������� �������', 1, 'A', 438, to_date('31-05-2013 15:10:14', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2615, 55, '�������', 1, 'A', 438, to_date('31-05-2013 15:10:18', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2616, 56, '���� (��������)', 1, 'A', 438, to_date('31-05-2013 15:11:18', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2617, 57, '������ ��������� ����������', 1, 'A', 438, to_date('31-05-2013 15:11:21', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2618, 58, '������-����������', 1, 'A', 438, to_date('31-05-2013 15:11:26', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2619, 59, '�������� ��������� ������� �������', 1, 'A', 788, to_date('24-03-2014 17:18:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2620, 60, '������ ��������', 1, 'A', 438, to_date('31-05-2013 15:11:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2621, 61, '����������', 1, 'A', 644, to_date('11-03-2014 15:42:41', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2622, 62, '��������-����������', 1, 'A', 644, to_date('11-03-2014 15:42:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2623, 63, '����� ������', 1, 'A', 787, to_date('14-11-2013 17:15:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2624, 64, '����������� ���������', 1, 'A', 644, to_date('11-03-2014 15:43:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2625, 65, '����������� ��������� ����������', 1, 'A', 788, to_date('24-03-2014 17:22:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 30, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2626, 66, '����� ������', 1, 'A', 788, to_date('24-03-2014 16:59:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 34, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2627, 67, '������ ������� ����� ����� �� ������� ���� �����', 1, 'A', 611, to_date('03-09-2013 15:20:06', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2628, 68, '�������� �������� ������ ������ ����������', 1, 'A', 787, to_date('12-11-2013 15:59:37', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2629, 69, '������ ����������� (����� ���������)', 1, 'A', 644, to_date('11-03-2014 16:53:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2630, 70, '�������� ����� ����������', 1, 'A', 788, to_date('24-03-2014 17:14:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 16, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2631, 71, '��� ���������', 1, 'A', 644, to_date('11-03-2014 15:43:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2632, 72, '������ ���������', 1, 'A', 644, to_date('11-03-2014 15:44:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2633, 73, '1-������� ���������', 1, 'A', 611, to_date('03-09-2013 15:20:55', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2634, 74, '������ ���������� (������������� ������)', 1, 'A', 788, to_date('24-03-2014 17:13:27', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, 2, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2635, 75, '��������� ������', 1, 'A', 788, to_date('24-03-2014 17:20:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 34, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2637, 77, '������ ����������-���������', 1, 'A', 787, to_date('12-11-2013 16:00:26', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2638, 78, '��������', 1, 'A', 611, to_date('03-09-2013 15:21:30', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2639, 79, '����� ������', 1, 'A', 644, to_date('11-03-2014 16:54:53', 'dd-mm-yyyy hh24:mi:ss'), 1, 0, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2640, 80, '������-������', 1, 'A', 611, to_date('03-09-2013 15:21:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2641, 81, '������������ ����������', 1, 'A', 644, to_date('11-03-2014 16:55:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 3, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2642, 82, '�������-���������', 1, 'A', 644, to_date('11-03-2014 17:20:27', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2643, 83, '��� ������� ������ ������', 1, 'A', 611, to_date('03-09-2013 15:22:02', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2644, 84, '������', 1, 'A', 611, to_date('03-09-2013 15:22:11', 'dd-mm-yyyy hh24:mi:ss'), 1, 4, 4, null, 1);
commit;
prompt 200 records committed...
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2645, 85, '�������� ���������� - ���� �������', 1, 'A', 788, to_date('24-03-2014 17:16:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 30, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2646, 86, '�������� ���������� - �������� �������', 1, 'A', 788, to_date('24-03-2014 17:10:20', 'dd-mm-yyyy hh24:mi:ss'), 1, 30, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2647, 87, '����������-�������', 1, 'A', 611, to_date('03-09-2013 15:22:32', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2648, 88, '������ ������� ����������', 1, 'A', 644, to_date('11-03-2014 16:57:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 15, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2649, 89, '������', 1, 'A', 611, to_date('03-09-2013 15:22:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2650, 90, '��� ����������', 1, 'A', 644, to_date('11-03-2014 15:44:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2651, 91, '����������-����������', 1, 'A', 788, to_date('24-03-2014 17:12:11', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2652, 92, '�������� ����� ���������� ���������', 1, 'A', 788, to_date('24-03-2014 17:12:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2653, 101, '������ �������', 2, 'A', 787, to_date('10-12-2013 14:40:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 19, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2654, 102, '������ ������� ����������', 2, 'A', 787, to_date('26-12-2013 15:46:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 30, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2655, 103, '��� ���������', 2, 'A', 787, to_date('26-12-2013 16:17:59', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2656, 104, '��� ��������� ����������', 2, 'A', 787, to_date('26-12-2013 16:18:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 22, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2657, 105, '����� �������', 2, 'A', 787, to_date('26-12-2013 16:33:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 22, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2658, 106, '��� ����������', 2, 'A', 787, to_date('26-12-2013 16:18:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2660, 112, '������ ����������', 2, 'A', 787, to_date('26-12-2013 16:23:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 25, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2661, 113, '1-������� ����������', 2, 'A', 787, to_date('06-01-2014 16:28:55', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2662, 114, '2-������� ����������', 2, 'A', 787, to_date('06-01-2014 16:29:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2663, 115, '����������', 2, 'A', 787, to_date('26-12-2013 16:12:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2664, 116, '���� ���� ������', 2, 'A', 787, to_date('06-01-2014 16:28:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2665, 117, '����� ������', 2, 'A', 787, to_date('26-12-2013 16:24:17', 'dd-mm-yyyy hh24:mi:ss'), 1, 25, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2666, 118, '����� ������-���������', 2, 'A', 787, to_date('26-12-2013 16:27:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 27, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2667, 119, '����� ������', 2, 'A', 787, to_date('26-12-2013 16:27:19', 'dd-mm-yyyy hh24:mi:ss'), 1, 27, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2668, 120, '������-���������', 2, 'A', 787, to_date('26-12-2013 16:26:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2669, 121, '1-������� ������', 2, 'A', 787, to_date('06-01-2014 16:29:10', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2670, 122, '������', 2, 'A', 787, to_date('26-12-2013 16:24:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2671, 126, '������-�� ��������', 2, 'A', 787, to_date('26-12-2013 16:11:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2672, 127, '������', 2, 'A', 787, to_date('26-12-2013 16:11:17', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2673, 128, '����������', 2, 'A', 611, to_date('03-09-2013 15:42:23', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2674, 129, '����� ������� ���������', 2, 'A', 788, to_date('24-03-2014 16:57:51', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2675, 130, '������', 2, 'A', 788, to_date('24-03-2014 16:55:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2676, 131, '������� ����', 2, 'A', 611, to_date('03-09-2013 15:42:36', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2677, 132, '���������', 2, 'A', 787, to_date('26-12-2013 16:14:31', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2678, 133, '����� ��������� ���������� (�������� �� ����� - 1,8 ��������)', 2, 'A', 787, to_date('06-01-2014 16:30:12', 'dd-mm-yyyy hh24:mi:ss'), 1, 3, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2679, 134, '������-��  ��������', 2, 'A', 787, to_date('26-12-2013 16:11:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2680, 135, '�������', 2, 'A', 611, to_date('03-09-2013 15:43:13', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2681, 136, '������ ������� �������� �������', 2, 'A', 787, to_date('06-01-2014 16:31:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2683, 139, '�� ��������', 2, 'A', 787, to_date('26-12-2013 16:58:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2684, 140, '������', 2, 'A', 787, to_date('26-12-2013 16:11:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2685, 141, '������� ������', 2, 'A', 787, to_date('26-12-2013 16:15:27', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2686, 142, '����� ������� ����������', 2, 'A', 787, to_date('26-12-2013 16:22:31', 'dd-mm-yyyy hh24:mi:ss'), 1, 23, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2687, 143, '��������', 2, 'A', 787, to_date('26-12-2013 16:16:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2688, 144, 'آ��� ������', 2, 'A', 787, to_date('26-12-2013 16:15:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 23, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2689, 145, '��� ���������', 2, 'A', 788, to_date('24-03-2014 16:52:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2690, 146, '����������', 2, 'A', 788, to_date('24-03-2014 16:57:07', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2691, 147, '���� ������������ ������ �������', 2, 'A', 787, to_date('27-02-2014 16:03:20', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2692, 148, '���� ������������ ������ ��� ����������', 2, 'A', 787, to_date('27-02-2014 16:04:07', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2693, 149, '���������', 2, 'A', 787, to_date('13-01-2014 12:42:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2694, 153, '������ ������� 1-����������', 2, 'A', 787, to_date('26-12-2013 15:47:31', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2695, 200, '����������', 3, 'A', 787, to_date('26-02-2014 11:01:51', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3703, 322, '������ (������ ������������ �����)', 1, 'A', 788, to_date('24-03-2014 17:18:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3704, 323, '������ (������ �����)', 1, 'A', 788, to_date('24-03-2014 17:18:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3705, 324, '��� ����������� (���� �������)', 1, 'A', 788, to_date('24-03-2014 17:08:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3706, 325, '1-������� ��������� ���������', 1, 'A', 787, to_date('14-11-2013 17:12:11', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3741, 329, '����� ������� - ��� ��������� ����������', 2, 'A', 788, to_date('24-03-2014 16:48:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 29, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3761, 330, '���������� ������� ����������� ����������', 2, 'A', 788, to_date('24-03-2014 16:53:14', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3781, 331, '����� �������-������ ������� ����������', 2, 'A', 788, to_date('24-03-2014 16:52:20', 'dd-mm-yyyy hh24:mi:ss'), 1, 36, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3841, 340, '��������� ��������� 8', 3, 'A', 787, to_date('26-02-2014 11:03:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3842, 341, '��������� ��������� 9', 3, 'A', 787, to_date('26-02-2014 11:04:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3843, 342, '��������� ��������� 10', 3, 'A', 787, to_date('26-02-2014 11:03:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3844, 343, '��������� ��������� 11', 3, 'A', 787, to_date('26-02-2014 11:03:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3921, 346, '���������-���������  3', 2, 'A', 787, to_date('26-12-2013 16:20:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3922, 347, '���������-���������  4', 2, 'A', 787, to_date('26-12-2013 16:20:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3923, 348, '���������-���������  5', 2, 'A', 787, to_date('26-12-2013 16:20:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3924, 349, '���������-���������  6', 2, 'A', 787, to_date('26-12-2013 16:20:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3925, 350, '���������-���������  7', 2, 'A', 787, to_date('26-12-2013 16:20:49', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3926, 351, '���������-���������  8', 2, 'A', 787, to_date('26-12-2013 16:20:53', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3927, 352, '���������-���������  9', 2, 'A', 787, to_date('26-12-2013 16:21:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3928, 353, '���������-��������� 10', 2, 'A', 787, to_date('26-12-2013 16:21:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3929, 354, '���������-��������� 11', 2, 'A', 787, to_date('26-12-2013 16:21:10', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3930, 355, '������ 2', 2, 'A', 787, to_date('26-12-2013 16:25:31', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3941, 356, '������ 3', 2, 'A', 787, to_date('26-12-2013 16:25:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3942, 357, '������ 4', 2, 'A', 787, to_date('26-12-2013 16:25:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3943, 358, '������ 5', 2, 'A', 787, to_date('26-12-2013 16:25:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3944, 359, '������ 6', 2, 'A', 787, to_date('26-12-2013 16:25:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3945, 360, '������ 7', 2, 'A', 787, to_date('26-12-2013 16:25:53', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3946, 361, '������ 8', 2, 'A', 787, to_date('26-12-2013 16:26:04', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3950, 362, '������ 9', 2, 'A', 787, to_date('26-12-2013 16:26:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3951, 363, '������ 10', 2, 'A', 787, to_date('26-12-2013 16:24:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3952, 364, '������ 11', 2, 'A', 787, to_date('26-12-2013 16:25:03', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3953, 365, '������ 12', 3, 'A', 787, to_date('26-02-2014 11:11:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3954, 366, '������ 13', 3, 'A', 787, to_date('26-02-2014 11:11:46', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3955, 367, '������ 14', 3, 'A', 787, to_date('26-02-2014 15:43:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3956, 368, '������ 15', 3, 'A', 787, to_date('26-02-2014 15:43:28', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3959, 369, '������ 16', 3, 'A', 787, to_date('26-02-2014 15:43:30', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3960, 370, '������ 17', 3, 'A', 787, to_date('26-02-2014 15:43:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3961, 371, '������ 18', 3, 'A', 787, to_date('26-02-2014 15:43:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3962, 372, '������ 19', 3, 'A', 787, to_date('26-02-2014 15:43:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3984, 374, '����� ������', 2, 'A', 787, to_date('26-12-2013 16:15:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4002, 375, '��������� ���������  12', 3, 'A', 787, to_date('26-02-2014 11:02:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4003, 376, '��������� ���������  13', 3, 'A', 787, to_date('26-02-2014 11:02:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4004, 377, '��������� ���������  14', 3, 'A', 787, to_date('26-02-2014 11:02:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4005, 378, '��������� ���������  15', 3, 'A', 787, to_date('26-02-2014 11:02:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4006, 379, '��������� ���������  16', 3, 'A', 787, to_date('26-02-2014 11:02:49', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4007, 380, '��������� ���������  17', 3, 'A', 787, to_date('26-02-2014 11:02:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4008, 381, '��������� ���������  18', 3, 'A', 787, to_date('26-02-2014 11:03:17', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4009, 382, '��������� ���������  19', 3, 'A', 787, to_date('26-02-2014 11:03:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4010, 383, '��������� ���������  20', 3, 'A', 787, to_date('26-02-2014 11:03:28', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4081, 432, '������ (��������)', 3, 'A', 787, to_date('26-02-2014 11:11:17', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4121, 433, '���������-��������� 12', 2, 'A', 787, to_date('26-12-2013 16:21:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4122, 434, '���������-��������� 13', 2, 'A', 787, to_date('26-12-2013 16:21:20', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
commit;
prompt 300 records committed...
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4123, 435, '���������-��������� 14', 2, 'A', 787, to_date('26-12-2013 16:21:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4124, 436, '���������-��������� 15', 2, 'A', 787, to_date('26-12-2013 16:21:31', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4125, 437, '������ 12', 2, 'A', 787, to_date('26-12-2013 16:25:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4126, 438, '������ 13', 2, 'A', 787, to_date('26-12-2013 16:25:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4127, 439, '������ 14', 2, 'A', 787, to_date('26-12-2013 16:25:18', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4128, 440, '������ 15', 2, 'A', 787, to_date('26-12-2013 16:25:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 24, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4161, 443, '������ 20', 3, 'A', 787, to_date('26-02-2014 15:43:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4182, 444, '������ 21', 3, 'A', 787, to_date('26-02-2014 15:43:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4183, 445, '������ 22', 3, 'A', 787, to_date('26-02-2014 15:43:51', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4184, 446, '������ 23', 3, 'A', 787, to_date('26-02-2014 15:43:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4186, 447, '������ 24', 3, 'A', 787, to_date('26-02-2014 15:44:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4187, 448, '������ 25', 3, 'A', 787, to_date('26-02-2014 15:44:04', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4188, 449, '���������-��������� 21', 3, 'A', 787, to_date('26-02-2014 11:04:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4189, 450, '���������-��������� 22', 3, 'A', 787, to_date('26-02-2014 11:04:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4190, 451, '���������-��������� 23', 3, 'A', 787, to_date('26-02-2014 11:05:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4191, 452, '���������-��������� 24', 3, 'A', 787, to_date('26-02-2014 11:05:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4192, 453, '���������-��������� 25', 3, 'A', 787, to_date('26-02-2014 11:05:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4401, 464, '����� ������ (����� �����)', 2, 'A', 787, to_date('26-12-2013 16:54:14', 'dd-mm-yyyy hh24:mi:ss'), 1, 27, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4422, 466, '������ ������� �������� ������� 1', 3, 'A', 787, to_date('06-01-2014 16:28:14', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4521, 472, '�� ��������', 1, 'A', 644, to_date('12-03-2014 11:08:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4721, 483, '������� ���� �� ��� �������� ��� �� ����� ����������� ������ ������ �����������', 1, 'A', 788, to_date('14-03-2014 11:16:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3801, 334, '���������-��������� 2', 3, 'A', 787, to_date('26-02-2014 11:04:27', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3821, 335, '���������-��������� 3', 3, 'A', 787, to_date('26-02-2014 11:05:37', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3822, 336, '���������-��������� 4', 3, 'A', 787, to_date('26-02-2014 11:05:41', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3823, 337, '���������-��������� 5', 3, 'A', 787, to_date('26-02-2014 11:05:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3825, 338, '���������-��������� 6', 3, 'A', 787, to_date('26-02-2014 11:05:55', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3826, 339, '���������-��������� 7', 3, 'A', 787, to_date('26-02-2014 11:06:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3881, 344, '���������-���������  2', 2, 'A', 787, to_date('26-12-2013 16:20:08', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4021, 384, '��� �������������', 3, 'A', 787, to_date('26-02-2014 11:01:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4022, 385, '������ �������������', 3, 'A', 787, to_date('26-02-2014 11:09:06', 'dd-mm-yyyy hh24:mi:ss'), 1, 28, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4023, 386, '������ ���������� (���� ������� ������)', 3, 'A', 787, to_date('26-02-2014 11:08:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 28, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4242, 455, '����� ������� - ���� ������������ ����� ������� ����������', 2, 'A', 788, to_date('24-03-2014 16:47:12', 'dd-mm-yyyy hh24:mi:ss'), 1, 23, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4025, 388, '������ (����� �������)', 3, 'A', 787, to_date('26-02-2014 11:10:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4026, 399, '������ (������ �����)', 3, 'A', 787, to_date('26-02-2014 11:10:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4027, 400, '������ (����� ����� �������)', 3, 'A', 787, to_date('26-02-2014 11:10:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4028, 401, '������ (������ �������)', 3, 'A', 787, to_date('26-02-2014 11:11:20', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4281, 107, 'آ��� ������ - ������ ������� ����������', 2, 'A', 788, to_date('24-03-2014 16:51:49', 'dd-mm-yyyy hh24:mi:ss'), 1, 36, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4041, 402, '2-������� ���������� (���� ���������)', 3, 'A', 787, to_date('26-02-2014 10:59:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4442, 467, 'آ��� ������ (������)', 1, 'A', 787, to_date('13-01-2014 12:23:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 22, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4443, 468, '��� ���������� (������)', 1, 'A', 787, to_date('13-01-2014 12:23:42', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4501, 471, '���������', 1, 'A', 644, to_date('11-03-2014 17:22:16', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4561, 473, '����� ������', 1, 'A', 644, to_date('13-03-2014 09:55:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 9, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (2636, 76, '������ ���������� (����������� ����� ����� ������)', 1, 'A', 788, to_date('24-03-2014 17:19:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3721, 326, '������ (����� �������)', 1, 'A', 644, to_date('11-03-2014 17:00:03', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3722, 327, '������ (����� �������)', 1, 'A', 644, to_date('11-03-2014 16:59:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3723, 328, '������ (������ ������������ �����)', 1, 'A', 644, to_date('11-03-2014 16:59:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (3861, 332, '���������-���������', 2, 'A', 787, to_date('26-12-2013 16:20:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4061, 430, '��� ���������� (���� ���������)', 2, 'A', 787, to_date('26-12-2013 16:19:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 11, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4062, 431, '������ ���������� (���� ���������)', 2, 'A', 787, to_date('26-12-2013 16:23:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 25, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4141, 441, '������ ���������� 1', 2, 'A', 787, to_date('26-12-2013 16:23:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 25, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4142, 442, '���������� 1', 2, 'A', 787, to_date('26-12-2013 16:12:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 8, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4201, 454, '��������� (����� ����� �������)', 3, 'A', 787, to_date('26-02-2014 15:48:02', 'dd-mm-yyyy hh24:mi:ss'), 1, 6, 3, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4261, 456, '������ ������� ����������', 2, 'A', 788, to_date('24-03-2014 16:52:04', 'dd-mm-yyyy hh24:mi:ss'), 1, 13, 1, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4321, 457, '������ ���������� (������� ������ �����)', 3, 'A', 787, to_date('26-02-2014 11:08:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 28, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4363, 460, '����� ��������� ���������� (�������� �� ����� - 1,8 ��������)', 2, 'A', 787, to_date('26-12-2013 15:50:03', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4361, 458, '����� ��������� ���������� (�������� �� ����� - 1,8 ��������)', 3, 'A', 787, to_date('26-02-2014 11:08:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4362, 459, '����� ��������� ���������� (�������� �� ����� - 1,8 ��� 3,5 ��������)', 3, 'A', 787, to_date('17-12-2013 10:52:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 3, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4364, 461, '����� ��������� ���������� (�������� �� ����� - 1,8 ��� 3,5 ��������)', 2, 'A', 787, to_date('26-12-2013 16:22:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 3, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4365, 462, '����� ��������� ���������� (�������� �� ����� - 1,8 ��������)', 1, 'A', 644, to_date('11-03-2014 16:59:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4366, 463, '����� ��������� ���������� (�������� �� ����� - 1,8 ��� 3,5 ��������)', 1, 'A', 644, to_date('11-03-2014 16:59:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 3, 4, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4461, 470, '����� �����', 1, 'A', 787, to_date('20-01-2014 09:50:41', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 2, null, null);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4581, 474, '������� ����������', 1, 'A', 644, to_date('14-03-2014 09:10:11', 'dd-mm-yyyy hh24:mi:ss'), 1, 3, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4601, 475, '����� ���������', 1, 'A', 644, to_date('14-03-2014 09:12:59', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4621, 476, '������ �������� �������', 1, 'A', 644, to_date('14-03-2014 09:15:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 2, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4641, 477, '��������-����������', 1, 'A', 644, to_date('14-03-2014 09:16:37', 'dd-mm-yyyy hh24:mi:ss'), 1, 5, 4, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4661, 478, '����� ���������', 1, 'A', 644, to_date('14-03-2014 09:17:46', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4681, 479, '����� ���������-��������� (����� ����� �������)', 1, 'A', 644, to_date('14-03-2014 09:19:37', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4682, 480, '����� ���������-���������(����� �������)', 1, 'A', 644, to_date('14-03-2014 09:20:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, 1);
insert into SS_OK_POST (POST_ID, POST_CODE, POST_NAME, LEVEL_DEPARTMENT_CODE, STATE_NOTES, EMP_CODE, INS_DATE, REZERV_CODE, CATEGORY_CODE, POST_GROUP_CODE, EDUCATION_TITLE_CODE, CONFIRM_CODE)
values (4683, 481, '����� ���������-���������', 1, 'A', 644, to_date('14-03-2014 09:21:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 7, 3, null, 1);
commit;
prompt 369 records loaded
prompt Enabling triggers for SS_OK_POST...
alter table SS_OK_POST enable all triggers;
set feedback on
set define on
prompt Done.
