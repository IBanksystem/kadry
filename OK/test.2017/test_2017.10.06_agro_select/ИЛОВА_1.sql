select * from ss_ok_status order by status_code;

ok_personal.status_code

STATUS_CODE STATUS_NAME
----------- --------------------------------------------------
          1 Новый
          2 Принят
          3 Не принят
          4 Уволен
          5 Декретный отпуск
          6 Разрешено Уволить
          7 Пенсионер
          8 Временный отпуск
         14 Отклонено ГО
         22 Подтвержден ГО
         29 Отправлен в ГО

select * from ss_ok_post_group;

POST_GROUP_CODE POST_GROUP_NAME
--------------- --------------------------------------------------------------------------------
              1 Руководство
              2 Специалисты
              3 Работники касс
              4 Младший обслужив. персонал
              
select * from ss_ok_post; -- должности


-- по республике
select a.*,b.bank_id,b.BANK_NAME from ss_dblink_branch a,s_mfo b 
where a.branch=b.bank_id and b.act='A' and substr(b.bank_id,1,2)<>'09'

-- по региону
select a.*,b.bank_id,b.BANK_NAME from ss_dblink_branch a,s_mfo b 
where a.branch=b.bank_id and b.act='A'  
and a.region =b.REGION_ID and substr(b.bank_id,1,2)<>'09'
and b.REGION_ID='26'

-- по филиалу
select a.*,b.bank_id,b.BANK_NAME from ss_dblink_branch a,s_mfo b 
where a.branch=b.bank_id and b.act='A'  
and a.region =b.REGION_ID and substr(b.bank_id,1,2)<>'09'
and b.bank_id='00394'

-- селекты по одному филиалу например bank394


-- 1.ЖАМИ

-- штат жадвали буйича (по штату)
select 0 a, -- a= b+c+d+e
nvl(sum(decode(sop.post_group_code,1,ot.quantity_post,0)),0) b, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,ot.quantity_post,0)),0) c,
nvl(sum(decode(sop.post_group_code,3,ot.quantity_post,0)),0) d, 
nvl(sum(decode(sop.post_group_code,4,ot.quantity_post,0)),0) e
from bank394.ok_stat ot, ss_ok_post sop where ot.branch='00394' and ot.post_code=sop.post_code 
and ot.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)

-- Амалда (количество ставок )

select 0 g, -- g=h+i+j+k
nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i, 
nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,
nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k 
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)

-- Ишлаётган ходимлар сони (количество человек)

select 0 p, -- p=l+m+n+o
nvl(sum(decode(sop.post_group_code,1,1,0)),0) l, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,1,0)),0) m, -- 2 Специалисты
nvl(sum(decode(sop.post_group_code,3,1,0)),0) n, -- 3 Работники касс
nvl(sum(decode(sop.post_group_code,4,1,0)),0) o  -- 4 Младший обслужив. персонал
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)





-- 2. шу жумладан маълумоти буйича
-- ишлаётган
-- ишлаётган -- олий
select 0 p, 
nvl(sum(decode(sop.post_group_code,1,1,0)),0) l, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,1,0)),0) m, -- 2 Специалисты
nvl(sum(decode(sop.post_group_code,3,1,0)),0) n, -- 3 Работники касс
nvl(sum(decode(sop.post_group_code,4,1,0)),0) o  -- 4 Младший обслужив. персонал
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and op.education_title_code in (1,4,5);

-- ишлаётган --	урта махсус
select 0 p, 
nvl(sum(decode(sop.post_group_code,1,1,0)),0) l, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,1,0)),0) m, -- 2 Специалисты
nvl(sum(decode(sop.post_group_code,3,1,0)),0) n, -- 3 Работники касс
nvl(sum(decode(sop.post_group_code,4,1,0)),0) o  -- 4 Младший обслужив. персонал
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and  op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and op.education_title_code in (2,6);

-- ишлаётган --	урта
select 0 p, 
nvl(sum(decode(sop.post_group_code,1,1,0)),0) l, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,1,0)),0) m, -- 2 Специалисты
nvl(sum(decode(sop.post_group_code,3,1,0)),0) n, -- 3 Работники касс
nvl(sum(decode(sop.post_group_code,4,1,0)),0) o  -- 4 Младший обслужив. персонал
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and (op.education_title_code in (3,7) or op.education_title_code is null);


