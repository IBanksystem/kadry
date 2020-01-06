alter table ok_personal add spec_ikki number(2);

comment on column ok_personal.spec_ikki 
  is 'Наличие двух специальностей или обучение по второй специальности 1-да и 2-нет';
