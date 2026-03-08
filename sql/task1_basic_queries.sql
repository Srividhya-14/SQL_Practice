.headers on
.mode column
-- Srividhya S - Id no - IITP_AIMLTN_2601051
SELECT 'TASK 1.1 - Employees in Marketing Department';

SELECT *
FROM employees
WHERE department = 'Marketing';

SELECT 'TASK 1.2 - Employees earning more than 90000';

SELECT
name,
department,
salary
FROM employees
WHERE salary > 90000;

SELECT 'TASK 1.3 - Employees in Sales or Finance';

SELECT *
FROM employees
WHERE department IN ('Sales','Finance');
