alter table ok_personal add ZP_RATE_CODE number(5);
comment on column ok_personal.ZP_RATE_CODE   is 'ставка 2 > 0.25 , 4 > 0.5 , 6 > 0.75 , 8 > 1.0 ';
