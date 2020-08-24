create table salaries (
emp_no int primary key,
salary int);
	
create table titles (
title_id varchar(32) primary key,
title varchar(32));


create table employees (
emp_no int primary key,
emp_title_id varchar(32),
birth_date date,
first_name varchar(32),
last_name varchar(32),
sex varchar(32),
hire_date date,
foreign key(emp_no) references salaries(emp_no),
foreign key(emp_title_id) references titles(title_id));

create table departments (
dept_no varchar(32) primary key,
dept_name varchar(32));

create table dept_emp (
emp_no int,
dept_no varchar(32),
	primary key(emp_no, dept_no),
	foreign key(emp_no) references employees(emp_no),
	foreign key(dept_no) references departments(dept_no));

create table dept_manager (
dept_no varchar(32),
emp_no int,
from_date date,
	to_date date,
	primary key(emp_no, dept_no),
	foreign key(emp_no) references employees(emp_no),
	foreign key(dept_no) references departments(dept_no));

