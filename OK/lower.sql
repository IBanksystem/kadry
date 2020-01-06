update s_distr set distr_name=substr(distr_name,1,1)||lower(substr(distr_name,2,30)) where act='A';
commit;
update s_region set region_nam=substr(region_nam,1,1)||lower(substr(region_nam,2,30)) where act='A';
commit;

update s_distr set distr_name=substr(distr_name,1,1)||lower(substr(distr_name,2,30)) where act='A';
commit;
update s_region set region_nam=substr(region_nam,1,1)||lower(substr(region_nam,2,30)) where act='A';
commit;

update s_region set REGION_NAM=initcap(REGION_NAM) where region_id=35;
commit;
