
---1. Это при синхронизации должности в модуле настройка по зп

select post_code id, post_name name from ss_ok_post where state_notes='A' and (info.GetBankType='006' or (level_department_code 
= 4 or level_department_code = (select NVL(value,1) from ss_const where id=32010) ) ) and info.GetBankType!='006' or ( 
post_code in (select post_code from ss_ok_post_category where mfo_category_type_code in (select mfo_category_type_code from 
ss_ok_mfo_category where branch=info.getbranch)) ) order by post_code

----------------------------------
Timestamp: 10:55:34.296

select name from zp_s_ane where an_id=9 and id=:p_id

p_id = 63

----------------------------------
Timestamp: 10:55:36.390

commit


2. Это при синхронизации Разряда в модуле настройка по зп
 

----------------------------------
Timestamp: 11:01:17.015

select count(*) from zp_s_an where id=400

----------------------------------
Timestamp: 11:01:17.062

select count(*) from zp_s_anl where f_id=400 and s_id=9

----------------------------------
Timestamp: 11:01:17.218

select p.post_code id, c.category_name name, c.category_code code from ss_ok_post p, ss_ok_category c where 
p.category_code=c.category_code and (p.level_department_code = 4 or p.level_department_code = (select NVL(value,1) from 
ss_const where id=32010) ) order by p.post_code

----------------------------------
Timestamp: 11:01:17.296

select nvl(vn,'0') from z_ant where an_id=400 and e_id=:p_id and dat=g.d

p_id = 91
----------------------------------
Timestamp: 11:01:17.640

begin insert into z_ant(an_id, e_id, vn) values( 400,:p_id,:p_name); commit; end;

P_id = 91
P_name = '9'
----------------------------------
Timestamp: 11:01:17.656


select name from zp_s_ane where an_id=400 and id=:p_id

p_id = 21
----------------------------------
Timestamp: 11:01:23.515

begin update zp_s_ane set name=:p_name where an_id=400 and id=:p_id; commit; end;

P_name = '3'
P_id = 21
----------------------------------
Timestamp: 11:01:23.531

commit






3. Это при синхронизации должностного оклада в модуле настройка по зп
 




----------------------------------
Timestamp: 11:09:40.093

select count(*) from zp_s_an where id=10

----------------------------------
Timestamp: 11:09:40.140

select count(*) from zp_s_anl where f_id=10 and s_id=9

----------------------------------
Timestamp: 11:09:40.171

select p.post_code id, c.salary name from ss_ok_post p, ss_ok_category c where p.category_code=c.category_code and 
(p.level_department_code = 4 or p.level_department_code = (select NVL(value,1) from ss_const where id=32010) ) order by 
p.post_code

----------------------------------
Timestamp: 11:09:40.234

select max(trunc(date_open,'MONTH')) from ss_ok_min_zp where date_open<=info.getday and (date_close>=info.getday or date_close 
is null) and STATE_NOTES='A'

----------------------------------
Timestamp: 11:09:40.281

select vn from z_ant where an_id=10 and e_id=:p_id and dat=:p_dat

p_id = 91
p_dat = '01.03.2016'
----------------------------------
Timestamp: 11:09:40.375

begin update z_ant set vn=:p_name where an_id=10 and e_id=:p_ID and dat=:p_dat; commit; end;

P_name = '591645'
P_id = 91
P_dat = '01.03.2016'
----------------------------------
Timestamp: 11:09:40.437


commit




1. это синхронизации должности в модуле зп сотрудников


----------------------------------
Timestamp: 11:58:15.390

select axx(:p_1,:p_2) from dual

p_1 = '26'
p_2 = '01.08.2015'
----------------------------------
Timestamp: 11:58:20.062

select axx(:p_1,:p_2) from dual

p_1 = '26'
p_2 = '01.08.2015'
----------------------------------
Timestamp: 11:58:25.406

select /*+ index(t OK_PERIOD_PK)*/ op.in_office_date, sop.post_code, op.established_post from ok_period op,  ss_ok_post sop 
where op.branch=info.getbranch and op.personal_code=(select p.personal_code from ok_personal p where branch=info.getbranch and 
p.tabno=:p_id) and op.type_period_code=3 and (info.GetBankType = '006' or  (sop.level_department_code=4 or 
sop.level_department_code=(select nvl(value,1) from ss_const where id=32010) ) ) and (info.GetBankType != '006' or 
(op.out_office_date is null and sop.post_code in (select post_code from ss_ok_post_category  where mfo_category_type_code in 
(select mfo_category_type_code from ss_ok_mfo_category where branch=info.getbranch) ) ) ) and sop.post_code=op.post_code order 
by 1

