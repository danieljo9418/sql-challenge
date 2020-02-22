-- Perform an INNER JOIN on employees and salaries tables
--1. List the following details of each employee: employee number, last name, first name, gender, and salary
/*SELECT employees.emp_no, employees.last_name, employees.first_name,
employees.gender, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;*/

-- 2. Query the data to return all the rows with the hired date in 1986
-- from the employees data
/*SELECT * FROM employees;
SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1986-01-01' and '1986-12-31'*/

--3. List the manager of each department
-- Perform an INNER JOIN on department, employees and dept_manager tables 
/*SELECT department.dept_no, department.dept_name, dept_manager.emp_no,
employees.last_name, employees.first_name,
dept_manager.from_date, dept_manager.to_date 
FROM dept_manager
INNER JOIN department ON department.dept_no=dept_manager.dept_no 
INNER JOIN employees ON dept_manager.emp_no=employees.emp_no;*/

--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
/*SELECT employees.last_name, employees.first_name, dept_emp.emp_no,
department.dept_name 
FROM dept_emp
INNER JOIN department ON department.dept_no=dept_emp.dept_no 
INNER JOIN employees ON dept_emp.emp_no=employees.emp_no;*/

--5. List all employees whose first name is "Hercules" and last names begin with "B."
--SELECT * FROM employees WHERE (first_name LIKE 'Hercules%') AND (last_name LIKE 'B%');

--6. List all employees in the Sales department, including their 
--employee number, last name, first name, and department name.
/*SELECT dept_emp.emp_no, employees.last_name, employees.first_name, 
department.dept_name 
FROM dept_emp
INNER JOIN department ON department.dept_no=dept_emp.dept_no 
INNER JOIN employees ON dept_emp.emp_no=employees.emp_no
WHERE dept_name LIKE 'Sales%';*/

--7. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
/*SELECT dept_emp.emp_no, employees.last_name, employees.first_name, 
department.dept_name 
FROM dept_emp
INNER JOIN department ON department.dept_no=dept_emp.dept_no 
INNER JOIN employees ON dept_emp.emp_no=employees.emp_no
WHERE dept_name IN ('Sales', 'Development');*/

--8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
/*SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;*/



