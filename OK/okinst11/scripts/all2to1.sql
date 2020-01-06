prompt # переводит всех принятых сотрудников в новые и убирает в карточках сотрудников текущие отдел и должность
update ok_personal set status_code=1,department_code=null,post_code=null
where branch='00974' and status_code=2;
commit;
