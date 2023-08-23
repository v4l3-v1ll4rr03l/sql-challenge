-- create titles table
CREATE TABLE titles (
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(100) NOT NULL
);

SELECT * FROM titles;

-- create employees table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(10) NOT NULL, 
	birth_date DATE NOT NULL,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY(emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;

-- create salaries table
DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;

-- create departments table
CREATE TABLE departments (
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(100) NOT NULL
);

SELECT * FROM departments;

-- create department employee table
DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(10),
	PRIMARY KEY(emp_no,dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

-- create department manager table
DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager (
	dept_no VARCHAR(10),
	emp_no INT,
	PRIMARY KEY(emp_no,dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_manager;