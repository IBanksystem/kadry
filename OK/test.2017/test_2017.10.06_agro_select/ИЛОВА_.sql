

------
Олий
Урта-махсус
Урта

-- Умумий сони Жами 
select * from SS_OK_Education_Title
1	олий
4	бакалавр
5	магистр
select count(1) g from BANK394.ok_personal op where op.branch='00394' and op.status_code in (2,5) and education_title_code in (1,4,5);

2	урта махсус
6	тугалланмаган олий (институт талабаси)
select count(1) g from BANK394.ok_personal op where op.branch='00394' and op.status_code in (2,5) and education_title_code in (2,6);

3	урта
7	тугалланмаган урта махсус (коллеж талабаси)
select count(1) g from BANK394.ok_personal op where op.branch='00394' and op.status_code in (2,5) and (education_title_code in (3,7) or education_title_code is null);



-- select curdate from sets; --Опер день

-- 3 Ёши буйича
-- Умумий сони -- Амалда
select count(1) g from BANK394.ok_personal op where op.branch='00394' and op.status_code in(2,5) 
and (months_between((select curdate from sets),op.birthday)/12)<30

select count(1) g from BANK394.ok_personal op where op.branch='00394' and op.status_code in(2,5) 
and (months_between((select curdate from sets),op.birthday)/12)>=30 and (months_between((select curdate from sets),op.birthday)/12)<40

select count(1) g from BANK394.ok_personal op where op.branch='00394' and op.status_code in(2,5) 
and (months_between((select curdate from sets),op.birthday)/12)>=40 and (months_between((select curdate from sets),op.birthday)/12)<50

select count(1) g from BANK394.ok_personal op where op.branch='00394' and op.status_code in(2,5) 
and (months_between((select curdate from sets),op.birthday)/12)>=50


-- 3 Ёши буйича
-- Умумий сони -- ишлаётган -- количество человек
select count(1) g from BANK394.ok_personal op where op.branch='00394' and op.status_code in(2,5) 
and (months_between((select curdate from sets),op.birthday)/12)<30

select count(1) g from BANK394.ok_personal op where op.branch='00394' and op.status_code in(2,5) 
and (months_between((select curdate from sets),op.birthday)/12)>=30 and (months_between((select curdate from sets),op.birthday)/12)<40

select count(1) g from BANK394.ok_personal op where op.branch='00394' and op.status_code in(2,5) 
and (months_between((select curdate from sets),op.birthday)/12)>=40 and (months_between((select curdate from sets),op.birthday)/12)<50

select count(1) g from BANK394.ok_personal op where op.branch='00394' and op.status_code in(2,5) 
and (months_between((select curdate from sets),op.birthday)/12)>=50

-- ишлаётган



-- select * from ss_ok_gender
1	Эркак
2	Аёл





select 0 p, 
nvl(sum(decode(sop.post_group_code,1,1,0)),0) l, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,1,0)),0) m, -- 2 Специалисты
nvl(sum(decode(sop.post_group_code,3,1,0)),0) n, -- 3 Работники касс
nvl(sum(decode(sop.post_group_code,4,1,0)),0) o  -- 4 Младший обслужив. персонал
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(4)
and op.education_title_code in (1,4,5)
and (
(op.branch,op.personal_code) in (select opd1.branch,opd1.personal_code from bank394.ok_period  opd1
       where opd1.branch='00394' and opd1.personal_code=op.personal_code 
       and opd1.out_office_date >= to_date('01.10.2016','dd.mm.yyyy') 
       and opd1.out_office_date <= to_date('31.10.2016','dd.mm.yyyy') 
       and opd1.out_office_date in 
(select max(opd.out_office_date) from bank394.ok_period opd
      where opd.branch='00394' and opd.personal_code=op.personal_code)
)
)


select personal_code,max(opd.out_office_date) from bank394.ok_period opd
      where opd.branch='00394' group by personal_code
      

      
      
      
select  op.*, opd.*
from bank394.ok_personal op, ss_ok_post sop, bank394.ok_period opd 
where op.branch='00394' 
and op.branch=opd.branch
and op.personal_code=opd.personal_code
and opd.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(4)
       and opd.out_office_date >= to_date('01.10.2016','dd.mm.yyyy') 
       and opd.out_office_date <= to_date('31.10.2016','dd.mm.yyyy') 
and opd.out_office_date=
(select max(opd2.out_office_date) from bank394.ok_period opd2
      where opd2.branch='00394' and opd2.personal_code=op.personal_code)
      
      2 3
      1
      
      
select * from ok_period where personal_code in (
1079,
1254,
165,
954,
1043,
639  ) order by personal_code,in_office_date    