-- UNIONS
-- Operator to combine results
-- RULE * number of columns that you are querrying should be the same; should also have to have the same data types

-- Find a list of employee and branch names
SELECT first_name AS column1
FROM employee
UNION
SELECT branch_name
FROM branch
UNION
SELECT client_name
FROM client;


-- Find a list of all clients & branch supplier's name
SELECT client_name, client.branch_id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;

-- Find a list of all money spent or earned by the company
SELECT salary
FROM employee
UNION
SELECT total_sales
FROM works_with;
