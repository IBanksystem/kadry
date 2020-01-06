-- проставить данные по УМолчанию Отдел Кадров

-- если область рождения не пусто но страна не указана то ставит страна рождения 860
update ok_relation 
set COD_STR_birth='860'
where COD_OBL_birth is not null
and COD_STR_birth is null;
commit;

-- если область жительства не пусто но страна не указана то ставит  страна жительства 860
update ok_relation 
set COD_STR_LIVE='860'
where COD_OBL_LIVE is not null
and COD_STR_LIVE is null;
commit;


-- ЕСЛИ Дата приказа-основания для начала работы в должности БОЛЬШЕ дате начала работы в этой должности.
-- ТО поставить туда дату начала работы
update ok_period set basis_date=in_office_date
where in_office_date is not null
and ((basis_date is null)
  or (basis_date<in_office_date));
commit;

-- где не заполнено код или причина увольнения проставить по собственному желанию
update ok_period set cod_pr_off='01'
where out_office_date is not null
and cod_pr_off is null;
commit;

update ok_period set pr_off='Уз хохишига кура'
where out_office_date is not null
and pr_off is null;
commit;

-- где не заполнена дата приказа об увольнении подставить дату окончания работы (если не пусто)
update ok_period set date_pr_off=out_office_date
where out_office_date is not null
and date_pr_off is null;
commit;


-- ЕСЛИ Дата приказа для прекращения работы в должности БОЛЬШЕ дате окончания работы в этой должности.
-- ТО поставить туда дату начала работы
update ok_period set date_pr_off=out_office_date
where in_office_date is not null
and date_pr_off> out_office_date;
commit;


delete from OK_voyage
where voyage_date<1917 or voyage_date is null;
commit;

delete from ok_VOYAGE where VOYAGE_info='булмаган';
commit;

delete from OK_voyage
where voyage_date<1917 or voyage_date is null;
commit;

delete from ok_award where award_info='мукофотланмаган';
commit;

-- удаление наград где год пустой или меньше 1917
delete from ok_award where award_date<1917
or award_date is null;
commit;

-- удаление награды "йук"
delete from ok_award where award_info='йук';
commit;

delete from ok_award where award_info='нет';
commit;
