alter table ok_convictions add f1_fio varchar2(250);
comment on column ok_convictions.f1_fio is '1) ������ �� ����������� ���� ���������� �.�.�. �� �������� (��� � ���������)';

alter table ok_convictions add f2_kimning varchar2(250);
comment on column ok_convictions.f2_kimning is '2) ������ ��� ������� ��������� ����� ����������� (��� ���������� ��������� ����)';

alter table ok_convictions add f3_sana varchar2(250);
comment on column ok_convictions.f3_sana is '3) ������ ��� ����������� ���� (����)';

alter table ok_convictions add f4_sabab1 varchar2(250) ;
comment on column ok_convictions.f4_sabab1 is '4) ������ ��� ������������� ����� ������ ������������� ������ (������ ����������� �������) (�������, ������ ��)';

alter table ok_convictions add f4_sabab2 varchar2(250) ;
comment on column ok_convictions.f4_sabab2 is '';

alter table ok_convictions add  f4_sabab3 varchar2(250);
comment on column ok_convictions.f4_sabab3 is '';

alter table ok_convictions add f5_natija1 varchar2(250) ;
comment on column ok_convictions.f5_natija1 is '5) ������ ��� ������ ������ ��� ������� �������� (������������ ������ ��� ������� ������� ������ ����������� �������) (���� ����������)';

alter table ok_convictions add f5_natija2 varchar2(250) ;
comment on column ok_convictions.f5_natija2 is '';

alter table ok_convictions add  f5_natija3 varchar2(250);
comment on column ok_convictions.f5_natija2 is '';

alter table ok_convictions add f6_chora varchar2(250) ;
comment on column ok_convictions.f6_chora is '6) ���� ��������� �������� ���� (�������� ���� �� ������� �����)';

alter table ok_convictions add f7_malumot1 varchar2(250) ;
comment on column ok_convictions.f7_malumot1 is '7) ����������� ������ ���� ������������� ��� ������ ������� ���� ������������ �������� ����� ����� ����������� (���������� �� ���������� ���� ��� �������� �� ������������ �� ��������� �����������)';

alter table ok_convictions add  f7_malumot2 varchar2(250);
comment on column ok_convictions.f7_malumot2 is '';

alter table ok_convictions add convictions_sana date;


