
alter table ok_leave add period_leave_recall number(9);
comment on column ok_leave.period_leave_recall  is 'период отзыва с 1 по 10 февоаля = 10 дней';

alter table OK_PERSONAL add PASS_DATE_END date; 
comment on column OK_PERSONAL.PASS_DATE_END  is 'Паспорт Действителен До..';


alter table ok_zp_rate add zp_rate_date_end date; 
comment on column ok_zp_rate.zp_rate_date_end is 'Дата завершения ставки включительно';


alter table OK_TABEL add oldday01 varchar2(1);
alter table OK_TABEL add oldday02 varchar2(1);
alter table OK_TABEL add oldday03 varchar2(1);
alter table OK_TABEL add oldday04 varchar2(1);
alter table OK_TABEL add oldday05 varchar2(1);
alter table OK_TABEL add oldday06 varchar2(1);
alter table OK_TABEL add oldday07 varchar2(1);
alter table OK_TABEL add oldday08 varchar2(1);
alter table OK_TABEL add oldday09 varchar2(1);
alter table OK_TABEL add oldday10 varchar2(1);
alter table OK_TABEL add oldday11 varchar2(1);
alter table OK_TABEL add oldday12 varchar2(1);
alter table OK_TABEL add oldday13 varchar2(1);
alter table OK_TABEL add oldday14 varchar2(1);
alter table OK_TABEL add oldday15 varchar2(1);
alter table OK_TABEL add oldday16 varchar2(1);
alter table OK_TABEL add oldday17 varchar2(1);
alter table OK_TABEL add oldday18 varchar2(1);
alter table OK_TABEL add oldday19 varchar2(1);
alter table OK_TABEL add oldday20 varchar2(1);
alter table OK_TABEL add oldday21 varchar2(1);
alter table OK_TABEL add oldday22 varchar2(1);
alter table OK_TABEL add oldday23 varchar2(1);
alter table OK_TABEL add oldday24 varchar2(1);
alter table OK_TABEL add oldday25 varchar2(1);
alter table OK_TABEL add oldday26 varchar2(1);
alter table OK_TABEL add oldday27 varchar2(1);
alter table OK_TABEL add oldday28 varchar2(1);
alter table OK_TABEL add oldday29 varchar2(1);
alter table OK_TABEL add oldday30 varchar2(1);
alter table OK_TABEL add oldday31 varchar2(1);

alter table OK_TABEL add category_code number(2);


alter table ok_personal add gosubmit_code number;
comment on column ok_personal.gosubmit_code is 'код подтверждения сотрудника в ГО';


