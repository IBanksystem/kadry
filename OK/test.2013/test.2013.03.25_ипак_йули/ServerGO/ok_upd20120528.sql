alter table ok_personal add is_party number(1);
comment on column ok_personal.is_party is '������ 1-�� 2-���';

alter table ok_personal add is_ACADEMIC number(1);
comment on column ok_personal.is_ACADEMIC is '�� ������ 1-�� 2-���';

alter table ok_personal add is_DEGREE number(1);
comment on column ok_personal.is_DEGREE is '�� ������� 1-�� 2-���';

alter table ok_personal add is_AWARD number(1);
comment on column ok_personal.is_AWARD is '������� 1-�� 2-���';

alter table ok_personal add is_SCIENTIFIC number(1);
comment on column ok_personal.is_SCIENTIFIC is '������� ������ 1-�� 2-���';

alter table ok_personal add is_voyage number(1);
comment on column ok_personal.is_voyage is '���������� ������� 1-�� 2-���';

alter table ok_personal add is_convictions number(1);
comment on column ok_personal.is_convictions is '��������� 1-�� 2-���';

alter table ok_personal add is_language number(1);
comment on column ok_personal.is_language is '��.��. 1-�� 2-���';

alter table ok_personal add is_rise number(1);
comment on column ok_personal.is_rise is '������������ 1-�� 2-���';

alter table ok_personal add is_Election number(1);
comment on column ok_personal.is_Election is '�������� 1-�� 2-���';

alter table ok_personal add is_premium number(1);
comment on column ok_personal.is_premium is '���.������ 1-�� 2-���';

alter table ok_personal add is_army number(1);
comment on column ok_personal.is_army is '����� 1-�� 2-���';


