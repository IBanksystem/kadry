                                           
create or replace function okzp_postname (branch_ ok_personal.branch%type, tabno_ ok_personal.tabno%type) return ss_ok_post.post_name%type
authid current_user
is
----------------------
-- название должности  по таб номеру
----------------------
  Version constant char(12) := '#~19102017~#';
  postname_ ss_ok_post.post_name%type;
  postcode_ ss_ok_post.post_code%type;
begin
--
  begin                                           
    select op.post_code into postcode_ from ok_personal op 
    where op.branch=branch_ and tabno=tabno_;
  exception when others
  then
    postcode_ := null;
  end;
--  
  begin                                           
    select p.post_name into postname_ from ss_ok_post p 
    where p.post_code=postcode_;
  exception when others
  then
    postname_ := null;
  end;
--
  return postname_;
--
end;
/
                                           
create or replace public synonym okzp_postname for okzp_postname;

select okzp_postname('00394',1352) from dual;                          


create or replace function okzp_oklad (branch_ ok_personal.branch%type, tabno_ ok_personal.tabno%type) return ss_ok_category.salary%type
authid current_user
is
-----------------------------------------------------
-- должностной оклад по таб номеру
-----------------------------------------------------
  Version constant char(12) := '#~19102017~#';
  postcode_ ss_ok_post.post_code%type;
  category_code_ ss_ok_category.category_code%type;
  salary_ ss_ok_category.salary%type;
begin
--
  begin                                           
    select op.post_code into postcode_ from ok_personal op 
    where op.branch=branch_ and tabno=tabno_;
  exception when others
  then
    postcode_ := null;
  end;
--  
  begin                                           
    select p.category_code into category_code_ from ss_ok_post p 
    where p.post_code=postcode_;
  exception when others
  then
    category_code_ := null;
  end;
--  
  begin                                           
    select c.salary into salary_ from ss_ok_category c 
    where c.category_code=category_code_;
  exception when others
  then
    salary_ := null;
  end;
--
  return salary_;
--
end;
/
                                           
create or replace public synonym okzp_oklad for okzp_oklad;

select okzp_oklad('00394',1352) from dual;                          


create or replace function okzp_razryad (branch_ ok_personal.branch%type, tabno_ ok_personal.tabno%type) return ss_ok_category.category_name%type
authid current_user
is
-----------------------------------------------------
-- разряд по таб номеру 
-----------------------------------------------------
  Version constant char(12) := '#~19102017~#';
  postcode_ ss_ok_post.post_code%type;
  category_code_ ss_ok_category.category_code%type;
  category_name_ ss_ok_category.category_name%type;
begin
--
  begin                                           
    select op.post_code into postcode_ from ok_personal op 
    where op.branch=branch_ and tabno=tabno_;
  exception when others
  then
    postcode_ := null;
  end;
--  
  begin                                           
    select p.category_code into category_code_ from ss_ok_post p 
    where p.post_code=postcode_;
  exception when others
  then
    category_code_ := null;
  end;
--  
  begin                                           
    select c.category_name into category_name_ from ss_ok_category c 
    where c.category_code=category_code_;
  exception when others
  then
    category_name_ := null;
  end;
--
  return category_name_;
--
end;
/
                                           
create or replace public synonym okzp_razryad for okzp_razryad;

select okzp_razryad('00394',1352) from dual;                          

