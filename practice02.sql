--����1

select count(manager_id) as haveMngCnt
from employees;

--����2
select  count(*),
        max(salary) as "�ְ��ӱ�",
        min(salary) as "�����ӱ�",
        max(salary) - min(salary) as "�ְ��ӱ� - �����ӱ�"
from employees;

--����3
select  
        
        to_char(max(hire_date), 'YYYY"��"MM"��"DD"��" ')
from employees;

--����4

select  avg(salary),
        max(salary),
        min(salary),
        department_id
from employees
group by department_id
order by department_id desc;


--����5
select  job_id,
        round(avg(salary),1),
        max(salary),
        min(salary)
from employees
group by job_id
order by min(salary) desc, round(avg(salary),1) asc;


--����6

select  
        to_char(min(hire_date), 'YYYY-MM-DD day')
        
from employees;

--����7

select  department_id,
        avg(salary) as "����ӱ�",
        max(salary) as "�ְ��ӱ�",
        min(salary) as "�����ӱ�",
        avg(salary) - min(salary) as "����ӱ� - �����ӱ�"
from employees
group by department_id
having avg(salary) - min(salary) < 2000
order by avg(salary) - min(salary) desc;

--����8
select  job_id,
        
        max(salary) - min(salary) as "�ְ��ӱ� - �����ӱ�"
from employees
group by job_id
order by max(salary) - min(salary) desc;
        
--����9
--2005�� ���� �Ի����� �����ں��� ��ձ޿� �ּұ޿� �ִ�޿��� �˾ƺ����� �Ѵ�.
--����� �����ں��� ��ձ޿��� 5000�̻� �߿� ��ձ޿� �ּұ޿� �ִ�޿��� ����մϴ�.
--��ձ޿��� ������������ �����ϰ� ��ձ޿��� �Ҽ��� ù°¥������ �ݿø� �Ͽ� ����մϴ�.

select  manager_id,
        round(avg(salary),0) as "����ӱ�",
        max(salary) as "�ִ�޿�",
        min(salary) as "�ּұ޿�"
        
from employees
where hire_date >='05/01/01'
group by manager_id
having  avg(salary)>=5000
order by round(avg(salary),0) desc;

-- ����10.
-- �Ʒ�ȸ��� ���ʽ� ������ ���� ������ �Ի��� �������� �������� �մϴ�. 
-- �Ի����� 02/12/31�� �����̸� 'â���ɹ�, 03���� '03���Ի硯, 04���� ��04���Ի硯 
-- �����Ի��ڴ� �����������Ի硯 optDate �÷��� �����ͷ� ����ϼ���.
-- ������ �Ի��Ϸ� ������������ �����մϴ�.
select hire_date,
       CASE 
           WHEN hire_date <= '2002/12/31' THEN 'â�����' 
           WHEN hire_date <= '2003/12/31' THEN '03���Ի�'
           WHEN hire_date <= '2004/12/31' THEN '04���Ի�'
           ELSE '���������Ի�'
       END as optDate
from employees
order by hire_date asc;
