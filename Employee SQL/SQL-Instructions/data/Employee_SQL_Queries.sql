---------1 
select employees.emp_no, employees.first_name,  employees.last_name,employees.sex, salaries.salary 
from employees 
inner join salaries on employees.emp_no=salaries.emp_no
order by employees.emp_no
----------2
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' AND '1986-12-31'
--------------3 
select 
dept_no, emp_no,
(select first_name from employees where employees.emp_no = dept_managers.emp_no),
(select last_name from employees where employees.emp_no = dept_managers.emp_no),
(select dept_name from department where department.dept_no = dept_managers.dept_no)
from dept_managers 
---------4
select department.dept_name, employees.emp_no, employees.first_name,  employees.last_name
from dept_emp
inner join employees on dept_emp.emp_no = employees.emp_no
inner join department on dept_emp.dept_no =department.dept_no
order by employees.emp_no
-------------5
Select first_name, last_name, sex 
from employees 
where first_name ='Hercules' and last_name like 'B%'

--------6 
select department.dept_name, employees.emp_no, employees.first_name,  employees.last_name
from dept_emp
inner join employees on dept_emp.emp_no = employees.emp_no
inner join department on dept_emp.dept_no =department.dept_no
where department.dept_name='Sales'
order by employees.emp_no

---------------7
select department.dept_name, employees.emp_no, employees.first_name,  employees.last_name
from dept_emp
inner join employees on dept_emp.emp_no = employees.emp_no
inner join department on dept_emp.dept_no =department.dept_no
where department.dept_name='Sales' or department.dept_name='Development'
order by employees.emp_no
-----------8
select last_name, count(last_name) as last_name_count 
from employees 
group by last_name 
order by  last_name_count desc
------- 


