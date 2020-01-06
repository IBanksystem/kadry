spool c:\showdubl.txt;
set line 1000;

/* аттестация */

select * from ok_rise r where 1 <
(select count(*) from ok_rise where branch=r.branch
   and personal_code=r.personal_code
   and rise_date_year=r.rise_date_year
   and rise_info=r.rise_info)
order by r.branch, r.personal_code, r.rise_date_year;

/* образование */

select * from ok_education r where 1 <
(select count(*) from ok_education where branch=r.branch
   and personal_code=r.personal_code
   and institution_code =r.institution_code
   and begin_date=r.begin_date)
order by r.branch, r.personal_code, r.begin_date;

/* зарубежные поездки */

select * from ok_voyage r where 1 <
(select count(*) from ok_voyage where branch=r.branch
   and personal_code=r.personal_code
   and voyage_date=r.voyage_date
   and voyage_land =r.voyage_land   )
order by r.branch, r.personal_code, r.voyage_date;

spool off;








  
