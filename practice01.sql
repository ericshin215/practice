--문제1
select  employee_id,
        first_name,
        last_name,
        hire_date
from employees;


--문제2
select  employee_id,
        first_name,
        last_name,
        hire_date
from employees
order by hire_date asc;

--문제3
select  employee_id,
        first_name,
        last_name,
        hire_date
from employees
order by hire_date desc,employee_id asc;

--문제4
select  first_name ||' '|| last_name as "성 명",
        phone_number,
        hire_date,
        salary,
        department_id
        
from employees;


--문제 5
select  first_name ||' '|| last_name as "성 명",
        phone_number,
        hire_date,
        salary,
        department_id
        
from employees
order by hire_date asc;


--문제 6
select  first_name ||' '|| last_name as "성 명",
        phone_number,
        hire_date,
        salary,
        department_id
        
from employees
order by department_id asc;

--문제 7
select  first_name ||' '|| last_name as "성 명",
        phone_number,
        hire_date,
        salary,
        department_id
        
from employees
order by department_id asc, hire_date desc;

--문제 8??
select  first_name ||' '|| last_name as "성 명",
        phone_number,
        hire_date,
        salary,
        department_id
        
from employees
order by department_id asc, hire_date desc;

--문제9
select  first_name||' '||last_name as "이름",
        salary as "연봉",
        phone_number as "전화번호",
        hire_date as "입사일"
from employees
order by hire_date asc;

--문제10
select last_name, salary
from employees
where salary >=12000;

--문제11
select last_name, salary
from employees
where salary >=12000
order by salary desc;

--문제12
select last_name, salary
from employees
where salary >=12000
order by salary desc, hire_date asc;

--문제13
select UPPER(first_name), hire_date
from employees
where hire_date >= '07/01/01';



--문제14
select last_name, department_id
from employees
where department_id = 100;

--문제15
select last_name, department_id
from employees
where department_id >=100 and department_id < 199;

--문제17
select last_name, salary
from employees
where salary >5000 and salary < 12000;


select date_format(hire_date, '%Y-%m-%d')
from employees
where hire_date >= '07/01/01';

--문제18
select first_name, salary
from employees
where salary in (2500, 3500, 7000);

--문제19
select first_name, salary
from employees
where salary not in  (2500, 3500, 7000);

--문제20
select first_name, salary
from employees
where salary not in  (2500, 3500, 7000) and job_id = 'SA_REP';

--문제21
select first_name, salary, job_id
from employees
where salary not in  (2500, 3500, 7000) and( job_id = 'SA_REP' or  job_id ='ST_ClERK');

--문제22
select last_name, department_id
from employees
where department_id in (20, 50)
order by last_name  asc;

--문제23
select last_name, department_id
from employees
where department_id in (20, 50) and salary >= 5000 and salary <=12000;

--문제24
select last_name, employee_id
from employees
where last_name like '%a%' or last_name like '%e%';

--문제25
select last_name, employee_id, salary
from employees
where last_name like 'J%n';

--문제27
select last_name, salary, commission_pct
from employees
order by salary asc, commission_pct asc;

--문제28
select last_name, job_id
from employees
where manager_id is not null;

--문제29
select  employee_id as "사번",
        first_name as "이름",
        
--문제30














