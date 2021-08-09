-- Find all employees:
SELECT * FROM employee;

-- Find all clients:
SELECT * FROM client;

-- Find all employees ordered by salary:
SELECT *
FROM employee
ORDER BY salary;

SELECT *
FROM employee
ORDER BY salary DESC;

-- Find all employees ordered by sex and name:
SELECT *
FROM employee
ORDER BY sex, first_name, last_name;

SELECT *
FROM employee
ORDER BY sex, salary, first_name, last_name;

SELECT *
FROM employee
ORDER BY sex, salary DESC, first_name, last_name;

-- Find the first 5 employees in the tableL
SELECT *
FROM employee
LIMIT 5;

SELECT first_name, last_name, emp_id
FROM employee
LIMIT 5;

-- Find the Forename and surnames of allemployees:
SELECT first_name, last_name
FROM employee;


SELECT first_name AS forename, last_name AS surname
FROM employee;

-- Find out all the different genders:
SELECT DISTINCT sex
FROM employee;

SELECT DISTINCT branch_id
FROM employee;
