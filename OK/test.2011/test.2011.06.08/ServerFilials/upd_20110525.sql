alter table OK_TABEL
  drop constraint OK_TABEL_PK;

drop INDEX OK_TABEL_PK;
CREATE INDEX OK_TABEL_PK ON OK_TABEL
 (BRANCH, TABEL_MONTH, TABEL_YEAR, PERSONAL_CODE);


alter table OK_TABEL add work_days15 number(3);
alter table OK_TABEL add work_hours15 number(5,2);
alter table OK_TABEL add work_holidays15 number(3);
alter table OK_TABEL add dekret_days15 number(3);
alter table OK_TABEL add business_tour_days15 number(3);
alter table OK_TABEL add ill_days15 number(3);
alter table OK_TABEL add vacation_days15 number(3);
alter table OK_TABEL add educational_vacation_days15 number(3);
alter table OK_TABEL add nosalary_vacation_days15 number(3);

