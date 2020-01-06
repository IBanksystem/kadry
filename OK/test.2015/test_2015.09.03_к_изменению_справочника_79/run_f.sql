-- добавляет с признаком 2 в ок-хист сотрудников которые БЫЛИ в должностях 15,16,110,208 

update ok_personal set EMP_CODE=EMP_CODE 
where branch in (select branch from sets)
and personal_code in (select personal_code from ok_period 
    where branch in (select branch from sets)
    and OUT_OFFICE_DATE is null 
    and DOLJN_ID in (select dolj_id from s_doljn where act='Z'))
and STATUS_CODE in (2,5);
commit;

update OK_PERIOD set EMP_CODE=EMP_CODE 
where branch in (select branch from sets)
and OUT_OFFICE_DATE is null 
and DOLJN_ID in (select dolj_id from s_doljn where act='Z')
and personal_code in (select personal_code from ok_personal where branch in (select branch from sets) and STATUS_CODE in (2,5));
commit;