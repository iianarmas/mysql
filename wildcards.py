-- WILDCARDS
-- a way of definig different patterns that we want to match specific data to
-- % = any # of characters, _ = one character

-- Find any clients who are in LLC
SELECT *
FROM client
WHERE client_name LIKE '%LLC';

-- Find any branch supplier who are in the lable business
SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '% Label%';

-- Find any employee born in October
SELECT *
FROM employee
WHERE birth_date LIKE '____-10%';

SELECT *
FROM employee
WHERE birth_date LIKE '%-10%';

-- Find any client who are schools
SELECT *
FROM client
WHERE client_name LIKE '%school%'
