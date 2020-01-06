alter table ok_personal add REG_DATE_END date;

comment on column ok_personal.REG_DATE_END 
  is 'Срок временной прописки до';

alter table ok_personal add TRUD_SOGL NUMBER(1) ;

comment on column ok_personal.TRUD_SOGL 
  is 'По трудовому соглашению 1-да 0-нет';


alter table ok_education add education_end NUMBER(1) ;
comment on column ok_education.education_end 
  is 'Обучение завершено 1-да  0-нет';

alter table ok_education add education_city varchar2(50) ;
comment on column ok_education.education_city 
  is 'где закончил(город)';

alter table ok_education add education_count_code number(5) ;
comment on column ok_education.education_count_code 
  is 'образование- первое, второе';


alter table ok_personal add APPLICATION_DATE date;

comment on column ok_personal.APPLICATION_DATE 
  is 'дата заявки';

alter table ok_personal add REPLY_DATE date;

comment on column ok_personal.REPLY_DATE 
  is 'дата ответа из ГО';



