--Create departments table 
CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL PRIMARY KEY, 
	dept_name TEXT NOT NULL
);
--Import data from CSV
COPY departments FROM 'C:\Users\Justi\Documents\sql-challenge\Starter_Code\data\departments.csv' DELIMITER ',' CSV HEADER;

-- Create dept_emp table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL, 
	dept_no VARCHAR(4) NOT NULL,
	PRIMARY KEY (emp_no, dept_no)
);
--Import data from CSV
COPY dept_emp FROM 'C:\Users\Justi\Documents\sql-challenge\Starter_Code\data\dept_emp.csv' DELIMITER ',' CSV HEADER;

--Create dept_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL, 
	emp_no INT NOT NULL, 
	PRIMARY KEY (dept_no, emp_no)
);
--Import data from CSV
COPY dept_manager FROM 'C:\Users\Justi\Documents\sql-challenge\Starter_Code\data\dept_manager.csv' DELIMITER ',' CSV HEADER;

--Create table employees
CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY, 
	emp_title_id VARCHAR(10) NOT NULL, 
	birth_date DATE NOT NULL, 
	first_name VARCHAR(50) NOT NULL, 
	last_name VARCHAR(50) NOT NULL, 
	sex CHAR(1) NOT NULL, 
	hire_date DATE NOT NULL
);
--Import data from CSV
COPY employees FROM 'C:\Users\Justi\Documents\sql-challenge\Starter_Code\data\employees.csv' DELIMITER ',' CSV HEADER;

--Create table salaries
CREATE TABLE salaries (
	emp_no INT NOT NULL PRIMARY KEY, 
	salary INT NOT NULL
);
--Import data from CSV
COPY salaries FROM 'C:\Users\Justi\Documents\sql-challenge\Starter_Code\data\salaries.csv' DELIMITER ',' CSV HEADER;

--Create table titles
CREATE TABLE titles (
	title_id VARCHAR(10) NOT NULL PRIMARY KEY, 
	title VARCHAR(50) NOT NULL
);
--Import data from CSV
COPY titles FROM 'C:\Users\Justi\Documents\sql-challenge\Starter_Code\data\titles.csv' DELIMITER ',' CSV HEADER;

--Add foreign key to dept_emp table
ALTER TABLE dept_emp
ADD CONSTRAINT fk_dept_emp_dept_no
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
ADD CONSTRAINT fk_dept_emp_no_emp_no
FOREIGN KEY (emp_no) REFERENCES employees(emp_no);

--Add foreign key to dept_manager table
ALTER TABLE dept_manager
ADD CONSTRAINT fk_dept_manager_dept_no
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
ADD CONSTRAINT fk_dept_manager_emp_no
FOREIGN KEY (emp_no) REFERENCES employees(emp_no);

--Add foreign key to employees table
ALTER TABLE employees
ADD CONSTRAINT fk_employees_emp_title_id_title_id
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id);

--Add foreign key to salaries table
ALTER TABLE salaries
ADD CONSTRAINT fk_salaries_emp_no
FOREIGN KEY (emp_no) REFERENCES employees(emp_no);