----------
-- Амалда -- Олий
select 0 g, -- g=h+i+j+k
nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i, 
nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,
nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k 
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and op.education_title_code in (1,4,5);


-- Амалда -- урта махсус
select 0 g, -- g=h+i+j+k
nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i, 
nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,
nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k 
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and op.education_title_code in (2,6);


-- Амалда -- урта
select 0 g, -- g=h+i+j+k
nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i, 
nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,
nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k 
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and (op.education_title_code in (3,7) or op.education_title_code is null);







-- x-30
-- ишлаётган -- 
select 0 p, 
nvl(sum(decode(sop.post_group_code,1,1,0)),0) l, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,1,0)),0) m, -- 2 Специалисты
nvl(sum(decode(sop.post_group_code,3,1,0)),0) n, -- 3 Работники касс
nvl(sum(decode(sop.post_group_code,4,1,0)),0) o  -- 4 Младший обслужив. персонал
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and (months_between((select curdate from sets),op.birthday)/12)<30


-- 30-40
-- ишлаётган 
select 0 p, 
nvl(sum(decode(sop.post_group_code,1,1,0)),0) l, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,1,0)),0) m, -- 2 Специалисты
nvl(sum(decode(sop.post_group_code,3,1,0)),0) n, -- 3 Работники касс
nvl(sum(decode(sop.post_group_code,4,1,0)),0) o  -- 4 Младший обслужив. персонал
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and (months_between((select curdate from sets),op.birthday)/12)>=30 and (months_between((select curdate from sets),op.birthday)/12)<40


-- 40-50
-- ишлаётган 
select 0 p, 
nvl(sum(decode(sop.post_group_code,1,1,0)),0) l, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,1,0)),0) m, -- 2 Специалисты
nvl(sum(decode(sop.post_group_code,3,1,0)),0) n, -- 3 Работники касс
nvl(sum(decode(sop.post_group_code,4,1,0)),0) o  -- 4 Младший обслужив. персонал
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and (months_between((select curdate from sets),op.birthday)/12)>=40 and (months_between((select curdate from sets),op.birthday)/12)<50


-- 50-x
-- ишлаётган 
select 0 p, 
nvl(sum(decode(sop.post_group_code,1,1,0)),0) l, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,1,0)),0) m, -- 2 Специалисты
nvl(sum(decode(sop.post_group_code,3,1,0)),0) n, -- 3 Работники касс
nvl(sum(decode(sop.post_group_code,4,1,0)),0) o  -- 4 Младший обслужив. персонал
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and (months_between((select curdate from sets),op.birthday)/12)>=50





-- Амалда х-30
select 0 g, -- g=h+i+j+k
nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i, 
nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,
nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k 
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and (months_between((select curdate from sets),op.birthday)/12)<30

-- Амалда 30-40
select 0 g, -- g=h+i+j+k
nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i, 
nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,
nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k 
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and (months_between((select curdate from sets),op.birthday)/12)>=30 and (months_between((select curdate from sets),op.birthday)/12)<40

-- Амалда 40-50
select 0 g, -- g=h+i+j+k
nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i, 
nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,
nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k 
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and (months_between((select curdate from sets),op.birthday)/12)>=40 and (months_between((select curdate from sets),op.birthday)/12)<50

-- Амалда 
-- 50-x
select 0 g, -- g=h+i+j+k
nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i, 
nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,
nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k 
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and (months_between((select curdate from sets),op.birthday)/12)>=50




-- 4. Аёллар жами

-- Амалда (количество ставок )

select 0 g, -- g=h+i+j+k
nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i, 
nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,
nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k 
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and op.gender_code=2

-- Ишлаётган ходимлар сони (количество человек)

select 0 p, -- p=l+m+n+o
nvl(sum(decode(sop.post_group_code,1,1,0)),0) l, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,1,0)),0) m, -- 2 Специалисты
nvl(sum(decode(sop.post_group_code,3,1,0)),0) n, -- 3 Работники касс
nvl(sum(decode(sop.post_group_code,4,1,0)),0) o  -- 4 Младший обслужив. персонал
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and op.gender_code=2



