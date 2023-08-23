--문제1
--직원들의 사번(employee_id), 이름(firt_name), 성(last_name)과 부서명(department_name)을 조회하여 부서이름(department_name) 오름차순, 사번(employee_id) 내림차순 으로 정렬하세요.
--(106건)


select  employee_id,
        first_name,
        last_name,
        department_name
from employees e, departments d
where d.department_id = e.department_id
order by d.department_name asc, e.employee_id desc;

--문제2
--employees 테이블의 job_id는 현재의 업무아이디를 가지고 있습니다.
--직원들의 사번(employee_id), 이름(firt_name), 급여(salary), 부서명(department_name), 현재업무(job_title)를 사번(employee_id) 오름차순 으로 정렬하세요.
--부서가 없는 Kimberely(사번 178)은 표시하지 않습니다.
--(106건)

select  employee_id,
        first_name,
        salary,
        department_name,
        job_title
from employees e, departments d,jobs j
where e.department_id = d.department_id
and e.job_id = j.job_id
order by employee_id asc;

--문제2-1
select  employee_id,
        first_name,
        salary,
        department_name,
        job_title
from employees e, departments d,jobs j
where e.department_id = d.department_id(+)
and e.job_id = j.job_id
order by employee_id asc;


--문제3
select  l.location_id,
        city,
        department_name,
        d.department_id
from  departments d, locations l
where l.location_id= d.location_id
order by l.location_id asc;
        
        
--문제3-1
select  l.location_id,
        city,
        department_name,
        d.department_id
from  departments d right outer join locations l
on l.location_id  = d.location_id
order by l.location_id asc;


--문제4
--지역(regions)에 속한 나라들을 지역이름(region_name), 
--나라이름(country_name)으로 출력하되 지역이름(오름차순), 
--나라이름(내림차순) 으로 정렬하세요.


select region_name, country_name
from regions r, countries c
where r.region_id = c.region_id
order by region_name asc, c.country_name desc;

--문제5
select  e.employee_id,
        e.first_name,
        e.hire_date,
        m.first_name,
        m.hire_date 
from employees e, employees m
where e.manager_id=m.employee_id and e.hire_date<m.hire_date;

--문제6

select  c.country_name,
        c.country_id,
        l.city,
        l.location_id,
        d.department_name,
        d.department_id
        
from  departments d, countries c, locations l
where l.location_id= d.location_id and l.country_id = c.country_id
order by c.country_name asc;

--문제7
select  e.employee_id, 
        e.first_name||' '||e.last_name,
        e.job_id,
        j.start_date,
        j.end_date
from employees e, job_history j
where e.employee_id =j.employee_id and j.job_id = 'AC_ACCOUNT';


--문제8
select  d.department_id,
        d.department_name,
        e.first_name,
        l.city,
        c.country_name,
        r.region_name
from departments d, employees e,  locations l, countries c, regions r
where d.manager_id= e.employee_id 
and d.location_id =l.location_id
and l.country_id = c.country_id
and c.region_id = r.region_id;

--문제9
select  e.employee_id,
        e.first_name,
        d.department_name,
        m.first_name
from employees e , departments d, employees m
where e.department_id = d.department_id(+) and e.manager_id = m.employee_id;





