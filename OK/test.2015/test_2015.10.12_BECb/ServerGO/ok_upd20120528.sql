alter table ok_personal add is_party number(1);
comment on column ok_personal.is_party is 'Партия 1-да 2-нет';

alter table ok_personal add is_ACADEMIC number(1);
comment on column ok_personal.is_ACADEMIC is 'уч звание 1-да 2-нет';

alter table ok_personal add is_DEGREE number(1);
comment on column ok_personal.is_DEGREE is 'уч степени 1-да 2-нет';

alter table ok_personal add is_AWARD number(1);
comment on column ok_personal.is_AWARD is 'награды 1-да 2-нет';

alter table ok_personal add is_SCIENTIFIC number(1);
comment on column ok_personal.is_SCIENTIFIC is 'научные работы 1-да 2-нет';

alter table ok_personal add is_voyage number(1);
comment on column ok_personal.is_voyage is 'Зарубежные поездки 1-да 2-нет';

alter table ok_personal add is_convictions number(1);
comment on column ok_personal.is_convictions is 'судимости 1-да 2-нет';

alter table ok_personal add is_language number(1);
comment on column ok_personal.is_language is 'Ин.яз. 1-да 2-нет';

alter table ok_personal add is_rise number(1);
comment on column ok_personal.is_rise is 'Квалификация 1-да 2-нет';

alter table ok_personal add is_Election number(1);
comment on column ok_personal.is_Election is 'Избрание 1-да 2-нет';

alter table ok_personal add is_premium number(1);
comment on column ok_personal.is_premium is 'Гос.премии 1-да 2-нет';

alter table ok_personal add is_army number(1);
comment on column ok_personal.is_army is 'Армия 1-да 2-нет';


