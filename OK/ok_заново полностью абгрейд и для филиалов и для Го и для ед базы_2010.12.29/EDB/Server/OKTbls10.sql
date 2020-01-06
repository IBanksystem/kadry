
create table ok_zp_rate(
branch char(5),
PERSONAL_CODE NUMBER (9) not null,
zp_rate_code number not null,
zp_rate_type_code number not null,
zp_rate_order_num varchar2(15),
zp_rate_order_date date,
zp_rate_date date not null,
zp_fakt number(15,2),
EMP_CODE              NUMBER(6),
INS_DATE              DATE 
);

ALTER TABLE ok_zp_rate ADD CONSTRAINT ok_zp_rate_PK
  PRIMARY KEY ( branch,PERSONAL_CODE,zp_rate_code,zp_rate_date );


comment on table ok_zp_rate   is '������';

comment on column ok_zp_rate.branch is '���';
comment on column ok_zp_rate.PERSONAL_CODE is '��� ����������';
comment on column ok_zp_rate.zp_rate_code  is '��� ������';
comment on column ok_zp_rate.zp_rate_type_code  is '��� ���� ������';
comment on column ok_zp_rate.zp_rate_order_num  is '����� �������';
comment on column ok_zp_rate.zp_rate_order_date  is '���� �������';
comment on column ok_zp_rate.zp_rate_date is '���� ���������� ������';
comment on column ok_zp_rate.zp_fakt is '����������� �����';
comment on column ok_zp_rate.EMP_CODE is '��� ���������� ��';
comment on column ok_zp_rate.INS_DATE is '���� ������� ������';

alter table OK_ZP_RATE modify ZP_FAKT NUMBER(15,2);