p_id = '427'
----------------------------------
Timestamp: 11:58:25.437

select ve from z_an where p_id=:p_id and an_id=:an_id and dat=:p_dat

p_id = 427
an_id = 9
p_dat = '11.08.2015'
----------------------------------
Timestamp: 11:58:25.515

begin insert into z_an(p_id, an_id, dat, ve) values( :p_id,:an_id,:dat,:code); commit; end;

p_id = 427
an_id = 9
dat = '11.08.2015'
code = '102'
----------------------------------
Timestamp: 11:58:25.593

select id, p_id, typ, an_id, dat, substr(v,1,200) v, vv, name, ex, co, date_normal from v_z_an order by an_id, date_normal

----------------------------------
Timestamp: 11:58:25.593

select atype, id, a_id, dat, name, substr(v,1,200) v, vv, typ, ex, co from zv_ac order by atype, ord

----------------------------------
Timestamp: 11:58:25.609

commit

----------------------------------
Timestamp: 11:58:25.640

select axx(:p_1,:p_2) from dual

p_1 = '26'
p_2 = '01.08.2015'
----------------------------------
Timestamp: 11:58:28.546

select axx(:p_1,:p_2) from dual

p_1 = '26'
p_2 = '01.08.2015'




2. это при синхронизации должностного оклада в модуле зп сотрудников 


----------------------------------
Timestamp: 11:59:44.328

select axx(:p_1,:p_2) from dual

p_1 = '26'
p_2 = '01.08.2015'
----------------------------------
Timestamp: 11:59:49.812

select axx(:p_1,:p_2) from dual

p_1 = '26'
p_2 = '01.08.2015'
----------------------------------
Timestamp: 11:59:52.890

select /*+ index(t OK_PERIOD_PK)*/ op.in_office_date, op.established_post, sop.post_code from ok_period op,  ss_ok_post sop 
where op.branch=info.getbranch and op.personal_code=(select p.personal_code   from ok_personal p where branch=info.getbranch 
and p.tabno=:p_id) and op.type_period_code=3 and ( info.GetBankType != '006' or ( op.OUT_OFFICE_DATE is null and sop.post_code 
in (select post_code from ss_ok_post_category      where mfo_category_type_code in (select mfo_category_type_code from 
ss_ok_mfo_category where branch=info.getbranch)) ) )  and sop.post_code=op.post_code order by 1

p_id = '427'
----------------------------------
Timestamp: 11:59:52.906

select /*+ index(t Z_ANT#AN_ID$E_ID$DAT) */ t.dat, t.vn from z_ant t where t.an_id=10 and t.e_id=:vs1 order by 1

vs1 = '102'
----------------------------------
Timestamp: 11:59:52.921

select vn from z_an where p_id=:p_id and an_id=:an_id and dat=:p_dat

p_id = 427
an_id = 10
p_dat = '11.08.2015'
----------------------------------
Timestamp: 11:59:52.968

begin insert into z_an(p_id, an_id, dat, vn) values( :p_id,:an_id,:dat,:code); commit; end;

p_id = 427
an_id = 10
dat = '11.08.2015'
code = 662452
----------------------------------
Timestamp: 11:59:53.031

select vn from z_an where p_id=:p_id and an_id=:an_id and dat=:p_dat

p_id = 427
an_id = 10
p_dat = '01.01.2016'
----------------------------------
Timestamp: 11:59:53.078

begin insert into z_an(p_id, an_id, dat, vn) values( :p_id,:an_id,:dat,:code); commit; end;

p_id = 427
an_id = 10
dat = '01.01.2016'
code = 816131
----------------------------------
Timestamp: 11:59:53.125

select id, p_id, typ, an_id, dat, substr(v,1,200) v, vv, name, ex, co, date_normal from v_z_an order by an_id, date_normal

----------------------------------
Timestamp: 11:59:53.140

select atype, id, a_id, dat, name, substr(v,1,200) v, vv, typ, ex, co from zv_ac order by atype, ord

----------------------------------
Timestamp: 11:59:53.156

commit

----------------------------------
Timestamp: 11:59:53.171

select axx(:p_1,:p_2) from dual

p_1 = '26'
p_2 = '01.08.2015'
----------------------------------
Timestamp: 12:00:01.390

select axx(:p_1,:p_2) from dual

p_1 = '26'
p_2 = '01.08.2015'
----------------------------------
Timestamp: 12:00:01.437

select axx(:p_1,:p_2) from dual

p_1 = '26'
p_2 = '01.08.2015'
----------------------------------
Timestamp: 12:00:01.546

select axx(:p_1,:p_2) from dual

p_1 = '26'
p_2 = '01.08.2015'



