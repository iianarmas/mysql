-- DELETING when they have foreign keys associated to them
CREATE TABLE branch (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(40),
    mgr_id INT,
    mgr_start_date DATE,
    FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);

-- ON DELETE SET NULL will set the row info to null
-- ON DELETE CASCADE will delete the entire row instead
-- if a foreign key is also a or a component of a primary key, use on delete cascade

DELETE FROM employee
WHERE emp_id = 102;
