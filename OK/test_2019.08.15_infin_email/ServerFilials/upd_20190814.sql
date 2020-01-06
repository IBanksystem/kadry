

alter table ok_personal add GPH_DATE_BEGIN date;
alter table ok_personal add GPH_DATE_END date;
alter table ok_personal add GPH_SUMMA number;

alter table ok_personal add GPH_POST_CODE NUMBER(9);
alter table ok_personal add GPH_DEPARTMENT_CODE NUMBER(9);
alter table ok_personal add GPH_ORDER_DATE date;
alter table ok_personal add GPH_ORDER_NUM varchar2(15);

alter table ok_personal add GPH_REZIDENT NUMBER(1);

alter table OK_PERSONAL modify NATIONALITY_CODE null;
alter table OK_PERSONAL modify FAMILY_STATUS_CODE null;
alter table OK_PERSONAL modify REG_TYPE_CODE null;

alter table ok_personal add EMAIL varchar2(55);
