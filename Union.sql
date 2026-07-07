-- Union

-- union is a special operator in SQL used to combine the results of multiple 
--         SELECT statements into one


-- Rules -  1. all SELECT statements must have the same number of columns
--          2. corresponding columns must have same datatype


-- Find a list of employee and branch names
SELECT first_name AS Company_names
FROM employee
UNION
SELECT branch_name
FROM branch
UNION
SELECT client_name
FROM client; 

-- Find a list of all clients and branch suppliers' name
SELECT client_name, branch_id
FROM client
UNION
SELECT supplier_name, branch_id
FROM branch_supplier;

-- in more readable way (as same column in both SELECT statements) 
-- but not at all necessary to write in this format
SELECT client_name, client.branch_id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;

-- Find a list of all money spent or earned by the company
SELECT salary          -- money spent by company
FROM employee
UNION
SELECT total_sales      -- money earned by company
FROM works_with;