-- 4.1 Аёллар жами
-- ш/ж 55 ёшдан юкори

-- Амалда (количество ставок )

select 0 g, -- g=h+i+j+k
nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i, 
nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,
nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k 
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and op.gender_code=2
and (months_between((select curdate from sets),op.birthday)/12)>=55

-- 4.1 Аёллар жами
-- ш/ж 55 ёшдан юкори

-- Ишлаётган ходимлар сони (количество человек)

select 0 p, -- p=l+m+n+o
nvl(sum(decode(sop.post_group_code,1,1,0)),0) l, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,1,0)),0) m, -- 2 Специалисты
nvl(sum(decode(sop.post_group_code,3,1,0)),0) n, -- 3 Работники касс
nvl(sum(decode(sop.post_group_code,4,1,0)),0) o  -- 4 Младший обслужив. персонал
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and op.gender_code=2
and (months_between((select curdate from sets),op.birthday)/12)>=55

-----------------

-- 5. Эркаклар жами

-- Амалда (количество ставок )

select 0 g, -- g=h+i+j+k
nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i, 
nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,
nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k 
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and op.gender_code=1

-- Ишлаётган ходимлар сони (количество человек)

select 0 p, -- p=l+m+n+o
nvl(sum(decode(sop.post_group_code,1,1,0)),0) l, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,1,0)),0) m, -- 2 Специалисты
nvl(sum(decode(sop.post_group_code,3,1,0)),0) n, -- 3 Работники касс
nvl(sum(decode(sop.post_group_code,4,1,0)),0) o  -- 4 Младший обслужив. персонал
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and op.gender_code=1



-- 5.1 Эркаклар жами
-- ш/ж 60 ёшдан юкори

-- Амалда (количество ставок )

select 0 g, -- g=h+i+j+k
nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i, 
nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,
nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k 
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and op.gender_code=1
and (months_between((select curdate from sets),op.birthday)/12)>=60

-- 5.1 Эркаклар жами
-- ш/ж 60 ёшдан юкори

-- Ишлаётган ходимлар сони (количество человек)

select 0 p, -- p=l+m+n+o
nvl(sum(decode(sop.post_group_code,1,1,0)),0) l, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,1,0)),0) m, -- 2 Специалисты
nvl(sum(decode(sop.post_group_code,3,1,0)),0) n, -- 3 Работники касс
nvl(sum(decode(sop.post_group_code,4,1,0)),0) o  -- 4 Младший обслужив. персонал
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and op.gender_code=1
and (months_between((select curdate from sets),op.birthday)/12)>=60






-- 6. шу жумладан маълумоти буйича
-- ишлаётган
-- ишлаётган -- олий
select 0 p, 
nvl(sum(decode(sop.post_group_code,1,1,0)),0) l, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,1,0)),0) m, -- 2 Специалисты
nvl(sum(decode(sop.post_group_code,3,1,0)),0) n, -- 3 Работники касс
nvl(sum(decode(sop.post_group_code,4,1,0)),0) o  -- 4 Младший обслужив. персонал
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and op.education_title_code in (1,4,5)
and op.tabno in (select z_an.p_id from bank394.z_an 
      where z_an.an_id=5 
      and z_an.vd >=to_date('01.10.2016','dd.mm.yyyy') and z_an.vd<=to_date('31.10.2016','dd.mm.yyyy') )

-- ишлаётган --	урта махсус
select 0 p, 
nvl(sum(decode(sop.post_group_code,1,1,0)),0) l, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,1,0)),0) m, -- 2 Специалисты
nvl(sum(decode(sop.post_group_code,3,1,0)),0) n, -- 3 Работники касс
nvl(sum(decode(sop.post_group_code,4,1,0)),0) o  -- 4 Младший обслужив. персонал
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and  op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and op.education_title_code in (2,6)
and op.tabno in (select z_an.p_id from bank394.z_an 
      where z_an.an_id=5 
      and z_an.vd >=to_date('01.10.2016','dd.mm.yyyy') and z_an.vd<=to_date('31.10.2016','dd.mm.yyyy') )

