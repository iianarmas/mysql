-- NESTED QUERIES
-- Find names of all employees who have sold over 30000 to a single client
SELECT * FROM employee;

SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id
    FROM works_with
    WHERE works_with.total_sales > 30000
);


-- Find all the branch who are handled by the branch that Michael Scott manages (Assume you know Michael's id)
SELECT client.client_name
FROM client
WHERE client.branch_id = (
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 102
    LIMIT 1                         -- to limit if Michael is managing more than 1 branch
);

SELECT branch.branch_id
FROM branch
WHERE branch.mgr_id = 102;
