INSERT INTO branch VALUES(4, 'Bird', NULL, NULL);

SELECT *
FROM branch;

-- There are 4 types of joins - 
-- 1. inner join
-- 2. left join
-- 3. right join
-- 4. full outer join

-- Find all branches and the names of their managers

-- inner join
SELECT employee.emp_id, employee.first_name AS manager, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;


-- Left join
SELECT employee.emp_id, employee.first_name AS manager, branch.branch_name
FROM employee                     -- left table
LEFT JOIN branch                  -- right table
ON employee.emp_id = branch.mgr_id;


-- right join
SELECT employee.emp_id, employee.first_name AS manager, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;

-- full outer join
-- A FULL OUTER JOIN returns all rows from both tables.

-- If there's a match → rows are combined
-- If there's no match → missing side shows NULL

-- Simple idea:
-- LEFT JOIN + RIGHT JOIN together

-- Syntax:

-- SELECT *
-- FROM A
-- FULL OUTER JOIN B
-- ON A.id = B.id;