-- ишлаётган --	урта
select 0 p, 
nvl(sum(decode(sop.post_group_code,1,1,0)),0) l, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,1,0)),0) m, -- 2 Специалисты
nvl(sum(decode(sop.post_group_code,3,1,0)),0) n, -- 3 Работники касс
nvl(sum(decode(sop.post_group_code,4,1,0)),0) o  -- 4 Младший обслужив. персонал
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and (op.education_title_code in (3,7) or op.education_title_code is null)
and op.tabno in (select z_an.p_id from bank394.z_an 
      where z_an.an_id=5 
      and z_an.vd >=to_date('01.10.2016','dd.mm.yyyy') and z_an.vd<=to_date('31.10.2016','dd.mm.yyyy') )


----------
-- Амалда -- Олий
select 0 g, -- g=h+i+j+k
nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i, 
nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,
nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k 
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and op.education_title_code in (1,4,5)
and op.tabno in (select z_an.p_id from bank394.z_an 
      where z_an.an_id=5 
      and z_an.vd >=to_date('01.10.2016','dd.mm.yyyy') and z_an.vd<=to_date('31.10.2016','dd.mm.yyyy') )


-- Амалда -- урта махсус
select 0 g, -- g=h+i+j+k
nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i, 
nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,
nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k 
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and op.education_title_code in (2,6)
and op.tabno in (select z_an.p_id from bank394.z_an 
      where z_an.an_id=5 
      and z_an.vd >=to_date('01.10.2016','dd.mm.yyyy') and z_an.vd<=to_date('31.10.2016','dd.mm.yyyy') )


-- Амалда -- урта
select 0 g, -- g=h+i+j+k
nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i, 
nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,
nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k 
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(2,5)
and (op.education_title_code in (3,7) or op.education_title_code is null)
and op.tabno in (select z_an.p_id from bank394.z_an 
      where z_an.an_id=5 
      and z_an.vd >=to_date('01.10.2016','dd.mm.yyyy') and z_an.vd<=to_date('31.10.2016','dd.mm.yyyy') )


-------------------------------------

-- 7. шу жумладан маълумоти буйича
-- ишлаётган
-- ишлаётган -- олий
select 0 p, 
nvl(sum(decode(sop.post_group_code,1,1,0)),0) l, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,1,0)),0) m, -- 2 Специалисты
nvl(sum(decode(sop.post_group_code,3,1,0)),0) n, -- 3 Работники касс
nvl(sum(decode(sop.post_group_code,4,1,0)),0) o  -- 4 Младший обслужив. персонал
from bank394.ok_personal op, ss_ok_post sop, bank394.ok_period opd 
where op.branch='00394' 
and op.branch=opd.branch
and op.personal_code=opd.personal_code
and opd.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(4)
and op.education_title_code in (1,4,5)
       and opd.out_office_date >= to_date('01.10.2016','dd.mm.yyyy') 
       and opd.out_office_date <= to_date('31.10.2016','dd.mm.yyyy') 
and opd.out_office_date=
(select max(opd2.out_office_date) from bank394.ok_period opd2
      where opd2.branch='00394' and opd2.personal_code=op.personal_code)
      

-- ишлаётган --	урта махсус
select 0 p, 
nvl(sum(decode(sop.post_group_code,1,1,0)),0) l, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,1,0)),0) m, -- 2 Специалисты
nvl(sum(decode(sop.post_group_code,3,1,0)),0) n, -- 3 Работники касс
nvl(sum(decode(sop.post_group_code,4,1,0)),0) o  -- 4 Младший обслужив. персонал
from bank394.ok_personal op, ss_ok_post sop, bank394.ok_period opd 
where op.branch='00394' 
and op.branch=opd.branch
and op.personal_code=opd.personal_code
and opd.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(4)
and op.education_title_code in (2,6)
       and opd.out_office_date >= to_date('01.10.2016','dd.mm.yyyy') 
       and opd.out_office_date <= to_date('31.10.2016','dd.mm.yyyy') 
and opd.out_office_date=
(select max(opd2.out_office_date) from bank394.ok_period opd2
      where opd2.branch='00394' and opd2.personal_code=op.personal_code)




