CREATE TABLE department(dept_no varchar PRIMARY Key ,dept_name varchar);
CREATE TABLE titles(title_id varchar PRIMARY KEY,title varchar);
CREATE TABLE employees(emp_no int Primary key  ,emp_title_id varchar references titles(title_id),
					   birth_date date, first_name varchar,last_name varchar, sex varchar(10), hire_date date); 
CREATE TABLE dept_emp( emp_no int references employees(emp_no) ,dept_no varchar references department(dept_no) );
CREATE TABLE dept_managers(dept_no varchar references department(dept_no) ,emp_no int references employees(emp_no) );
CREATE TABLE salaries(emp_no int references employees(emp_no) ,salary int);
