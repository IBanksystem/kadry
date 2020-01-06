select branch, ok_service.GET_DEPARTMENTNAME(department_code), count(*)
from ok_personal
where branch in (select branch from sets)
and status_code in (2)
group by branch,department_code
order by branch,department_code;