-- ишлаётган --	урта
select 0 p, 
nvl(sum(decode(sop.post_group_code,1,1,0)),0) l, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,1,0)),0) m, -- 2 Специалисты
nvl(sum(decode(sop.post_group_code,3,1,0)),0) n, -- 3 Работники касс
nvl(sum(decode(sop.post_group_code,4,1,0)),0) o  -- 4 Младший обслужив. персонал
from bank394.ok_personal op, ss_ok_post sop, bank394.ok_period opd 
where op.branch='00394' 
and op.branch=opd.branch
and op.personal_code=opd.personal_code
and opd.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(4)
and (op.education_title_code in (3,7) or op.education_title_code is null)
       and opd.out_office_date >= to_date('01.10.2016','dd.mm.yyyy') 
       and opd.out_office_date <= to_date('31.10.2016','dd.mm.yyyy') 
and opd.out_office_date=
(select max(opd2.out_office_date) from bank394.ok_period opd2
      where opd2.branch='00394' and opd2.personal_code=op.personal_code)





----------
-- Амалда -- Олий
select 0 g, -- g=h+i+j+k
nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i, 
nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,
nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k 
from bank394.ok_personal op, ss_ok_post sop, bank394.ok_period opd 
where op.branch='00394' 
and op.branch=opd.branch
and op.personal_code=opd.personal_code
and opd.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(4)
and op.education_title_code in (1,4,5)
       and opd.out_office_date >= to_date('01.10.2016','dd.mm.yyyy') 
       and opd.out_office_date <= to_date('31.10.2016','dd.mm.yyyy') 
and opd.out_office_date=
(select max(opd2.out_office_date) from bank394.ok_period opd2
      where opd2.branch='00394' and opd2.personal_code=op.personal_code)




-- Амалда -- урта махсус
select 0 g, -- g=h+i+j+k
nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i, 
nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,
nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k 
from bank394.ok_personal op, ss_ok_post sop, bank394.ok_period opd 
where op.branch='00394' 
and op.branch=opd.branch
and op.personal_code=opd.personal_code
and opd.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(4)
and op.education_title_code in (2,6)
       and opd.out_office_date >= to_date('01.10.2016','dd.mm.yyyy') 
       and opd.out_office_date <= to_date('31.10.2016','dd.mm.yyyy') 
and opd.out_office_date=
(select max(opd2.out_office_date) from bank394.ok_period opd2
      where opd2.branch='00394' and opd2.personal_code=op.personal_code)





-- Амалда -- урта
select 0 g, -- g=h+i+j+k
nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i, 
nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,
nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k 
from bank394.ok_personal op, ss_ok_post sop, bank394.ok_period opd 
where op.branch='00394' 
and op.branch=opd.branch
and op.personal_code=opd.personal_code
and opd.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(4)
and (op.education_title_code in (3,7) or op.education_title_code is null)
       and opd.out_office_date >= to_date('01.10.2016','dd.mm.yyyy') 
       and opd.out_office_date <= to_date('31.10.2016','dd.mm.yyyy') 
and opd.out_office_date=
(select max(opd2.out_office_date) from bank394.ok_period opd2
      where opd2.branch='00394' and opd2.personal_code=op.personal_code)




-------------------------------------
-- 8 Декрет

-- Амалда (количество ставок )

select 0 g, -- g=h+i+j+k
nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i, 
nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,
nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k 
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(5)

-- Ишлаётган ходимлар сони (количество человек)

select 0 p, -- p=l+m+n+o
nvl(sum(decode(sop.post_group_code,1,1,0)),0) l, -- 1 Руководство
nvl(sum(decode(sop.post_group_code,2,1,0)),0) m, -- 2 Специалисты
nvl(sum(decode(sop.post_group_code,3,1,0)),0) n, -- 3 Работники касс
nvl(sum(decode(sop.post_group_code,4,1,0)),0) o  -- 4 Младший обслужив. персонал
from bank394.ok_personal op, ss_ok_post sop 
where op.branch='00394' and op.post_code=sop.post_code 
and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over) 
and op.status_code in(5)
