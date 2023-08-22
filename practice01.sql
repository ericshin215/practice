--����1
select  employee_id,
        first_name,
        last_name,
        hire_date
from employees;


--����2
select  employee_id,
        first_name,
        last_name,
        hire_date
from employees
order by hire_date asc;

--����3
select  employee_id,
        first_name,
        last_name,
        hire_date
from employees
order by hire_date desc,employee_id asc;

--����4
select  first_name ||' '|| last_name as "�� ��",
        phone_number,
        hire_date,
        salary,
        department_id
        
from employees;


--���� 5
select  first_name ||' '|| last_name as "�� ��",
        phone_number,
        hire_date,
        salary,
        department_id
        
from employees
order by hire_date asc;


--���� 6
select  first_name ||' '|| last_name as "�� ��",
        phone_number,
        hire_date,
        salary,
        department_id
        
from employees
order by department_id asc;

--���� 7
select  first_name ||' '|| last_name as "�� ��",
        phone_number,
        hire_date,
        salary,
        department_id
        
from employees
order by department_id asc, hire_date desc;

--���� 8??
select  first_name ||' '|| last_name as "�� ��",
        phone_number,
        hire_date,
        salary,
        department_id
        
from employees
order by department_id asc, hire_date desc;

--����9
select  first_name||' '||last_name as "�̸�",
        salary as "����",
        phone_number as "��ȭ��ȣ",
        hire_date as "�Ի���"
from employees
order by hire_date asc;

--����10
select last_name, salary
from employees
where salary >=12000;

--����11
select last_name, salary
from employees
where salary >=12000
order by salary desc;

--����12
select last_name, salary
from employees
where salary >=12000
order by salary desc, hire_date asc;

--����13
select UPPER(first_name), hire_date
from employees
where hire_date >= '07/01/01';



--����14
select last_name, department_id
from employees
where department_id = 100;

--����15
select last_name, department_id
from employees
where department_id >=100 and department_id < 199;

--����17
select last_name, salary
from employees
where salary >5000 and salary < 12000;


select date_format(hire_date, '%Y-%m-%d')
from employees
where hire_date >= '07/01/01';

--����18
select first_name, salary
from employees
where salary in (2500, 3500, 7000);

--����19
select first_name, salary
from employees
where salary not in  (2500, 3500, 7000);

--����20
select first_name, salary
from employees
where salary not in  (2500, 3500, 7000) and job_id = 'SA_REP';

--����21
select first_name, salary, job_id
from employees
where salary not in  (2500, 3500, 7000) and( job_id = 'SA_REP' or  job_id ='ST_ClERK');

--����22
select last_name, department_id
from employees
where department_id in (20, 50)
order by last_name  asc;

--����23
select last_name, department_id
from employees
where department_id in (20, 50) and salary >= 5000 and salary <=12000;

--����24
select last_name, employee_id
from employees
where last_name like '%a%' or last_name like '%e%';

--����25
select last_name, employee_id, salary
from employees
where last_name like 'J%n';

--����27
select last_name, salary, commission_pct
from employees
order by salary asc, commission_pct asc;

--����28
select last_name, job_id
from employees
where manager_id is not null;

--����29
select  employee_id as "���",
        first_name as "�̸�",
        
--����30














