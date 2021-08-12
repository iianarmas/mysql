-- TRIGGERS
-- a block of sql code which will define a certain action when a certain is performed to a certain database

CREATE TABLE trigger_test (
    number INT PRIMARY KEY AUTO_INCREMENT,
    message VARCHAR(40),
);

ALTER TABLE trigger_test ADD COLUMN first_name VARCHAR(40);

DELIMITER $$
CREATE
    TRIGGER add_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES('added new employee');
    END$$
DELIMITER ;


-- triggers adding first name
DELIMITER $$
CREATE
    TRIGGER add_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test(message, trigger_test.first_name) VALUES('added new employee', NEW.first_name);
    END$$
DELIMITER ;

DELIMITER $$
CREATE
    TRIGGER another_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        IF NEW.sex = 'M' THEN
            INSERT INTO trigger_test(message, trigger_test.first_name) VALUES('added male employee', NEW.first_name);
        ELSEIF NEW.sex = 'F' THEN
            INSERT INTO trigger_test(message, trigger_test.first_name) VALUES('added female employee', NEW.first_name);
        ELSE
            INSERT INTO trigger_test(message, trigger_test.first_name) VALUES('added new employee', NEW.first_name);
        END IF;
    END$$
DELIMITER ;

INSERT INTO employee
VALUES(111, 'Pam', 'Beesley', '1968-15-25', 'F', 75000, 106, 2);

SELECT * FROM employee;

SELECT * FROM trigger_test;

DROP TRIGGER another_trigger;
