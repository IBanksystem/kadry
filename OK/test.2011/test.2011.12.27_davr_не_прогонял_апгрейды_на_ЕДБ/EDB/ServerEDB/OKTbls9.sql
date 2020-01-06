-- 19.08.2009

alter table ok_education add diplom_date date;
comment on column ok_education.diplom_date is '���� ������ �������';

comment on column ok_education.COD_VUZ_PRIM is ' ���������� � ���� ���� ';
comment on column ok_education.CURS is ' ����';
comment on column ok_education.FAKULTET is ' ���������';
comment on column ok_education.NOSTRA is '������� ������������� 1-���� 2-���';
comment on column ok_education.NOSTRA_SERIES is '����� ������������� ������������� ';
comment on column ok_education.NOSTRA_NUMBER is '����� ������������� ������������� ';
comment on column ok_education.NOSTRA_DATE is ' ���� �������������';

comment on column ok_period.ID  is '��������� �����';
comment on column ok_period.BRANCH  is '��� ���������';
comment on column ok_period.PERSONAL_CODE is  '��� ����������';
comment on column ok_period.COD_TYPE_PRN  is '��������� ��� ����������� ������ � ���������( ���� ):��� ���� �������: �� ss_ok_base_move';
comment on column ok_period.COD_PR_OFF  is '��������� ��� ����������� ������ � ���������( ���� ):��� ������� �� ����������� �� s_prich';
comment on column ok_period.PR_OFF  is '������� ����������� ������ � ���������( ���� )';
comment on column ok_period.DOLJN_ID  is '��� ��������� ( ���� ): �� ����������� �� s_dolgn';
comment on column ok_period.NUM_PR_OFF  is '����� ������� ��������� ��� ����������� ������ � ��������� ( ���� )';
comment on column ok_period.DATE_PR_OFF  is '���� ������� ��������� ��� ����������� ������ � ���������( ���� ) ';



create table ok_zp_rate(
branch char(5),
PERSONAL_CODE NUMBER (9) not null,
zp_rate_code number not null,
zp_rate_type_code number not null,
zp_rate_order_num varchar2(15),
zp_rate_order_date date,
zp_rate_date date not null,
EMP_CODE              NUMBER(6),
INS_DATE              DATE 
);

ALTER TABLE ok_zp_rate ADD CONSTRAINT ok_zp_rate_PK
  PRIMARY KEY ( branch,PERSONAL_CODE,zp_rate_code,zp_rate_date );

alter table OK_ZP_RATE modify ZP_RATE_ORDER_NUM VARCHAR2(15);

comment on table ok_zp_rate   is '������';

comment on column ok_zp_rate.branch is '���';
comment on column ok_zp_rate.PERSONAL_CODE is '��� ����������';
comment on column ok_zp_rate.zp_rate_code  is '��� ������';
comment on column ok_zp_rate.zp_rate_type_code  is '��� ���� ������';
comment on column ok_zp_rate.zp_rate_order_num  is '����� �������';
comment on column ok_zp_rate.zp_rate_order_date  is '���� �������';
comment on column ok_zp_rate.zp_rate_date is '���� ���������� ������';

comment on column ok_zp_rate.EMP_CODE is '��� ���������� ��';
comment on column ok_zp_rate.INS_DATE is '���� ������� ������';



