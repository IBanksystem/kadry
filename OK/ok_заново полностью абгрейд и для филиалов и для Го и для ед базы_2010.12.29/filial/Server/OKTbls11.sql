



--

alter table OK_EDUCATION add BEGIN_DATE_MM NUMBER(2); 
alter table OK_EDUCATION add BEGIN_DATE_DD NUMBER(2); 

alter table OK_EDUCATION add END_DATE_MM NUMBER(2); 
alter table OK_EDUCATION add END_DATE_DD NUMBER(2); 

comment on column OK_EDUCATION.BEGIN_DATE_MM  is '����� ����������� � ������� ��������� 09_004';
comment on column OK_EDUCATION.BEGIN_DATE_DD  is '���� ������ ����������� � ������� ��������� 09_004';

comment on column OK_EDUCATION.END_DATE_MM  is '����� ��������� �������� ��������� 09_004';
comment on column OK_EDUCATION.END_DATE_DD  is '���� ������ ��������� �������� ��������� 09_004';


--

alter table OK_AWARD add AWARD_DATE_MM NUMBER(2); 
alter table OK_AWARD add AWARD_DATE_DD NUMBER(2); 

comment on column OK_AWARD.AWARD_DATE_MM  is '����� ����������� 09_005';
comment on column OK_AWARD.AWARD_DATE_DD  is '���� �����������  09_005';


   
alter table OK_ELECTION add ELECTION_DATE_BEGIN_MM NUMBER(2); 
alter table OK_ELECTION add ELECTION_DATE_BEGIN_DD NUMBER(2); 
comment on column OK_ELECTION.ELECTION_DATE_BEGIN_MM  is '����� �������� 09_006';
comment on column OK_ELECTION.ELECTION_DATE_BEGIN_DD  is '����  �������� 09_006';

alter table OK_ELECTION add ELECTION_DATE_END_MM NUMBER(2); 
alter table OK_ELECTION add ELECTION_DATE_END_DD NUMBER(2); 
comment on column OK_ELECTION.ELECTION_DATE_END_MM  is '����� ��������� ����������';
comment on column OK_ELECTION.ELECTION_DATE_END_DD  is '����  ��������� ����������';



--
alter table OK_VOYAGE add VOYAGE_DATE_MM NUMBER(2); 
alter table OK_VOYAGE add VOYAGE_DATE_DD NUMBER(2); 
comment on column OK_VOYAGE.VOYAGE_DATE_MM  is '����� ������';
comment on column OK_VOYAGE.VOYAGE_DATE_DD  is '���� ������';


alter table OK_VOYAGE add DATA_IN_MM NUMBER(2); 
alter table OK_VOYAGE add DATA_IN_DD NUMBER(2); 
comment on column OK_VOYAGE.DATA_IN_MM  is '����� �����������';
comment on column OK_VOYAGE.DATA_IN_DD  is '���� �����������';




--

alter table OK_RISE add RISE_DATE_MM NUMBER(2); 
alter table OK_RISE add RISE_DATE_DD NUMBER(2); 
comment on column OK_RISE.RISE_DATE_MM  is '����� ';
comment on column OK_RISE.RISE_DATE_DD  is '���� ';






