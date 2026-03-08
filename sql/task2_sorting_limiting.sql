-- Srividhya S - Id no - IITP_AIMLTN_2601051
.headers on
.mode column

SELECT 'TASK 2.1 - Top 5 Highest Paid Employees';

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;

SELECT 'TASK 2.2 - 3 Most Recently Hired Engineers';

SELECT *
FROM employees
WHERE department='Engineering'
ORDER BY hire_date DESC
LIMIT 3;

SELECT 'TASK 2.3 - Oldest Employee earning >70000 and not in HR';

SELECT *
FROM employees
WHERE salary > 70000
AND department != 'HR'
ORDER BY hire_date ASC
LIMIT 1;
