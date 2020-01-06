
alter table ok_period add DEPARTMENT VARCHAR2(250);

update ok_period set DEPARTMENT=ok_service.GET_DEPARTMENTNAME(department_code) where DEPARTMENT is null aND OUT_OFFICE_DATE IS NULL;
COMMIT;

update ok_period set DEPARTMENT=ESTABLISHED_DEPARTMENT where DEPARTMENT is null aND OUT_OFFICE_DATE IS NOT NULL;
COMMIT;


