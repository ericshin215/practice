--문제1

select count(manager_id) as haveMngCnt
from employees;

--문제2
select  count(*),
        max(salary) as "최고임금",
        min(salary) as "최저임금",
        max(salary) - min(salary) as "최고임금 - 최저임금"
from employees;

--문제3
select  
        
        to_char(max(hire_date), 'YYYY"년"MM"월"DD"일" ')
from employees;

--문제4

select  avg(salary),
        max(salary),
        min(salary),
        department_id
from employees
group by department_id
order by department_id desc;


--문제5
select  job_id,
        round(avg(salary),1),
        max(salary),
        min(salary)
from employees
group by job_id
order by min(salary) desc, round(avg(salary),1) asc;


--문제6

select  
        to_char(min(hire_date), 'YYYY-MM-DD day')
        
from employees;

--문제7

select  department_id,
        avg(salary) as "평균임금",
        max(salary) as "최고임금",
        min(salary) as "최저임금",
        avg(salary) - min(salary) as "평균임금 - 최저임금"
from employees
group by department_id
having avg(salary) - min(salary) < 2000
order by avg(salary) - min(salary) desc;

--문제8
select  job_id,
        
        max(salary) - min(salary) as "최고임금 - 최저임금"
from employees
group by job_id
order by max(salary) - min(salary) desc;
        
--문제9
--2005년 이후 입사자중 관리자별로 평균급여 최소급여 최대급여를 알아보려고 한다.
--출력은 관리자별로 평균급여가 5000이상 중에 평균급여 최소급여 최대급여를 출력합니다.
--평균급여의 내림차순으로 정렬하고 평균급여는 소수점 첫째짜리에서 반올림 하여 출력합니다.

select  manager_id,
        round(avg(salary),0) as "평균임금",
        max(salary) as "최대급여",
        min(salary) as "최소급여"
        
from employees
where hire_date >='05/01/01'
group by manager_id
having  avg(salary)>=5000
order by round(avg(salary),0) desc;

-- 문제10.
-- 아래회사는 보너스 지급을 위해 직원을 입사일 기준으로 나눌려고 합니다. 
-- 입사일이 02/12/31일 이전이면 '창립맴버, 03년은 '03년입사’, 04년은 ‘04년입사’ 
-- 이후입사자는 ‘상장이후입사’ optDate 컬럼의 데이터로 출력하세요.
-- 정렬은 입사일로 오름차순으로 정렬합니다.
select hire_date,
       CASE 
           WHEN hire_date <= '2002/12/31' THEN '창립멤버' 
           WHEN hire_date <= '2003/12/31' THEN '03년입사'
           WHEN hire_date <= '2004/12/31' THEN '04년입사'
           ELSE '상장이후입사'
       END as optDate
from employees
order by hire_date asc;
