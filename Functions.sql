-- Find the number of employees
SELECT COUNT(emp_id)
FROM employee;

-- Find the number of employees who have supervisors
SELECT COUNT (super_id)
FROM employee;

-- Find the number of female employees born after 1970
SELECT COUNT(*)
FROM employee
WHERE sex = 'F' AND birth_date > '1970-12-31';

-- Find the average of all employees' salary
SELECT AVG(salary)
FROM employee;

-- Find average salary of male employees
SELECT AVG(salary)
FROM employee
WHERE sex = 'M';

-- Find the sum of salary of all employees
SELECT SUM(salary)
FROM employee;

SELECT COUNT(sex)
FROM employee;

SELECT COUNT(sex), sex
FROM employee
GROUP BY sex;

-- Find the total sales of each salesman
SELECT emp_id, SUM(total_sales)
FROM works_with
GROUP BY emp_id;

SELECT client_id, SUM(total_sales)
FROM works_with
GROUP BY client_id;