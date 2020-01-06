insert into bank980.ok_personal (id,BRANCH,personal_code,STATUS_CODE,FAMILY, FIRST_NAME, PATRONYMIC,gender_code,
BIRTHDAY,REGION_ID,DISTR,
NATIONALITY_CODE,FAMILY_STATUS_CODE,PASS_REG,HOME_ADDRESS,HOME_ADDRESSFACT,PASS_SERIYA,PASS_NUM,PASS_DATE,
TELEFON,PROFMEMBER,TABNO,EDUCATION_TITLE_CODE,BIRTHPLACE,NPS_ID,
MAIDEN_FAMILY,COD_DISTR_UVD,COD_DISTR_PRIM,
COD_STR_BIRTH,COD_OBL_PRIM,COD_PLACE_BIRTH_PRIM,
COD_SITIZENT,COD_STR_LIVE,COD_OBL_LIVE,COD_OBL_LIVE_PRIM,
COD_DISTR_LIVE,COD_DISTR_LIVE_PRIM,BANK_SPEC,
CODE_NACI_PRIM,
HOME_ADDRESSFACT_REGION_ID,HOME_ADDRESSFACT_DISTR,
HOME_ADDRESS_REGION_ID,HOME_ADDRESS_DISTR,PASSPORT_TYPE_CODE,        

DEPARTMENT_CODE,POST_CODE
)
select bank980.SEQ_OK_personal.Nextval,filial,Pers_Employee_Code.id,0,last_name,first_name,middle_name,decode(gender,'M',1,2),
born_date,pers_rep_cb_ruz.get_sprcodecb(d.code_obl_mest) code_obl_mest,pers_rep_cb_ruz.get_sprcodecb(d.code_ray_mest) code_ray_mest,
pers_rep_cb_ruz.get_sprcodecb(d.nationality) code_natn,marriage-180000,PASS_REG,ADDRESS,ADDRESS,PASS_SER,PASS_NUM,PASS_DATE,
phone_work,1,code,decode(education,190007,	1,190003,	2,190004,	3,190015,	4,190013,	5,190002,	6,190014,	7,3),born_place,inps,
last_name_old,pers_rep_cb_ruz.get_sprcodecb(d.code_ray_uvd),pers_rep_cb_ruz.get_sprprimcb(d.code_ray_uvd),
nvl(pers_rep_cb_ruz.get_sprcodecb(d.code_str_mest), '860'),pers_rep_cb_ruz.get_sprprimcb(d.code_obl_mest), pers_rep_cb_ruz.get_sprprimcb(d.code_ray_mest),
nvl(pers_rep_cb_ruz.get_sprcodecb(d.code_str_grajd), '860'),nvl(pers_rep_cb_ruz.get_sprcodecb(d.code_str_proj), '860'),
pers_rep_cb_ruz.get_sprcodecb(d.code_obl_proj) code_obl_proj, pers_rep_cb_ruz.get_sprprimcb(d.code_obl_proj) prim_obl_proj,
pers_rep_cb_ruz.get_sprcodecb(d.code_ray_proj) code_ray_proj,  pers_rep_cb_ruz.get_sprprimcb(d.code_ray_proj) prim_ray_proj,bank_spes,
pers_rep_cb_ruz.get_sprprimcb(d.nationality),
pers_rep_cb_ruz.get_sprcodecb(d.code_obl_proj) , pers_rep_cb_ruz.get_sprprimcb(d.code_obl_proj) ,
pers_rep_cb_ruz.get_sprcodecb(d.code_ray_proj) ,  pers_rep_cb_ruz.get_sprprimcb(d.code_ray_proj) ,1


 from ibs.Pers_Employee_Code,ibs.Pers_Employee_Desc WHERE filial='00980'
and Pers_Employee_Code.id=Pers_Employee_Desc.pers_id
and fired_date is null;

bank980
update ok_personal a set a.nationality_code=(select ok_id from ss_ok_nci where nci_id=72 and s_id=a.nationality_code)
where a.STATUS_CODE=0 and a.nationality_code<>99;
commit;


select *
 from ibs.Pers_Employee_Code,ibs.Pers_Employee_Desc WHERE filial='00980'
and Pers_Employee_Code.id=Pers_Employee_Desc.pers_id
and fired_date is null
order by code;

select * from Pers_Sheet WHERE Pers_Id = pCode;
select * from Pers_Bus_Trip WHERE Pers_Id = pCode;
select * from Pers_Decoration WHERE Pers_Id = pCode;
select * from Pers_Education WHERE Pers_Id = pCode;
select * from Pers_Election WHERE Pers_Id = pCode;
select * from Pers_Family WHERE Pers_Id = pCode;
select * from Pers_For_Language WHERE Pers_Id = pCode;
select * from Pers_Qualific WHERE Pers_Id = pCode;
select * from Pers_Reserv WHERE Pers_Id = pCode;
select * from Pers_Rubej WHERE Pers_Id = pCode;
select * from Pers_Scold_Fine WHERE Pers_Id = pCode;
select * from Pers_Sheet WHERE Pers_Id = pCode;
select * from Pers_Vacation WHERE Pers_Id = pCode;
select * from Pers_Work_History WHERE Pers_Id = pCode;
select * from Pers_Order WHERE Pers_Id = pCode;
select * from Pers_Employee_Desc WHERE Pers_Id = pCode;


select * from pers_look_up where code like '19%'
order by code