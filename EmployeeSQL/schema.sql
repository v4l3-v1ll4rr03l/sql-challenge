-- create departments table
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

SELECT * FROM departments;

-- create titles table
DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
);

SELECT * FROM titles;

-- create salaries table
DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT
);

SELECT * FROM salaries;

-- create department employee table
DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR,
	PRIMARY KEY(emp_no,dept_no)
);

SELECT * FROM dept_emp;

-- create department manager table
DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT,
	PRIMARY KEY(emp_no,dept_no)
);

SELECT * FROM dept_manager;

-- create employees table
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);

SELECT * FROM employees;