




--ok_personal �������� ����

alter table ok_personal add srok_date date;
alter table ok_personal add HOME_ADDRESSFACT_REGION_ID CHAR(2);
alter table ok_personal add HOME_ADDRESSFACT_DISTR CHAR(3);
alter table ok_personal add HOME_ADDRESS_REGION_ID CHAR(2);
alter table ok_personal add HOME_ADDRESS_DISTR CHAR(3);
alter table ok_personal add passport_type_code number(9);
 
comment on column ok_personal.srok_date is '���� ��������� �������������� �����';
comment on column ok_personal.HOME_ADDRESSFACT_REGION_ID  is '����� ���-�� s_region.region_id';
comment on column ok_personal.HOME_ADDRESSFACT_DISTR  is '����� ���-�� s_distr.distr';
comment on column ok_personal.HOME_ADDRESS_REGION_ID  is '����� �������� s_region.region_id';
comment on column ok_personal.HOME_ADDRESS_DISTR  is '����� �������� s_distr.distr';
comment on column ok_personal.passport_type_code is '��� ��������� 1-������� 2-��� �� ���-�� 3-��������� ss_ok_passport_type';



